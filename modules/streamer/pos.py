from tcp import Streamer as BaseStreamer

# 2 byte pertama size
# Dalam 1 request bisa saja ada 2 transaksi, bahkan
# bisa saja string transaksi yang belum lengkap
class Streamer(BaseStreamer):
    def get_size(self, raw):
        a, b = raw
        b = ord(b) * 256
        a = ord(a)
        return b + a

    # Override Stremer.get
    def get(self, raw):
        if self.size:
            size = self.size - len(self.raw)
        else:
            raw = self.raw + raw
            if len(raw) < 2:
                self.raw = raw
                return
            size = self.size = self.get_size(raw[:2])
            self.raw = ''
            raw = raw[2:]
        self.raw += raw[:size]
        if len(self.raw) == self.size:
            raw_iso = self.raw
            self.size = 0
            self.raw = raw[size:] # Sisa
            return raw_iso
        self.raw += raw[size:]

    # Override Stremer.set
    def set(self, raw):
        raw = raw.upper()
        raw = str(raw) # Jangan sampai unicode
        size = len(raw)
        b = size / 256
        a = size % 256
        header = chr(a) + chr(b)
        return header + raw

import sys
sys.path[0:0] = ['/usr/share/opensipkd-forwarder/modules']
from pbb import PbbDBSession
from pbb.models import Pembayaran

def query_pembayaran(propinsi, kabupaten, kecamatan, kelurahan, blok, urut, jenis, tahun):
    return PbbDBSession.query(Pembayaran).filter_by(
                kd_propinsi=propinsi,
                kd_dati2=kabupaten,
                kd_kecamatan=kecamatan,
                kd_kelurahan=kelurahan,
                kd_blok=blok,
                no_urut=urut,
                kd_jns_op=jenis,
                thn_pajak_sppt=tahun)
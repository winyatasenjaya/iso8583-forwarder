db_url = 'postgresql://sugiana:a@localhost/pbb_bogor_kota'
db_schema = None
iso_db_schema = None 

# Tuning
# http://docs.sqlalchemy.org/en/rel_0_9/core/pooling.html
db_pool_size = 50
db_max_overflow = 100

# Denda bila lewat jatuh tempo
persen_denda = 2

nip_rekam_byr_sppt = '999999999'

host = {
    'bjb': {
        'kd_kanwil_bank': '22',
        'kd_kppbb_bank': '11',
        'kd_bank_tunggal': '01',
        'kd_bank_persepsi': '01',
        'kd_tp': {
            '6010': '17',
            '6011': '18',
            'default': '06',
            },
        },
    'bri': {
        'kd_kanwil_bank': '22',
        'kd_kppbb_bank': '11',
        'kd_bank_tunggal': '01',
        'kd_bank_persepsi': '01',
        'kd_tp': {
            '6010': '16',
            '6011': '15',
            '6014': '19',
            'default': '16',
            },
        },
    'btn': {
        'kd_kanwil_bank': '22',
        'kd_kppbb_bank': '11',
        'kd_bank_tunggal': '03',
        'kd_bank_persepsi': '02',
        'kd_tp': '56',
        },
    'pos': {
        'kd_kanwil_bank': '22',
        'kd_kppbb_bank': '11',
        'kd_bank_tunggal': '03',
        'kd_bank_persepsi': '02',
        'kd_tp': '57',
        },
    'mitracomm': { # key = bit 32 value
         9: { # BNI
            'kd_kanwil_bank': '22',
            'kd_kppbb_bank': '11',
            'kd_bank_tunggal': '03',
            'kd_bank_persepsi': '02',
            'kd_tp': '58',
            },
        14: { # BCA
            'kd_kanwil_bank': '22',
            'kd_kppbb_bank': '11',
            'kd_bank_tunggal': '03',
            'kd_bank_persepsi': '02',
            'kd_tp': '65',
            },
        22: { # Niaga 
            'kd_kanwil_bank': '22',
            'kd_kppbb_bank': '11',
            'kd_bank_tunggal': '03',
            'kd_bank_persepsi': '02',
            'kd_tp': '59',
            },
        28: { # NISP
            'kd_kanwil_bank': '22',
            'kd_kppbb_bank': '11',
            'kd_bank_tunggal': '03',
            'kd_bank_persepsi': '02',
            'kd_tp': '60',
            },
        },
    }

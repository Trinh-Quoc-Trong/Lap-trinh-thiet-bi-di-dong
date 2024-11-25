class DienThoai {
  String _maDienThoai;
  String _tenDienThoai;
  String _hangSanXuat;
  double _giaNhap;
  double _giaBan;
  int _soLuongTon;
  bool _trangThai;

  DienThoai(
    this._maDienThoai,
    this._tenDienThoai,
    this._hangSanXuat,
    this._giaNhap,
    this._giaBan,
    this._soLuongTon,
    this._trangThai,
  ) {
    if (_maDienThoai.isEmpty || !_maDienThoai.startsWith("DT-")) {
      throw Exception("khong hop le");
    }
    if (_tenDienThoai.isEmpty || _hangSanXuat.isEmpty) {
      throw Exception("ten ko duoc rong");
    }
    if (_giaNhap <= 0 || _giaBan <= _giaNhap) {
      throw Exception("gia tri phai > 0 và gia phai lon hon gia nhap");
    }
    if (_soLuongTon < 0) {
      throw Exception("lo luong ton ko duoc am!");
    }
  }

  String get maDienThoai => _maDienThoai;
  set maDienThoai(String value) {
    if (value.isEmpty || !value.startsWith("DT-")) {
      throw Exception("ma dien thoai khong hop le!");
    }
    _maDienThoai = value;
  }

  String get tenDienThoai => _tenDienThoai;
  set tenDienThoai(String value) {
    if (value.isEmpty) throw Exception("Tten ko duoc rong");
    _tenDienThoai = value;
  }

  double get giaNhap => _giaNhap;
  set giaNhap(double value) {
    if (value <= 0) throw Exception("gia tri phai > 0");
    _giaNhap = value;
  }

  double get giaBan => _giaBan;
  set giaBan(double value) {
    if (value <= _giaNhap) throw Exception("gia phai lon hon gia nhap!");
    _giaBan = value;
  }

  int get soLuongTon => _soLuongTon;
  set soLuongTon(int value) {
    if (value < 0) throw Exception("lo luong ton ko duoc am!");
    _soLuongTon = value;
  }

  double tinhLoiNhuanDuKien() {
    return (_giaBan - _giaNhap) * _soLuongTon;
  }

  void hienThiThongTin() {
    print("ma dien thoi: $_maDienThoai");
    print("ten: $_tenDienThoai");
    print("hang: $_hangSanXuat");
    print("gia nhap: $_giaNhap");
    print("gia ban: $_giaBan");
    print("so luong ton: $_soLuongTon");
    print(
        "trang thai: ${_trangThai ? 'dang kinh daonh' : 'nguong kinh daonh'}");
  }

  bool coTheBan() {
    return _soLuongTon > 0 && _trangThai;
  }
}

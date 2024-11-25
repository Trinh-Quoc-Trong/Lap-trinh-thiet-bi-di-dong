import 'dien_thoai.dart';

class HoaDon {
  String _maHoaDon;
  DateTime _ngayBan;
  DienThoai _dienThoai;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _soDienThoaiKhach;

  HoaDon(
    this._maHoaDon,
    this._ngayBan,
    this._dienThoai,
    this._soLuongMua,
    this._giaBanThucTe,
    this._tenKhachHang,
    this._soDienThoaiKhach,
  ) {
    if (_maHoaDon.isEmpty || !_maHoaDon.startsWith("HD-")) {
      throw Exception("ma hoa don ko hop le");
    }
    if (_ngayBan.isAfter(DateTime.now())) {
      throw Exception("ngay ban sau ngay hien tai!");
    }
    if (_soLuongMua <= 0 || _soLuongMua > _dienThoai.soLuongTon) {
      throw Exception("so luong ma khong hop le !");
    }
    if (_giaBanThucTe <= 0) {
      throw Exception("gia ban phai thap hon gia mua");
    }
    if (_tenKhachHang.isEmpty || _soDienThoaiKhach.isEmpty) {
      throw Exception("thong tin ko duoc de rong");
    }
  }

  double tinhTongTien() {
    return _giaBanThucTe * _soLuongMua;
  }

  double tinhLoiNhuanThucTe() {
    return (_giaBanThucTe - _dienThoai.giaNhap) * _soLuongMua;
  }

  void hienThiThongTin() {
    print("ma hoa don: $_maHoaDon");
    print("ngay ban : $_ngayBan");
    print("ten khach hang: $_tenKhachHang");
    print("so dien thoai khac: $_soDienThoaiKhach");
    print("so luong mua: $_soLuongMua");
    print("tpng tien: ${tinhTongTien()}");
  }
}

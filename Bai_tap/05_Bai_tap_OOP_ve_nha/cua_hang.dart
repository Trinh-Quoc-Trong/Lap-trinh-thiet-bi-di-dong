import 'dien_thoai.dart';
import 'hoa_don.dart';

class CuaHang {
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];

  CuaHang(this._tenCuaHang, this._diaChi);

  void themDienThoai(DienThoai dt) {
    _danhSachDienThoai.add(dt);
  }

  void hienThiDanhSachDienThoai() {
    for (var dt in _danhSachDienThoai) {
      dt.hienThiThongTin();
      print("--------------------");
    }
  }


  void hienThiDanhSachHoaDon() {
    for (var hd in _danhSachHoaDon) {
      hd.hienThiThongTin();
      print("--------------------");
    }
  }
}

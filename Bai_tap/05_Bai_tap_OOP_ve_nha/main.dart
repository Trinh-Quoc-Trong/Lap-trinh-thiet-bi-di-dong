import 'dien_thoai.dart';
import 'hoa_don.dart';
import 'cua_hang.dart';

void main() {
  var dt1 =
      DienThoai("DT-022", "Galaxy", "Samsung", 12000000, 18000000, 5, true);
  var dt2 =
      DienThoai("DT-023", "iPhone", "Apple", 15000000, 20000000, 10, true);

  var cuaHang = CuaHang("cau hang thit", "vung tau");
  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);

  cuaHang.hienThiDanhSachDienThoai();

  var hd1 = HoaDon(
      "HD-001", DateTime.now(), dt1, 2, 20000000, "Nguyen Tran", "0123456789");

  cuaHang.hienThiDanhSachHoaDon();
}

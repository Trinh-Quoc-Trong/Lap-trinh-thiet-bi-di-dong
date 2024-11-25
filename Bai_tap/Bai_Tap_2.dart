import 'dart:io';
import 'dart:math';

void main() {
  // Khai báo biến
  double a = 0;
  double b = 0;
  double c = 0;

  while (true) {
    try {
      // Nhập hệ số a
      stdout.write("Nhập hệ số a (khác 0): ");
      a = double.parse(stdin.readLineSync()!);
      if (a == 0) {
        print("Hệ số a phải khác 0. Vui lòng nhập lại.");
        continue; // Quay lại đầu vòng lặp
      }

      // Nhập hệ số b
      stdout.write("Nhập hệ số b: ");
      b = double.parse(stdin.readLineSync()!);

      // Nhập hệ số c
      stdout.write("Nhập hệ số c: ");
      c = double.parse(stdin.readLineSync()!);

      break; // Thoát khỏi vòng lặp nếu nhập đúng
    } catch (e) {
      print("Vui lòng nhập đúng định dạng số. Lỗi gặp phải: $e");
    }
  }

  // Tính delta và giải phương trình
  double deltaFist = b * b - 4 * a * c;
  if (deltaFist < 0) {
    print("Phương trình vô nghiệm.");
  } else if (deltaFist > 0) {
    double x1 = (-b + sqrt(deltaFist)) / (2 * a);
    double x2 = (-b - sqrt(deltaFist)) / (2 * a);
    print("Phương trình có 2 nghiệm phân biệt: x1 = $x1, x2 = $x2.");
  } else {
    double x = -b / (2 * a);
    print("Phương trình có nghiệm kép: x = $x.");
  }
}

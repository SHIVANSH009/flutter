import 'dart:io';

int salaryCalc() {
  print('Enter days?');
  int? n = int.parse(stdin.readLineSync()!);

  print('Enter hours?');
  int? h = int.parse(stdin.readLineSync()!);
  return 1500*h*n;
}

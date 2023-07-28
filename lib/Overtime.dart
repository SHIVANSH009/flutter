import 'dart:io';

int overtime() {
  print('Enter overtime hours?');
  int? n = int.parse(stdin.readLineSync()!);
  if (n == 0) {
    return 1;
  } else {
    return n*1600;
  }
}

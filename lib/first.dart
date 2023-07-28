import 'calculations.dart' as cal;
import 'Overtime.dart' as ov;
import 'totalSalary.dart' as sal;
import 'dart:io';

void main() {
  print('Enter pizza size?');
  String? name = stdin.readLineSync();

  print('Enter pizza quantity?');
  int? n = int.parse(stdin.readLineSync()!);

  if (name == 'large') {
    print('Total payment: ${n*500}');
  } else if (name == 'medium') {
    print('Total payment: ${n*300}');
  } else {
    print('Total payment: ${n*100}');
  }

  var totalSalary = sal.salaryCalc() + ov.overtime();
  print('total Salary: $totalSalary');

  if(totalSalary > 100000) {
    print('Tax will be deducted!');
  }
}

import 'myLib.dart';

void main() {
  var emp = Employee('Jocelyn Lee', 3000.00, 20.00, 5);

  double overtime = emp.calculateOvertimePayment();
  double totalSalary = emp.calculateTotalSalary();

  print('Employee: ${emp.name}');
  print('Basic Salary: RM${emp.basicSalary}');
  print('Overtime Payment: RM${overtime}');
  print('Total Salary   : RM${totalSalary.toStringAsFixed(2)}');
}

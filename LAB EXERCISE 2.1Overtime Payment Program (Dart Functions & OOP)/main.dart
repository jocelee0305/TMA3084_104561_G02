import 'myLib.dart';

void main() {
  var emp = Employee('Jocelyn Lee', 8000.00, 20.00, 5);

  double overtime = emp.calculateOvertimePayment();
  double totalSalary = emp.calculateTotalSalary();

  // print('Employee: ${emp.name}');
  // print('Basic Salary: \$${emp.basicSalary} USD');
  // print('Overtime Payment: \$${overtime} USD');
  print('Total Salary   : \$${totalSalary.toStringAsFixed(2)} USD');
}

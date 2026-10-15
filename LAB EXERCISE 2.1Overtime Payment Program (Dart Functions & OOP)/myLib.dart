class Employee {
  String name;
  double hourlyRate;
  double basicSalary;
  double overtimeHours;

  Employee(this.name, this.basicSalary, this.hourlyRate, this.overtimeHours);

  double calculateOvertimePayment() {
    double overtimeRate = hourlyRate * 1.5;
    return overtimeRate * overtimeHours;
  }

  double calculateTotalSalary() {
    return basicSalary + calculateOvertimePayment();
  }
}

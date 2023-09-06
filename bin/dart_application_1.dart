// 1. Define class Employee
class Employee {
  int id;
  String fullName;
  DateTime birthday;
  String address;
  String phoneNumber;

  Employee(
      this.id, this.fullName, this.birthday, this.address, this.phoneNumber);
}

class CRUD_Employee {
  List<Employee> employees = [];

  //2. Create a function add new Employee: addNewEmployee.
  void addNewEmployee(int id, String fullName, DateTime birthday,
      String address, String phoneNumber) {
    var newEmployee = Employee(id, fullName, birthday, address, phoneNumber);
    employees.add(newEmployee);
  }

  //3. Create a function get all Employee : getAllEmployee.
  List<Employee> getAllEmployee() {
    return employees;
  }

  //4. Create a function update Employee: updateEmployee.
  void updateEmployee(int id, String fullName, DateTime birthday,
      String address, String phoneNumber) {
    for (var employee in employees) {
      if (employee.id == id) {
        employee.fullName = fullName;
        employee.birthday = birthday;
        employee.address = address;
        employee.phoneNumber = phoneNumber;
        break;
      }
    }
  }

  // 5. Create a function show all Employee. showAllEmployee
  void showAllEmployee() {
    print('======List Employee======');
    for (var employee in employees) {
      print('------------------');
      print('ID: ${employee.id}');
      print('FullName: ${employee.fullName}');
      print('Birthday: ${employee.birthday}');
      print('Address: ${employee.address}');
      print('Phone: ${employee.phoneNumber}');
      print('------------------');
    }
  }
}

//Test
void main(List<String> arguments) {
  CRUD_Employee manageEmployee = new CRUD_Employee();

  // add
  manageEmployee.addNewEmployee(
      1, 'Hoàng Văn Bách', DateTime(1999, 10, 26), 'Hà Nội', '0986753665');
  manageEmployee.addNewEmployee(
      2, 'Đinh Tiến Đạt', DateTime(2000, 9, 12), 'Lạng Sơn', '0986753657');
  manageEmployee.addNewEmployee(
      3, 'Vương Đình Khương', DateTime(1995, 3, 27), 'Cao BẰng', '0676753665');
  manageEmployee.addNewEmployee(
      4, 'Nguyễn Thị Ngọc', DateTime(1998, 12, 18), 'Hà Giang', '043553665');
  manageEmployee.addNewEmployee(
      5, 'Trần Thị Mai', DateTime(2001, 6, 5), 'Bình Định', '054536655');

  manageEmployee.showAllEmployee();

  // update
  manageEmployee.updateEmployee(
      1, 'Hoàng Văn Bách', DateTime(2005, 8, 27), 'Hải Phòng', '0773353665');

  manageEmployee.showAllEmployee();
}

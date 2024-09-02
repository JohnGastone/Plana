class TaskModel {
  String? name;
  String? type;

  TaskModel({this.name, this.type});
}

class TaskModelData {
  static List<TaskModel> getTasks = [
    TaskModel(name: 'Weekly Calendar', type: 'Type 1'),
    TaskModel(name: 'Task 2', type: 'Type 2'),
    TaskModel(name: 'Task 3', type: 'Type 3'),
    TaskModel(name: 'Task 4', type: 'Type 4'),
    TaskModel(name: 'Task 5', type: 'Type 5'),
    TaskModel(name: 'Task 6', type: 'Type 6'),
    TaskModel(name: 'Task 7', type: 'Type 7'),
    TaskModel(name: 'Task 8', type: 'Type 8'),
    TaskModel(name: 'Task 9', type: 'Type 9'),
    TaskModel(name: 'Task 10', type: 'Type 10'),
    TaskModel(name: 'Task 11', type: 'Type 11'),
  ];
}

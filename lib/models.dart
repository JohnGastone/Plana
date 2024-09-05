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
    TaskModel(name: 'Task 5', type: 'Type 5')
  ];
}

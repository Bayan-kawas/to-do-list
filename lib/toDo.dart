class ToDo {
  static int lastId = 0;
  static List<ToDo> toDos = [];
  String contentTask = '';

  int id;
  bool completed = false;

  ToDo(contentTask) {
    this.id = lastId + 1;
    this.contentTask = contentTask;
  }

  static completeTodo(id) {}

}

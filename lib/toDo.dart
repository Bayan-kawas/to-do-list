class ToDo {
  static int lastId = 0;
  static List<ToDo> toDos = [];
  String contentTask = '';

  int id;
  bool completed = false;

  ToDo(contentTask) {
    this.id = ++lastId;
    this.contentTask = contentTask;
  }

  static completeTodo(id) {}
}

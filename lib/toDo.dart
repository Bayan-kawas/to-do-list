class ToDo {
  static int lastId = 0;
  static List toDos = [];

  static bool filterChoose;
  static String filterType = '';
   int id;
  bool completed = false;
  String contentTask = '';


  ToDo(contentTask) {
    this.id = ++lastId;
    this.contentTask = contentTask;
  }

  static completeTodo(id) {}
}

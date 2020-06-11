class Task {
  final String name;
  bool isDone;
  Task({this.name,this.isDone = false});

  void toggleDone(){
    isDone = !isDone;
  }

  Map<String,dynamic> toJson() => {
    'name':name,
    'isDone':isDone
  };

  Task.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        isDone = json['isDone'];
}
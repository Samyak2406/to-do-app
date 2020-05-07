class Task{
  String task;
  bool isChecked;
  Task({this.task,this.isChecked=false});
  void negate(){
    isChecked=!isChecked;
  }
}

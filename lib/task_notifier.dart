import 'package:flutter/foundation.dart';
import 'list.dart';

class tasksData extends ChangeNotifier{
  List<Task> ls=[
    Task(task: 'first task is quite easy'),
    Task(task: 'second task is easiest'),
  ];

   void addMethod(newValue){
     ls.add(Task(task: newValue));
     notifyListeners();
   }

   void Checker(Task task){
     task.negate();
     notifyListeners();
   }

   void remove(int index){
     ls.removeAt(index);
     notifyListeners();
   }
}
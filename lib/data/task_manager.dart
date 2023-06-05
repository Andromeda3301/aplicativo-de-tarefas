import 'package:flutter/material.dart';
import 'package:flutter_projects/components/task.dart';

class TaskInherited extends InheritedWidget {
   TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

   final List<Task> taskList = [
     Task('Aprender Flutter','assets/images/dash.png',3),
     Task('Andar de bike','assets/images/bike.jpg',2),
     Task('Ler','assets/images/book.jpg',4),
     Task('Meditar','assets/images/meditade.jpeg',5),
     Task('Jogar','assets/images/play.jpg', 1),
   ];

   void newTask(String name, String photo, int difficulty){
     taskList.add(Task(name, photo, difficulty));
   }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}

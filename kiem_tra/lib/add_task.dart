import 'package:flutter/material.dart';
import 'package:kiem_tra/Task.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController controllerTitle = TextEditingController();
  TextEditingController controllerStartTime = TextEditingController();
  TextEditingController controllerEndTime = TextEditingController();
  TextEditingController controllerDeadline = TextEditingController();
  TextEditingController controllerText = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Add task",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Title",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: controllerTitle,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Design team meeting',
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Deadline",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: controllerDeadline,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Deadline',
                  suffix: Icon(Icons.calendar_month),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Start time",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      controller: controllerStartTime,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '11:00 AM',
                        suffix: Icon(Icons.access_time),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "End time",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      controller: controllerEndTime,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '2:00 PM',
                        suffix: Icon(Icons.access_time),
                      ),
                      onTap: () {
                        showTimePicker(
                            context: context, initialTime: TimeOfDay.now()).then((value) {
                              if (value != null) {
                                
                              }
                            });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Remind",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '10 minutes early',
                  suffix: Icon(Icons.arrow_drop_down),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Repeat",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Weekly',
                  suffix: Icon(Icons.arrow_drop_down),
                ),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal[700]),
            child: const Text("Create a Task"),
          )
        ],
      ),
    );
  }
}

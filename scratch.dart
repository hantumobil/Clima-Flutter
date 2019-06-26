import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String string2Result = await task2();
  task3(string2Result);
}

void task1() {
  String result1 = "String 1 data";
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  String result;
  print('loading task 2...');

  await Future.delayed(threeSeconds, () {
    result = "String 2 data";
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  String result3 = "String 3 data";
  print('Task 3 complete with: $task2Data');
}

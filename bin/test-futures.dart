void main() {
  print('The main isolate has started');

  execute();

  print('The main isolate has ended');
}

Future<void> execute() async {
  print('The async task has started running');

  int value = await getIntLater(5);

  print('The value is ' + value.toString());
}

Future<int> getIntLater(int secs) {
  return Future.delayed(Duration(seconds: secs), () => 10);
}

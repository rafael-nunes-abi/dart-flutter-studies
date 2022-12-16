Future<String> createMessage() async {
  var message = await fetchMessage();
  return 'Your message is:\n$message';
}

Future<String> fetchMessage() =>
    Future.delayed(const Duration(seconds: 2), () => 'Dart can be async!');

Future<void> main() async {
  print('Fetching your message...');
  print(await createMessage());
}

String addHello(String user) => 'Hello $user';

// Part 2
// You can call the provided async function fetchUsername() to return the username.
Future<String> greetUser() async {
  var greetUser = addHello(await fetchUsername());
  return greetUser;
}

// Part 3
// You can call the provided async function logoutUser() to log out the user.
Future<String> sayGoodbye() async {
  try {
    return '${await logoutUser()} Thanks, see you next time';
  } catch (e) {
    return e.toString();
  }
}

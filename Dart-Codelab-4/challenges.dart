Future<String> reportLogins() async {
  var logins = await fetchLoginAmount();
  return 'Total number of logins: $logins';
}
// END

// CHALLENGE 2
Future<String> changeUsername() async {
  try {
    var userName = await fetchNewUsername();
    return userName;
  } catch (e) {
    return e.toString();
  }
}

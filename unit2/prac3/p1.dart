// 1. Write a Dart function named fetchData that simulates fetching data from a remote server asynchronously using a Future. The function should return a Future that resolves to a list of integers. Inside the function, use the Future.delayed constructor to simulate a network delay of 2 seconds, and then return a Future that resolves to a list of integers.

Future<List<int>> fetchData() =>
    Future.delayed(Duration(seconds: 2), () => Future.value([2, 3, 5, 6, 9]));

//2. Write a Dart function named fetchUserData that simulates fetching user data from a remote server asynchronously using a Future. The function should take a user ID as a parameter and return a Future that resolves to a Map representing the user's data (e.g., name, age, email). Inside the function, use the Future.delayed constructor to simulate a network delay of 3 seconds, and then return a Future that resolves to a Map containing dummy user data.

Future<Map<String, dynamic>> fetchUserData(int id) => Future.delayed(
    Duration(seconds: 3),
    () => Future.value(
        {"name": "Max", "age": 20, "email": "max.payne@gmail.com"}));

//3. Write a Dart function named fetchDataWithRetry that fetches data from a remote server asynchronously using a Future with error handling and retry mechanism. The function should take a URL as a parameter and return a Future that resolves to the fetched data. Inside the function, use a loop to retry the network request up to 3 times in case of a network error or timeout. Use Future.delayed to add a delay of 2 seconds between retries. If the maximum number of retries is reached without success, throw a custom NetworkException indicating the failure.

Future fetchDataWithRetry(String url) {
  for (int i = 0; i < 3; i++)
    Future.delayed(Duration(seconds: 2), () => Future.value("Success : $url"));
  {
    return throw NetworkException(
        "error occured! Even afer 3 tries could not fetch data");
  }
}

class NetworkException implements Exception {
  String message;

  NetworkException(this.message);

  @override
  String toString() => 'NetworkException(message: $message)';
}

// 4. Write a Dart function named fetchDataWithTimeout that simulates fetching data from a remote server asynchronously using a Future with timeout. The function should return a Future that resolves to a string "Data fetched successfully!" if the data is fetched within 5 seconds. If the data fetch operation exceeds 5 seconds, the function should throw a TimeoutException. Use async, await, and Future.delayed() for timeout handling.
Future<String> fetchDataWithTimeout(int i) {
  if (i < 5) {
    return Future.delayed(
        Duration(seconds: i), () => Future.value('Data fetched successfully!'));
  } else {
    return Future.delayed(
        Duration(seconds: 5), () => throw TimeoutException('TimeOut!'));
  }
}

class TimeoutException implements Exception {
  String message;
  TimeoutException(this.message);

  @override
  String toString() {
    return '$message';
  }
}

void main() async {
  // try {
  //   String res=await fetchDataWithTimeout(6);
  //   print(res);
  // }on TimeoutException catch  (e) {
  //   print(e);
  // }

  try {
    await fetchDataWithRetry("xyz.com");
  } on NetworkException catch (e) {
    print(e);
  }

  print(await fetchUserData(89));

  print(await fetchData());
}

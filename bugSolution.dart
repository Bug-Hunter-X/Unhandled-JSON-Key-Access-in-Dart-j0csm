```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if the key exists before accessing it
      if (jsonData.containsKey('nonExistentKey')) {
        final value = jsonData['nonExistentKey'];
        print(value);
      } else {
        print('Key 
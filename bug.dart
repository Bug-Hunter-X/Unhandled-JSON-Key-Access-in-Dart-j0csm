```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonData = jsonDecode(response.body);
      // Accessing a non-existent key
      final value = jsonData['nonExistentKey']; 
      print(value); // This will throw an exception if the key doesn't exist
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the exception appropriately, e.g., show an error message to the user
  }
}
```
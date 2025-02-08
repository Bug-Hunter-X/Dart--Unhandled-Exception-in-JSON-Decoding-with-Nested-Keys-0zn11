```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Safe access using null-aware operators
      final nestedValue = jsonData['someKey']?['nestedKey']; 
      if (nestedValue != null) {
        print(nestedValue);
      } else {
        print('Key not found');
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```
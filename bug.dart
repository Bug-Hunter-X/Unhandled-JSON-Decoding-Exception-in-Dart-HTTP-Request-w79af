```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here.  This assumes the response is JSON
      final jsonData = jsonDecode(response.body);
      // But you have not checked if response.body is actually parsable JSON.
      // If not, jsonDecode will throw a FormatException.
      print(jsonData); 
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the error appropriately
    print('Error: $e');
    //  The error handling here is too generic.  
    //  It could be improved by identifying and handling specific exception types.
  }
}
```
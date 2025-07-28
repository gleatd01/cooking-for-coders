import 'dart:convert';
import 'dart:io';

void main() {
  final schema = jsonDecode(File('schema/recipe.schema.json').readAsStringSync());
  final recipe = jsonDecode(File('schema/examples/sample_recipe.json').readAsStringSync());

  // For simplicity, only basic field checks
  final requiredFields = schema['required'] as List;
  for (var field in requiredFields) {
    if (!recipe.containsKey(field)) {
      print('Missing required field: $field');
      return;
    }
  }
  print('Sample recipe has required fields.');
}
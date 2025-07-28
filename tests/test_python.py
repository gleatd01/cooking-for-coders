import json
import jsonschema

with open('schema/recipe.schema.json') as f:
    schema = json.load(f)
with open('schema/examples/sample_recipe.json') as f:
    recipe = json.load(f)

try:
    jsonschema.validate(instance=recipe, schema=schema)
    print("Sample recipe is valid!")
except jsonschema.exceptions.ValidationError as err:
    print("Validation error:", err)
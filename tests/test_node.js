const fs = require('fs');
const Ajv = require('ajv');
const schema = require('../schema/recipe.schema.json');
const sampleRecipe = require('../schema/examples/sample_recipe.json');

const ajv = new Ajv();
const validate = ajv.compile(schema);

if (validate(sampleRecipe)) {
  console.log('Sample recipe is valid!');
} else {
  console.error('Validation errors:', validate.errors);
}
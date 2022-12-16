/* 
a constructor can generate instances with constant fields
the final keyword mean it is a const, but can be initialized later
const fields need initialization in the declaration
static means it is initialized when the class is created, so it can be accessed directly
*/

class Recipe {
  static const Recipe myRecipe = Recipe(null, 300, 4.5);

  final List<String>? ingredients;
  final int calories;
  final double milligramsOfSodium;

  const Recipe(this.ingredients, this.calories, this.milligramsOfSodium);
}

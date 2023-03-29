import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  List<List<String>> separateIngredientsAndQuantities(
      List<String> ingredientsWithQty) {
    List<String> ingredients = [];
    List<String> quantities = [];

    for (int i = 0; i < ingredientsWithQty.length; i++) {
      List<String> parts = ingredientsWithQty[i].split(' - ');
      String ingredient = parts[0];
      String quantity = parts[1];
      ingredients.add(ingredient);
      quantities.add(quantity);
    }

    return [ingredients, quantities];
  }

  final String recipeName;
  final String recipeImage;
  final List<String> ingredientsWithQty;
  // final List<List<dynamic>> recipeSteps;
  List<List<dynamic>> recipeSteps;
  final String Description;
  RecipePage(
      {required this.recipeName,
      required this.recipeImage,
      required this.ingredientsWithQty,
      required this.recipeSteps,
      required this.Description});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> separatedIngredientsAndQuantities =
        separateIngredientsAndQuantities(ingredientsWithQty);
    final List<String> Ingredients = separatedIngredientsAndQuantities[0];
    final List<String> Quantities = separatedIngredientsAndQuantities[1];
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Recipe image
            Card(
              elevation: 5,
              child: Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  recipeImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Recipe description card
            Card(
              margin: EdgeInsets.all(20),
              elevation: 15,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recipe Description',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      Description,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Ingredients card
            Card(
              margin: EdgeInsets.all(20),
              elevation: 15,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Ingredients',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Qty',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Cart',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Ingredients.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    Ingredients[index],
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(Quantities[index],
                                style: TextStyle(fontSize: 16)),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.blue.shade100,
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: IconButton(
                                    iconSize: 15,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            ),

            // Steps
            ListView.builder(
              itemCount: recipeSteps.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 50,
                          child: Image.network(
                            recipeSteps[index][0],
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Image.asset(
                        //   'assets/step_image.png',
                        //   height: 100,
                        //   width: 100,
                        //   fit: BoxFit.cover,
                        // ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            recipeSteps[index][1],
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
Example of how the ingredientsWithQty work: -

  This function takes a list of strings ingredientsWithQty, where each string contains 
  both the name of the ingredient and its quantity separated by the string " - ", 
  and returns a list containing two lists of strings. 
  The first list contains the ingredients, and the second list contains the quantities.

  List<String> ingredientsWithQty = ['Sugar - 2 cups', 'Flour - 3 cups', 'Eggs - 4'];
  List<List<String>> separatedIngredientsAndQuantities = 
                    separateIngredientsAndQuantities(ingredientsWithQty);

  In this example, the separatedIngredientsAndQuantities list will contain two lists of strings:
    [['Sugar', 'Flour', 'Eggs'], ['2 cups', '3 cups', '4']]

*/
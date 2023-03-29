import 'package:flutter/material.dart';
import 'package:recipe_detail/screens/recipe_detail_screen_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightBlue
      ),
      home: RecipePage(
        recipeName: 'Palak Paneer',
        recipeImage:
            "https://www.marionskitchen.com/wp-content/uploads/2021/08/Paneer-Curry8279.jpg",
        Description:
            "Palak paneer is a popular North Indian dish made with spinach and paneer (Indian cottage cheese). The spinach is blanched and pureed, then simmered with aromatic spices and the paneer cubes until the flavors meld together. This dish is usually served with hot naan or roti and is perfect for a cozy dinner at home. It's also a great way to incorporate more leafy greens into your diet while enjoying the rich flavors of Indian cuisine.",
        ingredientsWithQty: [
          'Spinach - 4 cups',
          'Paneer - 200 grams',
          'Onion - 1 large',
          'Tomato - 2 medium',
          'Garlic - 6 cloves',
          'Ginger - 1 inch piece',
          'Green chili - 2',
          'Turmeric powder - 1/2 teaspoon',
          'Red chili powder - 1 teaspoon',
          'Coriander powder - 2 teaspoons',
          'Cumin powder - 1/2 teaspoon',
          'Garam masala powder - 1/2 teaspoon',
          'Oil - 2 tablespoons',
          'Salt - to taste'
        ],
        recipeSteps: [
          [
            "https://img.favpng.com/11/4/14/usmle-step-1-computer-icons-symbol-usmle-step-3-png-favpng-bQfD17uFhPV56QNFmSTAnZZ5q.jpg",
            'Step 1: Preheat the oven to 350°F',
          ],
          [
            "https://w7.pngwing.com/pngs/425/749/png-transparent-usmle-step-1-computer-icons-symbol-usmle-step-3-symbol-miscellaneous-blue-text.png",
            'Step 2: Mix the dry ingredients in a large bowl',
          ],
          [
            "https://w7.pngwing.com/pngs/723/583/png-transparent-usmle-step-1-computer-icons-usmle-step-3-symbol-symbol-miscellaneous-blue-text-thumbnail.png",
            'Step 3: Add the wet ingredients to the bowl and mix well',
          ]
        ], // For now we will use image from string. In future, we need to change it to image from database/api.
      ),
    );
  }
}

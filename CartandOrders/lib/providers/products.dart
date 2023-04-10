import 'package:first_app/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'product.dart';
class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Butter Chicken',
      description: 'A creamy tomato-based curry dish made with boneless chicken pieces marinated in spices, cream, and butter.' ,
      price: 250 ,
      imageUrl: 'https://cafedelites.com/wp-content/uploads/2019/01/Butter-Chicken-IMAGE-64.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Biryani',
      description: 'A fragrant and flavorful rice dish made with a mix of spices, vegetables, and meat.' ,
      price: 180,
      imageUrl: 'https://imagevars.gulfnews.com/2022/03/11/Guntur-Gongura-Biryani-_17f793bfa09_large.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Masala Dosa',
      description: 'A crispy rice and lentil crepe filled with spiced potatoes and served with coconut chutney and sambar.' ,
      price: 110 ,
      imageUrl: 'https://www.cookwithmanali.com/wp-content/uploads/2020/05/Masala-Dosa.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Chole Bhature',
      description: 'A popular Punjabi dish made with spicy chickpea curry (chole) and deep-fried bread (bhature).' ,
      price: 120 ,
      imageUrl: 'https://en-media.thebetterindia.com/uploads/2022/08/294156779_1082267416022212_8006411537588067133_n-1_11zon-1660981126.jpg',
    ),
  ];

  //var _showFavoritesOnly = false;

  List<Product> get items{
    // if(_showFavoritesOnly)
    // {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

List<Product> get favoriteItems{
  return _items.where((prodItem) => prodItem.isFavorite).toList();
}

Product findById(String id){
  return _items.firstWhere((prod) => prod.id == id);
}

// void showFavoritesOnly(){
//   _showFavoritesOnly=true;
// }

// void showAll(){
//   _showFavoritesOnly = false;
// }

  void addProduct(){
    //_items.add(value);
    notifyListeners();
  }
}


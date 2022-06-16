import 'food.dart';

class Restaurant {
  Map<String, List<Food>> menu;

  Restaurant(this.menu);

  static Restaurant generateRestaurant() {
    return Restaurant(
      {
        'Recommend': Food.generateRecommendFoods(),
        'Popular': Food.generatePopularFoods(), //Passar aqui a geração de cada Categoria
        'Hot Coffes': Food.generateRecommendFoods(),
        'Cold Coffes': Food.generateRecommendFoods(),
        'Iced Teas': Food.generateRecommendFoods(),
        'Cold Drinks': Food.generateRecommendFoods(),
        'Snacks': Food.generateRecommendFoods(),
      },
    );
  }
}

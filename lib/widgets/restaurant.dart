import 'food.dart';

class Restaurant {
  Map<String, List<Food>> menu;

  Restaurant(this.menu);

  static Restaurant generateRestaurant() {
    return Restaurant(
      {
        'Recommend': Food.generateRecommendFoods(),
        'Popular': Food.generatePopularFoods(), //Passar aqui a geração de cada Categoria
        'Coffes': Food.generateRecommendFoods(),
        'Coffes': Food.generateRecommendFoods(),
        'Coffes': Food.generateRecommendFoods(),
        'Teste1': Food.generateRecommendFoods(),
        'Teste2': Food.generateRecommendFoods(),
      },
    );
  }
}

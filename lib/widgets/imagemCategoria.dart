import 'food.dart';

class ImagemCategoria {
  Map<String, List<Food>> menu;

  ImagemCategoria(this.menu);

  static ImagemCategoria generateRestaurant() {
    return ImagemCategoria(
      {
        'Assets/Imagens/1.PNG': Food.generateRecommendFoods(),
        'Assets/Imagens/2.PNG': Food.generateRecommendFoods(),
        'Assets/Imagens/3.PNG': Food.generateRecommendFoods(),
        'Assets/Imagens/4.PNG': Food.generateRecommendFoods(),
        'Assets/Imagens/5.PNG': Food.generateRecommendFoods(),
        'Assets/Imagens/6.PNG': Food.generateRecommendFoods(),
        'Assets/Imagens/7.PNG': Food.generateRecommendFoods(),
      },
    );
  }
}
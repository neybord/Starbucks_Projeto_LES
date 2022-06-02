import 'food.dart';

class ImagemCategoria {
  Map<String, List<Food>> menu;

  ImagemCategoria(this.menu);

  static ImagemCategoria generateRestaurant() {
    return ImagemCategoria(
      {
        'Assets/Imagens/1.png': Food.generateRecommendFoods(),
        'Assets/Imagens/2.png': Food.generateRecommendFoods(),
        'Assets/Imagens/3.png': Food.generateRecommendFoods(),
        'Assets/Imagens/4.png': Food.generateRecommendFoods(),
        'Assets/Imagens/5.png': Food.generateRecommendFoods(),
        'Assets/Imagens/6.png': Food.generateRecommendFoods(),
        'Assets/Imagens/7.png': Food.generateRecommendFoods(),
      },
    );
  }
}
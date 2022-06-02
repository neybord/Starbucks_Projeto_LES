class Food {
  String imgUrl;
  String desc; //descricao
  String name; // nome
  String score; //Pontos/ Rankeamento
  String cal; // calorias
  num price; // preço
  List <Map<String, String>> ingredients;
  String about; //sobre
  bool hightLight; //

  Food(this.imgUrl, this.desc, this.name, this.score, this.cal, this.price,
      this.ingredients, this.about, {this.hightLight = false});

  static List<Food> generateRecommendFoods() {
    return[
      Food(
          'assets/imagens/1.PNG',
          'NO1. in Sales',
          'Coffe',
          '4.8',
          '120 kcal',
          12,
          [
            {
              '1': 'Teste',
            },
            {
              '2' : 'Teste'
            },
            {
              '3' : 'Teste'
            }],
          'Teste', hightLight: true),

    ];
  }
}
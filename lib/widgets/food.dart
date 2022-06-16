class Food {
  String imgUrl;
  String desc; //descricao
  String name; // nome
  int qtde=0; // quantidade estava num
  String score; //Pontos/ Rankeamento
  String cal; // calorias
  num price; // preço
  List <Map<String, String>> ingredients; // Ingredientes
  String about; //sobre
  bool hightLight; //

  Food(this.imgUrl, this.desc, this.name, this.qtde, this.score, this.cal, this.price,
      this.ingredients, this.about, {this.hightLight = false});

  void setQuantity( bool isIncrement){
    if(isIncrement){
      qtde = qtde+1;
    }else{
      qtde = qtde-1;
    }
  }

  static List<Food> generateRecommendFoods() {
    return[
      Food(
          'assets/imagens/21.png',
          'NO1. in Sales',
          'Frappuccino 01',
          1,
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
          'Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis.Quem num gosta di mim que vai caçá sua turmis!', hightLight: true),
      Food(
          'assets/imagens/15.png',
          'NO2. in Sales',
          'Frappuccino 02',
          1,
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
          'Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis.Quem num gosta di mim que vai caçá sua turmis!', hightLight: true),
      Food(
          'assets/imagens/17.png',
          'N10. in Sales',
          'Frappuccino 03',
          1,
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
          'Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis.Quem num gosta di mim que vai caçá sua turmis!', hightLight: true),
      Food(
          'assets/imagens/22.png',
          'NO3. in Sales',
          'Coffe 01',
          1,
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
          'Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis.Quem num gosta di mim que vai caçá sua turmis!', hightLight: true),

    ];
  }
  static List<Food> generatePopularFoods() {
    return[
      Food(
          'assets/imagens/22.png',
          'NO1. in Popular',
          'Coffe',
          1,
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
          'Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis.Quem num gosta di mim que vai caçá sua turmis!', hightLight: true),
      Food(
          'assets/imagens/18.png',
          'NO2. in Popular',
          'Coffe 2',
          1,
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
          'Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis.Quem num gosta di mim que vai caçá sua turmis!', hightLight: true),
      Food(
          'assets/imagens/19.png',
          'NO3. in Popular',
          'Coffe 3',
          1,
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
          'Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis.Quem num gosta di mim que vai caçá sua turmis!', hightLight: true),

    ];
  }
}
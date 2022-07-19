import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/about.png'),
            SizedBox(height: 30),
            Text(
              "A Arcos Dorados é a maior franquia independente direitos exclusivos de possuir, operar e conceder o McDonald’s do mundo e a principal rede de alimentação rápida em toda América Latina e Caribe. A companhia tem as franquias de restaurantes McDonald's em 20 países e territórios, incluindo Argentina, Aruba, Brasil, Chile, Colômbia, Costa Rica, Curaçao, Equador, Guiana Francesa, Guadalupe, Martinica, México, Panamá, Peru, Porto Rico, St. Croix, St. Thomas, Trinidad & Tobago, Uruguai e Venezuela. Desde sua fundação, em 2007, a companhia preza por compromissos que norteiam sua operação, como qualidade, transparência e segurança do alimento, geração de empregos formais para jovens, apoio às comunidades onde está presente, cadeia de suprimentos sustentável e impacto ambiental, diversidade e inclusão e experiências inovadoras para toda a família. Atualmente, a rede conta com mais de 2.200 restaurantes em toda América Latina, entre unidades próprias e subfranqueadas, além de mais de 240 McCafés e cerca de 3.300 desert centers. Para isso, contamos com mais de 100 mil funcionários em toda região. No Brasil, são cerca de 1.020 restaurantes, mais de 75 McCafés e 2.010 desert centers, empregando mais de 50 mil pessoas.",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed('/home');
        },
        label: const Text('               Visite nosso menu                  '),
        icon: const Icon(Icons.restaurant_menu),
        backgroundColor: Colors.yellow[800],
      ),
    );
  }
}

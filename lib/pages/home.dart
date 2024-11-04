import 'package:flutter/material.dart';
import '../components/app_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: const CustomAppBar(text: 'Curriculum Vitae'),
      body: Container(
        color: isDarkMode ? Colors.black : Colors.white, // Couleur de fond en fonction du mode sombre
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/profile.jpg',
                width: 100,
              ),
              Text(
                "Houssem BOUGACHA",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "lieu de naissance : Sfax ",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
              Text(
                "Date de naissance : Le 14/10/1998 ",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Je suis un jeune diplômé spécialisé en Business Intelligence.. Actuellement, je suis en quête d'une opportunité professionnelle stimulante au sein d une entreprise qui me permettra d approfondir mes compétences. Parallèlement, je poursuis mes études en génie logiciel et je suis engagé dans un programme de master professionnel en sciences et ingénierie des données afin de renforcer davantage mes connaissances et ma expertise dans le domaine.",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
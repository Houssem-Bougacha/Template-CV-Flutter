import 'package:flutter/material.dart';
import 'package:houssem_bougacha/components/app_bar.dart';
import '../components/data.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: const CustomAppBar(text: "Detail"),
      body: SingleChildScrollView(
        child: Container(
          color: isDarkMode ? Colors.black : Colors.white, // Couleur de fond simple
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const SideHeading(heading: 'FORMATION SCOLAIRE:'),
                const Text(
                  'International Institution of Technology Sfax \n Ingénierie en Génie Logiciel \n 2023-Présent \n \n Faculté des Sciences Économiques et de Gestion de Sfax \n Master En Science Et Ingénierie des données \n 2022-Présent \n \n Institut Supérieur De gestion Industrielle Sfax \n License De Business Intelligence \n 2019-2022 \n \n Lycée Majida Bou Lila \n Baccalauréat Section Informatique \n 2017-2019',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 16), // Changement de couleur du texte en noir
                ),
                const SideHeading(heading: 'COMPÉTENCES ET SAVOIR-FAIRE: '),
                Wrap(
                  children: techStack.map((skill) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        child: Text(
                          skill,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                Column(
                  children: [
                    const SideHeading(heading: 'Certification: '),
                    Column(
                      children: [
                        Ptag(
                            text:
                            '● Scrum Fundamentals \n Scrum Study \n 09-11-2023'),
                        Ptag(
                            text:
                            '● Digital Marketing Fundamentals \n Scrum Study \n 09-11-2023'),
                        Ptag(
                            text:
                            '● NCN-A Negotioation Associate \n Scrum Study \n 09-11-2023'),
                      ],
                    ),

                    const SideHeading(heading: 'COMPETANCES LINGUISTIQUE: '),
                    Column(
                      children: [
                        Ptag(text: 'Arabe'),
                        Ptag(text: 'English'),
                        Ptag(text: 'Français'),
                      ],
                    ),
                    const SideHeading(heading: 'Compétences techniques: '),
                    Column(
                      children: [
                        Ptag(text: 'MS PowerPoint'),
                        Ptag(text: 'MS Excel'),
                        Ptag(text: 'MS Word'),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SideHeading extends StatelessWidget {
  const SideHeading({Key? key, required this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 14),
      child: Text(
        heading,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.w600, color: Colors.blueGrey), // Changement de couleur du texte en noir
      ),
    );
  }
}

class Ptag extends StatelessWidget {
  const Ptag({Key? key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.blueGrey), // Changement de couleur du texte en noir
      ),
    );
  }
}

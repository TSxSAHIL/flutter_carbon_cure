// help_center_screen.dart

import 'package:flutter/material.dart';

class HelpCenterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Center'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            FAQItem(
              question: 'What is carbon emission?',
              answer: 'Carbon emission refers to the release of carbon compounds into the atmosphere, primarily carbon dioxide (CO2). It is a major contributor to climate change.',
            ),
            Divider(),
            FAQItem(
              question: 'How can I reduce my carbon footprint?',
              answer: 'To reduce your carbon footprint, consider using energy-efficient appliances, driving less, using public transport, and adopting sustainable practices in your daily life.',
            ),
            Divider(),
            FAQItem(
              question: 'What are the major sources of carbon emissions?',
              answer: 'The major sources of carbon emissions include the burning of fossil fuels for energy, deforestation, industrial processes, and transportation.',
            ),
            Divider(),
            FAQItem(
              question: 'Are there eco-friendly transportation options?',
              answer: 'Yes, you can choose eco-friendly transportation options such as electric vehicles, bicycles, or public transportation to reduce your carbon footprint.',
            ),
            Divider(),
            FAQItem(
              question: 'How does carbon emission impact the environment?',
              answer: 'Carbon emission contributes to global warming, climate change, and air pollution. It leads to adverse effects on ecosystems, weather patterns, and sea levels.',
            ),
            Divider(),
            FAQItem(
              question: 'What is the role of individuals in combating climate change?',
              answer: 'Individuals can contribute by adopting sustainable practices, reducing energy consumption, supporting renewable energy, and advocating for policies to address climate change.',
            ),
            Divider(),
            FAQItem(
              question: 'How does deforestation contribute to carbon emission?',
              answer: 'Deforestation releases stored carbon in trees into the atmosphere. Trees act as carbon sinks, and their removal contributes to increased carbon dioxide levels.',
            ),
            Divider(),
            FAQItem(
              question: 'Can businesses reduce carbon emissions?',
              answer: 'Yes, businesses can reduce carbon emissions by implementing energy-efficient practices, using renewable energy, and adopting sustainable supply chain management.',
            ),
            Divider(),
            FAQItem(
              question: 'What are some renewable energy sources?',
              answer: 'Renewable energy sources include solar, wind, hydropower, and geothermal. These sources produce energy with lower carbon emissions compared to fossil fuels.',
            ),
            Divider(),
            FAQItem(
              question: 'Is carbon capture technology effective?',
              answer: 'Carbon capture technology aims to capture and store carbon emissions. While it has potential, its effectiveness and widespread implementation are still evolving.',
            ),
          ],
        ),
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        question,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(answer),
        ),
      ],
    );
  }
}

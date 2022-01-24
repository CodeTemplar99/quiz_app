class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sampleData = [
  {
    "id": 1,
    "question": "what is air __________?",
    "options": ['gas', 'fluid', 'liquid', 'vapour'],
    "answer": 1,
  },
  {
    "id": 2,
    "question": "what is color __________?",
    "options": ['abstract', 'substance', 'reflection', 'paint'],
    "answer": 0,
  },
  {
    "id": 3,
    "question": "what is sand __________?",
    "options": ['earth', 'chemical', 'matter', 'soil'],
    "answer": 3,
  },
  {
    "id": 4,
    "question": "what is breathe __________?",
    "options": ['vapour', 'air', 'gas', 'liquid'],
    "answer": 0,
  },
  {
    "id": 5,
    "question": "what is this __________?",
    "options": ['flutter', 'an app', 'video', 'demo'],
    "answer": 2,
  }
];

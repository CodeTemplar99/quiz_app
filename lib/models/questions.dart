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
    "answer_index": '1',
  },
  {
    "id": 2,
    "question": "what is black __________?",
    "options": ['color', 'substance', 'nothing', 'void'],
    "answer_index": '1',
  },
  {
    "id": 3,
    "question": "what is sand __________?",
    "options": ['earth', 'chemical', 'matter', 'soil'],
    "answer_index": '4',
  },
  {
    "id": 1,
    "question": "what is air __________?",
    "options": ['gas', 'fluid', 'liquid', 'vapour'],
    "answer_index": '3',
  },
  {
    "id": 1,
    "question": "what is air __________?",
    "options": ['gas', 'fluid', 'liquid', 'vapour'],
    "answer_index": '2',
  }
];

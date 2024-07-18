import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int questionTracker = 0;

  List<Widget> scoreKeeper = [];

  List<String> questions = [
    'The Great Wall of China is visible from space with the naked eye.',
    'Humans and dinosaurs coexisted at the same time.',
    'The Eiffel Tower can be 15 cm taller during the summer.',
    'Lightning never strikes the same place twice.',
    'Goldfish have a memory span of only three seconds.',
    'Bananas grow on trees.',
    'Humans have four distinct blood types.',
    'The human body has more than 200 bones.',
    'The Mona Lisa has no eyebrows.',
    'The shortest war in history lasted only 38 minutes.',
  ];

  List<bool> answers = [
    false,
    false,
    true,
    false,
    false,
    false,
    true,
    true,
    true,
    true,
  ];

  void updateIcons(String s) {
    if (s == 'correct') {
      scoreKeeper.add(
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      scoreKeeper.add(
        const Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionTracker],
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    bool correctAnswer = answers[questionTracker];

                    if (questionTracker + 1 == questions.length) {
                      questionTracker = 0;
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "End of the quiz",
                        desc: "",
                        buttons: [
                          DialogButton(
                            onPressed: () => Navigator.pop(context),
                            color: const Color.fromRGBO(0, 179, 134, 1.0),
                            child: const Text(
                              "continue",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          DialogButton(
                            onPressed: () => Navigator.pop(context),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(116, 116, 191, 1.0),
                              Color.fromRGBO(52, 138, 199, 1.0)
                            ]),
                            child: const Text(
                              "back",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ],
                      ).show();
                    }

                    if (correctAnswer == true) {
                      updateIcons('correct');
                    } else {
                      updateIcons('wrong');
                    }

                    questions[questionTracker];
                    questionTracker++;
                  });
                },
                child: const Text(
                  'True',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () {
                setState(() {
                  bool correctAnswer = answers[questionTracker];

                  if (questionTracker + 1 == questions.length) {
                    questionTracker = 0;
                    Alert(
                      context: context,
                      type: AlertType.warning,
                      title: "End of the quiz",
                      desc: "",
                      buttons: [
                        DialogButton(
                          onPressed: () => Navigator.pop(context),
                          color: const Color.fromRGBO(0, 179, 134, 1.0),
                          child: const Text(
                            "Continue",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        DialogButton(
                          onPressed: () => Navigator.pop(context),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(116, 116, 191, 1.0),
                            Color.fromRGBO(52, 138, 199, 1.0)
                          ]),
                          child: const Text(
                            "Back",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ).show();
                  }

                  if (correctAnswer == false) {
                    updateIcons('correct');
                  } else {
                    updateIcons('wrong');
                  }

                  questions[questionTracker];
                  questionTracker++;
                });
              },
              child: const Text(
                'False',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

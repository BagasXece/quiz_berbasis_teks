import 'question_bank.dart';
import 'utils.dart';

void startQuiz() {
  int score = 0;

  print("====== SELAMAT DATANG DI QUIZ NASIONAL ======\n");

  for (var i = 0; i < questions.length; i++) {
    print("Soal ${i + 1}: ${questions[i]['question']}");
    for (var option in questions[i]['options']) {
      print(option);
    }

    String? userAnswer = getValidatedInput("Jawaban Anda (A/B/C/D): ", ["A", "B", "C", "D"]);

    if (userAnswer == questions[i]['answer']) {
      print("✅ Benar!\n");
      score++;
    } else {
      print("❌ Salah! Jawaban yang benar adalah ${questions[i]['answer']}\n");
    }
  }

  double percent = (score / questions.length) * 100;
  print("Skor Anda: $score dari ${questions.length}");
  showFeedback(percent);
}

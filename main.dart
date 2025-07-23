import 'quiz.dart';
import 'utils.dart';

void main() {
  while (true) {
    print("======= MENU UTAMA QUIZ =======");
    print("1. Mulai Quiz");
    print("2. Keluar");

    String? choice = getValidatedInput("Pilih menu (1/2): ", ["1", "2"]);

    switch (choice) {
      case '1':
        _startQuizFlow();
        break;
      case '2':
        print("👋 Terima kasih! Sampai jumpa.");
        return;
    }
  }
}

void _startQuizFlow() {
  while (true) {
    startQuiz();
    String? again = getValidatedInput("\nIngin mengulang quiz? (y/n): ", ["Y", "N"])?.toLowerCase();
    if (again != 'y') break;
    print("\n\n");
  }
}
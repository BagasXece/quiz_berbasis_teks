import 'quiz.dart';
import 'utils.dart';

void main() {
  while (true) {
    // Menampilkan menu utama setiap kali perulangan
    print("======= MENU UTAMA QUIZ =======");
    print("1. Mulai Quiz");
    print("2. Keluar");

    // Meminta input valid dari user (hanya 1 atau 2 yang diterima)
    String? choice = getValidatedInput("Pilih menu (1/2): ", ["1", "2"]);

    // Mengeksekusi pilihan user menggunakan switch
    switch (choice) {
      case '1':
        _startQuizFlow(); // Menjalankan quiz
        break;
      case '2':
        print("👋 Terima kasih! Sampai jumpa."); // Keluar dari program
        return; // Mengakhiri fungsi main, sekaligus program
    }
  }
}

void _startQuizFlow() {
  while (true) {
    startQuiz(); // Menjalankan quiz

    // Menanyakan apakah pengguna ingin mengulang quiz
    String? again = getValidatedInput(
      "\nIngin mengulang quiz? (y/n): ", 
      ["Y", "N"]
    )?.toLowerCase(); // Mengubah input ke huruf kecil agar mudah dibandingkan

    if (again != 'y') break; // Keluar dari loop jika pengguna tidak ingin mengulang

    print("\n\n"); // Memberi jarak antar percobaan
  }
}
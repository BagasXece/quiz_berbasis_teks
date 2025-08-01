import 'question_bank.dart';  // Mengimpor daftar pertanyaan dari file eksternal
import 'utils.dart';          // Mengimpor fungsi utilitas seperti validasi input dan feedback

void startQuiz() {
  int score = 0; // Variabel untuk menyimpan jumlah jawaban benar

  print("====== SELAMAT DATANG DI QUIZ NASIONAL ======\n"); // Judul pembuka kuis

  // Loop untuk menampilkan semua pertanyaan satu per satu
  for (var i = 0; i < questions.length; i++) { //questions.length: mengambil panjang elemen dari list questions
    print("Soal ${i + 1}: ${questions[i]['question']}"); // Menampilkan teks soal

    // Menampilkan pilihan jawaban (A, B, C, D)
    for (var option in questions[i]['options']) {
      print(option);
    }

    // Meminta jawaban dari pengguna dan memvalidasinya agar hanya A/B/C/D yang diterima
    String? userAnswer = getValidatedInput(
      "Jawaban Anda (A/B/C/D): ",
      ["A", "B", "C", "D"]
    );

    // Mengecek apakah jawaban pengguna benar
    if (userAnswer == questions[i]['answer']) {
      print("✅ Benar!\n");
      score++; // Tambah skor jika jawaban benar
    } else {
      print("❌ Salah! Jawaban yang benar adalah ${questions[i]['answer']}\n");
    }
  }

  // Menghitung persentase skor dari jumlah soal
  double percent = (score / questions.length) * 100;

  // Menampilkan skor akhir pengguna
  print("Skor Anda: $score dari ${questions.length}");

  // Menampilkan feedback berdasarkan persentase nilai
  showFeedback(percent);
}

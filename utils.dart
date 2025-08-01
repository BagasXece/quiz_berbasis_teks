import 'dart:io'; // Mengimpor pustaka untuk input/output, khususnya untuk membaca input dari pengguna via terminal

void showFeedback(double percent) {
  // Menampilkan header hasil kuis
  print("\n===== HASIL QUIZ =====");
  
  // Menampilkan nilai akhir dalam format dua angka desimal
  print("Nilai: ${percent.toStringAsFixed(2)}%\n");

  // Memberikan umpan balik berdasarkan nilai
  if (percent == 100) {
    print("🎉 Luar biasa! Kamu menjawab semua soal dengan benar!"); // Jika semua benar
  } else if (percent >= 70) {
    print("👍 Bagus! Kamu menguasai materi."); // Jika cukup tinggi
  } else {
    print("💡 Yuk belajar lagi! Kamu pasti bisa."); // Jika perlu belajar lagi
  }
}

String? getValidatedInput(String prompt, List<String> validOptions) {
  while (true) {
    stdout.write(prompt); // Menampilkan prompt kepada pengguna
    String? input = stdin.readLineSync()?.toUpperCase(); // Membaca input lalu mengubahnya menjadi huruf besar

    // Memeriksa apakah input tidak null dan termasuk dalam opsi yang valid
    if (input != null && validOptions.contains(input)) {
      return input; // Mengembalikan input yang valid
    }

    // Memberikan peringatan jika input tidak valid
    print("⚠️ Input tidak valid. Pilih salah satu dari: ${validOptions.join("/")}\n");
  }
}

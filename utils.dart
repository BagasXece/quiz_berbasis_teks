import 'dart:io';

void showFeedback(double percent) {
  print("\n===== HASIL QUIZ =====");
  print("Nilai: ${percent.toStringAsFixed(2)}%\n");

  if (percent == 100) {
    print("🎉 Luar biasa! Kamu menjawab semua soal dengan benar!");
  } else if (percent >= 70) {
    print("👍 Bagus! Kamu menguasai materi.");
  } else {
    print("💡 Yuk belajar lagi! Kamu pasti bisa.");
  }
}

String? getValidatedInput(String prompt, List<String> validOptions) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync()?.toUpperCase();

    if (input != null && validOptions.contains(input)) {
      return input;
    }

    print("⚠️ Input tidak valid. Pilih salah satu dari: ${validOptions.join("/")}\n");
  }
}

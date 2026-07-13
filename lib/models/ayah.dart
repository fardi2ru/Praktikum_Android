class Ayah {

  final int nomorAyat;
  final String teksArab;
  final String teksLatin;
  final String textIndonesia;
  final Map<String, String> audio;

  Ayah({
    required this.nomorAyat,
    required this.teksArab,
    required this.teksLatin,
    required this.textIndonesia,
    required this.audio,
  });

  factory Ayah.fromJson(Map<String, dynamic> json) {

    return Ayah(
      nomorAyat: json['nomorAyat'] ?? 0,

      teksArab: json['teksArab'] ?? '',

      teksLatin: json['teksLatin'] ?? '',

      textIndonesia: json['textIndonesia'] ?? '',

      audio: (json['audio'] as Map<String, dynamic>? ?? {})
          .map((key, value) => MapEntry(key, value.toString()))
          .cast<String, String>(),
    );
  }
}
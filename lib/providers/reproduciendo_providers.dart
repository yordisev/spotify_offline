import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

class ReproduciendoProvider extends StateNotifier<AudioPlayer> {
  ReproduciendoProvider() : super(AudioPlayer());
}

final sonidoProvider =
    StateNotifierProvider<ReproduciendoProvider, AudioPlayer>((ref) {
  return ReproduciendoProvider();
});

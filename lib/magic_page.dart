import 'package:flutter/material.dart';
import 'package:hannah/magic.dart';
import 'package:hannah/magic_clipped.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

import 'sizes.dart';

class MagicDash extends StatefulWidget {
  @override
  _MagicDash createState() => _MagicDash();
}

class _MagicDash extends State<MagicDash> {
   AssetsAudioPlayer _assetsAudioPlayer;

    @override
  void initState() {
    super.initState();
    _assetsAudioPlayer = AssetsAudioPlayer();
    _assetsAudioPlayer.open(
      AssetsAudio(
        asset: "mundo.mp3",
        folder: "assets/",
      ),
    );
    _assetsAudioPlayer.play();
  }
  @override
  void dispose() {
    // _assetsAudioPlayer = null;
    if(_assetsAudioPlayer.isPlaying.value == true){
 _assetsAudioPlayer.stop();
    }
   
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    Magic magic;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return MagicClipped(
                imagePath: mag[index].imagePath,
                title: mag[index].description,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: size_12);
            },
            itemCount: mag.length),
      ),
    );
  }
}

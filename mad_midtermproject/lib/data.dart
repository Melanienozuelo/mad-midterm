import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';

enum Level { Hard, Medium, Easy }

List<String> fillSourceArray() {
  return [
    'assets/image/buko.jpg',
    'assets/image/buko.jpg',
    'assets/image/lechon.jpg',
    'assets/image/lechon.jpg',
    'assets/image/pica-pic.jpg',
    'assets/image/pica-pic.jpg',
    'assets/image/inihaw.jpg',
    'assets/image/inihaw.jpg',
  ];
}

List<String> fillSourceArrayM() {
  return [
    'assets/image/balut.jpg',
    'assets/image/balut.jpg',
    'assets/image/banana-cue.jpg',
    'assets/image/banana-cue.jpg',
    'assets/image/bbq.jpg',
    'assets/image/bbq.jpg',
    'assets/image/fresh-lumpia.jpg',
    'assets/image/fresh-lumpia.jpg',
    'assets/image/halo-halo.jpg',
    'assets/image/halo-halo.jpg',
    'assets/image/inihaw.jpg',
    'assets/image/inihaw.jpg',
  ];
}
List<String> fillSourceArrayH() {
  return [
    'assets/image/mais.jpg',
    'assets/image/mais.jpg',
    'assets/image/mani.jpg',
    'assets/image/mani.jpg',
    'assets/image/pansit.jpg',
    'assets/image/pansit.jpg',
    'assets/image/pica-pic.jpg',
    'assets/image/pica-pic.jpg',
    'assets/image/buko.jpg',
    'assets/image/buko.jpg',
    'assets/image/lechon.jpg',
    'assets/image/lechon.jpg',
    'assets/image/banana-cue.jpg',
    'assets/image/banana-cue.jpg',
    'assets/image/bbq.jpg',
    'assets/image/bbq.jpg',
    'assets/image/halo-halo.jpg',
    'assets/image/halo-halo.jpg',
    'assets/image/bibingka.jpg',
    'assets/image/bibingka.jpg',
  ];
}
List<String> getSourceArray(
  Level level,
) {
  List<String> levelAndKindList = <String>[];  
  List<String> sourceArray = fillSourceArray().cast<String>();
  List<String> sourceArrayM = fillSourceArrayM().cast<String>();
  List<String> sourceArrayH = fillSourceArrayH().cast<String>();
  if (level == Level.Hard) {
    for (int i = 0; i < 20; i++) {
      levelAndKindList.add(sourceArrayH[i]);
    }
  } 
  else if (level == Level.Medium) {
    for (int i = 0; i < 12; i++) {
      levelAndKindList.add(sourceArrayM[i]);
    }
  } else if (level == Level.Easy) {
    for (int i = 0; i < 8; i++) {
      levelAndKindList.add(sourceArray[i]);
    }
  }

  levelAndKindList.shuffle();
  return levelAndKindList;
}

List<bool> getInitialItemState(Level level) {
  List<bool> initialItemState = <bool>[]; 
  if (level == Level.Hard) {
    for (int i = 0; i < 20; i++) {
      initialItemState.add(true);
    }
  } else if (level == Level.Medium) {
    for (int i = 0; i < 12; i++) {
      initialItemState.add(true);
    }
  } else if (level == Level.Easy) {
    for (int i = 0; i < 8; i++) {
      initialItemState.add(true);
    }
  }
  return initialItemState;
}

List<GlobalKey<FlipCardState>> getCardStateKeys(Level level) {
  List<GlobalKey<FlipCardState>> cardStateKeys = <GlobalKey<FlipCardState>>[];  
  if (level == Level.Hard) {
    for (int i = 0; i < 20; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  } else if (level == Level.Medium) {
    for (int i = 0; i < 12; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  } else if (level == Level.Easy) {
    for (int i = 0; i < 8; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  }
  return cardStateKeys;
}

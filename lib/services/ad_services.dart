import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:summer_fun/utilities/strings.dart';


class AdMobService {

  static String? get bannerAdUnitID {
    if (Platform.isAndroid) {
      return ProjectStr.bannerAdAndroidId;
    } else if (Platform.isIOS) {
      return ProjectStr.bannerAdiOSId;
    }
    return null;
  }

  static String? get interstitialAdUnitID {
    if (Platform.isAndroid) {
      return ProjectStr.interstitialAdAndroidId;
    } else if (Platform.isIOS) {
      return ProjectStr.interstitialAdiOSId;
    }
    return null;
  }

  static final BannerAdListener bannerAdListener = BannerAdListener(
    onAdLoaded: (ad) => debugPrint("Ad loaded"),
    onAdFailedToLoad: (ad, error) {
      ad.dispose();
      debugPrint("Ad failed to load:-/-/-/-/-/-/-/-/-/-/-/-/-$error");
    },
    onAdOpened: (ad) => debugPrint("Ad opened"),
    onAdClosed: (ad) => debugPrint("Ad closed"),
    onAdClicked: (ad) => debugPrint("Ad clicked"),
  );


  // this func initalize Banner Ads in app
  void createBannerAd(BannerAd banner) {
    banner = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: AdMobService.bannerAdUnitID!,
      listener: AdMobService.bannerAdListener,
      request: const AdRequest(),
    )..load();


    void createInterstitialAd() {
      
    }
  }
}

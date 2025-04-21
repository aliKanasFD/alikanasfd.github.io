import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.devlopLogo,
      description:
          'I am a Junior mobile developer, I have experience using Dart and Flutter Framework.',
    ),
    CustomService(
      service: 'UI & UX DESIGNING',
      logo: AppAssets.uiuxLogo,
      description:
          'I design beautiful and responsive app interfaces with Flutter Framework.',
    ),
    CustomService(
      service: 'CLEAN ARCHITECTURE',
      logo: AppAssets.archLogo,
      description:
          'I have solid experience in writing clean code and clean architecture with bloc pattern.',
    ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'khsoosi online',
      imageUrl:
          'https://play-lh.googleusercontent.com/rdw62kV1v9gy17daa9YMerxlbHDUWmJkWu4EwsHuognqBFtxzVMAbMVRemWDN7llhDQ=w240-h480',
      description:
          'Within minutes, we will connect you to the largest directory of private teachers in the Arab world.',
      googlePlay:
          'https://play.google.com/store/apps/details?id=net.khosousi_online',
      isOffline: false,
    ),
    Project(
      name: 'Gpa calculater',
      imageUrl:
          'https://play-lh.googleusercontent.com/Shl12XJ7lBConIE69pZc6lEjp1CDnyNSY_BLclqdXwNWU7hXf-ofU-kA4IVG4Ua5ddA=w240-h480',
      description:
          'Social media application for share posts and stories with people, One-to-one chat, Share reels videos',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.atlas_world.gpa_calculator',
      isOffline: false,
    ),
    Project(
        name: 'AStore',
        imageUrl: AppAssets.astoreIcon,
        description:
            'An E-Commerce app to help you find and buy any product you want.',
        previewLink: '',
        isOffline: true,
        images: [
          AppAssets.astore1,
          AppAssets.astore2,
          AppAssets.astore3,
          AppAssets.astore4,
          AppAssets.astore5,
          AppAssets.astore6,
          AppAssets.astore7,
          AppAssets.astore8,
          AppAssets.astore9,
          AppAssets.astore10,
          AppAssets.astore11,
          AppAssets.astore12,
          AppAssets.astore13,
          AppAssets.astore14,
          AppAssets.astore15,
          AppAssets.astore16,
          AppAssets.astore17,
          AppAssets.astore18,
          AppAssets.astore19,
          AppAssets.astore20,
          AppAssets.astore21,
          AppAssets.astore22,
          AppAssets.astore23,
          AppAssets.astore24,
          AppAssets.astore25,
          AppAssets.astore26,
          AppAssets.astore27,
          AppAssets.astore28,
          AppAssets.astore29,
          AppAssets.astore30,
        ]),
    Project(
        name: 'Shoppy',
        imageUrl: AppAssets.shoppyIcon,
        description: 'A store app to find any thing fast and easy.',
        previewLink: '',
        isOffline: true,
        images: [
          AppAssets.shoppy1,
          AppAssets.shoppy2,
          AppAssets.shoppy3,
          AppAssets.shoppy4,
          AppAssets.shoppy5,
          AppAssets.shoppy6,
          AppAssets.shoppy7,
          AppAssets.shoppy8,
          AppAssets.shoppy9,
          AppAssets.shoppy10,
          AppAssets.shoppy11,
          AppAssets.shoppy12,
          AppAssets.shoppy13,
        ]),
    Project(
        name: 'Aksa',
        imageUrl: AppAssets.aksaIcon,
        description:
            'A social media app to contact your friends and familty and post your thoughts out loud.',
        previewLink: '',
        isOffline: true,
        images: [
          AppAssets.aksa1,
          AppAssets.aksa2,
          AppAssets.aksa3,
          AppAssets.aksa4,
          AppAssets.aksa5,
          AppAssets.aksa6,
          AppAssets.aksa7,
          AppAssets.aksa8,
          AppAssets.aksa9,
          AppAssets.aksa10,
        ]),
  ];
}

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "9ba8447a06c70144c1103b2da5e559ad",
"assets/AssetManifest.bin.json": "ca4ebedb95c073adfbcc40b25d8e7a74",
"assets/AssetManifest.json": "927e0649afe501b0f36c23c996d33895",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/images/aksa/aksa1.png": "a0edd6b484bdf7a2396ed0726ab11eeb",
"assets/assets/images/aksa/aksa10.png": "e962dc82945714335f362a18d8ea8160",
"assets/assets/images/aksa/aksa2.png": "671c578ea77b4910e52c63249aa31fcd",
"assets/assets/images/aksa/aksa3.png": "b2ba190b41f56c5979fd0fb8965a0731",
"assets/assets/images/aksa/aksa4.png": "d2b40660622a27900dd262c3aaa5718c",
"assets/assets/images/aksa/aksa5.png": "077862125f621767d7b87eb228b4ea30",
"assets/assets/images/aksa/aksa6.png": "15488d40fc67bba22172b9741d9c3bcb",
"assets/assets/images/aksa/aksa7.png": "53265739fe5185c209c1368d2dabc421",
"assets/assets/images/aksa/aksa8.png": "cb99551f6e94d32118731d9f7a21cff2",
"assets/assets/images/aksa/aksa9.png": "f58b7cbfa8780accd631f4748922405a",
"assets/assets/images/aksa/aksaIcon.png": "01065ffdbec197153e6eb950aa51497a",
"assets/assets/images/android.svg": "0a04451ad3b5886234ef80268c803e46",
"assets/assets/images/arch.svg": "7bbf5f72b191a54fd31f0a0e4af7466e",
"assets/assets/images/astore/astore1.png": "90ea0b302203e5ed62d88d8c4fb8b81a",
"assets/assets/images/astore/astore10.png": "0b54067126f7777b660c1e53f5d16cf8",
"assets/assets/images/astore/astore11.png": "9f7a0aa4300fdfaab1fa450c3c36bf19",
"assets/assets/images/astore/astore12.png": "972d0cf129f26b6498622fd9e207318b",
"assets/assets/images/astore/astore13.png": "5a18c4c2695896d9f1e6c43afa24363c",
"assets/assets/images/astore/astore14.png": "8f5fe2b37ef7f253ce0fa10f3f22d47b",
"assets/assets/images/astore/astore15.png": "11692574a5703e562e6dc240c7b1e325",
"assets/assets/images/astore/astore16.png": "efb69aae082eacc9adc777678a589458",
"assets/assets/images/astore/astore17.png": "88cdf5224e2ff980db359fbb2879516a",
"assets/assets/images/astore/astore18.png": "2dd04cf700ac1b3518e055d577536b67",
"assets/assets/images/astore/astore19.png": "15932d3ddf425b96d1ebfc61cf16b0d6",
"assets/assets/images/astore/astore2.png": "6a6eef0b75612ec4093023ea0b5149b5",
"assets/assets/images/astore/astore20.png": "780bc1c7bf5d4a9c6a7698f734a4f264",
"assets/assets/images/astore/astore21.png": "0dc8946d9ca061106cba9c899d00a88b",
"assets/assets/images/astore/astore22.png": "4a0220522462b474c459e5e97a81d2c0",
"assets/assets/images/astore/astore23.png": "6f0c76c0946c88a41a2642ce834bd3a6",
"assets/assets/images/astore/astore24.png": "16468bbcb8aee826352a677b0ba81209",
"assets/assets/images/astore/astore25.png": "2668a376f473755bbf205a786a63c227",
"assets/assets/images/astore/astore26.png": "dba170c26a531e067881baad30d16cb3",
"assets/assets/images/astore/astore27.png": "ea554e84bfc86b3ddd6fb00b70281b50",
"assets/assets/images/astore/astore28.png": "c87d79debc547db1b1d1754cd30c4d45",
"assets/assets/images/astore/astore29.png": "7724a5eb15491b1b583d254431295e7b",
"assets/assets/images/astore/astore3.png": "a0b5f94a888e009ebe1672249ce5fb11",
"assets/assets/images/astore/astore30.png": "10822c5656a592e260cb00fd55bdabe4",
"assets/assets/images/astore/astore4.png": "3b1a15effbbd9e3eb688d8fe68efb5c9",
"assets/assets/images/astore/astore5.png": "8d79440a99ee472735ad10c8ea796c67",
"assets/assets/images/astore/astore6.png": "f26554c2d8810ac931e621327e1cfe87",
"assets/assets/images/astore/astore7.png": "ffe0c240210f6f1925552c4b82906270",
"assets/assets/images/astore/astore8.png": "e2a4795826cea40768cdf7ce98bc7281",
"assets/assets/images/astore/astore9.png": "58eb468726406d3c2d789bacc689e218",
"assets/assets/images/astore/astoreIcon.png": "f0156c64ff73457f985dc9666f1f8930",
"assets/assets/images/cv.png": "66290eef6cbbda2f982f2d323ef329c4",
"assets/assets/images/devlop.svg": "e68928af0955bc5d340df4e559649a66",
"assets/assets/images/portfolio_icon.png": "7cb8fcd768c7538bd9c9efd457a0df18",
"assets/assets/images/ruler.svg": "4791ae452335f1ba68a2787f872f3e5f",
"assets/assets/images/shoppy/shoppy1.png": "76cfe0889af1bc825d77bdc2307726f6",
"assets/assets/images/shoppy/shoppy10.png": "b76f327f5a789c0a506ab4134916d6ad",
"assets/assets/images/shoppy/shoppy11.png": "c10507f65738e7126c63a27b9bf533ae",
"assets/assets/images/shoppy/shoppy12.png": "15aefcb721a7ed627f2033290813cc17",
"assets/assets/images/shoppy/shoppy13.png": "1ac801b8afd6dd8ef845353f3b331277",
"assets/assets/images/shoppy/shoppy14.png": "85452ae44613573210d7357b0ed538cc",
"assets/assets/images/shoppy/shoppy15.png": "bc381aafe41c10ab6d2dc829a3c3a5e2",
"assets/assets/images/shoppy/shoppy16.png": "88abcf394d74459b9391b59fc1b9041b",
"assets/assets/images/shoppy/shoppy17.png": "44dad46642a518882ebf6129e0609276",
"assets/assets/images/shoppy/shoppy18.png": "5b827ea64736f76a13382730e22b0bb5",
"assets/assets/images/shoppy/shoppy19.png": "72b0bffb59da7071327722810c5de7bf",
"assets/assets/images/shoppy/shoppy2.png": "65c9e7eaabed89a022a7654ca08e63b9",
"assets/assets/images/shoppy/shoppy20.png": "13c0de24de877c4983707c45101f1b5a",
"assets/assets/images/shoppy/shoppy3.png": "7c5c8a7ad49f8d9851ed58981b094722",
"assets/assets/images/shoppy/shoppy4.png": "86eb304e947ddf4b889ab77701ef2e4c",
"assets/assets/images/shoppy/shoppy5.png": "5739feea783cc3191537f3f14c0acc1b",
"assets/assets/images/shoppy/shoppy6.png": "d7bc8efd561ea509beebf36545a339db",
"assets/assets/images/shoppy/shoppy7.png": "6b823675d96bfc9ce391e73d1c567315",
"assets/assets/images/shoppy/shoppy8.png": "b38ec37133524283967fe95fa02a228a",
"assets/assets/images/shoppy/shoppy9.png": "e525e3821a41d7d27e92eee4e87a190b",
"assets/assets/images/shoppy/shoppyIcon.png": "29b9d9429206e0756a7d5bf0170dbaf7",
"assets/assets/images/slider.svg": "a4fc3ee8b34de4bfab375880f4297c49",
"assets/assets/images/uiux.svg": "aba5fbbde362f431ae03e7c5d05073bf",
"assets/FontManifest.json": "9079600dd6cc1457502d9273b45170aa",
"assets/fonts/MaterialIcons-Regular.otf": "4e5c37789c9acc2837ff8ca54875276b",
"assets/loading.gif": "602efadf1bcfb2d6b7ac7bf3c91430a2",
"assets/NOTICES": "6f8e4b7b67a53275a8f4716f660208aa",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "c5dae08190d442a5a77040efd5263d6c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "de27f912e40a372c22a069c1c7244d9b",
"canvaskit/canvaskit.js.symbols": "94965d99736447dbf20d5a974133ebde",
"canvaskit/canvaskit.wasm": "804f06d0f01b097f2e5eb29bb8c20088",
"canvaskit/chromium/canvaskit.js": "73343b0c5d471d1114d7f02e06c1fdb2",
"canvaskit/chromium/canvaskit.js.symbols": "aeaf9b1247775089746ae677bf7fd1f7",
"canvaskit/chromium/canvaskit.wasm": "207c43feefa102b6aff313d084e45e3d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "36ea95d6f42ad493b66beec7f0173816",
"canvaskit/skwasm.wasm": "a1d36966831755fe72fec1f8f78e1d46",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "9d147bacea5f4fea85fbb6ecc1fad548",
"canvaskit/skwasm_st.wasm": "992432bd30da19848811325c264d465f",
"favicon.png": "aedc5b869ce523e2f271c34f641017b6",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "bbf90effad95a8963533cbccdae0d0ed",
"index.html": "c40beb840c9d9eb4107e4b1dbf805db0",
"/": "c40beb840c9d9eb4107e4b1dbf805db0",
"main.dart.js": "2c19f2d4e996d2242459c7b19e543345",
"manifest.json": "23b242c34d373d2c1985ea81871fe392",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

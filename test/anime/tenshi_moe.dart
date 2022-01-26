import 'dart:io';
import 'package:extensions_test/test.dart';
import 'package:path/path.dart' as path;

Future<void> main() async {
  await AnimeExtractorTest.testFile(
    path.join(
      Directory.current.path,
      'extensions/anime/tenshi_moe/tenshi_moe.ht',
    ),
    search: (final AnimeExtractorTest ext) => ext.search(
      'mayo chiki',
      TestEnvironmentManager.defaultLocale,
    ),
    getInfo: (final AnimeExtractorTest ext) => ext.getInfo(
      'https://tenshi.moe/anime/1kwzf88a',
      TestEnvironmentManager.defaultLocale,
    ),
    getSources: (final AnimeExtractorTest ext) => ext.getSources(
      const EpisodeInfo(
        episode: '1',
        url: 'https://tenshi.moe/anime/1kwzf88a/1',
        locale: TestEnvironmentManager.defaultLocale,
      ),
    ),
  );
}

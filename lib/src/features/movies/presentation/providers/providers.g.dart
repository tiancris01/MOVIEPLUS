// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$configHash() => r'c82684ab369f04288309fa88d205d766b9f6e978';

/// See also [config].
@ProviderFor(config)
final configProvider = AutoDisposeProvider<BaseAppConfig>.internal(
  config,
  name: r'configProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$configHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ConfigRef = AutoDisposeProviderRef<BaseAppConfig>;
String _$dioHash() => r'1ef732ee935314ff5e4a92ff3a811aa01a678650';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$movieDataSourceHash() => r'7e23371dcf11c92c9914fa7ae6725bc8e7b2d533';

/// See also [movieDataSource].
@ProviderFor(movieDataSource)
final movieDataSourceProvider = AutoDisposeProvider<MovieDataSource>.internal(
  movieDataSource,
  name: r'movieDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$movieDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieDataSourceRef = AutoDisposeProviderRef<MovieDataSource>;
String _$movieRepositoryHash() => r'a75c6bd9d01e6b6427ce14c577ad63483b2d924c';

/// See also [MovieRepository].
@ProviderFor(MovieRepository)
final movieRepositoryProvider = AutoDisposeProvider<MoviesRepository>.internal(
  MovieRepository,
  name: r'movieRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$movieRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieRepositoryRef = AutoDisposeProviderRef<MoviesRepository>;
String _$nowPlayingNotifierHash() =>
    r'96ab0229dd59759199bf3f99540adf2e419688d1';

/// See also [NowPlayingNotifier].
@ProviderFor(NowPlayingNotifier)
final nowPlayingNotifierProvider =
    AutoDisposeNotifierProvider<NowPlayingNotifier, MoviesState>.internal(
  NowPlayingNotifier.new,
  name: r'nowPlayingNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$nowPlayingNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NowPlayingNotifier = AutoDisposeNotifier<MoviesState>;
String _$moviesNotifierHash() => r'48090e38688e9e786f238fdcd708c71f7781df51';

/// See also [MoviesNotifier].
@ProviderFor(MoviesNotifier)
final moviesNotifierProvider =
    AutoDisposeAsyncNotifierProvider<MoviesNotifier, List<Movie>>.internal(
  MoviesNotifier.new,
  name: r'moviesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$moviesNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MoviesNotifier = AutoDisposeAsyncNotifier<List<Movie>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

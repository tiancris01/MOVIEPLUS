import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieplus/src/features/movies/presentation/providers/providers.dart';

class HomeScreen extends ConsumerWidget {
  static const name = "HomePage";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: _HomeView(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(nowPlayingNotifierProvider.notifier).fetchMovies();
          ref.read(nowPlayingNotifierProvider.notifier).fetchMovies();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  ConsumerState<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    // ref.read(nowPlayingNotifierProvider.notifier).fetchMovies();
    ref.read(nowPlayingNotifierProvider.notifier).fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    // final movies = ref.watch(nowPlayingNotifierProvider);
    final movies = ref.watch(nowPlayingNotifierProvider);
    return movies.when(
        Loading: () => const CircularProgressIndicator(),
        Loaded: (movies) => ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return ListTile(
                  title: Text(movie.title),
                  subtitle: Text(movie.overview),
                );
              },
            ),
        Error: (error) => Text(error.toString()));
  }
}

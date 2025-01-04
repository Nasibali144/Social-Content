import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract final class Routes {
  static const home = '/';
  static const detail = 'detail';
  static const reviewWithID = 'review/:id'; // id
  static const review = 'review';
  static const category = '/category';


  static String _appendToCurrentPath(String newPath) {
    final newUri = Uri.parse(newPath);
    final currentPath = AppRoute.router.routeInformationProvider.value.uri;

    Map<String, dynamic> params = Map.of(currentPath.queryParameters);
    params.addAll(newUri.queryParameters);

    Uri loc = Uri(path: "${currentPath.path}/${newUri.path}".replaceAll("//", "/"), queryParameters: params);
    return loc.toString();
  }
  
  static String reviewNamed(String id) => _appendToCurrentPath("$review/$id");
}

abstract final class AppRoute {
  static String initialLocation = Routes.home;

  static final _review = GoRoute(
    path: Routes.reviewWithID,
    builder: (context, state) => Review(id: state.pathParameters['id']!),
  );

  static final GoRouter router = GoRouter(
    initialLocation: initialLocation,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const Home(),
        routes: [
          GoRoute(
            path: Routes.detail,
            builder: (context, state) => const Detail(),
            routes: [_review],
          )
        ],
      ),
      GoRoute(
        path: Routes.category,
        builder: (context, state) => const Category(),
        routes: [_review],
      )
    ],
  );
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoute.router,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/detail'),
              child: const Text('Go to Details'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go("/category"),
              child: const Text('Go to Category'),
            )
          ],
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => context.go(Routes.reviewNamed("123")),
              child: const Text('Go to Review'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Go Back'),
            )
          ],
        ),
      ),
    );
  }
}

class Review extends StatelessWidget {
  final String id;
  const Review({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Review: $id')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.pop(),
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Category')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go(Routes.reviewNamed("123")),
          child: const Text('Review'),
        ),
      ),
    );
  }
}

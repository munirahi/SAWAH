import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : OnbordingWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : OnbordingWidget(),
        ),
        FFRoute(
          name: ProfileSettingsWidget.routeName,
          path: ProfileSettingsWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profile_Settings')
              : ProfileSettingsWidget(),
        ),
        FFRoute(
          name: OnbordingWidget.routeName,
          path: OnbordingWidget.routePath,
          builder: (context, params) => OnbordingWidget(),
        ),
        FFRoute(
          name: UserHomeWidget.routeName,
          path: UserHomeWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'userHome')
              : UserHomeWidget(),
        ),
        FFRoute(
          name: BookExperienceWidget.routeName,
          path: BookExperienceWidget.routePath,
          asyncParams: {
            'experienceRef':
                getDoc(['Experiences'], ExperiencesRecord.fromSnapshot),
          },
          builder: (context, params) => BookExperienceWidget(
            experienceRef: params.getParam(
              'experienceRef',
              ParamType.Document,
            ),
            userRef: params.getParam(
              'userRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            seatlimittt: params.getParam(
              'seatlimittt',
              ParamType.int,
            ),
            remainingseatsss: params.getParam(
              'remainingseatsss',
              ParamType.int,
            ),
            revvvv: params.getParam<DocumentReference>(
              'revvvv',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['reviews'],
            ),
          ),
        ),
        FFRoute(
          name: Payment1Widget.routeName,
          path: Payment1Widget.routePath,
          builder: (context, params) => Payment1Widget(
            experienceRef: params.getParam(
              'experienceRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Experiences'],
            ),
            numberOfSeats: params.getParam(
              'numberOfSeats',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Payment2Widget.routeName,
          path: Payment2Widget.routePath,
          builder: (context, params) => Payment2Widget(),
        ),
        FFRoute(
          name: CreateNewExperienceWidget.routeName,
          path: CreateNewExperienceWidget.routePath,
          builder: (context, params) => CreateNewExperienceWidget(),
        ),
        FFRoute(
          name: ReservationConfirmedWidget.routeName,
          path: ReservationConfirmedWidget.routePath,
          builder: (context, params) => ReservationConfirmedWidget(),
        ),
        FFRoute(
          name: HostHomePageWidget.routeName,
          path: HostHomePageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HostHomePageWidget(),
        ),
        FFRoute(
          name: CreateExperienceConfirmationWidget.routeName,
          path: CreateExperienceConfirmationWidget.routePath,
          builder: (context, params) => CreateExperienceConfirmationWidget(),
        ),
        FFRoute(
          name: ProfileSettingsHostWidget.routeName,
          path: ProfileSettingsHostWidget.routePath,
          builder: (context, params) => ProfileSettingsHostWidget(),
        ),
        FFRoute(
          name: Auth2ProfileWidget.routeName,
          path: Auth2ProfileWidget.routePath,
          builder: (context, params) => Auth2ProfileWidget(),
        ),
        FFRoute(
          name: AuthEDITEDWidget.routeName,
          path: AuthEDITEDWidget.routePath,
          builder: (context, params) => AuthEDITEDWidget(),
        ),
        FFRoute(
          name: UserInfoooWidget.routeName,
          path: UserInfoooWidget.routePath,
          builder: (context, params) => UserInfoooWidget(
            nameee: params.getParam(
              'nameee',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Experiences'],
            ),
          ),
        ),
        FFRoute(
          name: AuthNewWidget.routeName,
          path: AuthNewWidget.routePath,
          builder: (context, params) => AuthNewWidget(),
        ),
        FFRoute(
          name: ExpDetailsWidget.routeName,
          path: ExpDetailsWidget.routePath,
          builder: (context, params) => ExpDetailsWidget(
            experienceDetails: params.getParam(
              'experienceDetails',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Experiences'],
            ),
          ),
        ),
        FFRoute(
          name: ExpDetailsForCreatorWidget.routeName,
          path: ExpDetailsForCreatorWidget.routePath,
          builder: (context, params) => ExpDetailsForCreatorWidget(
            experienceDetails: params.getParam(
              'experienceDetails',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Experiences'],
            ),
          ),
        ),
        FFRoute(
          name: AccounDWidget.routeName,
          path: AccounDWidget.routePath,
          builder: (context, params) => AccounDWidget(
            userData: params.getParam(
              'userData',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: ResendEmailVWidget.routeName,
          path: ResendEmailVWidget.routePath,
          builder: (context, params) => ResendEmailVWidget(),
        ),
        FFRoute(
          name: NotificationsDrawerWidget.routeName,
          path: NotificationsDrawerWidget.routePath,
          builder: (context, params) => NotificationsDrawerWidget(),
        ),
        FFRoute(
          name: UsersBookedExWidget.routeName,
          path: UsersBookedExWidget.routePath,
          builder: (context, params) => UsersBookedExWidget(),
        ),
        FFRoute(
          name: LocationWidget.routeName,
          path: LocationWidget.routePath,
          builder: (context, params) => LocationWidget(
            locationParameter: params.getParam(
              'locationParameter',
              ParamType.LatLng,
            ),
            userLong: params.getParam(
              'userLong',
              ParamType.double,
            ),
            userlat: params.getParam(
              'userlat',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: Payment2CopyWidget.routeName,
          path: Payment2CopyWidget.routePath,
          asyncParams: {
            'expreffffffff':
                getDoc(['Experiences'], ExperiencesRecord.fromSnapshot),
          },
          builder: (context, params) => Payment2CopyWidget(
            countcontrollerguest: params.getParam(
              'countcontrollerguest',
              ParamType.int,
            ),
            expreffffffff: params.getParam(
              'expreffffffff',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: RecreateExpWidget.routeName,
          path: RecreateExpWidget.routePath,
          builder: (context, params) => RecreateExpWidget(
            expName: params.getParam(
              'expName',
              ParamType.String,
            ),
            expDescription: params.getParam(
              'expDescription',
              ParamType.String,
            ),
            expImage: params.getParam(
              'expImage',
              ParamType.String,
            ),
            expAge: params.getParam(
              'expAge',
              ParamType.String,
            ),
            expPrice: params.getParam(
              'expPrice',
              ParamType.double,
            ),
            expLocation: params.getParam(
              'expLocation',
              ParamType.LatLng,
            ),
            expRef: params.getParam(
              'expRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Experiences'],
            ),
            creatorRef: params.getParam(
              'creatorRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            expGenderr: params.getParam(
              'expGenderr',
              ParamType.String,
            ),
            reveiws: params.getParam<DocumentReference>(
              'reveiws',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['reviews'],
            ),
          ),
        ),
        FFRoute(
          name: MapWidget.routeName,
          path: MapWidget.routePath,
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'map') : MapWidget(),
        ),
        FFRoute(
          name: AcountDForUserWidget.routeName,
          path: AcountDForUserWidget.routePath,
          builder: (context, params) => AcountDForUserWidget(
            userData: params.getParam(
              'userData',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: UserReservedExperiencesWidget.routeName,
          path: UserReservedExperiencesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'User_ReservedExperiences')
              : UserReservedExperiencesWidget(
                  reserved: params.getParam<DocumentReference>(
                    'reserved',
                    ParamType.DocumentReference,
                    isList: true,
                    collectionNamePath: ['Reserved'],
                  ),
                ),
        ),
        FFRoute(
          name: ReviewForUserWidget.routeName,
          path: ReviewForUserWidget.routePath,
          builder: (context, params) => ReviewForUserWidget(
            experienceToRate: params.getParam(
              'experienceToRate',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Experiences'],
            ),
          ),
        ),
        FFRoute(
          name: ReviewExpConfirmationWidget.routeName,
          path: ReviewExpConfirmationWidget.routePath,
          builder: (context, params) => ReviewExpConfirmationWidget(),
        ),
        FFRoute(
          name: NotificationsWidget.routeName,
          path: NotificationsWidget.routePath,
          builder: (context, params) => NotificationsWidget(),
        ),
        FFRoute(
          name: Reviews1Widget.routeName,
          path: Reviews1Widget.routePath,
          builder: (context, params) => Reviews1Widget(
            experID: params.getParam(
              'experID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Experiences'],
            ),
          ),
        ),
        FFRoute(
          name: TermsandConditionsWidget.routeName,
          path: TermsandConditionsWidget.routePath,
          builder: (context, params) => TermsandConditionsWidget(),
        ),
        FFRoute(
          name: ContacttheSupportteamWidget.routeName,
          path: ContacttheSupportteamWidget.routePath,
          builder: (context, params) => ContacttheSupportteamWidget(),
        ),
        FFRoute(
          name: ImageDetailsWidget.routeName,
          path: ImageDetailsWidget.routePath,
          asyncParams: {
            'chatMessage':
                getDoc(['chat_messages'], ChatMessagesRecord.fromSnapshot),
          },
          builder: (context, params) => ImageDetailsWidget(
            chatMessage: params.getParam(
              'chatMessage',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: Chat2DetailsWidget.routeName,
          path: Chat2DetailsWidget.routePath,
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => Chat2DetailsWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: Chat2MainWidget.routeName,
          path: Chat2MainWidget.routePath,
          builder: (context, params) => Chat2MainWidget(),
        ),
        FFRoute(
          name: Chat2InviteUsersWidget.routeName,
          path: Chat2InviteUsersWidget.routePath,
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => Chat2InviteUsersWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ImageDetails1Widget.routeName,
          path: ImageDetails1Widget.routePath,
          asyncParams: {
            'chatMessage':
                getDoc(['chat_messages'], ChatMessagesRecord.fromSnapshot),
          },
          builder: (context, params) => ImageDetails1Widget(
            chatMessage: params.getParam(
              'chatMessage',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: UserHomeCopy2Widget.routeName,
          path: UserHomeCopy2Widget.routePath,
          builder: (context, params) => UserHomeCopy2Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onbording';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Screenshot_2024-11-23_221936.png',
                    fit: BoxFit.cover,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}

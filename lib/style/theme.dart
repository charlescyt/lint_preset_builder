import 'dart:ui' show Brightness, Color;

import 'package:flex_color_scheme/flex_color_scheme.dart';

final theme = FlexThemeData.dark(
  scheme: FlexScheme.aquaBlue,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 2,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendTextTheme: true,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    defaultRadius: 12,
    elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
    elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
    outlinedButtonOutlineSchemeColor: SchemeColor.primary,
    toggleButtonsBorderSchemeColor: SchemeColor.primary,
    segmentedButtonSchemeColor: SchemeColor.primary,
    segmentedButtonBorderSchemeColor: SchemeColor.primary,
    unselectedToggleIsColored: true,
    sliderValueTinted: true,
    inputDecoratorSchemeColor: SchemeColor.primary,
    inputDecoratorBackgroundAlpha: 43,
    inputDecoratorUnfocusedHasBorder: false,
    inputDecoratorFocusedBorderWidth: 1,
    inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
    fabUseShape: true,
    fabAlwaysCircular: true,
    fabSchemeColor: SchemeColor.tertiary,
    popupMenuRadius: 8,
    popupMenuElevation: 3,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
    drawerIndicatorRadius: 12,
    drawerIndicatorSchemeColor: SchemeColor.primary,
    bottomNavigationBarMutedUnselectedLabel: false,
    bottomNavigationBarMutedUnselectedIcon: false,
    menuRadius: 8,
    menuElevation: 3,
    menuBarRadius: 0,
    menuBarElevation: 2,
    menuBarShadowColor: Color(0x00000000),
    navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
    navigationBarMutedUnselectedLabel: false,
    navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
    navigationBarMutedUnselectedIcon: false,
    navigationBarIndicatorSchemeColor: SchemeColor.primary,
    navigationBarIndicatorOpacity: 1,
    navigationBarIndicatorRadius: 12,
    navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
    navigationRailMutedUnselectedLabel: false,
    navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
    navigationRailMutedUnselectedIcon: false,
    navigationRailIndicatorSchemeColor: SchemeColor.primary,
    navigationRailIndicatorOpacity: 1,
    navigationRailIndicatorRadius: 12,
    navigationRailBackgroundSchemeColor: SchemeColor.surface,
  ),
  keyColors: const FlexKeyColors(
    useSecondary: true,
    useTertiary: true,
  ),
  tones: FlexTones.jolly(Brightness.dark),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  fontFamily: 'Inter',
);

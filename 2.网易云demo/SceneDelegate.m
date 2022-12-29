//
//  SceneDelegate.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "SceneDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "YunViewController.h"
#import "ViewController.h"
#import "InitViewController.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    /*FirstViewController *firstViewController = [[FirstViewController alloc] init];
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    FourViewController *fourViewController = [[FourViewController alloc] init];
    FiveViewController *fiveViewController = [[FiveViewController alloc] init];
    
    firstViewController.title = @"发现";
    secondViewController.title = @"视频";
    thirdViewController.title = @"我的";
    fourViewController.title = @"云村";
    fiveViewController.title = @"账号";
    
    UINavigationController *FirstNavigationController = [[UINavigationController alloc] initWithRootViewController: firstViewController];
    UINavigationController *SecondNavigationController = [[UINavigationController alloc] initWithRootViewController: secondViewController];
    UINavigationController *ThirdNavigationController = [[UINavigationController alloc] initWithRootViewController:thirdViewController];
    UINavigationController *FourNavigationController = [[UINavigationController alloc] initWithRootViewController: fourViewController];
    UINavigationController *FiveNavigationController = [[UINavigationController alloc] initWithRootViewController: fiveViewController];
    
    NSArray *arrayViewController = [NSArray arrayWithObjects:FirstNavigationController, SecondNavigationController, ThirdNavigationController, FourNavigationController, FiveNavigationController, nil];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = arrayViewController;
    tabBarController.view.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = tabBarController;*/
    //UIWindow *window = [UIApplication sharedApplication].windows[0];
    //window.rootViewController = tabBarController;
    InitViewController *initViewController = [[InitViewController alloc] init];
    self.window.rootViewController = initViewController;
    NSTimer* myTimer = [NSTimer scheduledTimerWithTimeInterval:3   target:self selector:@selector(timeOut) userInfo:nil repeats:NO];
}
- (void)timeOut {
    FirstViewController *firstViewController = [[FirstViewController alloc] init];
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    FourViewController *fourViewController = [[FourViewController alloc] init];
    FiveViewController *fiveViewController = [[FiveViewController alloc] init];
    firstViewController.view.backgroundColor = [UIColor whiteColor];
    secondViewController.view.backgroundColor = [UIColor whiteColor];
    thirdViewController.view.backgroundColor = [UIColor whiteColor];
    fourViewController.view.backgroundColor = [UIColor whiteColor];
    fiveViewController.view.backgroundColor = [UIColor whiteColor];
    
    firstViewController.title = @"发现";
    secondViewController.title = @"视频";
    thirdViewController.title = @"我的";
    fourViewController.title = @"云村";
    fiveViewController.title = @"账号";
    
    UINavigationController *FirstNavigationController = [[UINavigationController alloc] initWithRootViewController: firstViewController];
    UINavigationController *SecondNavigationController = [[UINavigationController alloc] initWithRootViewController: secondViewController];
    UINavigationController *ThirdNavigationController = [[UINavigationController alloc] initWithRootViewController:thirdViewController];
    UINavigationController *FourNavigationController = [[UINavigationController alloc] initWithRootViewController: fourViewController];
    UINavigationController *FiveNavigationController = [[UINavigationController alloc] initWithRootViewController: fiveViewController];
    ThirdNavigationController.navigationBar.backgroundColor = [UIColor blackColor];
    NSArray *arrayViewController = [NSArray arrayWithObjects:FirstNavigationController, SecondNavigationController, ThirdNavigationController, FourNavigationController, FiveNavigationController, nil];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = arrayViewController;
    tabBarController.view.backgroundColor = [UIColor whiteColor];
    //self.window.rootViewController = tabBarController;*/
    UIWindow *window = [UIApplication sharedApplication].windows[0];
    window.rootViewController = tabBarController;
    
}

- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end

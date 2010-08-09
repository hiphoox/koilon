//
//  ShowtimeAppDelegate.h
//  Koilon
//
//  Created by Norberto Ortigoza on 29/05/10.
//  Copyright Moobbi 2010. All rights reserved.
//


///////////////////////////////////////////////////////////////////////////////////////////////////
// Comments
//
@interface ShowtimeAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
 @private
  // App State
  BOOL modelCreated_;
  BOOL resetModel_;
}

// Comments
@property (nonatomic, retain) IBOutlet UIWindow           *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
@property (nonatomic, readonly)        NSString           *applicationDocumentsDirectory;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;

@end


//
//  KoilonAppDelegate.h
//  Koilon
//
//  Created by Norberto Ortigoza on 29/05/10.
//  Copyright StoneFree Software 2010. All rights reserved.
//


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
@interface AppDelegate : NSObject <UIApplicationDelegate> 
{
  @private
  NSManagedObjectModel         * managedObjectModel;
  NSManagedObjectContext       * managedObjectContext;
  NSPersistentStoreCoordinator * persistentStoreCoordinator;

  // App State
  BOOL modelCreated;
  BOOL resetModel;
}

@property (nonatomic, retain, readonly) NSManagedObjectContext * managedObjectContext;
@property (nonatomic, readonly)         NSString               * applicationDocumentsDirectory;


@end


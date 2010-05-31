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
@interface AppDelegate : NSObject <UIApplicationDelegate> {
  NSManagedObjectModel*         _managedObjectModel;
  NSManagedObjectContext*       _managedObjectContext;
  NSPersistentStoreCoordinator* _persistentStoreCoordinator;

  // App State
  BOOL                          _modelCreated;
  BOOL                          _resetModel;
}

@property (nonatomic, retain, readonly) NSManagedObjectContext* managedObjectContext;
@property (nonatomic, readonly)         NSString*               applicationDocumentsDirectory;


@end


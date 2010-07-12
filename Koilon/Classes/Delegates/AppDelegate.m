//
//  KoilonAppDelegate.m
//  Koilon
//
//  Created by Norberto Ortigoza on 29/05/10.
//  Copyright StoneFree Software 2010. All rights reserved.
//

#import "AppDelegate.h"

#define kStoreType      NSSQLiteStoreType
#define kStoreFilename  @"db.sqlite"


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
@interface AppDelegate()

@property (nonatomic, retain, readwrite) NSManagedObjectContext       * managedObjectContext;
@property (nonatomic, retain, readwrite) NSManagedObjectModel         * managedObjectModel;
@property (nonatomic, retain, readwrite) NSPersistentStoreCoordinator * persistentStoreCoordinator;

@end


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
@implementation AppDelegate

@synthesize managedObjectContext;
@synthesize managedObjectModel;
@synthesize persistentStoreCoordinator;
@synthesize applicationDocumentsDirectory;

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)applicationDidFinishLaunching:(UIApplication *)application 
{
  // Forcefully removes the model db and recreates it.
  //_resetModel = YES;

  TTNavigator * navigator = [TTNavigator navigator];
  navigator.persistenceMode = TTNavigatorPersistenceModeAll;

  TTURLMap * map = navigator.URLMap;

  [map from:@"*" toViewController:[TTWebController class]];

  if (![navigator restoreViewControllers]) {
    [navigator openURLAction:[TTURLAction actionWithURLPath:@"http://three20.info"]];
  }
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)dealloc 
{
  self.managedObjectContext       = nil;
  self.managedObjectModel         = nil;
  self.persistentStoreCoordinator = nil;

	[super dealloc];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)navigator:(TTNavigator *)navigator shouldOpenURL:(NSURL *)URL 
{
  return YES;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)URL 
{
  [[TTNavigator navigator] openURLAction:[TTURLAction actionWithURLPath:URL.absoluteString]];
  return YES;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)applicationWillTerminate:(UIApplication *)application 
{
  NSError * error = nil;
  if (managedObjectContext != nil) 
  {
    if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error])
    {
      NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
      abort();
    }
  }
}


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Core Data stack


///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSManagedObjectContext *)managedObjectContext 
{
  if( managedObjectContext != nil ) 
  {
    return managedObjectContext;
  }
	
  NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
  if (coordinator != nil) 
  {
    managedObjectContext = [[NSManagedObjectContext alloc] init];
    [managedObjectContext setPersistentStoreCoordinator: coordinator];
    [managedObjectContext setUndoManager:nil];
    [managedObjectContext setRetainsRegisteredObjects:YES];
  }
  return managedObjectContext;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSManagedObjectModel *)managedObjectModel 
{
  if (managedObjectModel != nil) 
  {
    return managedObjectModel;
  }
  managedObjectModel = [[NSManagedObjectModel mergedModelFromBundles:nil] retain];
  return managedObjectModel;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString *)storePath 
{
  return [[self applicationDocumentsDirectory] stringByAppendingPathComponent: kStoreFilename];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSURL *)storeUrl 
{
  return [NSURL fileURLWithPath:[self storePath]];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSDictionary *)migrationOptions 
{
  return nil;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator 
{
  if (persistentStoreCoordinator != nil) 
  {
    return persistentStoreCoordinator;
  }

  NSString * storePath = [self storePath];
  NSURL    * storeUrl  = [self storeUrl];
	NSError  * error;
  
  persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel: [self managedObjectModel]];

  NSDictionary * options = [self migrationOptions];

  // Check whether the store already exists or not.
  NSFileManager * fileManager = [NSFileManager defaultManager];
  BOOL exists = [fileManager fileExistsAtPath:storePath];

  TTDINFO(storePath);
  if (!exists) 
  {
    modelCreated = YES;
  } else 
  {
    if (resetModel || [[NSUserDefaults standardUserDefaults] boolForKey:@"erase_all_preference"]) 
    {
      [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"erase_all_preference"];
      [fileManager removeItemAtPath:storePath error:nil];
      modelCreated = YES;
    }
  }

  if (![persistentStoreCoordinator
    addPersistentStoreWithType: kStoreType
                 configuration: nil
                           URL: storeUrl
                       options: options
                         error: &error
  ]) 
  {
    // We couldn't add the persistent store, so let's wipe it out and try again.
    [fileManager removeItemAtPath:storePath error:nil];
    modelCreated = YES;

    if (![persistentStoreCoordinator
      addPersistentStoreWithType: kStoreType
                   configuration: nil
                             URL: storeUrl
                         options: nil
                           error: &error
    ]) 
    {
      // Something is terribly wrong here.
    }
  }

  return persistentStoreCoordinator;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Application's documents directory


///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString *)applicationDocumentsDirectory {
  return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}


@end


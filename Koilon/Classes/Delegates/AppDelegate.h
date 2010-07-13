//
//  KoilonAppDelegate.h
//  Koilon
//
//  Created by Norberto Ortigoza on 29/05/10.
//  Copyright StoneFree Software 2010. All rights reserved.
//


///////////////////////////////////////////////////////////////////////////////////////////////////
// Comments
//
@interface AppDelegate : NSObject <UIApplicationDelegate> 
{
 @private
  // App State
  BOOL modelCreated_;
  BOOL resetModel_;
}

// Comments
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, readonly)         NSString               *applicationDocumentsDirectory;

@end


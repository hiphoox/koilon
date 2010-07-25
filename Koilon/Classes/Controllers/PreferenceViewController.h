//
//  PreferencesViewController.h
//  Koilon
//
//  Created by Norberto Ortigoza on 13/07/10.
//  Copyright StoneFree Software 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

///////////////////////////////////////////////////////////////////////////////////////////////////
// Comments
//
@interface PreferenceViewController : UIViewController <NSFetchedResultsControllerDelegate> 

// Comments
@property (nonatomic, retain) NSManagedObjectContext     *managedObjectContext;
@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;

@end

//
//  PreferencesFavoriteGenresViewController.h
//  Showtime
//
//  Created by Luis Toledo on 9/4/10.
//  Copyright (c) 2010 Moobbi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface PreferencesFavoriteGenresViewController : UIViewController <NSFetchedResultsControllerDelegate> 


// Comments

@property (nonatomic, retain) NSManagedObjectContext     *managedObjectContext;
@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;

@end

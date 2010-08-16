//
//  PreferencesViewController.m
//  Koilon
//
//  Created by Norberto Ortigoza on 13/07/10.
//  Copyright Moobbi 2010. All rights reserved.
//

#import "PreferenceViewController.h"

///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
// Comments
//
@interface PreferenceViewController ()
- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;
- (UITableViewCell *)cellFromPool:(NSString *)cellIdentifier withCellStyle:(UITableViewCellStyle )cellStyle fromTableView:(UITableView *)tableView;

@end


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
// Comments
//
@implementation PreferenceViewController

// Comments
@synthesize fetchedResultsController, managedObjectContext;

// Comments
#define OTHERS_SECTION 0
#define ALERTS_SECTION 1
#define ABOUT_SECTION  2

///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark View lifecycle

////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)viewDidLoad {
  self.title = @"Preferencias";
    
  [super viewDidLoad];
}


////////////////////////////////////////////////////////////////////////////////
// Implement viewWillAppear: to do additional setup before the view is presented.
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}


/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/


////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    
//  NSManagedObject *managedObject = [self.fetchedResultsController objectAtIndexPath:indexPath];
//  cell.textLabel.text = [[managedObject valueForKey:@"timeStamp"] description];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Add a new object

////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)insertNewObject {
/*    
  // Create a new instance of the entity managed by the fetched results controller.
  NSManagedObjectContext *context = [self.fetchedResultsController managedObjectContext];
  NSEntityDescription *entity = [[self.fetchedResultsController fetchRequest] entity];
  NSManagedObject *newManagedObject;
  newManagedObject = [NSEntityDescription 
                      insertNewObjectForEntityForName:[entity name] 
                               inManagedObjectContext:context];


  // If appropriate, configure the new managed object.
  [newManagedObject setValue:[NSDate date] forKey:@"timeStamp"];
  
  // Save the context.
  NSError *error = nil;
  if (![context save:&error]) {
*/
    /*
     Replace this implementation with code to handle the error appropriately.

     abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
     */
  /*
    NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    abort();
  }
   */
}

///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Table view data source


////////////////////////////////////////////////////////////////////////////////
// Comments
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 3;
}


////////////////////////////////////////////////////////////////////////////////
// Comments
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  NSInteger rows = 1;
  
  switch(section){
    case OTHERS_SECTION:
      rows = 2;
      break;
  }
  
  return rows;  
}


////////////////////////////////////////////////////////////////////////////////
// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = nil;
  
  if (indexPath.section == OTHERS_SECTION) {
    NSInteger row = indexPath.row;
    
    if (row == 0) {
      cell = [self cellFromPool:@"Cines favoritos"
                  withCellStyle:UITableViewCellStyleSubtitle
                  fromTableView:tableView];
      cell.textLabel.text = @"Cines favoritos";
    } else {
      cell = [self cellFromPool:@"Géneros favoritos"
                  withCellStyle:UITableViewCellStyleSubtitle
                  fromTableView:tableView];
      cell.textLabel.text = @"Géneros favoritos";
    }
  } else if (indexPath.section == ALERTS_SECTION) {
    cell = [self cellFromPool:@"Alerta habilitada"
                withCellStyle:UITableViewCellStyleSubtitle
                fromTableView:tableView];
    cell.textLabel.text = @"Alerta habilitada";
  } else if (indexPath.section == ABOUT_SECTION) {
    cell = [self cellFromPool:@"About"
                withCellStyle:UITableViewCellStyleSubtitle
                fromTableView:tableView];
    cell.textLabel.text = @"About";
  }
  
  return cell;
}

////////////////////////////////////////////////////////////////////////////////
// Returns an usable cell from the cellPool
- (UITableViewCell *)cellFromPool:(NSString *)cellIdentifier 
                    withCellStyle:(UITableViewCellStyle)cellStyle 
                    fromTableView:(UITableView *)tableView{
  UITableViewCell *cell = nil;
  
  cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  if (cell == nil) {
    cell = [[[UITableViewCell alloc] initWithStyle:cellStyle reuseIdentifier:cellIdentifier] autorelease];
  }
  
  return cell;
}



/*
// Override to support conditional editing of the table view.
//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
//    return YES;
//}



////////////////////////////////////////////////////////////////////////////////
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView 
  commitEditingStyle:(UITableViewCellEditingStyle)editingStyle 
   forRowAtIndexPath:(NSIndexPath *)indexPath {
    
  if (editingStyle == UITableViewCellEditingStyleDelete) {
    // Delete the managed object for the given index path
    NSManagedObjectContext *context = [self.fetchedResultsController managedObjectContext];
    [context deleteObject:[self.fetchedResultsController objectAtIndexPath:indexPath]];
    
    // Save the context.
    NSError *error = nil;
    if (![context save:&error]) {
      
//       Replace this implementation with code to handle the error appropriately.
       
//       abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
//      
      NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
      abort();
    }
  }   
}


- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath 
{
    // The table view should not be re-orderable.
    return NO;
}
*/

///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Table view delegate

////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  // Navigation logic may go here -- for example, create and push another view controller.
  /*
   <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
   NSManagedObject *selectedObject = [[self fetchedResultsController] objectAtIndexPath:indexPath];
   // ...
   // Pass the selected object to the new view controller.
   [self.navigationController pushViewController:detailViewController animated:YES];
   [detailViewController release];
   */
}


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Fetched results controller

/*

////////////////////////////////////////////////////////////////////////////////
// Comments
- (NSFetchedResultsController *)fetchedResultsController {
    
  if (fetchedResultsController != nil) {
      return fetchedResultsController;
  }
  
  // Create the fetch request for the entity.
  NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
  // Edit the entity name as appropriate.
  NSEntityDescription *entity = [NSEntityDescription entityForName:@"Event" 
                                            inManagedObjectContext:self.managedObjectContext];
  [fetchRequest setEntity:entity];
  
  // Set the batch size to a suitable number.
  [fetchRequest setFetchBatchSize:20];
  
  // Edit the sort key as appropriate.
  NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] 
                                      initWithKey:@"timeStamp" 
                                      ascending:NO];
  NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
  
  [fetchRequest setSortDescriptors:sortDescriptors];
  
  // Edit the section name key path and cache name if appropriate.
  // nil for section name key path means "no sections".
  NSFetchedResultsController *aFetchedResultsController = [[NSFetchedResultsController alloc] 
                                                           initWithFetchRequest:fetchRequest 
                                                           managedObjectContext:self.managedObjectContext 
                                                           sectionNameKeyPath:nil 
                                                           cacheName:@"Root"];
  aFetchedResultsController.delegate = self;
  self.fetchedResultsController = aFetchedResultsController;
  
  [aFetchedResultsController release];
  [fetchRequest release];
  [sortDescriptor release];
  [sortDescriptors release];
  
  NSError *error = nil;
  if (![fetchedResultsController performFetch:&error]) {
    NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    abort();
  }
  
  return fetchedResultsController;
}    

 */

///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Fetched results controller delegate


////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller {
   // [self.tableView beginUpdates];
}


////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)controller:(NSFetchedResultsController *)controller 
  didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo
           atIndex:(NSUInteger)sectionIndex 
     forChangeType:(NSFetchedResultsChangeType)type {
    
  switch(type) {
      case NSFetchedResultsChangeInsert:
//           [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
          break;
          
      case NSFetchedResultsChangeDelete:
//          [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
          break;
  }
}


////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)controller:(NSFetchedResultsController *)controller 
   didChangeObject:(id)anObject
       atIndexPath:(NSIndexPath *)indexPath 
     forChangeType:(NSFetchedResultsChangeType)type
      newIndexPath:(NSIndexPath *)newIndexPath {
/*    
    UITableView *tableView = self.tableView;
    
    switch(type) {
            
        case NSFetchedResultsChangeInsert:
            [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] 
                                                      withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] 
                                                      withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeUpdate:
            [self configureCell:[tableView cellForRowAtIndexPath:indexPath] atIndexPath:indexPath];
            break;
            
        case NSFetchedResultsChangeMove:
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] 
                                                      withRowAnimation:UITableViewRowAnimationFade];
            [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath]
                                                      withRowAnimation:UITableViewRowAnimationFade];
            break;
    }*/
}


////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
 //   [self.tableView endUpdates];
}


/*
// Implementing the above methods to update the table view in response to individual changes may have performance implications if a large number of changes are made simultaneously. If this proves to be an issue, you can instead just implement controllerDidChangeContent: which notifies the delegate that all section and object changes have been processed. 
 
 - (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
    // In the simplest, most efficient, case, reload the table view.
    [self.tableView reloadData];
}
 */


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Memory management

////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}


////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


////////////////////////////////////////////////////////////////////////////////
// Comments
- (void)dealloc {
  self.fetchedResultsController = nil;
  self.managedObjectContext     = nil;
  [super dealloc];
}


@end


//
//  MBAlarm.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 Moobbi. All rights reserved.
//

#import <CoreData/CoreData.h>

@class MBMovie;

@interface MBAlarm :  NSManagedObject  
{
}

@property (nonatomic, retain) NSDate *datetime;
@property (nonatomic, retain) MBMovie *movie;

@end




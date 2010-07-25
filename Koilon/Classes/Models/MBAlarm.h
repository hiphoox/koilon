//
//  MBAlarm.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Movie;

@interface MBAlarm :  NSManagedObject  
{
}

@property (nonatomic, retain) NSDate * datetime;
@property (nonatomic, retain) Movie * movie;

@end




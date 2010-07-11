//
//  Showtime.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Movie;
@class Theater;

@interface Showtime :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * isVIP;
@property (nonatomic, retain) NSDate * datetime;
@property (nonatomic, retain) NSString * movieTitle;
@property (nonatomic, retain) NSString * language;
@property (nonatomic, retain) NSNumber * hasSubtitles;
@property (nonatomic, retain) NSString * theaterName;
@property (nonatomic, retain) Theater * theater;
@property (nonatomic, retain) Movie * movie;

@end




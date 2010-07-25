//
//  Theater.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>

@class MBArea;
@class MBShowtime;

@interface Theater :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSDecimalNumber * Latitude;
@property (nonatomic, retain) NSString * photoPath;
@property (nonatomic, retain) NSNumber * isFavorite;
@property (nonatomic, retain) NSDecimalNumber * Longitude;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * phoneNumber;
@property (nonatomic, retain) MBArea * area;
@property (nonatomic, retain) NSSet* theaters;

@end


@interface Theater (CoreDataGeneratedAccessors)
- (void)addTheatersObject:(MBShowtime *)value;
- (void)removeTheatersObject:(MBShowtime *)value;
- (void)addTheaters:(NSSet *)value;
- (void)removeTheaters:(NSSet *)value;

@end


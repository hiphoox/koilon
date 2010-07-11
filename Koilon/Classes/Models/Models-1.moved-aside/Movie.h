//
//  Movie.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Actor;
@class Director;
@class Genre;

@interface Movie :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) NSDate * releaseDate;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * posterPath;
@property (nonatomic, retain) NSString * trailerPath;
@property (nonatomic, retain) NSNumber * isUpcoming;
@property (nonatomic, retain) NSString * resume;
@property (nonatomic, retain) NSData * thumbnail;
@property (nonatomic, retain) NSNumber * duration;
@property (nonatomic, retain) Director * director;
@property (nonatomic, retain) NSSet* cast;
@property (nonatomic, retain) Genre * genre;

@end


@interface Movie (CoreDataGeneratedAccessors)
- (void)addCastObject:(Actor *)value;
- (void)removeCastObject:(Actor *)value;
- (void)addCast:(NSSet *)value;
- (void)removeCast:(NSSet *)value;

@end


//
//  Movie.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>

@class MBActor;
@class Alarm;
@class Director;
@class Genre;
@class Showtime;

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
@property (nonatomic, retain) NSSet* movies;
@property (nonatomic, retain) Director * director;
@property (nonatomic, retain) NSSet* cast;
@property (nonatomic, retain) Genre * genre;
@property (nonatomic, retain) Alarm * alarm;

@end


@interface Movie (CoreDataGeneratedAccessors)
- (void)addMoviesObject:(Showtime *)value;
- (void)removeMoviesObject:(Showtime *)value;
- (void)addMovies:(NSSet *)value;
- (void)removeMovies:(NSSet *)value;

- (void)addCastObject:(MBActor *)value;
- (void)removeCastObject:(MBActor *)value;
- (void)addCast:(NSSet *)value;
- (void)removeCast:(NSSet *)value;

@end


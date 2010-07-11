//
//  Director.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Movie;

@interface Director :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * fullName;
@property (nonatomic, retain) NSSet* movies;

@end


@interface Director (CoreDataGeneratedAccessors)
- (void)addMoviesObject:(Movie *)value;
- (void)removeMoviesObject:(Movie *)value;
- (void)addMovies:(NSSet *)value;
- (void)removeMovies:(NSSet *)value;

@end


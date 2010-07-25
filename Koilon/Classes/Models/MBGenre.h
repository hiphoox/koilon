//
//  MBGenre.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>

@class MBMovie;

@interface MBGenre :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSNumber *priority;
@property (nonatomic, retain) NSSet *movies;

@end


@interface MBGenre (CoreDataGeneratedAccessors)
- (void)addMoviesObject:(Movie *)value;
- (void)removeMoviesObject:(Movie *)value;
- (void)addMovies:(NSSet *)value;
- (void)removeMovies:(NSSet *)value;

@end


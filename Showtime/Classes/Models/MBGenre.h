//
//  MBGenre.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 Moobbi. All rights reserved.
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
- (void)addMoviesObject:(MBMovie *)value;
- (void)removeMoviesObject:(MBMovie *)value;
- (void)addMovies:(NSSet *)value;
- (void)removeMovies:(NSSet *)value;

@end


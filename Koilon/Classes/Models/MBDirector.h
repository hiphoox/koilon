//
//  MBDirector.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>

@class MBMovie;

@interface MBDirector :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString *firstName;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, retain) NSString *fullName;
@property (nonatomic, retain) NSSet *movies;

@end


@interface MBDirector (CoreDataGeneratedAccessors)
- (void)addMoviesObject:(MBMovie *)value;
- (void)removeMoviesObject:(MBMovie *)value;
- (void)addMovies:(NSSet *)value;
- (void)removeMovies:(NSSet *)value;

@end


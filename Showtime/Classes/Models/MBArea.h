//
//  MBArea.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 Moobbi. All rights reserved.
//

#import <CoreData/CoreData.h>

@class MBTheater;

@interface MBArea :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSSet *theaters;

@end


@interface MBArea (CoreDataGeneratedAccessors)
- (void)addTheatersObject:(MBTheater *)value;
- (void)removeTheatersObject:(MBTheater *)value;
- (void)addTheaters:(NSSet *)value;
- (void)removeTheaters:(NSSet *)value;

@end


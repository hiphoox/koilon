//
//  Zone.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Theater;

@interface Area :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet* theaters;

@end


@interface Area (CoreDataGeneratedAccessors)
- (void)addTheatersObject:(Theater *)value;
- (void)removeTheatersObject:(Theater *)value;
- (void)addTheaters:(NSSet *)value;
- (void)removeTheaters:(NSSet *)value;

@end


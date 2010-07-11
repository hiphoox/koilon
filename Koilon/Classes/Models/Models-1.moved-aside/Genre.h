//
//  Genre.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface Genre :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * priority;

@end




//
//  Director.h
//  Koilon
//
//  Created by Norberto Ortigoza on 10/07/10.
//  Copyright 2010 StoneFree Software. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface Director :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * fullName;
@property (nonatomic, retain) NSString * lastName;

@end




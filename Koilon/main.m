//
//  main.m
//  Koilon
//
//  Created by Norberto Ortigoza on 29/05/10.
//  Copyright Moobbi 2010. All rights reserved.
//

int main(int argc, char *argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  int retVal = UIApplicationMain(argc, argv, nil, @"KoilonAppDelegate");
  [pool release];
  return retVal;
}

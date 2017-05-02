//
//  main.m
//  WordEffects
//
//  Created by Marc Maguire on 2017-05-01.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

//The app will take in two pieces of data from the user:
//
//a number, to indicate which operation to do
//a string, to operate on
//Wrap the whole app in an infinite while loop, so users can do multiple operations.
//
//Be sure to print out the menu of options at the start of each loop of the app.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int inputNumber;
        char inputChars[255];
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        
        BOOL keepPlaying = YES;
        while (keepPlaying) {
            
//        while (getchar() != '\n');    
        
            strtok(inputChars, "\n");
            printf("Please select one of the following options by entering the number of your choice: \n1. Transform your string into an UPPERCASE STRING! \n2. Transform your string into a lowercase string! \n3. Change your string into a number!\n4. Canadianize your string! eh!?\n5. Check your string for a question mark!\n6. Remove spaces from your string!\n7. QUIT THE GAME\n");
            scanf("%i",&inputNumber);
        //print as a c string
        printf("Your string is %s\n", inputChars);
        //convert an NSString array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        //print NSString object
            
        NSLog(@"Input was: %@",inputString);
            
     NSString *upperCase = [[NSString stringWithString: inputString]uppercaseString];
     NSString *lowerCase = [[NSString stringWithString:inputString]lowercaseString];
    NSInteger numberize = [inputString integerValue];
    NSString *canadianize = [[NSString stringWithString:inputString]stringByAppendingString:@", eh?"];
    NSString *despacer = [[NSString stringWithString:inputString]stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            
            switch (inputNumber) {
            
                case 1:
                    NSLog(@"%@",upperCase);
                    break;
          
                case 2:
                    NSLog(@"%@",lowerCase);
                    break;
                case 3:
                    if (numberize){
                        NSLog(@"%ld",(long)numberize);
                    } else {
                        NSLog(@"Not a number");
                    }
                    break;
                case 4:
                    NSLog(@"%@",canadianize);
                    break;
                case 5:
                    
                   if ([inputString hasSuffix:@"?"]) {
                    NSLog(@"I don't know");
                } else if ([inputString hasSuffix:@"!"]){
                    NSLog(@"Whoa, calm down!");
                }
                    break;
                case 6:
                    NSLog(@"%@",despacer);
                    break;
                case 7:
                    keepPlaying = NO;
                    break;
            }
            
    }
    return 0;
}
}

//
//  ViewController.m
//  UIWebViewMediaHandling
//
//  Created by Nandeep Mali on 10/09/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSURL *mediaURL = [NSURL URLWithString:@"http://sinan.ussakli.net/basstest/THX%20-%20Always%20Coca-Cola(Commercial).mp3"];
    NSURLRequest *mediaRequest = [NSURLRequest requestWithURL:mediaURL];
    [myWebView loadRequest:mediaRequest];
    
    [myWebView loadHTMLString:@"<script>\
     window.onload = function() {\
         var pElement = document.getElementById(\"foo\");\
         \
         pElement.load();\
         pElement.play();\
     };\
     </script>\
     <h1>hello</h1><audio id=\"foo\" controls=\"controls\">\
     <source src=\"http://sinan.ussakli.net/basstest/THX%20-%20Always%20Coca-Cola(Commercial).mp3\" type=\"audio/mpeg\"  autoplay=\"autoplay\" />\
     Your browser does not support the audio element.\
     </audio>" baseURL:[NSURL URLWithString:@"http://miniorb.in"]];    
}

-(void)movieStartPlaying
{
    NSLog(@"sadasdASdsadasd");
}

- (void)viewDidUnload
{
    [self setMyWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

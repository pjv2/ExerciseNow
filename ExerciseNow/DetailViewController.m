//
//  DetailViewController.m
//  ExerciseNow
//
//  Created by Paul on 9/23/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import "DetailViewController.h"
#import "ExerciseNowDoc.h"
#import "ExerciseNowData.h"
#import "UIImageExtras.h"
#import "RateView.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

@synthesize picker = _picker;



#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    self.rateView.notSelectedImage = [UIImage imageNamed:@"shockedface2_empty.png"];
    self.rateView.halfSelectedImage = [UIImage imageNamed:@"shockedface2_half.png"];
    self.rateView.fullSelectedImage = [UIImage imageNamed:@"shockedface2_full.png"];
    self.rateView.editable = YES;
    self.rateView.maxRating = 5;
    self.rateView.delegate = self;
    if (self.detailItem) {
        [[self titleField]setText:@"self.detailItem.data.title"];
        [[self rateView]setRating:[@"self.detailItem.data.rating" floatValue]];
        [[self imageView]setImage:[UIImage imageNamed:@"self.detailItem.fullImage"]];
    }
}

- (IBAction)addPictureTapped:(id)sender {
    if (self.picker == nil) {
        self.picker = [[UIImagePickerController alloc] init];
        self.picker.delegate = self;
        self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        self.picker.allowsEditing = NO;
    }
    [self.navigationController presentModalViewController:_picker animated:YES];
}
         
#pragma mark UIImagePickerControllerDelegate
         
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
             [self dismissModalViewControllerAnimated:YES];
}
         
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
             
    [self dismissModalViewControllerAnimated:YES];
             
    UIImage *fullImage = (UIImage *) [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *thumbImage = [fullImage imageByScalingAndCroppingForSize:CGSizeMake(44, 44)];
    
    [[self detailItem] setFullImage:fullImage];
    [[self detailItem] setThumbImage:thumbImage];
    [[self imageView] setImage:fullImage];
}
         
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)titleFieldTextChanged:(id)sender
{
    [[[self detailItem]data] setTitle:@"self.detailItem.title"];    
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark RateViewDelegate

- (void)rateView:(RateView *)rateView ratingDidChange:(float)rating
{
    [[[self detailItem]data] setRating:[[self titleField] rating]];
}

@end

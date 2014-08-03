//
//  AALDraggableControlsView.m
//  LearniOS
//
//  Created by Albert Lardizabal on 8/2/14.
//  Copyright (c) 2014 Albert Lardizabal. All rights reserved.
//

#import "AALDraggableControl.h"
#import "AALDraggableControlsView.h"

@implementation AALDraggableControlsView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        controls = [NSMutableArray array];
    }
    return self;
}

- (void)addGridControl:(AALDraggableControl *)control {
    [control addTarget:self
                action:@selector(touch:event:)
      forControlEvents:UIControlEventTouchDown];
    [control addTarget:self
                action:@selector(touchUp:event:)
      forControlEvents:UIControlEventTouchUpInside];
    [control addTarget:self
                action:@selector(dragInside:event:)
      forControlEvents:UIControlEventTouchDragInside];
    [controls addObject:control];
    [self addSubview:control];
}

- (void)layout {
    CGRect rect = self.frame;
    rect.size.height = 0;
    for (AALDraggableControl *control in controls) {
        CGFloat height = control.frame.origin.y + control.frame.size.height;
        rect.size.height = MAX(rect.size.height, height);
    }
    rect.size.height += 5;
    [UIView animateWithDuration:0.1 animations:^{
        self.frame = rect;
    } completion:^(BOOL finished) {
    }];
}

- (IBAction)touch:(AALDraggableControl *)control event:(UIEvent *)event {
    enableCanceled = NO;
    startPoint = [[[event allTouches] anyObject] locationInView:control];
    [self performSelector:@selector(enableDraggable:) withObject:control afterDelay:0.1];
}

- (void)enableDraggable:(AALDraggableControl *)control {
    if (enableCanceled) return;
    draggable = YES;
    [self insertSubview:control atIndex:controls.count - 1];
    [UIView animateWithDuration:0.2 animations:^{
        control.alpha = 0.5;
        CGRect rect = control.frame;
        rect.origin.x += 5;
        rect.origin.y += 5;
        rect.size.width -= 10;
        rect.size.height -= 10;
        control.frame = rect;
    } completion:^(BOOL finished) {
    }];
}

- (IBAction)touchUp:(AALDraggableControl *)control event:(UIEvent *)event {
    enableCanceled = YES;
    if (!draggable) return;
    [UIView animateWithDuration:0.3 animations:^{
        control.alpha = 1;
        CGRect rect = control.frame;
        rect.origin.x -= 5;
        rect.origin.y -= 5;
        rect.size.width += 10;
        rect.size.height += 10;
        control.frame = rect;
    } completion:^(BOOL finished) {
        draggable = NO;
        [self layout];
    }];
}
- (IBAction)dragInside:(AALDraggableControl *)control event:(UIEvent *)event {
    CGPoint point = [[[event allTouches] anyObject] locationInView:self];
    CGRect rect = control.frame;
    rect.origin.x = point.x - startPoint.x + 5;
    rect.origin.y = point.y - startPoint.y + 5;
    control.frame = rect;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

//
//  AALDraggableControlsView.h
//  LearniOS
//
//  Created by Albert Lardizabal on 8/2/14.
//  Copyright (c) 2014 Albert Lardizabal. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AALDraggableControl;

@interface AALDraggableControlsView : UIView {
    CGPoint startPoint;
    BOOL draggable;
    BOOL enableCanceled;
    NSMutableArray *controls;
}

- (void)addGridControl:(AALDraggableControl *)control;

@end

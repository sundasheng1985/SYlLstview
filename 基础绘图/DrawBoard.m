//
//  DrawBoard.m
//  基础绘图
//
//  Created by 孙玉震 on 16/10/28.
//  Copyright © 2016年 孙玉震. All rights reserved.
//

#import "DrawBoard.h"

@implementation DrawBoard

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

//UIColor 对象提供了一些便利方法，用于通过RGB、HSB、和灰度值指定颜色值。
//您也可以使用Core Graphics 框架中的CGContextSetRGBStrokeColor 和
//CGContextSetRGBFillColor 函数来创建和设置颜色。
//路径轮廓可以用像CGContextStrokePath 这样的函数来画，即用当前的笔划颜色画出以路径为中心位置的线。路径的填充则可以用CGContextFillPath 函数来实现，它的功能是用当前的填充颜色或样式填充路径线段包围的区域
-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    //获取CGContextRef(上下文）
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(ctx, [UIColor whiteColor].CGColor);
    CGContextSetLineWidth(ctx, 2);
    CGContextSetFillColorWithColor(ctx, [UIColor yellowColor].CGColor);
//    //线拐角样式
//    CGContextSetLineJoin(ctx, kCGLineJoinRound);
//    //线的两端样式
//    CGContextSetLineCap(ctx, kCGLineCapRound);
    [self drawLine:ctx];
    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetStrokeColorWithColor(context, [UIColor yellowColor].CGColor);
//    CGContextSetLineWidth(context, 2);
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathMoveToPoint(path, NULL, 45, 33);
//    CGPathAddLineToPoint(path, NULL, 234, 343);
//    CGContextAddPath(context, path);
//    CGContextStrokePath(context);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor yellowColor].CGColor);
    CGContextSetLineWidth(context, 2);
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 24, 100);

}

-(void)drawLine:(CGContextRef)ctx{
    CGMutablePathRef path1 = CGPathCreateMutable();
    CGPathMoveToPoint(path1, &CGAffineTransformIdentity, 0, 200);
    CGPathAddLineToPoint(path1, &CGAffineTransformIdentity, 100, 180);
    CGPathAddLineToPoint(path1, &CGAffineTransformIdentity, 230, 300);
    CGPathAddLineToPoint(path1, &CGAffineTransformIdentity, 0, 200);
    CGContextAddPath(ctx, path1);
    //描线
    CGContextStrokePath(ctx);
    
}
@end

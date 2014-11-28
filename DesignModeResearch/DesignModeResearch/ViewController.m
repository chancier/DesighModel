/*
 设计模式
 1、工厂模式：演示两种使用工厂模式的情况
 （1）通过一个-(void)createObj方法创建对象以及属性也在这个方法里边赋值；
 （2）创建N个A对象方便变成B对象 ，只需要改变初始化的时候，其它地方调用的就会顺着变成是B对象在调用。
 限制条件：
 （1）要创建的类必须拥有同一个父类;
 
 （2）要创建的类在N个不同的地方所调用的方法必须一样。
 */

#import "ViewController.h"
#import "FactoryModel.h"
#import "FirstModel.h"
#import "SecondModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//工厂模式
    /**condition1**/
    SubClassFirst *first = [FactoryModel createFirst]; //创建的时候已经有属性赋值了
    [first sthSelector];
    
    SubClassSecond *second = [FactoryModel createSecond];
    [second sthSelector];
    
    /**condition2**/
    FactoryModel *model = [[FirstModel alloc]init];//line1
    
    
    BaseClass *base1 = [model createBase];
    [base1 sthSelector];
    
    BaseClass *base2 = [model createBase];
    [base2 sthSelector];
    
    BaseClass *base3 = [model createBase];
    [base3 sthSelector];
    /*....有N个....*/
    
    /*此时如果要first改成second 只需修改line1行代码,下面都变成想要的了*/
    /* FactoryModel *model = [[SecondModel alloc]init]*/
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

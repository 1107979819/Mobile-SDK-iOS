//
//  CameraSettingValueVC.m
//  PVSDK_Demo
//
//  Copyright © 2017 PowerVision. All rights reserved.
//

#import "CameraSettingValueVC.h"
#import "ComponentHelper.h"

@interface CameraSettingValueVC ()
<
UITableViewDelegate,UITableViewDataSource
>
@property (nonatomic, strong) PVEyeCamera *eyeCameraManager;
@property (nonatomic, copy) NSArray *values;

@end

@implementation CameraSettingValueVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.eyeCameraManager = [ComponentHelper fetchEyeCamera];
}

-(void)setParameterType:(CameraSettingParameterType)parameterType{
    _parameterType = parameterType;
    switch (parameterType) {
        case CameraSettingParameterType_ISO:
            self.values = @[@"Auto",
                             @"100",
                             @"125",
                             @"160",
                             @"200",
                             @"250",
                             @"320",
                             @"400",
                             @"500",
                             @"640",
                             @"800",
                             @"1000",
                             @"1250",
                             @"1600",
                             @"2000",
                             @"2500",
                             @"3200",
                             @"4000",
                             @"5000",
                             @"6400"];
            break;
            
        case CameraSettingParameterType_ApertureSize:
            self.values = @[@"2.5",
                            @"2.8",
                            @"3.2",
                            @"3.5",
                            @"4.0",
                            @"4.5",
                            @"5.0",
                            @"5.6",
                            @"6.3",
                            @"7.1",
                            @"8.0",
                            @"9.0",
                            @"10.0",
                            @"11.0",
                            @"13.0",
                            @"14.0",
                            @"16.0",
                            @"18.0",
                            @"20.0",
                            @"22.0"];
            break;

        case CameraSettingParameterType_EV:
            self.values = @[@"-3.0",
                            @"-2.7",
                            @"-2.3",
                            @"-2.0",
                            @"-1.7",
                            @"-1.3",
                            @"-1.0",
                            @"-0.7",
                            @"-0.3",
                            @"0.0",
                            @"0.3",
                            @"0.7",
                            @"1.0",
                            @"1.3",
                            @"1.7",
                            @"2.0",
                            @"2.3",
                            @"2.7",
                            @"3.0"];
            break;
            
        case CameraSettingParameterType_PZShutterSpeed:
            self.values = @[@"Auto",
                            @"1/2s",
                            @"1/3s",
                            @"1/4s",
                            @"1/5s",
                            @"1/8s",
                            @"1/10s",
                            @"1/15s",
                            @"1/20s",
                            @"1/25s",
                            @"1/40s",
                            @"1/50s",
                            @"1/60s",
                            @"1/80s",
                            @"1/100s",
                            @"1/125s",
                            @"1/160s",
                            @"1/200s",
                            @"1/250s",
                            @"1/320s"];
            break;

        case CameraSettingParameterType_SXShutterSpeed:
            self.values = @[@"Auto",
                             @"1/240s",
                             @"1/120s",
                             @"1/100s",
                             @"1/75s",
                             @"1/62.5s",
                             @"1/60s",
                             @"1/50s",
                             @"1/40s",
                             @"1/33.3s",
                             @"1/30s"];
            break;
        
        case CameraSettingParameterType_CameraMode:
            self.values = @[@"Single",
                            @"Continuous",
                            @"Dely"];
            break;
        
        case CameraSettingParameterType_ContinuousShootSpeed:
            self.values = @[@"Low speed",
                            @"In low speed",
                            @"Medium speed"];
            break;
        
        case CameraSettingParameterType_LapseTime:
            self.values = @[@"1",@"60"];
            break;
        
        case CameraSettingParameterType_PhotoSize:
            self.values = @[@"16M",
                            @"12M",
                            @"8M",
                            @"5M",
                            @"3M"];
            break;
        
        case CameraSettingParameterType_PictureQuality:
            self.values = @[@"Basic",
                            @"Fine detail",
                            @"Hyperfine",
                            @"JPEG+DNG"];
            break;
        
        case CameraSettingParameterType_VideoResolution:
            self.values = @[@"4K 30",
                             @"4K 24",
                             @"2K 30",
                             @"2K 24",
                             @"1920 30",
                             @"1920 24",
                             @"1440 30",
                             @"1440 24",
                             @"1080P 60",
                             @"1080P 30",
                             @"WVGAP 30"];
            break;
        
        case CameraSettingParameterType_WhiteBalanceMode:
            self.values = @[@"Auto",@"Manual"];
            break;
        
        case CameraSettingParameterType_WhiteBalanceValue:
            self.values = @[@"1",@"10",@"30",@"50",@"60",@"70",@"100"];
            break;
        
        case CameraSettingParameterType_ImageBrightness:
            self.values = @[@"0", @"52",@"99"];
            break;
        
        case CameraSettingParameterType_ImageSaturation:
            self.values = @[@"0", @"52",@"99"];
            break;
        
        case CameraSettingParameterType_ImageContrast:
            self.values = @[@"0", @"52",@"99"];
            break;
        
        case CameraSettingParameterType_MeteringMode:
            self.values = @[@"The central focus",@"The average metering"];
            break;
        
        case CameraSettingParameterType_AFMode:
            self.values = @[@"Normal",@"Free to move"];
            break;
        
        case CameraSettingParameterType_OSDSwitch:
            self.values = @[@"Hides",@"Show"];
            break;
        
        case CameraSettingParameterType_ImageSharpness:
            self.values = @[@"Weak",@"Medium",@"Intensity"];
            break;
        
        case CameraSettingParameterType_PhotoRemainNum:
            self.values = @[];
            break;
        
        case CameraSettingParameterType_FormatMemoryCard:
            self.values = @[];
            break;
        
        case CameraSettingParameterType_Reset:
            self.values = @[];
            break;
        default:
            break;
    }
}

#pragma mark - UITableViewDelegate,UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.values.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = self.values[indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Parameter:%lu,Value:%@",(unsigned long)_parameterType,self.values[indexPath.row]);
    [self sendCameraCommandWithIndex:indexPath.row];
}
- (void)sendCameraCommandWithIndex:(NSInteger)index{
    WEAKSELF;
    switch (_parameterType) {
            //MARK: 光圈设置【ISO】
        case CameraSettingParameterType_ISO:
        {
            [self.eyeCameraManager setEyeCameraISO:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 光圈设置【光圈大小】
        case CameraSettingParameterType_ApertureSize:
        {
            [self.eyeCameraManager setEyeCameraAperture:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 光圈设置【EV】
        case CameraSettingParameterType_EV:
        {
            float evValue = [[self.values objectAtIndex:index] floatValue];
            evValue = evValue * 32;
            [self.eyeCameraManager setEyeCameraExposure:evValue withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 光圈设置【拍照快门速度】
        case CameraSettingParameterType_PZShutterSpeed:
        {
            [self.eyeCameraManager setEyeCameraPhotoShutterSpeed:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 光圈设置【摄像快门速度】
        case CameraSettingParameterType_SXShutterSpeed:
        {
            [self.eyeCameraManager setEyeCameraVideoShutterSpeed:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 图像设置【相机模式】当index=3设置为单拍  否则是连拍
        case CameraSettingParameterType_CameraMode:
        {
            [self.eyeCameraManager setEyeCameraMode:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 图像设置【连拍速度】
        case CameraSettingParameterType_ContinuousShootSpeed:
        {
            [self.eyeCameraManager setEyeCameraContinuousShootSpeed:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 图像设置【定时连拍】
        case CameraSettingParameterType_LapseTime:
        {
            [self.eyeCameraManager setEyeCameraTakePhotoDelyTime:[self.values[index] integerValue] withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 图像设置【照片大小】
        case CameraSettingParameterType_PhotoSize:
        {
            [self.eyeCameraManager setEyeCameraPhotoSize:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 图像设置【照片质量】
        case CameraSettingParameterType_PictureQuality:
        {
            [self.eyeCameraManager setEyeCameraPhotoQuality:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 图像设置【视频分辨率】
        case CameraSettingParameterType_VideoResolution:
        {
            [self.eyeCameraManager setEyeCameraVideoSize:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 通用设置【白平衡模式】
        case CameraSettingParameterType_WhiteBalanceMode:
        {
            [self.eyeCameraManager setEyeCameraWhiteBalanceMode:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 通用设置【白平衡】
        case CameraSettingParameterType_WhiteBalanceValue:
        {
            [self.eyeCameraManager setEyeCameraWhiteBalance:[self.values[index] integerValue] withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 通用设置【图像亮度】
        case CameraSettingParameterType_ImageBrightness:
        {
            [self.eyeCameraManager setEyeCameraImageBrightness:[self.values[index] integerValue] withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 通用设置【图像饱和度】
        case CameraSettingParameterType_ImageSaturation:
        {
            [self.eyeCameraManager setEyeCameraImageSaturation:[self.values[index] integerValue] withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 通用设置【图像对比度】
        case CameraSettingParameterType_ImageContrast:
        {
            [self.eyeCameraManager setEyeCameraImageContrast:[self.values[index] integerValue] withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 通用设置【测光模式】
        case CameraSettingParameterType_MeteringMode:
        {
            //测光模式
            [self.eyeCameraManager setEyeCameraMeteringMode:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 通用设置【AF模式】
        case CameraSettingParameterType_AFMode:
        {
            //AF模式
            [self.eyeCameraManager setEyeCameraVideoAF:index + 51 withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 通用设置【OSD开关】
        case CameraSettingParameterType_OSDSwitch:
        {
            //OSD开关
            [self.eyeCameraManager setEyeCameraOSDSwitchOpenState:index + 51 WithCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
            
        }
            break;
            //MARK: 通用设置【图像锐度】
        case CameraSettingParameterType_ImageSharpness:
        {
            //图像锐度
            [self.eyeCameraManager setEyeCameraImageSharpness:index withCompletion:^(NSError * _Nullable error) {
                if (error == nil) {
                    [weakSelf.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
            break;
            //MARK: 通用设置【剩余拍照张数】
        case CameraSettingParameterType_PhotoRemainNum:
            self.values = @[];
            break;
            //MARK: 通用设置【格式化内存卡】
        case CameraSettingParameterType_FormatMemoryCard:
            self.values = @[];
            break;
            //MARK: 通用设置【恢复出厂设置】
        case CameraSettingParameterType_Reset:
            self.values = @[];
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

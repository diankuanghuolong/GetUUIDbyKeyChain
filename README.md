# GetUUIDbyKeyChain
GetUUIDbyKeyChain

1.使用声明：

   本demo中的方法非本人原创，如有疑问，概不解释。俺也不懂。
   
2.使用方法：

  （1.）先进行部分设置：
        打开项目，依次找到Keychain Sharing打开：
        
        TARGETS->Capabilities->Keychain Sharing :ON
        
   此时，可以看到项目中自动生成一个后缀为.entitlements的文件。（可在demo的GetUUID文件夹下的SourceFile.bundle中查看示例图片）
        
   (2.)将demo中GetUUID文件夹拖入你的项目中，并在要调用的地方导入:
     
         #import "CustomGetUUID.h"
     
   (3.)然后调用实现：
   
        label.text = [CustomGetUUID getUUID];

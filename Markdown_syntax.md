# 本文與段落
Markdown 段落沒有特殊的格式，直接編寫文字就好。  
段落的換行是使用兩個以上空格加上Enter。

或在段落後面使用一個空行來表示重新開始一個段落。但這樣會與前段有一空白行的間距("使用兩個以上空格加上Enter"就不會與前段落有間隔)。

- `文字凸顯(文字有灰色背景)`  

- 底線：<u>帶下劃線文本</u> : 通過HTML的\<u> ... \</u>標籤來實現。 

- highlight(高亮)：請在單詞前後使用兩個等號==。例如：
I need to highlight these ==very important words==.

- Subscript(下標字)：請在字符前後使用一個波浪號tilde symbol (~) 。
H~2~O，CO~2~

- Superscript(上標字)：請在字符前後使用一個插入號caret symbol (^) 。
X^2^

# 字體
一般字體  
*斜體文本*  
_斜體文本_  
**粗體文本**  
__粗體文本__  
***粗斜體文本***  
___粗斜體文本___  
~~刪除線~~  
__~~粗體刪除線~~__  
~~__不同組合方式的粗體刪除線__~~  
__~~不同組合方式的粗體刪除線~~__  
~~**不同組合方式的粗體刪除線**~~  
**~~不同組合方式的粗體刪除線~~**  
~~***不同組合方式的粗斜體刪除線***~~  

# 分隔線
在一行中用三個以上的星號、減號、底線來建立一個分隔線，行內不能有其他東西。也可以在星號或是減號中間插入空格。下面每種寫法都可以建立分隔線：

***
* * *
*****
- - -
----------

# 使用標題
標題由大到小，一共有六個等級，也就是我們常說的H1字體到H6字體。
# 一級標題
## 二級標題
### 三級標題
#### 四級標題
##### 五級標題
###### 六級標題
####### 沒有七級標題  
記得！！！使用#字號，後面一定要按一個空白鍵！！！  

# 引用
以下為引用的示範：
>文字內容
>>縮行
>>>縮行
(以此類推)  
一個｛>｝符號就能影響多段文字，若要結束引用，請先用一個`空白行`開來，不然無法離開語法。 

引用結束

# 程式碼區塊
基本的 Markdown 語法允許您通過將行縮進四個空格或一個製表符來創建代碼塊。如果您覺得這不方便，請嘗試使用受保護的代碼塊。根據您的 Markdown 處理器或編輯器，您將在代碼塊前後的行上使用三個反引號 ( ```) 或三個波浪號 ( ~~~)。您不必進行任何排縮！

    // C# 程式碼區塊
    public class MyClass
    {
    public string String1 { get; set; }
    public int Int1 { get; set; }

    public MyClass()
    {
      Console.WriteLine("建構子");
    }
    }

```csharp
// C# 程式碼區塊
public class MyClass
{
  public string String1 { get; set; }
  public int Int1 { get; set; }

  public MyClass()
  {
      Console.WriteLine("建構子");
  }
}
```

程式碼區塊支援的語言種類：  
https://github.com/github/linguist/blob/master/vendor/README.md

# 列表
##無序列表
無序列表開頭為 * 或 + 或 -
* Item 1
  - 項目1的說明
* Item 2
  + Item 2a
  + Item 2b
    - 項目2b的說明
      其他
      * HHH
* Item 3
    > - 可搭配引言符號 `>`
    > 1. 可搭配有序列表 `數字` + `.` + `空白鍵`
    > 2. 可搭配有序列表 `數字` + `.` + `空白鍵`
    > 3. 可搭配有序列表 `數字` + `.` + `空白鍵`

##有序列表
有序列表開頭為 數字 + . + 空白鍵
1. 有序列表 1
1. 有序列表 2
   1. 有序列表 1-1
   1. 有序列表 1-2
      > 1. 可搭配引言符號 `>`
      > * 可搭配無序列表符號 *
      > + 可搭配無序列表符號 +
      > - 可搭配無序列表符號 -
   1. 有序列表 1-3 結尾加 `兩個空白鍵` + `換行` __  
      這行文字就會對齊
   1. 有序列表 1-4
1. 有序列表 3


# 任務列表
能夠有像任務清單一樣旁邊有小方框讓你標示打勾與否的小圖示。  
[ ] A任務  
[ ] B任務  
[x] C任務  
[ ] D任務  

# 表格
Markdown 製作表格時使用 | 來分隔不同的單元格，使用 - 來分隔表頭和其他列。
語法格式如下：
|   表頭1  |   表頭2  |  表頭3  |  表頭4  |
| -------- | ------- | ------- | ------- |
| 單元格00 | 單元格01 | 單元格02| 單元格03 |
| 單元格10 | 單元格11 | 單元格12| 單元格13 |
| 單元格20 | 單元格21 | 單元格22| 單元格23 |
| 單元格30 | 單元格31 | 單元格32| 單元格33 |

第二列是設置對齊方式，不會顯示 ( 至少三個 - 符號表示內容位置， : 表示對齊位置 )
|   表頭100000:預設  |   表頭200000:靠左  |  表頭300000:置中  |  表頭400000:靠右  |
| --- | :--- | :---: | ---: |
| 00 | 01 | 02| 03 |
| 10 | 11 | 12| 13 |

# 超連結
鏈接使用方法如下：
[鏈接名稱](鏈接地址)：](中間不能有空格
或者
<鏈接地址>
例如：
[Google首頁](https://www.google.com)
<https://www.google.com>

# 插入圖片
語法
![這是圖片不見時的文字說明(可以不寫)](圖片位址 "圖片標題|圖片說明")
- - -
1. example 1  
![這是圖片不見時的文字說明](./684-600x400.jpg "圖片說明")
___
2. example 2  
![](https://www.google.com/photos/about/static/images/google.svg)

## 指定圖片大小. 
Markdown 不支持指定圖片大小，但可以直接插入\<img ... />標籤來指定屬性：  
<img src="https://www.google.com/photos/about/static/images/google.svg" alt="GitHub" title="width='100'" width="100" />  
<img src="https://www.google.com/photos/about/static/images/google.svg" alt="GitHub" title="width='200'" width="200" />  
<img src="https://www.google.com/photos/about/static/images/google.svg" alt="GitHub" height="50" />

# 註解參照
這個鏈接用 1 作為網址變量[Google][^1]。然後在文檔的結尾為變量賦值（網址）  
變量 2 為[Google logo][^2]。

[^1]: [Google首頁](https://www.google.com)
[^2]: https://www.google.com/photos/about/static/images/google.svg

# Markdown 官網：
[a]: Markdown guide: https://www.markdownguide.org
[b]: Markdown 指南中文版: https://www.markdown.xyz

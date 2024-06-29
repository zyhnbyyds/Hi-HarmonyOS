@Entry
@Component
struct Examples {
  /**
   * 数组
   */
  public array: string[] = ['Button-按钮', 'Blank-空白填充', 'CalenderPick-日期选择']

  @Styles
  normalListItem(): void {
    .backgroundColor(Color.White)
    .scale({
      x: 1,
      y: 1,
    })
  }

  /**
   * 按压的列表项
   */
  @Styles
  activeListItem(): void {
    .backgroundColor(Color.Green)
    .scale({
      x: 0.99,
      y: 0.99,
    })
  }

  build() {
    Column() {
      List({ space: 10, initialIndex: 0 }) {
        ForEach(this.array, (item: string) => {
          ListItem() {
            Row() {
              Text(item).width('100%').fontSize(16).fontWeight(FontWeight.Bold).textAlign(TextAlign.Start)
            }
          }
          .padding(20)
          .width('100%')
          .borderRadius(10)
          .stateStyles({
            pressed: this.activeListItem,
            normal: this.normalListItem
          })
          .animation({
            duration: 100,
            delay: 0
          })
        })
      }.divider({
        strokeWidth: '100%',
        color: Color.Gray,
      })
    }.padding(20).height('100%').backgroundColor(0xe5e5e5)
  }
}
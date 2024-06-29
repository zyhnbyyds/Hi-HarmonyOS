@Entry
@Component
struct Index {
  @State message: string = 'Hello2  2 1';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld1')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}
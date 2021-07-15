//
//  ContentView.swift
//  CustomToggleStyle
//
//  Created by MacBook Pro on 2021/6/11.
//

import SwiftUI

struct ContentView: View {
    @State var active1 = false
    @State var active2 = false
    @State var active3 = false
    @State var active4 = false
    @State var active5 = false
    @State var active6 = false
    @State var active7 = false
    @State var active8 = false
    @State var active9 = false
    @State var active10 = false
    @State var active11 = false
    @State var active12 = false
    @State var active13 = false
    @State var active14 = false
    @State var active15 = false
    @State var active16 = false
    @State var active17 = false
    @State var active18 = false
    @State var active19 = false
    @State var active20 = false
    @State var active21 = false
    
    private let onGradient = LinearGradient(gradient: Gradient(colors: [.red,.purple]), startPoint: .leading, endPoint: .trailing)

    
    var body: some View {
        NavigationView(content: {
            List {
                Section (header:Text("normal") ){
                    Toggle(isOn: $active1, label: {
                        Text("CheckmarkToggleStyle")
                    })
                    .toggleStyle(CheckmarkToggleStyle())

                    Toggle(isOn: $active2, label: {
                        Text("PowerToggleStyle")
                    }).toggleStyle(PowerToggleStyle())


                    Toggle(isOn: $active3, label: {
                        Text("EarphoneToggleStyle")
                    }).toggleStyle(EarphoneToggleStyle())
                }
                
                Section (header:Text("背景图片 + ON图片") ){

                   
                    Toggle(isOn: $active4, label: {
                        Text("背景图片")
                    }).toggleStyle(
                        ImageToggleStyle(bgONImgName: "day", bgOFFImgName: "night")
                    )
                    Toggle(isOn: $active5, label: {
                        Text("开关图片")
                    }).toggleStyle(
                        ImageToggleStyle(onImgName:"Earth_night", offImgName:"Earth_day")
                    )
                    
                }
                Section(header: Text("线性渐变")) {
                    Toggle(isOn: $active6, label: {
                        Text("背景线性渐变-normal")
                    }).toggleStyle(LinearGradientToggleStyle())

                    Toggle(isOn: $active7, label: {
                        Text("背景线性渐变-自定义")
                    }).toggleStyle(LinearGradientToggleStyle(btnGradient: LinearGradient(gradient: Gradient(colors: [.green,.blue]), startPoint: .leading, endPoint: .trailing)))


                    Toggle(isOn: $active8, label: {
                        Text("按钮线性渐变")
                    }).toggleStyle(ONGradientStyle(onGradient: LinearGradient(gradient: Gradient(colors: [.red,.purple]), startPoint: .leading, endPoint: .trailing)))

                    Toggle(isOn: $active9, label: {
                        Text("按钮线性渐变 + 文字")
                    }).toggleStyle(ONGradientStyle(onGradient: LinearGradient(gradient: Gradient(colors: [.red,.purple]), startPoint: .leading, endPoint: .trailing), onName: "开",offName: "关"))
                }
                Section (header:Text("文字样式") ){
                    Toggle(isOn: $active10, label: {
                        Text("顶部按钮文字")
                    }).toggleStyle(TopTextStyle())
                    
                    Toggle(isOn: $active11, label: {
                        Text("顶部按钮文字")
                    }).toggleStyle(TopTextStyle(onName: "开", offName: "关"))
                    
                    Toggle(isOn: $active12, label: {
                        Text("TextToggleStyle 1")
                    }).toggleStyle(BgGradient_BottomTextStyle())
                    
                    
                    Toggle(isOn: $active13, label: {
                        Text("TextToggleStyle 1")
                    }).toggleStyle(BgGradient_BottomTextStyle(onName: "开", offName: "关",onColor: .white,offColor:.black))
                    
                    Toggle(isOn: $active14, label: {
                        Text("TextToggleStyle 1")
                    }).toggleStyle(OFFTextToggleStyle())
                    
                    Toggle(isOn: $active17, label: {
                        Text("TextToggleStyle 1")
                    }).toggleStyle(OFFTextToggleStyle(imgName: "day"))
                    
                    Toggle(isOn: $active15, label: {
                        Text("TextToggleStyle 1")
                    }).toggleStyle(OFFTextToggleStyle(onName: "MUSIC OFF", offName: "MUSIC ON",imgName: "CD"))
                    
                    Toggle(isOn: $active16, label: {
                        Text("TextToggleStyle 1")
                    }).toggleStyle(OFFTextToggleStyle(onImgName: "Earth_night", offImgName: "Earth_day", imgName: "CD"))
                    
                    
                    
                    
                }
                Section (header:Text("按钮样式") ){
                    
                    Toggle(isOn: $active18, label: {
                        Text("按钮变形 ")
                    }).toggleStyle(ONDeformStyle())
                    
                    Toggle(isOn: $active19, label: {
                        Text("进度条样式 ")
                    }).toggleStyle(ProgressToggleStyle())
                    
                    
                    Toggle(isOn: $active20, label: {
                        Text("按钮缩放 ")
                    }).toggleStyle(ScaleToggleStyle())
                    
                    Toggle(isOn: $active21, label: {
                        Text("按钮缩放 2")
                    }).toggleStyle(StrokeToggleStyle())
                    
                    
                }
            }
            .navigationTitle("自定义Toggle样式")
//            .navigationBarTitleDisplayMode(.inline)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

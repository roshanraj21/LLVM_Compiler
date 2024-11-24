; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [23 x i8] c"This is main function.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"This is function 2.\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"This is function1 function.\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_test.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %3 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %2, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5func2v() #5 {
  %1 = alloca i32, align 4
  %2 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %3 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %2, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 1, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %5, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z9function1v() #5 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %26 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %25, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %34, %0
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 1000000
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %27, !llvm.loop !6

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %45, %37
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 1000000
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %38, !llvm.loop !8

48:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %56, %48
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 1000000
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %49, !llvm.loop !9

59:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %67, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 1000000
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %60, !llvm.loop !10

70:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %78, %70
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 1000000
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %71, !llvm.loop !11

81:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %89, %81
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 1000000
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %1, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %1, align 4
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %82, !llvm.loop !12

92:                                               ; preds = %82
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %100, %92
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 1000000
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %1, align 4
  br label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %93, !llvm.loop !13

103:                                              ; preds = %93
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %111, %103
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 1000000
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %1, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %1, align 4
  br label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %104, !llvm.loop !14

114:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %122, %114
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 1000000
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %1, align 4
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %115, !llvm.loop !15

125:                                              ; preds = %115
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %133, %125
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 1000000
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %1, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %1, align 4
  br label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %126, !llvm.loop !16

136:                                              ; preds = %126
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %144, %136
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %138, 1000000
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %1, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %1, align 4
  br label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %137, !llvm.loop !17

147:                                              ; preds = %137
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %155, %147
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %149, 1000000
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %1, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %1, align 4
  br label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %148, !llvm.loop !18

158:                                              ; preds = %148
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %166, %158
  %160 = load i32, i32* %14, align 4
  %161 = icmp slt i32 %160, 1000000
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %1, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %1, align 4
  br label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %159, !llvm.loop !19

169:                                              ; preds = %159
  store i32 0, i32* %15, align 4
  br label %170

170:                                              ; preds = %177, %169
  %171 = load i32, i32* %15, align 4
  %172 = icmp slt i32 %171, 1000000
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %1, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %1, align 4
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  br label %170, !llvm.loop !20

180:                                              ; preds = %170
  store i32 0, i32* %16, align 4
  br label %181

181:                                              ; preds = %188, %180
  %182 = load i32, i32* %16, align 4
  %183 = icmp slt i32 %182, 1000000
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %1, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %1, align 4
  br label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  br label %181, !llvm.loop !21

191:                                              ; preds = %181
  store i32 0, i32* %17, align 4
  br label %192

192:                                              ; preds = %199, %191
  %193 = load i32, i32* %17, align 4
  %194 = icmp slt i32 %193, 1000000
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %1, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %1, align 4
  br label %199

199:                                              ; preds = %195
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %17, align 4
  br label %192, !llvm.loop !22

202:                                              ; preds = %192
  store i32 0, i32* %18, align 4
  br label %203

203:                                              ; preds = %210, %202
  %204 = load i32, i32* %18, align 4
  %205 = icmp slt i32 %204, 1000000
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %1, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %1, align 4
  br label %210

210:                                              ; preds = %206
  %211 = load i32, i32* %18, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %18, align 4
  br label %203, !llvm.loop !23

213:                                              ; preds = %203
  store i32 0, i32* %19, align 4
  br label %214

214:                                              ; preds = %221, %213
  %215 = load i32, i32* %19, align 4
  %216 = icmp slt i32 %215, 1000000
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %1, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %1, align 4
  br label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %19, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %19, align 4
  br label %214, !llvm.loop !24

224:                                              ; preds = %214
  store i32 0, i32* %20, align 4
  br label %225

225:                                              ; preds = %232, %224
  %226 = load i32, i32* %20, align 4
  %227 = icmp slt i32 %226, 1000000
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %1, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %1, align 4
  br label %232

232:                                              ; preds = %228
  %233 = load i32, i32* %20, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %20, align 4
  br label %225, !llvm.loop !25

235:                                              ; preds = %225
  store i32 0, i32* %21, align 4
  br label %236

236:                                              ; preds = %243, %235
  %237 = load i32, i32* %21, align 4
  %238 = icmp slt i32 %237, 1000000
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = load i32, i32* %21, align 4
  %241 = load i32, i32* %1, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %1, align 4
  br label %243

243:                                              ; preds = %239
  %244 = load i32, i32* %21, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %21, align 4
  br label %236, !llvm.loop !26

246:                                              ; preds = %236
  store i64 0, i64* %22, align 8
  br label %247

247:                                              ; preds = %272, %246
  %248 = load i64, i64* %22, align 8
  %249 = icmp slt i64 %248, 100000000000000
  br i1 %249, label %250, label %275

250:                                              ; preds = %247
  store i64 0, i64* %23, align 8
  br label %251

251:                                              ; preds = %268, %250
  %252 = load i64, i64* %23, align 8
  %253 = icmp slt i64 %252, 100000000000000
  br i1 %253, label %254, label %271

254:                                              ; preds = %251
  store i64 0, i64* %24, align 8
  br label %255

255:                                              ; preds = %264, %254
  %256 = load i64, i64* %24, align 8
  %257 = icmp slt i64 %256, 10000000000000
  br i1 %257, label %258, label %267

258:                                              ; preds = %255
  %259 = load i64, i64* %22, align 8
  %260 = load i32, i32* %1, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %261, %259
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %1, align 4
  br label %264

264:                                              ; preds = %258
  %265 = load i64, i64* %24, align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* %24, align 8
  br label %255, !llvm.loop !27

267:                                              ; preds = %255
  br label %268

268:                                              ; preds = %267
  %269 = load i64, i64* %23, align 8
  %270 = add nsw i64 %269, 1
  store i64 %270, i64* %23, align 8
  br label %251, !llvm.loop !28

271:                                              ; preds = %251
  br label %272

272:                                              ; preds = %271
  %273 = load i64, i64* %22, align 8
  %274 = add nsw i64 %273, 1
  store i64 %274, i64* %22, align 8
  br label %247, !llvm.loop !29

275:                                              ; preds = %247
  %276 = load i32, i32* %1, align 4
  %277 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %276)
  %278 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %277, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_test.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}

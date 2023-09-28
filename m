Return-Path: <devicetree+bounces-4215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EF87B190C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 453C12824EE
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69C6436B0E;
	Thu, 28 Sep 2023 11:03:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F17358AC
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:22 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60246180
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:21 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-504b84d59cbso2444329e87.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695898999; x=1696503799; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rane7N6FN2YRdaXIzHgZgt12GcT5Hjyz+pSJkMzIXcI=;
        b=XUddk2Ulf693h+ZSucjj+F2+UVKGBm6+58jygEOZsjFo9M2I/7NwfaviAcfvxu9VGG
         65ojRiQBbzXOpocDuddMC0TYZA+qlxIq5TBzkLS4qBS/lYnW87j9JtK2xBgu0O5KOJ54
         LSoEIhVs4QmgU0H1mJKA4UMOCpt3nKAPMGDP/IOO8eS6ztgxHMXavwuJtjjStlQ2yGrt
         zl7mEeZ09U3N5xFHc5v9U4oy5HYcT4Pt7ssMeDr5lH58/GkLcK6d++89DwFcvov1M2in
         m1cZWcIakujL1uzaU/RB8sT704U8O4TzlyWcaoJdkFTbqzP0zaegWuYSG2E2Q7d3JdGt
         jetA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695898999; x=1696503799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rane7N6FN2YRdaXIzHgZgt12GcT5Hjyz+pSJkMzIXcI=;
        b=Y1EV9W5LLvGvXay8sSMgsfjHy94zfvB//CefgJYInha3tSVUbuBMkNLQ8lp1P+/GJx
         CVnsSWMoPKGnhoFiJFjnORaEn60t5BVG1cT+FMLn3Y+YvkTQgw67pZbSPtTqsIy2OQVz
         ObDQc0YPX9x91paEUYNFH2zSV+jlejxbYRhvlQNoRptzI3TO6vnZd2+ZI2KDe+0HqU1y
         6JYqyvkdACvITMDTBXgCdyMDb6DmBaXJqHYEoaLamQIIQAkeJeHakvapepFhO5dUg79g
         Csd2n8BLXTq68QZdOEphan5+Rz9INjCYDXW6RMtoBWqERbFBp3l5k6doOwVcuSFiftJV
         +qCg==
X-Gm-Message-State: AOJu0YwjXhZ+uTLkyr89Eb4eZVJ5HeNDLuAUAYftWqWMb2OTnd3lxLK0
	NMAwMwY8kX/OXXuc6cXohM+Mug==
X-Google-Smtp-Source: AGHT+IFIK+U+5auiNlZpSXeBisAkHRE8/Dj7QjmM3phfIz7PX6zxMuQu7eSBN7HOwEcmAaXnkT4n3g==
X-Received: by 2002:a05:6512:a94:b0:500:b3e3:6fa6 with SMTP id m20-20020a0565120a9400b00500b3e36fa6mr1046076lfu.68.1695898999711;
        Thu, 28 Sep 2023 04:03:19 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:19 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 11/36] ARM: dts: qcom: msm8960: fix PMIC node labels
Date: Thu, 28 Sep 2023 14:02:44 +0300
Message-Id: <20230928110309.1212221-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
References: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Change PM8921 node labels to start with pm8921_ prefix, following other
Qualcomm PMIC device nodes.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
index a34fda93d6a4..ea2d961b266b 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
@@ -264,7 +264,7 @@ ssbi@500000 {
 			reg = <0x500000 0x1000>;
 			qcom,controller-type = "pmic-arbiter";
 
-			pmicintc: pmic {
+			pm8921: pmic {
 				compatible = "qcom,pm8921";
 				interrupt-parent = <&msmgpio>;
 				interrupts = <104 IRQ_TYPE_LEVEL_LOW>;
@@ -276,7 +276,7 @@ pmicintc: pmic {
 				pwrkey@1c {
 					compatible = "qcom,pm8921-pwrkey";
 					reg = <0x1c>;
-					interrupt-parent = <&pmicintc>;
+					interrupt-parent = <&pm8921>;
 					interrupts = <50 IRQ_TYPE_EDGE_RISING>,
 						     <51 IRQ_TYPE_EDGE_RISING>;
 					debounce = <15625>;
@@ -286,7 +286,7 @@ pwrkey@1c {
 				pm8921_keypad: keypad@148 {
 					compatible = "qcom,pm8921-keypad";
 					reg = <0x148>;
-					interrupt-parent = <&pmicintc>;
+					interrupt-parent = <&pm8921>;
 					interrupts = <74 IRQ_TYPE_EDGE_RISING>,
 						     <75 IRQ_TYPE_EDGE_RISING>;
 					debounce = <15>;
@@ -296,7 +296,7 @@ pm8921_keypad: keypad@148 {
 
 				rtc@11d {
 					compatible = "qcom,pm8921-rtc";
-					interrupt-parent = <&pmicintc>;
+					interrupt-parent = <&pm8921>;
 					interrupts = <39 IRQ_TYPE_EDGE_RISING>;
 					reg = <0x11d>;
 					allow-set-time;
-- 
2.39.2



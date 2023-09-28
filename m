Return-Path: <devicetree+bounces-4226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCC97B192F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 279B1281763
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60F2E36AE1;
	Thu, 28 Sep 2023 11:03:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EF237158
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:33 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75B27CC0
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:30 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5046bf37ec1so11327861e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899008; x=1696503808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aVO+2iRIEEW1mZ3SKc/B2s6KoIhcuuodrBJKzq2EnPA=;
        b=S7O0cA8YobzWmb/Kh5x0A/PmvcEIz308lCyufvygLLD8j5PveDSM6uBRGpUOByg4Sp
         SYMcWq7fsHL0FAf6WyDxthhX0n3QbXnKD2PJ6agZSrzQ2KG/soOUWFoYPRhPzxP7/2ZR
         wnxWaOr8vS18VnAngO+LbdUXNzlgU4+Dq97kCY4C5ihT7EZqAE+og0kSQb4bUz2sqAxK
         dQvgj/jG4WIHd2dqpg6TwQCQwN76gCmY7+POYX11lNxXi/EHH67wQKXAC4M4aK9gAr0l
         oTvlEa/63a9eVo45MPNGJvTxCFqakpGe/TpXOqCNv8I4+YvE12adfEOBgCE8Va39feHy
         T2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899008; x=1696503808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aVO+2iRIEEW1mZ3SKc/B2s6KoIhcuuodrBJKzq2EnPA=;
        b=jZnUmKq70TM3AqErQx4g2xdcpuIv66AzV/l2yRfDZGebl7DufHMmrIcBv7iEpsuV+c
         cDRBUCOR7HEs4Hu86SG9ecMUurF27ucCbHfAIyY/N0XxFysXsjwcD24KgDj536Bc/EZc
         +ww2RKoRJ5RZy4/bpWbWckJOiuRkxOfHdcRsHVrOOa5kgocxiwZlgXTC656RPclWp1kN
         wwm2c2M/5i8aAQrYhNdg+3vUb5Nkf/Yr9VvDzUs90aGFcI+pDjzsCAYmK3r2Zm+7Qam1
         iyLi5eNfnFaiesd/xeKN5eqy1H7AN8Ves90cIkEyy8Ws3IfD6FdsH9lTQGFhH71D+iPp
         qygA==
X-Gm-Message-State: AOJu0YyRi0glf1aXVanhqma4nhhaARAgzqWK3ynXWB8Kjl+mfYA3gbqm
	OBoKIaO4gVf3gfv+yv3sO1ZPDQ==
X-Google-Smtp-Source: AGHT+IHf2lQnijNjOHSWAej9gzKXSuuiG6Jj757JJuz2qU9t4sz1UeZ+I4nzYoynPQdLW/RYqgi9Gg==
X-Received: by 2002:a05:6512:3e20:b0:503:28cb:c073 with SMTP id i32-20020a0565123e2000b0050328cbc073mr1172243lfv.58.1695899008687;
        Thu, 28 Sep 2023 04:03:28 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 21/36] ARM: dts: qcom: pm8921: reorder nodes
Date: Thu, 28 Sep 2023 14:02:54 +0300
Message-Id: <20230928110309.1212221-22-dmitry.baryshkov@linaro.org>
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
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Move pm8921 device nodes to follow the alphanumberic sorting order.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8921.dtsi | 48 +++++++++++++++---------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8921.dtsi b/arch/arm/boot/dts/qcom/pm8921.dtsi
index ad41d99ab265..4697ca33666f 100644
--- a/arch/arm/boot/dts/qcom/pm8921.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8921.dtsi
@@ -8,17 +8,14 @@ pm8921: pmic {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pm8921_gpio: gpio@150 {
-
-			compatible = "qcom,pm8921-gpio",
-				     "qcom,ssbi-gpio";
-			reg = <0x150>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			gpio-controller;
-			gpio-ranges = <&pm8921_gpio 0 0 44>;
-			#gpio-cells = <2>;
-
+		pwrkey@1c {
+			compatible = "qcom,pm8921-pwrkey";
+			reg = <0x1c>;
+			interrupt-parent = <&pm8921>;
+			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
+				     <51 IRQ_TYPE_EDGE_RISING>;
+			debounce = <15625>;
+			pull-up;
 		};
 
 		pm8921_mpps: mpps@50 {
@@ -32,14 +29,12 @@ pm8921_mpps: mpps@50 {
 			#interrupt-cells = <2>;
 		};
 
-		pwrkey@1c {
-			compatible = "qcom,pm8921-pwrkey";
-			reg = <0x1c>;
+		rtc@11d {
+			compatible = "qcom,pm8921-rtc";
 			interrupt-parent = <&pm8921>;
-			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
-				     <51 IRQ_TYPE_EDGE_RISING>;
-			debounce = <15625>;
-			pull-up;
+			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
+			reg = <0x11d>;
+			allow-set-time;
 		};
 
 		pm8921_keypad: keypad@148 {
@@ -53,12 +48,17 @@ pm8921_keypad: keypad@148 {
 			row-hold = <91500>;
 		};
 
-		rtc@11d {
-			compatible = "qcom,pm8921-rtc";
-			interrupt-parent = <&pm8921>;
-			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
-			reg = <0x11d>;
-			allow-set-time;
+		pm8921_gpio: gpio@150 {
+
+			compatible = "qcom,pm8921-gpio",
+				     "qcom,ssbi-gpio";
+			reg = <0x150>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			gpio-controller;
+			gpio-ranges = <&pm8921_gpio 0 0 44>;
+			#gpio-cells = <2>;
+
 		};
 
 		pm8921_xoadc: xoadc@197 {
-- 
2.39.2



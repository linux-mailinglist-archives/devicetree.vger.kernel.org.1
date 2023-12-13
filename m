Return-Path: <devicetree+bounces-24896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 57553811965
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F141E1F21616
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8287F35F18;
	Wed, 13 Dec 2023 16:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dYnjOtpm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C1F6F4
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:29:10 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50bf7bc38c0so8116554e87.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702484948; x=1703089748; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uDQI7CGNXE5QtDrGTA7vjhneNjlnGJyq3B8Gpd+RnjY=;
        b=dYnjOtpmKjg4GHWhqzNDp6EKEDaiJS8Nx+2o8mHB8bhiqjDodq7dChEPR6L+dSTC1X
         DqI1HnyTr9MZP1mTRLaAQrb3GtFS/RvifnO61mkRcOApX/y4EZkKBO+4UexRQ5quGShJ
         8TLZ13SUnU6tqagVqOWaQjaDNxkj87usGsxKTZ/ayWO7UF1eq6TIC40mfoBCLFD/XSyL
         jHf+1etIble+SvvrZ+2vGh+c+pH77c4cIXRPhjRgDqqQy4IYwvzJ4FQD0EHL5CpyjFP0
         XU97jFXo1sVtfWg2IERRN8YXr/dZ7xL9l3OST+JrtDSCUDGm2ZN9YhiDdlPrn8zRQv8U
         kZ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702484948; x=1703089748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uDQI7CGNXE5QtDrGTA7vjhneNjlnGJyq3B8Gpd+RnjY=;
        b=BWBtRoCROtFUDi1aIr4nXu+v1oV2kG6kiLSWzxAXVUj4ViHG20niR+SD5jr+lmuLO2
         AmoXErJy3Al24uLMVy2xemw2NyiDCE0Zl96xfmUUjDCbuakx6klTvPFTjkLgkcg0x5EM
         5jhvXyrctf+9s/41PXX2S/85dh3rAiGLSsr77l/9aOhKGYFp+DVc1uY6plcpSOwJDm0s
         CsF5kCdWsYIIQP1r70Z3U9Q5pvB+UOH3x3hCRO+Xsmvd0OdUVEbp/8wld1CKtB/XMDO9
         z6y6KuwCbmswRhzqh5lGoVrhty3OCKCmNEcABqPWdb9Cq9iqUFgjq24w7pMfOp6B2Jm5
         rDwQ==
X-Gm-Message-State: AOJu0YzrBxdZKEgjQl30+dx4V5xdeLeq/L19wKjSW++e/APDcvUM8wTA
	Iv5SKjh5L7V8YFrx3KxUa86D/A==
X-Google-Smtp-Source: AGHT+IF3V4GjzyZmMwHdlCvCM9mUMLaBxXfJBCvlAZ8+rLP7Wm0ND/VzVwR6nDgB+2BRfaOBZJH5tQ==
X-Received: by 2002:a19:2d5e:0:b0:50b:e6ff:e53e with SMTP id t30-20020a192d5e000000b0050be6ffe53emr3148181lft.9.1702484948105;
        Wed, 13 Dec 2023 08:29:08 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id br7-20020a056512400700b0050bfe37d28asm1641026lfb.34.2023.12.13.08.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:29:07 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 3/4] arm64: dts: qcom: sm8550: move Soundwire pinctrl to its nodes
Date: Wed, 13 Dec 2023 17:28:55 +0100
Message-Id: <20231213162856.188566-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231213162856.188566-1-krzysztof.kozlowski@linaro.org>
References: <20231213162856.188566-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Pin configuration for Soundwire bus should be set in Soundwire
controller nodes, not in the associated macro codec node.  This
placement change should not have big impact in general, because macro
codec is a clock provider for Soundwire controller, thus its devices is
probed first.  However it will have impact for disabled Soundwire buses,
e.g. WSA2, because after this change the pins will be left in default
state.

We also follow similar approach in newer SoCs, like Qualcomm SM8650.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 1f06fd33d1ce..d8f79b5895f5 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2050,8 +2050,6 @@ lpass_wsa2macro: codec@6aa0000 {
 
 			#clock-cells = <0>;
 			clock-output-names = "wsa2-mclk";
-			pinctrl-names = "default";
-			pinctrl-0 = <&wsa2_swr_active>;
 			#sound-dai-cells = <1>;
 		};
 
@@ -2063,6 +2061,9 @@ swr3: soundwire-controller@6ab0000 {
 			clock-names = "iface";
 			label = "WSA2";
 
+			pinctrl-0 = <&wsa2_swr_active>;
+			pinctrl-names = "default";
+
 			qcom,din-ports = <4>;
 			qcom,dout-ports = <9>;
 
@@ -2096,8 +2097,6 @@ lpass_rxmacro: codec@6ac0000 {
 
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
-			pinctrl-names = "default";
-			pinctrl-0 = <&rx_swr_active>;
 			#sound-dai-cells = <1>;
 		};
 
@@ -2109,6 +2108,9 @@ swr1: soundwire-controller@6ad0000 {
 			clock-names = "iface";
 			label = "RX";
 
+			pinctrl-0 = <&rx_swr_active>;
+			pinctrl-names = "default";
+
 			qcom,din-ports = <1>;
 			qcom,dout-ports = <11>;
 
@@ -2142,8 +2144,6 @@ lpass_txmacro: codec@6ae0000 {
 
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
-			pinctrl-names = "default";
-			pinctrl-0 = <&tx_swr_active>;
 			#sound-dai-cells = <1>;
 		};
 
@@ -2161,8 +2161,6 @@ lpass_wsamacro: codec@6b00000 {
 
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
-			pinctrl-names = "default";
-			pinctrl-0 = <&wsa_swr_active>;
 			#sound-dai-cells = <1>;
 		};
 
@@ -2174,6 +2172,9 @@ swr0: soundwire-controller@6b10000 {
 			clock-names = "iface";
 			label = "WSA";
 
+			pinctrl-0 = <&wsa_swr_active>;
+			pinctrl-names = "default";
+
 			qcom,din-ports = <4>;
 			qcom,dout-ports = <9>;
 
@@ -2203,6 +2204,9 @@ swr2: soundwire-controller@6d30000 {
 			clock-names = "iface";
 			label = "TX";
 
+			pinctrl-0 = <&tx_swr_active>;
+			pinctrl-names = "default";
+
 			qcom,din-ports = <4>;
 			qcom,dout-ports = <0>;
 			qcom,ports-sinterval-low =	/bits/ 8 <0x01 0x01 0x03 0x03>;
-- 
2.34.1



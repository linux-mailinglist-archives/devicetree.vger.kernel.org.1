Return-Path: <devicetree+bounces-24890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D5481193E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:25:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BE491C20F66
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D1C35EFA;
	Wed, 13 Dec 2023 16:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pzuNlUOh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D89C8B9
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:25:44 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5525ef84512so74851a12.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702484743; x=1703089543; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uDQI7CGNXE5QtDrGTA7vjhneNjlnGJyq3B8Gpd+RnjY=;
        b=pzuNlUOhIoTE4WWFVONCAdtW6UTIvY2igyhxfa08zkdkKM+BAjSBHODmWqaIU+iXcb
         6BnHlv64y7fq50Wn286F5ME9RGmDLbLojh4we1hF2gB+zd0lij1dSWRwZpnq7Wb3DNyX
         NF3nyrE+OH7VljP4LBlyg6Y24cL6QcpCEntCIFCMqnb3rzzd+8S6xKDRPUDRrvf8fofQ
         wWDg+H4ZNGW40RIhmhaCHafBwmmt82LuW2Fjb7o0kLlzSeAhB17gNYJiiSe4fs8eZg7B
         RGA+55w2qEJw1jvjqybp32MLflhvQIDkCmDQ+tMEQj02vzFsOTyayAMGr8uwQQNPyW6A
         0HFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702484743; x=1703089543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uDQI7CGNXE5QtDrGTA7vjhneNjlnGJyq3B8Gpd+RnjY=;
        b=aFfJwb4fiNDHhaRUu966jBnhwI4MoxnZ8o2LFDu5z24n6rpaEZLKzIKvHSAW9KtaCP
         55QaCZNTQTJ55B3CYd+ZLEsDqrFAbwz0jjvHufAR+ItjVxYajVKdJseGR8BH+B8vCrsA
         E7FWNzD/doorYSvPnh9lwGOaYjMA7jrGxbJadjVunio257l747A3VwF0xKMp2iwqbp5s
         Vg03h095U2XUwbP0bbU7Kx8EBy8DnvdSkZXb2UfmrrkY+hj6THz+/EByUT++WvHIQ960
         03hgM6GxnDPLBr6xd1faMSmGdCML9F0dO4wG70zCjzqmE9NY4Jnjiy9m0DK3Znjcbxi2
         7gJw==
X-Gm-Message-State: AOJu0YzTyw80x8HDXFgHxtjs64SazDYLaDHKtpf24CmnQLKl9uOqRJPV
	wQpDrFlaivFrQZSjzdq8LfxbYQ==
X-Google-Smtp-Source: AGHT+IFYR8rsO1VF//8r3xp61FMiOmVTtJhWR3SeKc7XhW8dyZuYFpYd2aa1O950RUJUMP4pn9sS4A==
X-Received: by 2002:a17:906:c30a:b0:a1e:26ae:3ac5 with SMTP id s10-20020a170906c30a00b00a1e26ae3ac5mr4881307ejz.39.1702484743452;
        Wed, 13 Dec 2023 08:25:43 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id kv18-20020a17090778d200b00a1dfc541282sm8048914ejc.225.2023.12.13.08.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:25:43 -0800 (PST)
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
Subject: [PATCH 3/4] arm64: dts: qcom: sm8550: move Soundwire pinctrl to its nodes
Date: Wed, 13 Dec 2023 17:25:35 +0100
Message-Id: <20231213162536.171475-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231213162536.171475-1-krzysztof.kozlowski@linaro.org>
References: <20231213162536.171475-1-krzysztof.kozlowski@linaro.org>
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



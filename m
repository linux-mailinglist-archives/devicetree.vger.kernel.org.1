Return-Path: <devicetree+bounces-24889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E439681193D
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 733F21C20F93
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D973635EF1;
	Wed, 13 Dec 2023 16:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MBrWmTLs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA02FD0
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:25:43 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50c222a022dso7795367e87.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702484742; x=1703089542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uDQI7CGNXE5QtDrGTA7vjhneNjlnGJyq3B8Gpd+RnjY=;
        b=MBrWmTLsfVs9CMTTY1sUTDHbF4DlS8phTh8izquwAKAb+isBV8MzcPat9BUccNIBdK
         6mLpuE+pSxCke3K+lPWq909tvGF9YMItP9ogpgViObCXbopakcBz6Ys3twOlgkXkb387
         3Yl3yt/x0VSQ1gu0m3SbIJkv76LLgRzLmSIW51PXjjegzNB+fWGak78i+4qh7+JEev5s
         MBAXCnSLX8pqqe8tDc71mrpktjsXDv/Rd9csEwoa+sDsPsGK3nKcyUQ/PVOhM58E4eSa
         IOpp6Tct7qz+ULB7n3ie14DhvSG7sSnIckkH45ny7sw0TYuNcYrZ0YMjYbV2dW+AvS+B
         2laQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702484742; x=1703089542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uDQI7CGNXE5QtDrGTA7vjhneNjlnGJyq3B8Gpd+RnjY=;
        b=MIZDr0uqxPETDH/mXZGQTkiEf6XRbW+kvKoXIgTs9NrtPQI+muiiB++rvxdoeju/bR
         N2f57a6ae4jb0Wq5xI2shmdyTIlYtUDxEHK0PJF3lOEgBkTx8/63uSaMZTdYnuVzVJJx
         rorGVvNTH43EiTENVFTb7CIUHnE6Gm/0w61gJlisVrXtJkodB0EcjZQjtveqK1E0tH9l
         HxA0yZ7Jpklx+yOO13IVHW+dhh+6lacq4RNA+gU2fq+SMgEQ0eH6F3hoicKwBs6AWVSZ
         aYvEpkuCaVoAJ4J3Am0rs5SHpX9gZQOo1/NtrihhTW9vGjeB9HXu+/mtnOr+jS9bAw0j
         +kNQ==
X-Gm-Message-State: AOJu0Yw1kt3RRZRXGC1qlqWNqGHVB5nMHqPVKXjA4lMcL81LYwTXWrVe
	ufh2TtOVh0NtRh9ycqc8Q3XV4A==
X-Google-Smtp-Source: AGHT+IFjnrOCSXPAAVknPOOlr+r0qRzJnlPFXP1AYOv7yP7vWLlq+2T00ZQXaFnaFDbSBQ3uhGFykg==
X-Received: by 2002:a05:6512:401f:b0:50c:1d0e:5298 with SMTP id br31-20020a056512401f00b0050c1d0e5298mr4840221lfb.82.1702484742243;
        Wed, 13 Dec 2023 08:25:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id kv18-20020a17090778d200b00a1dfc541282sm8048914ejc.225.2023.12.13.08.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:25:41 -0800 (PST)
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
Subject: [PATCH 2/2] arm64: dts: qcom: sm8550: move Soundwire pinctrl to its nodes
Date: Wed, 13 Dec 2023 17:25:34 +0100
Message-Id: <20231213162536.171475-3-krzysztof.kozlowski@linaro.org>
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



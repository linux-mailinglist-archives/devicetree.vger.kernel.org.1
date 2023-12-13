Return-Path: <devicetree+bounces-24894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0C7811960
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:29:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 107F91C20D71
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:29:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2447E35EFB;
	Wed, 13 Dec 2023 16:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EPaCDW3X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3B3891
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:29:05 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50be10acaf9so7005470e87.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702484944; x=1703089744; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NEzLaoNa4BA2w8OvaI5sizwaYC3nqK5NDpqXu6xPo90=;
        b=EPaCDW3X65pt9lfhQDirUMYk6SCoBK/3UDqFB0I/I4ffRoHzcZgU/2n/oE3Y8VJ1ST
         09QWKkA3NX+8kwydIeMpnuL1Tic5bu6GdW32RMYHKCTFDkhcQu/uEya/clUz9upHQG36
         vmY7SPwX7Dg65keGSow7WOFAk6MRnUrywU2g0RYMuEkXCa19Ku6luR09CVKDAz1cgsOA
         9VKgkj5OJgXoBwPcrcrLNIJd34Ib3aoanBKNwsO5zaczD1lzxGUP84mSLx2VaA/mG8wA
         UHu5Am8ufx7NHpWmsY9wskoPFxCughn9IKmGm9fGnjq2IS9gsLcWY6zSzeJ59JIRZPUV
         Q3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702484944; x=1703089744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NEzLaoNa4BA2w8OvaI5sizwaYC3nqK5NDpqXu6xPo90=;
        b=L+nnNZlAHGAH72I5mr4wOO6bfU9Z5ramBRPUPY+FBn89JKBkhyUXuih9Me95R7zyZW
         9etrWDGmj9hTSqLdUgEnkqONLWkGWsHg0LQLRDKZUod5zggJKrS9ns0dfN6ySV1Ajbec
         gqO7ukdb4gw9OQ59xCBkHXtj+BLaD6mlDDMr0KmxHlvgDs/3O0brkWIYPrCe+9KkKZ2Q
         pVA8LZpiIr+y5+lPgwzTPl5p2RG97V2/M0fzfbZP8V9q7h1HV/hVYtVI8tCgcyvSI8xA
         j+mPndu8JezrbRFJhd5ywCEQYkWBdtU6f1CypAUVBoR68TBhm1W6Pqk1OvnB3cTsAcNB
         l9LA==
X-Gm-Message-State: AOJu0YwADHBj99FsjxOvZ5p2TU9jzYdBgw/1OmS/gW1k8+m58xU5mCrV
	Y4cPd/8aQ+8dCCxcN3fxL6lhCA==
X-Google-Smtp-Source: AGHT+IHtY5gkQmmJhndNfLTuymBN96U+PgF076ivxPPJWBCxoTTijgt9TkViwC9hvJ0o+aI9ZxUjpA==
X-Received: by 2002:a19:5e1d:0:b0:50b:f03c:1eb2 with SMTP id s29-20020a195e1d000000b0050bf03c1eb2mr3934707lfb.20.1702484944075;
        Wed, 13 Dec 2023 08:29:04 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id br7-20020a056512400700b0050bfe37d28asm1641026lfb.34.2023.12.13.08.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:29:03 -0800 (PST)
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
Subject: [PATCH v2 1/4] arm64: dts: qcom: sm8450: move Soundwire pinctrl to its nodes
Date: Wed, 13 Dec 2023 17:28:53 +0100
Message-Id: <20231213162856.188566-2-krzysztof.kozlowski@linaro.org>
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

Not tested on HW.
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 12e55a0c7417..3b6ea9653d2a 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2160,8 +2160,6 @@ wsa2macro: codec@31e0000 {
 
 			#clock-cells = <0>;
 			clock-output-names = "wsa2-mclk";
-			pinctrl-names = "default";
-			pinctrl-0 = <&wsa2_swr_active>;
 			#sound-dai-cells = <1>;
 		};
 
@@ -2173,6 +2171,9 @@ swr4: soundwire-controller@31f0000 {
 			clock-names = "iface";
 			label = "WSA2";
 
+			pinctrl-0 = <&wsa2_swr_active>;
+			pinctrl-names = "default";
+
 			qcom,din-ports = <2>;
 			qcom,dout-ports = <6>;
 
@@ -2208,8 +2209,6 @@ rxmacro: codec@3200000 {
 
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
-			pinctrl-names = "default";
-			pinctrl-0 = <&rx_swr_active>;
 			#sound-dai-cells = <1>;
 		};
 
@@ -2223,6 +2222,9 @@ swr1: soundwire-controller@3210000 {
 			qcom,din-ports = <0>;
 			qcom,dout-ports = <5>;
 
+			pinctrl-0 = <&rx_swr_active>;
+			pinctrl-names = "default";
+
 			qcom,ports-sinterval-low =	/bits/ 8 <0x03 0x1f 0x1f 0x07 0x00>;
 			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x0b 0x01 0x00>;
 			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x0b 0x00 0x00>;
@@ -2254,8 +2256,6 @@ txmacro: codec@3220000 {
 
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
-			pinctrl-names = "default";
-			pinctrl-0 = <&tx_swr_active>;
 			#sound-dai-cells = <1>;
 		};
 
@@ -2275,8 +2275,6 @@ wsamacro: codec@3240000 {
 
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
-			pinctrl-names = "default";
-			pinctrl-0 = <&wsa_swr_active>;
 			#sound-dai-cells = <1>;
 		};
 
@@ -2288,6 +2286,9 @@ swr0: soundwire-controller@3250000 {
 			clock-names = "iface";
 			label = "WSA";
 
+			pinctrl-0 = <&wsa_swr_active>;
+			pinctrl-names = "default";
+
 			qcom,din-ports = <2>;
 			qcom,dout-ports = <6>;
 
@@ -2318,6 +2319,9 @@ swr2: soundwire-controller@33b0000 {
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



Return-Path: <devicetree+bounces-169339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C60EA966E3
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 13:05:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0C47189F51F
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 11:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F32B278E41;
	Tue, 22 Apr 2025 11:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p9dzKfqm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE59277814
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745319864; cv=none; b=PUi6MZ7EyGDPIF7sSXmCG0Jcfdl/SEt+EhCb0nCvDJsewQyPxu//3V7Me3Kg4veFzPaLmw2c43I+QqcA5nKt+0nTD0WB4Ku0U/s1TfIP1SE8FBLmUDkfuRPejO47rQdunLjtEOadii3sgR2yy08KkH2j2BJ0icmspvH/Fadmc/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745319864; c=relaxed/simple;
	bh=khrIOuPNydaoE0R69LRaxeUdmtv0GT+QtuOLskCJVgA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g7qZh8nxzF/tBj0gN5NzrAk1uuizu6dJNOWlRuJKNVJZ+OiLbuqn0Qx+5YHrF053H6MBdPiy3dGoy1/D730OtPVR/M54WdrJYAEkQREXv2ig26888r3EHdiojzzT6UOjrxZD+4jvP3AbAPiv12iyNPuPRLTFr+hUX8KqCZG4J+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p9dzKfqm; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cebe06e9eso41350145e9.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 04:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745319861; x=1745924661; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ci38G1RmPeuAoUiNuhDTBFPaBQP/k30oBtFbdnT3L54=;
        b=p9dzKfqmx7Eux9glMhReTxMCtnPQN4hKKGTPMg5dHsN0ZpERmTj3k/0+qjnAh8PN5B
         /Cgm1dAMOK40RETNMH3GY5a3tgj49Hid0NAAdB4VLbSKS+0ux19jhGFkXEOJ7IMPKBwN
         rTj6Nte3dg6wZn4XVFe7/lHl5Zkq8b2sSSfTRYu5q11i0Z9iyL1SRxTSykrnnRrVw3up
         JaI0t9D78dQQ3nizhLA25BcJ+MugbKLLxpsMh/mc+XcMX5WrN5d5Z9nrhw8B0H61objR
         CtRB1K/IBeNKXIiYcxh9KkmexIEb6jhKW2Ghdq2XJ+OYBkNhZdEIBKEYYih4DTpLOAtf
         Pa6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745319861; x=1745924661;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ci38G1RmPeuAoUiNuhDTBFPaBQP/k30oBtFbdnT3L54=;
        b=Hi6QMWVJzhFj8dvoPQqTCnESPN0AJSTYHxwUGivrz1Ty2nkXc0ecBOPYH/MqTUG0M4
         zWCgqtqT3gnw1BsUh3oeDl/D0gC71SF1SsS64FAVXTrNCBjcuDnVDGbkc55k2GV35t+g
         7H9gabWflM2ANmSBtjWekhRiCctEoHKZypiAmM60UMMYo2c8v+CINQKSV1N7EPOOszIX
         5tnfu4nUdtEq+TM2JCaDt44h0wESRUVFn05vEuVuo2s/TRck23XpL3if/WKuRUPiAOAG
         UXBW7RvvX6LCegjYXtjPs670jkv8oPOkqAQ8fXBbcr5p31GNk+A/j4U+49iYeji+XGZo
         UwJQ==
X-Forwarded-Encrypted: i=1; AJvYcCU16xJgx6DsHzPd8qvyBd/6NLumssfffuS/3rCRk0odl1KpCD5uOJ9Ky6d0aMKNJV1XhcgkyP+eje+Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8aDiyE4wwX/yfyor9yPFUKjqYYl2fkfuCCL7zKoqBsXLvi8SO
	dGXMdcQcHa0iv9HgK0/ORJaVJ8Kgoi54B9MEACQZ5bp74W1EQws7JwDkY9AKkMk=
X-Gm-Gg: ASbGncvVZGz+JpMj4pDRsCOQ92JoZjD+Vi5cNdPdHnxfLkdg+ze2gvrFXMOFbH3Lbhq
	eWB6DgtMkkm93jf4GfMGSIyCmte4Y4Xa/pL6ZNr8ULIr0vobnuyLhl7McUM2FU44WuKyg9lmpSt
	7xM6hb9TsjNBPdr2NtmQsVGXpMGS5eqg1cILDqU9WNDI4t6ykfzs8MdUL9pL4N9Lhk1mUXhoBsF
	D1TVnxX5lj/BA8BiGzc5/klrDSM3Up/Sj5Ix2aoppQr8zzQnXEy4eANC8n2csp/fQhYiGZNOmwZ
	Cl68TDXE/zEhdVWkdeR6W+tPwMJtJerkrT3soGO56cIewRIkDiSlVbX5GZMns5mskA==
X-Google-Smtp-Source: AGHT+IGckcdlnWQqBL6qiNxjnkHkWJyUfuh1CJ+EyBVjThrN7w/33qBUkDxftZXEgQa6I55NFkVdlQ==
X-Received: by 2002:a05:600c:384f:b0:440:59eb:bfc with SMTP id 5b1f17b1804b1-4406abf94bamr115861735e9.23.1745319861045;
        Tue, 22 Apr 2025 04:04:21 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:8847:e39a:2a2f:e614])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4406d5acddfsm169609725e9.15.2025.04.22.04.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 04:04:20 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 22 Apr 2025 13:03:53 +0200
Subject: [PATCH v2 6/6] arm64: dts: qcom: msm8939: Drop generic UART
 pinctrl templates
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250422-msm8916-console-pinctrl-v2-6-f345b7a53c91@linaro.org>
References: <20250422-msm8916-console-pinctrl-v2-0-f345b7a53c91@linaro.org>
In-Reply-To: <20250422-msm8916-console-pinctrl-v2-0-f345b7a53c91@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sam Day <me@samcday.com>, Casey Connolly <casey.connolly@linaro.org>
X-Mailer: b4 0.14.2

Remove the generic UART pinctrl templates from msm8939.dtsi and copy the
definition for the custom UART use cases into the board DT files. This
makes it clear that the set of pins/pull etc are specific to the board and
UART use case.

No functional change.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8039-t2.dts | 22 ++++++++++++++--------
 arch/arm64/boot/dts/qcom/msm8939.dtsi   | 23 +----------------------
 2 files changed, 15 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8039-t2.dts b/arch/arm64/boot/dts/qcom/apq8039-t2.dts
index 4aa0ad19bc0f7fde6f5f3a93cdb6be19fb4f1f65..38c281f0fe65ccfc49de70eaef2a970323ecebc8 100644
--- a/arch/arm64/boot/dts/qcom/apq8039-t2.dts
+++ b/arch/arm64/boot/dts/qcom/apq8039-t2.dts
@@ -122,14 +122,6 @@ &blsp_uart1 {
 	status = "okay";
 };
 
-&blsp_uart1_default {
-	pins = "gpio0", "gpio1";
-};
-
-&blsp_uart1_sleep {
-	pins = "gpio0", "gpio1";
-};
-
 &blsp_uart2 {
 	pinctrl-0 = <&blsp_uart2_console_default>;
 	pinctrl-1 = <&blsp_uart2_console_sleep>;
@@ -329,6 +321,20 @@ &tlmm {
 		"USBC_GPIO7_1V8",	/* GPIO_120 */
 		"NC";
 
+	blsp_uart1_default: blsp-uart1-default-state {
+		pins = "gpio0", "gpio1";
+		function = "blsp_uart1";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
+	blsp_uart1_sleep: blsp-uart1-sleep-state {
+		pins = "gpio0", "gpio1";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
 	pinctrl_backlight: backlight-state {
 		pins = "gpio98";
 		function = "gpio";
diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index 52a99aea210e04f04f3d25696ecd6b9c604c743a..68b92fdb996c26e7a1aadedf0f52e1afca85c4ab 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -905,20 +905,6 @@ blsp_spi6_sleep: blsp-spi6-sleep-state {
 				bias-pull-down;
 			};
 
-			blsp_uart1_default: blsp-uart1-default-state {
-				pins = "gpio0", "gpio1", "gpio2", "gpio3";
-				function = "blsp_uart1";
-				drive-strength = <16>;
-				bias-disable;
-			};
-
-			blsp_uart1_sleep: blsp-uart1-sleep-state {
-				pins = "gpio0", "gpio1", "gpio2", "gpio3";
-				function = "gpio";
-				drive-strength = <2>;
-				bias-pull-down;
-			};
-
 			blsp_uart1_console_default: blsp-uart1-console-default-state {
 				tx-pins {
 					pins = "gpio0";
@@ -944,13 +930,6 @@ blsp_uart1_console_sleep: blsp-uart1-console-sleep-state {
 				bias-pull-down;
 			};
 
-			blsp_uart2_default: blsp-uart2-default-state {
-				pins = "gpio4", "gpio5";
-				function = "blsp_uart2";
-				drive-strength = <16>;
-				bias-disable;
-			};
-
 			blsp_uart2_console_default: blsp-uart2-console-default-state {
 				tx-pins {
 					pins = "gpio4";
@@ -969,7 +948,7 @@ rx-pins {
 				};
 			};
 
-			blsp_uart2_sleep: blsp_uart2_console_sleep: blsp-uart2-sleep-state {
+			blsp_uart2_console_sleep: blsp-uart2-console-sleep-state {
 				pins = "gpio4", "gpio5";
 				function = "gpio";
 				drive-strength = <2>;

-- 
2.47.2



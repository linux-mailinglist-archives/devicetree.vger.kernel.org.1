Return-Path: <devicetree+bounces-24895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8CF811964
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:29:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D17501F2115B
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6192F35F0F;
	Wed, 13 Dec 2023 16:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M/r+E3ua"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 059AEDD
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:29:08 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50c05ea5805so8448931e87.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702484946; x=1703089746; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cKxXRg/SZys6FO13tqlijkOM+4H33mlk0pHh32bAe4Y=;
        b=M/r+E3uaLpSzra0frRwZgjZLEkBYnAR6YSyfRJLFi6kRf2e5uMP5nRw2j0dkoC+JSs
         AVTFLk/OZdXiU1DkLSzD4rZueMdtcvKza+AbGP4I3fRfNNL7yYOHuFauhaL2PxI0wwri
         8qSIJbfjALsqd9rbuwebjA8IDrmvhnl5vEgFwVor/xmOaJbncNyPLuXuLN6G69M3A23T
         hHPJmQyEMHhvmAGVg5WGhCyFF6bOM1LYfGd6HkGOQSwZS8Zv0SMHxM1IidipZpUxOLLo
         Rl94fNs2A7Ea9raUwNZBlt3COD/c5SgLD82/WY5ITQMISW5exWTjkJ29k2K9Rnho4YuL
         AXYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702484946; x=1703089746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cKxXRg/SZys6FO13tqlijkOM+4H33mlk0pHh32bAe4Y=;
        b=qicppHCVzDLb01xQp3YgK5Fel2EajLlvc5X2l2bKNpnFyCLgVINvEn5W/kXfoA5LYq
         Gs+vwMFRLunm3hcmK66xRohnDhBx2fVX32EK7NOGLvB9Yop+nqHTJwD/0RR+hUrTbEiR
         3hO6az94WR8W/1rhDe1dd5DYtKkCD1+RKyx1BNq2JVhTstC6uVwo0ueB3+4/Q12/oQNC
         xQZsLfq1JL6+EbEsVdUj0e1YacjXxFps+5X7b3Oca6TH1E32FbNd3BWgyTlRejfJ1SLw
         Ux4o2S9nJ1hEtrduLykfXZ3fNOz20lq3k/7bv2F1JfWE9NJJpY56U7qJDCXFTDpV2W6t
         LOhg==
X-Gm-Message-State: AOJu0YyBVgde0RZ5tPqQeAcN3I9yuZzksTkUuw48DytCUzV3n/lYTqVN
	sDSa3jLigViueJYwYoSgsOGecA==
X-Google-Smtp-Source: AGHT+IHf9IiHPvJCEC3DQSxTE1TxDgrJqImgSFv7iR/nFFuTnyuB123rIDC3/MCbkrTfPq6s7c9fFg==
X-Received: by 2002:a05:6512:3b0a:b0:50b:e056:277e with SMTP id f10-20020a0565123b0a00b0050be056277emr5280385lfv.52.1702484946231;
        Wed, 13 Dec 2023 08:29:06 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id br7-20020a056512400700b0050bfe37d28asm1641026lfb.34.2023.12.13.08.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:29:05 -0800 (PST)
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
Subject: [PATCH v2 2/4] arm64: dts: qcom: sm8450: drop unneeded assigned-clocks from codec macros
Date: Wed, 13 Dec 2023 17:28:54 +0100
Message-Id: <20231213162856.188566-3-krzysztof.kozlowski@linaro.org>
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

The MCLK clocks of codec macros have fixed 19.2 MHz frequency and
assigning clock rates is redundant.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested on HW.
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 3b6ea9653d2a..52390220d909 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2154,9 +2154,6 @@ wsa2macro: codec@31e0000 {
 				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
 				 <&vamacro>;
 			clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
-					  <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_2X_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			assigned-clock-rates = <19200000>, <19200000>;
 
 			#clock-cells = <0>;
 			clock-output-names = "wsa2-mclk";
@@ -2203,10 +2200,6 @@ rxmacro: codec@3200000 {
 				 <&vamacro>;
 			clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
 
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_RX_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
-					  <&q6prmcc LPASS_CLK_ID_RX_CORE_MCLK2_2X_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			assigned-clock-rates = <19200000>, <19200000>;
-
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
 			#sound-dai-cells = <1>;
@@ -2250,9 +2243,6 @@ txmacro: codec@3220000 {
 				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
 				 <&vamacro>;
 			clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_RX_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
-					  <&q6prmcc LPASS_CLK_ID_RX_CORE_MCLK2_2X_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			assigned-clock-rates = <19200000>, <19200000>;
 
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
@@ -2269,10 +2259,6 @@ wsamacro: codec@3240000 {
 				 <&vamacro>;
 			clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
 
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
-					  <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_2X_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			assigned-clock-rates = <19200000>, <19200000>;
-
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
 			#sound-dai-cells = <1>;
@@ -2348,8 +2334,6 @@ vamacro: codec@33f0000 {
 				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
 				 <&q6prmcc LPASS_CLK_ID_RX_CORE_MCLK2_2X_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
 			clock-names = "mclk", "macro", "dcodec", "npl";
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			assigned-clock-rates = <19200000>;
 
 			#clock-cells = <0>;
 			clock-output-names = "fsgen";
-- 
2.34.1



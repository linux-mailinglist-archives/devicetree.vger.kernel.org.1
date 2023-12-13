Return-Path: <devicetree+bounces-24891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F1D811942
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:26:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32F07B20E6D
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A39835F0E;
	Wed, 13 Dec 2023 16:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IRjoeVM2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1570691
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:25:46 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a22fb5f71d9so159217366b.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702484744; x=1703089544; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HKKYqdbc3N4hC1UQxae75xN4voBqyRjMYCSX3oX7340=;
        b=IRjoeVM21R50j1yLy4kKukHS9xBIp55PFTv5n2NJ5jVAs2ihEIzk2K0bsKKXU/ivOk
         CzLqgRosjcL1ahA0KgIt9/bE78pIdsks3PwivTIE06LDuWYhk6YM344kmHLbuXKmgsFh
         KEKxrHldvqMPZnBMMzAVdEE7gW6vavWPQLZWNn4GaV6hyDM2IcNUeQB0yfDixqdHn7sa
         FykaFqlZx1WfLsjACx2NCnFBpmtbWHlGV+nt1ndW2kAqe+JQoIY7JV9YuXkiofFzbWSk
         IaPDA+nMCAGqr8FxCVSkvY6BS4bcrrAUzkElRDvR5HGPb0mMSeiTDWoV2H4oMlKn+j3J
         rOOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702484744; x=1703089544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HKKYqdbc3N4hC1UQxae75xN4voBqyRjMYCSX3oX7340=;
        b=WNy492kY1QBp9jU0UGaNv/tb5OLpb9qQvzwytBmzMlQxW2Nhhi3lr7LrszNWP+UBGR
         GVuFhneJD7vEbntgcpj/bpPRDYmOsu7bfron/8+8+7SZKO3/bTjtvLmBgFfll8jqYStI
         VPLntoW+f4Ljc+iXPbaxXg1xfmMLFyar1DAPb1+T1xpzg1u/yb92ICfc5VSZEXplCb0W
         pRyI1+ERn0U9zcg4osiMIGrIa39zI/mwouRfF9HhNLr7aEKp86VxP754WIgzm88BaotA
         a2XrlCmSoK8xjUjlkWwh+UK3SvbMzMMUt05i5y20EKBafYXLI13AFTuWZ+h4HuD/KTUW
         R8hw==
X-Gm-Message-State: AOJu0YxyH8PmksRHM5e8e3BxqM/HSujMC6N5z50n49efTZtR6dVC858n
	P5T2PksqprFV/zT4NXVZikeuoA==
X-Google-Smtp-Source: AGHT+IHFG0Jl0N1DKFBn/+nExVQ68zOY5N449WKqehTKJtP9936qUdH+d5NImFZgsBsH6Okeu2Dl4A==
X-Received: by 2002:a17:907:270f:b0:a1e:a558:748c with SMTP id w15-20020a170907270f00b00a1ea558748cmr8642392ejk.18.1702484744603;
        Wed, 13 Dec 2023 08:25:44 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id kv18-20020a17090778d200b00a1dfc541282sm8048914ejc.225.2023.12.13.08.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:25:44 -0800 (PST)
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
Subject: [PATCH 4/4] arm64: dts: qcom: sm8550: drop unneeded assigned-clocks from codec macros
Date: Wed, 13 Dec 2023 17:25:36 +0100
Message-Id: <20231213162536.171475-5-krzysztof.kozlowski@linaro.org>
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

The MCLK clocks of codec macros have fixed 19.2 MHz frequency and
assigning clock rates is redundant.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index d8f79b5895f5..68b05ab5f65f 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2045,8 +2045,6 @@ lpass_wsa2macro: codec@6aa0000 {
 				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
 				 <&lpass_vamacro>;
 			clock-names = "mclk", "macro", "dcodec", "fsgen";
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			assigned-clock-rates = <19200000>;
 
 			#clock-cells = <0>;
 			clock-output-names = "wsa2-mclk";
@@ -2092,9 +2090,6 @@ lpass_rxmacro: codec@6ac0000 {
 				 <&lpass_vamacro>;
 			clock-names = "mclk", "macro", "dcodec", "fsgen";
 
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_RX_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			assigned-clock-rates = <19200000>;
-
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
 			#sound-dai-cells = <1>;
@@ -2138,9 +2133,6 @@ lpass_txmacro: codec@6ae0000 {
 				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
 				 <&lpass_vamacro>;
 			clock-names = "mclk", "macro", "dcodec", "fsgen";
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-
-			assigned-clock-rates = <19200000>;
 
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
@@ -2156,9 +2148,6 @@ lpass_wsamacro: codec@6b00000 {
 				 <&lpass_vamacro>;
 			clock-names = "mclk", "macro", "dcodec", "fsgen";
 
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			assigned-clock-rates = <19200000>;
-
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
 			#sound-dai-cells = <1>;
@@ -2233,9 +2222,6 @@ lpass_vamacro: codec@6d44000 {
 				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
 			clock-names = "mclk", "macro", "dcodec";
 
-			assigned-clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			assigned-clock-rates = <19200000>;
-
 			#clock-cells = <0>;
 			clock-output-names = "fsgen";
 			#sound-dai-cells = <1>;
-- 
2.34.1



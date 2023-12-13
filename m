Return-Path: <devicetree+bounces-24897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E46811969
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:29:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5DEF1F218D5
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 140B835EF5;
	Wed, 13 Dec 2023 16:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JUZy9Kz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FBE2112
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:29:12 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50be58a751cso8250726e87.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702484950; x=1703089750; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HKKYqdbc3N4hC1UQxae75xN4voBqyRjMYCSX3oX7340=;
        b=JUZy9Kz6HdBfUuhevjMlVkUcD+81IIaH2omoXkJCS1JsxcMzC6q9zmNwONYQ51QFNz
         eaLAiYwH8LH9902JI+F4O6Rh91x9BqkBY/+gIi1uDtwF2RHp0Wfthy3f4PAJOh3ZJCdi
         P7eQD31WO7V3wySlzVr1ktB4WnhbldY/E1rD3Gb+XcgtoZ7fLUUbmksG0jkm/aGB0Eng
         t2sc9gd0JsWnHMPEBr36ut8vuX6Hx8+jcdtFH2xKsiX9YD3VPzmv9p6dyQb2hr/1jXCS
         zgGip/uUbqqHLwZeR7vUtd9EsBU6Bbs2/GLeCyfTHjmPXztAeILAvPAPq7lhcUyHacUV
         Mwmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702484950; x=1703089750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HKKYqdbc3N4hC1UQxae75xN4voBqyRjMYCSX3oX7340=;
        b=V+j3BPvi5ZtH8L5gT4TfmTCVc8HMx+W6Q/weKKGxpygYvz4wQK7hoiwElyMHhzgsdM
         cPIhUQAA3ChylYUs/cuVi90yUfJ5vNuWc7BXJkUQbDc84BkQZzUdrSipCgIzJGVWJ3Hv
         Fg0/SjSYGJmuD/lBAT4iES1CfI5PvTrmlcDk6GfbVOMkSt0bw+Wvkful+y9krKesRh5b
         VttQxAjsH5g6z0C//qIN2p6cCeTqe3JzF2dg+TQZPFQ5CZ21eYYm6Vu6Duqmelvky6F8
         K6fAjAuNle7zKtvMr5u8LDDFzcJ+O6lJumqzR6w73bEeiJlaSPxd8PMDVs1ZZhCOtnt6
         Z03A==
X-Gm-Message-State: AOJu0YzODVhm3NFnVBuzff2vk/AXqIgQqaMnP80f2uFmOmUGRTFPjBtg
	tja2lAPOstE+rKngjv7ByIOpkQ==
X-Google-Smtp-Source: AGHT+IFhiIHvz0lgDTjS66FZRNJnwWFEoOQlmEuaGIwBD+A+MfQB0UBwiU1ZeyyiB/CaBHRAQcATAg==
X-Received: by 2002:a05:6512:2211:b0:50c:a89:a70e with SMTP id h17-20020a056512221100b0050c0a89a70emr5033349lfu.94.1702484950440;
        Wed, 13 Dec 2023 08:29:10 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id br7-20020a056512400700b0050bfe37d28asm1641026lfb.34.2023.12.13.08.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:29:10 -0800 (PST)
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
Subject: [PATCH v2 4/4] arm64: dts: qcom: sm8550: drop unneeded assigned-clocks from codec macros
Date: Wed, 13 Dec 2023 17:28:56 +0100
Message-Id: <20231213162856.188566-5-krzysztof.kozlowski@linaro.org>
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



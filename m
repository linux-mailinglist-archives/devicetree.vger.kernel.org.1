Return-Path: <devicetree+bounces-24888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB3881193B
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:25:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8B081C21131
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2903334CFF;
	Wed, 13 Dec 2023 16:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lu+na4VV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 809C1E3
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:25:42 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-54c5d041c23so9511240a12.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702484741; x=1703089541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cKxXRg/SZys6FO13tqlijkOM+4H33mlk0pHh32bAe4Y=;
        b=Lu+na4VVfszJlk5xn0E0Bxp56SFHLEoYRPFODY968yxiNRPAy3ECzUKbCahZH7kwOz
         xVArhZF+wgkPJnx7DnkIjZ6p0UDKwakNx5iD2RcdKbemdfn3u6FV/IeBdv7WzhuzCUVa
         AY55c/JI43PIQnMeEKdt25WsoYm7erimrlYL7BS8d13zjYdCdOqRQD6xFdNe+dYbrB2K
         BeUbNc829/dHFpRHci4l65IvzQI3trFmvuMOzs583WLta2cdX1nin3o09q7BCJRo1TVm
         BL77qjnrHIh133QijNoGhhUYbIl/1YnQtRvbr5FxZ2bjd//zHEWiTVX1UIsl5L12Y26f
         Grww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702484741; x=1703089541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cKxXRg/SZys6FO13tqlijkOM+4H33mlk0pHh32bAe4Y=;
        b=uT4RG83SOYE4mVjJcEHfKfcxueNF037NK/4JwNYoigLiMw6M5SXIO0IyweKEz8SsqK
         7INPeR1f36eULB6oAFoHQnxCdnp5AkWNxn/WJUdhGUqE2JYE/yugWLI9GQwCB4BpBUtS
         Gag4V2PyXpwQfSN2XVJLkLOOhD4sOm3hZqA5NhLQnZNK22BdxRIycUUs/9uJor/qWXge
         tLF4D/4uaIgNZ1Hp0CmIz3bAQWI9dRicRkm2kAUuzlCoLBB4MkxPx6t63Us4eChfkVAu
         iWDsNA61kV8hlNbhl6xFM/Y4yE0WRZteq96JINh1t51sboxwT6FEN+C0zm6Wt4xFhAUV
         NeZA==
X-Gm-Message-State: AOJu0YywY1X36SpGlxpMaNwj+t5Ypxm8FNsog1pPBAm9etrRKktyxvGN
	ZSlc1jar9h3k1GDSktdcMWYI9w==
X-Google-Smtp-Source: AGHT+IFv5LFyq6GSFNmr0clEapUNiqem0EWn7blPPyL1WqT+BoCaSNH81eJ/OylrsOyXgKxtMg++kw==
X-Received: by 2002:a17:907:766f:b0:a19:d40a:d1ff with SMTP id kk15-20020a170907766f00b00a19d40ad1ffmr2128393ejc.203.1702484741003;
        Wed, 13 Dec 2023 08:25:41 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id kv18-20020a17090778d200b00a1dfc541282sm8048914ejc.225.2023.12.13.08.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:25:40 -0800 (PST)
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
Subject: [PATCH 2/4] arm64: dts: qcom: sm8450: drop unneeded assigned-clocks from codec macros
Date: Wed, 13 Dec 2023 17:25:33 +0100
Message-Id: <20231213162536.171475-2-krzysztof.kozlowski@linaro.org>
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



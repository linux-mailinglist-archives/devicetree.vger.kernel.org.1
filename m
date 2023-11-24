Return-Path: <devicetree+bounces-18543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 824167F7087
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:51:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DC6F281172
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781E7179A1;
	Fri, 24 Nov 2023 09:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VnFZTfHN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 453DA1988
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:51:12 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a04196fc957so247032266b.2
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:51:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819471; x=1701424271; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KuDOFshCyU3coVU446XYIMnSf85Dt0KIkrnt8ifjQVE=;
        b=VnFZTfHNGJf/2wVUiJQ5e0a12QNPA4mNA/xCwK7Olcz+38TGUG2I5Al5WBn5rht9Uz
         Hc8GWwGE0ki+ZGNanhaVEn5DebRH5017cyMt0qMY55qxKgCbzW7K5j7AkAwugkIIB7yo
         PTs7mHQWrj0mNzAF6/UqkSmektmYszb44yN/dP3VIwEEHLjlDbjzJcxgZAlu8d4IHdiP
         eJ0Hc5C4f9SL/dK57v/zIwLi6ny/TWrhsV8QYmWa0IHUhYO+isZ9Z3qdFNH4xRwWexGW
         Dk4A/y14ipFN3Kmt2TWfZyW1PvW+ixEUJGCvEwo9hbb1eUveYHKuZ7QdJ/+R/YZENyil
         XhPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819471; x=1701424271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KuDOFshCyU3coVU446XYIMnSf85Dt0KIkrnt8ifjQVE=;
        b=eXzGA+06aPcYLYqSJa+ECLSnRSqn6+9xkV92loc0W0q2Kg76utewFogV0bkwmiI4/7
         8ZVwODjxJCReQE8Z+zz2GhT6ld/6YjHwC30M7s9eKA89WUhn4WEezOFaSvwWr0IgMPB4
         kECD3jLFPp565zm1M6GgHIEC6MqSBokwTIJ4L71fOraei7juyMQkqrpJzM9pnbR7g+p6
         ynBSUwsqT8/jTbVUWYR0jvs8w1znaRrVS8+t3dfvBRwi4mYr/Pt1f+DRDWgI6dqrLgty
         w2s6Ihnrj9DkW+rUlrlP5IirF25Xntv/TkW37WZqtJ030RlmL57sKQMYUUY8Mi+aEoEu
         /EsQ==
X-Gm-Message-State: AOJu0YxsN1A7SMabrpNRJygfbVDFGgu6brka5s6edwYwuGxxVUEO5Uvx
	Y/i3+91CVRxzNr3v39nhEFjJtQ==
X-Google-Smtp-Source: AGHT+IFnYUEpxM6+MO4FHi8gA7/3IXWQ5LtYjgtsMjqaoP5O6widfgKgio/Ol9NNPz9PpvhuAF02Qg==
X-Received: by 2002:a17:906:3915:b0:9ff:9db9:1da7 with SMTP id f21-20020a170906391500b009ff9db91da7mr1597217eje.29.1700819470822;
        Fri, 24 Nov 2023 01:51:10 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id ga10-20020a170906b84a00b009fd0102f71asm1860789ejb.176.2023.11.24.01.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:51:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Li Yang <leoyang.li@nxp.com>,
	Stefan Agner <stefan@agner.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: freescale: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:51:04 +0100
Message-Id: <20231124095104.58772-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231124095104.58772-1-krzysztof.kozlowski@linaro.org>
References: <20231124095104.58772-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dts | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mp.dtsi             | 4 ++--
 arch/arm64/boot/dts/freescale/imx93.dtsi              | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dts b/arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dts
index e4215c83ee0f..da4b1807c275 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-msc-sm2s-ep1.dts
@@ -57,8 +57,8 @@ sgtl5000: audio-codec@a {
 		clocks = <&clk IMX8MP_CLK_CLKOUT1>;
 		#sound-dai-cells = <0>;
 
-		VDDA-supply  = <&reg_vcc_3v3_audio>;
-		VDDD-supply  = <&reg_vcc_1v8_audio>;
+		VDDA-supply = <&reg_vcc_3v3_audio>;
+		VDDD-supply = <&reg_vcc_1v8_audio>;
 		VDDIO-supply = <&reg_vcc_1v8_audio>;
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index c9a610ba4836..5070dff253c4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -793,8 +793,8 @@ pgc_audio: power-domain@5 {
 							 <&clk IMX8MP_CLK_AUDIO_AXI>;
 						assigned-clocks = <&clk IMX8MP_CLK_AUDIO_AHB>,
 								  <&clk IMX8MP_CLK_AUDIO_AXI_SRC>;
-						assigned-clock-parents =  <&clk IMX8MP_SYS_PLL1_800M>,
-									  <&clk IMX8MP_SYS_PLL1_800M>;
+						assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+									 <&clk IMX8MP_SYS_PLL1_800M>;
 						assigned-clock-rates = <400000000>,
 								       <600000000>;
 					};
diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index ceccf4766440..18a1c36f05d9 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -755,7 +755,7 @@ lpuart8: serial@426a0000 {
 				interrupts = <GIC_SPI 211 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX93_CLK_LPUART8_GATE>;
 				clock-names = "ipg";
-				dmas =  <&edma2 90 0 1>, <&edma2 89 0 0>;
+				dmas = <&edma2 90 0 1>, <&edma2 89 0 0>;
 				dma-names = "rx", "tx";
 				status = "disabled";
 			};
-- 
2.34.1



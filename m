Return-Path: <devicetree+bounces-20420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A49267FF36C
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:20:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 44889B20B5D
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1050A524A6;
	Thu, 30 Nov 2023 15:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="FmlErw+H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9FFC10E4
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:38 -0800 (PST)
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 867CC42234
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701357637;
	bh=3BV4Vz9z3QHFiX3Dv1bjv4P8f3k40Tur0+jRMIWhjwA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=FmlErw+HiaJMs1JB12hxFfs+q4OSvVMt2YJ1zQmak5jfXG16EPwsA8OSLEwJYVmbo
	 J/VTYDyTQqhftDJLqBV0i9KeFJ8VQj/x2ENl8C0gG3ctq6hQBiEyhbkAgSlY81NDEX
	 ashAC0L9xZY8z4WhhQmrhusk0aOD3+/bCbwd+YDeg62xxgRZQAwySSBGabrFczWrCN
	 Z5/6BU4WYgnRkNsn7rI8MLRO0QqbzMzzLUHoqZiS7C/pBeVCvMPpe6HMEpuaqDPb6H
	 2px2A4/nQNm1+VJSKasGDdRyBnrEyuQ043JHAh0eubkqVKr0Vz4kLU6pQt06m2UG/R
	 ZVTktMCDeyvSw==
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3b5665e00b6so1173940b6e.2
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701357636; x=1701962436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3BV4Vz9z3QHFiX3Dv1bjv4P8f3k40Tur0+jRMIWhjwA=;
        b=etsQiUx79fgTi7zs0BwR66uUYn4j1XshESgd2iEiGxhMVQLVDZRFiTwDjbfcmQASgm
         nu9lNJkj56kZHA/CYOqA3tDyoeXgDx3Jo9oqMwdbI67HEeBmEXtuI34+oyGWXjML+Wmw
         TDX9xHgCAD6ahoF+NoF3X5a0uVFNO+hDKOm0w367lOf/A2ty9oXxFB2Z1jWQzqjO20qL
         oGxa8ihdyQBu3CrBOXz5XoiKMwztH6IzafqQZrTSWdKS3HZ7GMJiYPG0nyvTCkUWg4dP
         gIo9mfL2p6Dqpq+7o5JcDT54eb+MpgYZsoK3fy6aWKJqHX2VCaxNG2RmdYjzcMTtpFfQ
         +Z6Q==
X-Gm-Message-State: AOJu0Yy1VkrHXiBie8sQ7CWkPVvLe0dxGyf3O4AVbmyWgqLQ6sFDTdYc
	gD11Ge92gd5YzbM/0yS/Xv6FQCKrCzmAoG19ZM2yYVyevlOTvdug46O1hj2/YglrBCUxUrNCHkb
	JG9J2wMOtTwJqOnA51Rei7o76xvUb94spZQogZ0c=
X-Received: by 2002:a05:6808:e83:b0:3b6:a7f2:f1fe with SMTP id k3-20020a0568080e8300b003b6a7f2f1femr26367629oil.47.1701357636384;
        Thu, 30 Nov 2023 07:20:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF2rYNqi7HKvMn1CUtmkwOZKqWlU0WJNU5JfZrmmn+Bj6zgpLKPHoDP66fIgr2qToAWBfFRIA==
X-Received: by 2002:a05:6808:e83:b0:3b6:a7f2:f1fe with SMTP id k3-20020a0568080e8300b003b6a7f2f1femr26367602oil.47.1701357636165;
        Thu, 30 Nov 2023 07:20:36 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y125-20020a636483000000b005bd3d6e270dsm1356002pgb.68.2023.11.30.07.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:20:35 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v2 7/8] riscv: dts: starfive: Enable SD-card on JH7100 boards
Date: Thu, 30 Nov 2023 16:19:31 +0100
Message-Id: <20231130151932.729708-8-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
References: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add pinctrl and MMC device tree nodes for the SD-card on the
BeagleV Starlight and StarFive VisionFive V1 boards.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 .../boot/dts/starfive/jh7100-common.dtsi      | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
index 3af88e6970a3..adcdbbc4f57f 100644
--- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
@@ -12,6 +12,7 @@
 
 / {
 	aliases {
+		mmc0 = &sdio0;
 		serial0 = &uart3;
 	};
 
@@ -108,6 +109,43 @@ GPO_I2C2_PAD_SDA_OEN,
 		};
 	};
 
+	sdio0_pins: sdio0-0 {
+		clk-pins {
+			pinmux = <GPIOMUX(54, GPO_SDIO0_PAD_CCLK_OUT,
+				  GPO_ENABLE, GPI_NONE)>;
+			bias-disable;
+			input-disable;
+			input-schmitt-disable;
+		};
+		sdio-pins {
+			pinmux = <GPIOMUX(55, GPO_LOW, GPO_DISABLE,
+				  GPI_SDIO0_PAD_CARD_DETECT_N)>,
+				 <GPIOMUX(53,
+				  GPO_SDIO0_PAD_CCMD_OUT,
+				  GPO_SDIO0_PAD_CCMD_OEN,
+				  GPI_SDIO0_PAD_CCMD_IN)>,
+				 <GPIOMUX(49,
+				  GPO_SDIO0_PAD_CDATA_OUT_BIT0,
+				  GPO_SDIO0_PAD_CDATA_OEN_BIT0,
+				  GPI_SDIO0_PAD_CDATA_IN_BIT0)>,
+				 <GPIOMUX(50,
+				  GPO_SDIO0_PAD_CDATA_OUT_BIT1,
+				  GPO_SDIO0_PAD_CDATA_OEN_BIT1,
+				  GPI_SDIO0_PAD_CDATA_IN_BIT1)>,
+				 <GPIOMUX(51,
+				  GPO_SDIO0_PAD_CDATA_OUT_BIT2,
+				  GPO_SDIO0_PAD_CDATA_OEN_BIT2,
+				  GPI_SDIO0_PAD_CDATA_IN_BIT2)>,
+				 <GPIOMUX(52,
+				  GPO_SDIO0_PAD_CDATA_OUT_BIT3,
+				  GPO_SDIO0_PAD_CDATA_OEN_BIT3,
+				  GPI_SDIO0_PAD_CDATA_IN_BIT3)>;
+			bias-pull-up;
+			input-enable;
+			input-schmitt-enable;
+		};
+	};
+
 	uart3_pins: uart3-0 {
 		rx-pins {
 			pinmux = <GPIOMUX(13, GPO_LOW, GPO_DISABLE,
@@ -178,6 +216,15 @@ &osc_aud {
 	clock-frequency = <27000000>;
 };
 
+&sdio0 {
+	broken-cd;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio0_pins>;
+	status = "okay";
+};
+
 &uart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart3_pins>;
-- 
2.40.1



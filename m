Return-Path: <devicetree+bounces-20421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2B87FF370
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:20:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E9111C2088C
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0022451C56;
	Thu, 30 Nov 2023 15:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Kaul0nED"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56D5010EF
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:48 -0800 (PST)
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A368642241
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701357644;
	bh=Hegf0srFkbsTjzBuIfrKZwGyBpbOFAxXtDxYBC/BJOY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=Kaul0nEDY9wrTIMaTztWeKgS+89ygJVSiRsmrefksU8nUguLXzpAflqdpvyRMecG1
	 YV99372DkzAIlSdLdWjh9PzdkKGoWZDRXRpLKsvr47/91Rqo7jKxANPbAv2xoY5nS5
	 MxkOe86Gpii47WcidrHZWIDvZh7jdvCiTP/DteirxJ8nYkl3cH0+m9Rjxad3wHGnX7
	 TPCpSUogy/YjMyPwZQ948iUv3Zx06CDxwiWAIphbp7opfiqEx0KYuhP0Tzfx+lU6nM
	 0/GQskSVT954vDYw1rnr/dqZZU3YIIotRfd1YUuNh5o4zg74X8H6ATnoio7bPLLWJR
	 s6eAqwxFPEohg==
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3b85fd1bdecso1280008b6e.1
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701357643; x=1701962443;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hegf0srFkbsTjzBuIfrKZwGyBpbOFAxXtDxYBC/BJOY=;
        b=JQf3sG8DKEjrUoeeJ7Y4AYGRSrGkQOLQHcUU3A+1WegpAssqvTHrRggSPZ5gRp9YIJ
         I3eoK50M/I/Zh8SMRhYbH0BX25ivB63FWhdzmMh2Gv6VTuMiDB9bCd+JJPD0GvFiVpE1
         aMoiHQbp2pU/xRW0DjWMj46HulAAVpCQdcXU0wSH440dUDE49D8bXx1DHo4bPs5m+9Py
         ddX9vpF3eC+/BAobGBPtP0TNodMV3QNT5Z+UQ2Q2pBOWxG1ikkAgVHnnmGpjQhgJT7jw
         oBQ/Mt8RqSY9YykVubC+43iCT5OhJyo3QmxCyAYBPNVKAFqjzj4dwqimXlC+5KkDvOql
         QJkw==
X-Gm-Message-State: AOJu0Yx5L/Eg9HIHLSQt+wsZ6D7cCDhidFMZEfF2Fb3uTT8hncVlCyRe
	WJ6M9jEZd/AEn7va3vn1x0vQsuZkEcDrGEEF7jcqmg2UUIdXb34dZkJ5zgXieAPWW9/Ket1nY/o
	1YPfMMua5ztu2U2U+IfNqo1KKMJDXFa7c3WeXosg=
X-Received: by 2002:a05:6808:20a0:b0:3b2:ee79:c0fd with SMTP id s32-20020a05680820a000b003b2ee79c0fdmr31848213oiw.1.1701357643584;
        Thu, 30 Nov 2023 07:20:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDv33VjZX5rToz283+PZ9me+zUyLCvtTvnVucpd5Vw8rGLY3r7NPHXqlLul8V0jCsywTS1sQ==
X-Received: by 2002:a05:6808:20a0:b0:3b2:ee79:c0fd with SMTP id s32-20020a05680820a000b003b2ee79c0fdmr31848188oiw.1.1701357643362;
        Thu, 30 Nov 2023 07:20:43 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y125-20020a636483000000b005bd3d6e270dsm1356002pgb.68.2023.11.30.07.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:20:43 -0800 (PST)
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
Subject: [PATCH v2 8/8] riscv: dts: starfive: Enable SDIO wifi on JH7100 boards
Date: Thu, 30 Nov 2023 16:19:32 +0100
Message-Id: <20231130151932.729708-9-emil.renner.berthing@canonical.com>
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

Add pinctrl and MMC controller nodes for the Broadcom wifi controller
on the BeagleV Starlight and StarFive VisionFive V1 boards.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 .../boot/dts/starfive/jh7100-common.dtsi      | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
index adcdbbc4f57f..42fb61c36068 100644
--- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
@@ -13,6 +13,7 @@
 / {
 	aliases {
 		mmc0 = &sdio0;
+		mmc1 = &sdio1;
 		serial0 = &uart3;
 	};
 
@@ -64,6 +65,11 @@ soc {
 			     <0x00 0xfa000000 0x10 0x7a000000 0x00 0x01000000>,
 			     <0x00 0xfb000000 0x00 0xfb000000 0x07 0x85000000>;
 	};
+
+	wifi_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio 37 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &gpio {
@@ -146,6 +152,41 @@ GPO_SDIO0_PAD_CDATA_OEN_BIT3,
 		};
 	};
 
+	sdio1_pins: sdio1-0 {
+		clk-pins {
+			pinmux = <GPIOMUX(33, GPO_SDIO1_PAD_CCLK_OUT,
+				  GPO_ENABLE, GPI_NONE)>;
+			bias-disable;
+			input-disable;
+			input-schmitt-disable;
+		};
+		sdio-pins {
+			pinmux = <GPIOMUX(29,
+				  GPO_SDIO1_PAD_CCMD_OUT,
+				  GPO_SDIO1_PAD_CCMD_OEN,
+				  GPI_SDIO1_PAD_CCMD_IN)>,
+				 <GPIOMUX(36,
+				  GPO_SDIO1_PAD_CDATA_OUT_BIT0,
+				  GPO_SDIO1_PAD_CDATA_OEN_BIT0,
+				  GPI_SDIO1_PAD_CDATA_IN_BIT0)>,
+				 <GPIOMUX(30,
+				  GPO_SDIO1_PAD_CDATA_OUT_BIT1,
+				  GPO_SDIO1_PAD_CDATA_OEN_BIT1,
+				  GPI_SDIO1_PAD_CDATA_IN_BIT1)>,
+				 <GPIOMUX(34,
+				  GPO_SDIO1_PAD_CDATA_OUT_BIT2,
+				  GPO_SDIO1_PAD_CDATA_OEN_BIT2,
+				  GPI_SDIO1_PAD_CDATA_IN_BIT2)>,
+				 <GPIOMUX(31,
+				  GPO_SDIO1_PAD_CDATA_OUT_BIT3,
+				  GPO_SDIO1_PAD_CDATA_OEN_BIT3,
+				  GPI_SDIO1_PAD_CDATA_IN_BIT3)>;
+			bias-pull-up;
+			input-enable;
+			input-schmitt-enable;
+		};
+	};
+
 	uart3_pins: uart3-0 {
 		rx-pins {
 			pinmux = <GPIOMUX(13, GPO_LOW, GPO_DISABLE,
@@ -225,6 +266,25 @@ &sdio0 {
 	status = "okay";
 };
 
+&sdio1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	cap-power-off-card;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio1_pins>;
+	status = "okay";
+
+	wifi@1 {
+		compatible = "brcm,bcm4329-fmac";
+		reg = <1>;
+	};
+};
+
 &uart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart3_pins>;
-- 
2.40.1



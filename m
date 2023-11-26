Return-Path: <devicetree+bounces-19011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D70DB7F9681
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93015280D8D
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25B3F16404;
	Sun, 26 Nov 2023 23:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Ibxx9gBN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E972114
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:54 -0800 (PST)
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9F8FB402D4
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 23:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701041332;
	bh=Hegf0srFkbsTjzBuIfrKZwGyBpbOFAxXtDxYBC/BJOY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=Ibxx9gBNjU19M/qmhJfTLYXswzXXpdUubze7JgXD67vOLDRn9mjT9nhJzcz0yVAL9
	 ohCu1+MACH6hh0XkJxFHNVEH7SAsp3Q9zfUqIvjl4g1jSTrxWoWzaiYetvFxAHgLO3
	 jYJQOG80ek33gSUrcX0nRzb3wyJZmtk07912x1BZtekveUn7uEfzvOaC41a+AZsiej
	 95OBkXH68OnWg5sK4K0h78My83wBi83iL102csUiOcwl2PKf7yj6yP4O/ff1tYNRdB
	 rTWV0Kxrw+J5/UwaB/OXgU7hI+yQI24gQ6oSQhrPNnaO5h203nh/zjh2NAG7qecGmi
	 7uxLz0BY+6Izg==
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-1cfc2a7e382so11247855ad.0
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701041331; x=1701646131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hegf0srFkbsTjzBuIfrKZwGyBpbOFAxXtDxYBC/BJOY=;
        b=OzwrX1tDk24CpUnca/wSqfomXzNUvhMWYC80weTMlfV/McsNeS4ebuUpJCnt5aemWc
         lf7SbbnFFtzBSpcyjPIpczbq2OUhA/h7lwetOHvaNY2EpP78Rdex3zXmKJnS2vfhRwV3
         C9RaUlItIDx2KfvrgsVPcKzpnbMZeMuVuNYbDnES7E4wB0LQQGCTiQLyPm3mCgryCqKD
         I/xhfDmwtiZbOt/vlBtuitoSO/XGdOTtSJ/3Vud1tnM7HEi//jxs2s+XpGSyXhGrEMcc
         CtwYzZxHMul4IL9uwVucwgCJOCnVmJ/D8wAvIb2xLyR9kfBo+o4O+cR0NQEpA41w8Ua1
         A9Bw==
X-Gm-Message-State: AOJu0YxLpiDDc+MVFTN0xiJioqKxnog+Ncvw+YqMufUbqx17HVN28KUE
	Fv8M52NXCMCIvqlLoV+TwXVsCwHCKJOY+5gK/2+2NpvGqsS0o6O8oAx0YS66MPDQ3yidbhTv0/V
	/3oAU6aZ4eOwZUoIQsDbc1kbhSTmX2sSiXmMvTkA=
X-Received: by 2002:a17:902:ea03:b0:1cf:59df:23e with SMTP id s3-20020a170902ea0300b001cf59df023emr11103472plg.12.1701041331233;
        Sun, 26 Nov 2023 15:28:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTrvuPPoNzP+py4XqmHD9XiUVxx+5MXIw05g3Cwx+D545lG42EnF9hasXsueZHE+8Z2rIDwA==
X-Received: by 2002:a17:902:ea03:b0:1cf:59df:23e with SMTP id s3-20020a170902ea0300b001cf59df023emr11103454plg.12.1701041330967;
        Sun, 26 Nov 2023 15:28:50 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y10-20020a170902b48a00b001cfb52ebffesm3123853plr.147.2023.11.26.15.28.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 15:28:50 -0800 (PST)
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
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v1 8/8] riscv: dts: starfive: Enable SDIO wifi on JH7100 boards
Date: Mon, 27 Nov 2023 00:27:46 +0100
Message-Id: <20231126232746.264302-9-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
References: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
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



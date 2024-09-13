Return-Path: <devicetree+bounces-102869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A524978957
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 22:09:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B5C2282E6A
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 20:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE77314831E;
	Fri, 13 Sep 2024 20:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IUKwcydY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C7A148316
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 20:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726258162; cv=none; b=lXq/4VOYhA3YmRDGtWbBZ6O3zk1veZZaue2C84VeSvyNyLSZc6UHtfgZTn1jzsZu/Z5OKRNyO53ywV+3iEnhz3PQAzazPwo/NLKraQXpuoXVz0tfpvNWs3oRJb4ZtgOCuluCj9Q9MJfMnq1FNWXKOJKhKzsyQoynuEtkCOuGaik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726258162; c=relaxed/simple;
	bh=IV5eTaH7tl3v77jfIEGc9POfP3TzIYP67hH9P7+jDIY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Wfqun8nYZLMTg5HaedwIbelQKvJyQCGhcEFgWTYrLZflKBIf/PXMt5tAE2pIbO7NGI4A/A0sZoScc19bPohq3BVWJh9cwfEJA6S9dN1m9SRV4iSDsDq8uLfqPbJTGCOQumfbPWn9SBuQ4NN7hjTDaE2R5RX7OXXTNsz37FCoeRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IUKwcydY; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2db85775c43so1821488a91.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 13:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726258160; x=1726862960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SNtAXoXRrNHY1D9nMXD/LZ56mAPT8Bw1WEjMYqzybWw=;
        b=IUKwcydY4qqrrWvgEGThk/49EDVqbEO0fVzel8ccUI8G9SOqAAOLq58sWtNXh9J33z
         DqPphWqge2h+XQdQNh76CytvHf6uBE0XKzdHdkAL7B8tb9f/i/it/V5PhFTkf/7WzNkZ
         pnuyEfr/GFGmMOiMdwoi04oDt8n7EUAZ6XNg15EBMrt0n1OtGhnsMSxd8CgbYmcGiYw5
         5F10g1NH6caHqHjLEX117YEzJAolXJnQ+i14C3tAyY3Utmi44bvIqhqksIPQUZItJ5zk
         0HxmRI06rRwB/GfL2FzG4gafWXABqxUrs9JpSkYxA0a8wn1mXqm/GDWNGAMCfxU2We3R
         PIpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726258160; x=1726862960;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SNtAXoXRrNHY1D9nMXD/LZ56mAPT8Bw1WEjMYqzybWw=;
        b=JTg45VkdOHGB3IJjK/b8OMDQ3gHDQXyw9HCU4rwnI+W0WvqVpa1RtLhcEBi0PsxGOd
         XQYBaPk4YY0Q4UvsrRHiv8oz21R5ENIio7WQlRAX7XOd6WHj6AUvgNvv9MIZAX/BNFLG
         6vtRIhUmk1zN64K0ytrKdc8PryO2aPnhqoDEHKn0PmOECuSXPG53xccMpTWIUdQfliN6
         Mb8t9fRbZgrbAHi9lO+nzxbpmgZ0kNXSlGKyu0TNEGI1z/Qu9Ac+k+DfZECyVzxQAzgz
         PqxiL5AqHfhbPba9+26xU96Ah5htzByE90H/J6i0Ub5n+8UQzNqEgl373LxOtKtLadrX
         +6Qw==
X-Forwarded-Encrypted: i=1; AJvYcCVPvGXiOVlfWH71XtrHelrV+sU5jWnYyETOARer9AQfwBP/r/XaDQLt7pw0qCYNgWuOuyk5iVbsPUk9@vger.kernel.org
X-Gm-Message-State: AOJu0YykMnp/MwMFpGee6HMAhkVoz6s5OUs/p5ACOEiwAS+GlcWTY25G
	mpQ2O/c6yrqyzIzszY043gxjmQ9LT+15NK00mOY+r4k2IFLahWK4
X-Google-Smtp-Source: AGHT+IGTQn8sK1OGzEsONDA+U1Pz41yuNPnqgGfqaz1kqyQoxpkepZTYUJh2ClAj+zk3HpnCCoeLIw==
X-Received: by 2002:a17:90a:7086:b0:2d8:999a:bc37 with SMTP id 98e67ed59e1d1-2db67226a2dmr22204321a91.19.1726258160554;
        Fri, 13 Sep 2024 13:09:20 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:f375:804a:5c89:62a])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dbcfdc06b0sm61545a91.55.2024.09.13.13.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 13:09:20 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/3] ARM: dts: imx6q-lxr: Add board support
Date: Fri, 13 Sep 2024 17:09:06 -0300
Message-Id: <20240913200906.1753458-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240913200906.1753458-1-festevam@gmail.com>
References: <20240913200906.1753458-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The Comvetia LXR board is based on a i.MX6Q phyFLEX-i.MX6 Quad SoM
from Phytec.

Add a devicetree description for this board.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/Makefile      |  1 +
 arch/arm/boot/dts/nxp/imx/imx6q-lxr.dts | 87 +++++++++++++++++++++++++
 2 files changed, 88 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6q-lxr.dts

diff --git a/arch/arm/boot/dts/nxp/imx/Makefile b/arch/arm/boot/dts/nxp/imx/Makefile
index 92e291603ea1..8acd3a6d1e12 100644
--- a/arch/arm/boot/dts/nxp/imx/Makefile
+++ b/arch/arm/boot/dts/nxp/imx/Makefile
@@ -211,6 +211,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6q-kontron-samx6i-ads2.dtb \
 	imx6q-kp-tpc.dtb \
 	imx6q-logicpd.dtb \
+	imx6q-lxr.dtb \
 	imx6q-marsboard.dtb \
 	imx6q-mba6a.dtb \
 	imx6q-mba6b.dtb \
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-lxr.dts b/arch/arm/boot/dts/nxp/imx/imx6q-lxr.dts
new file mode 100644
index 000000000000..a49d6f623410
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-lxr.dts
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+//
+// Copyright 2024 Comvetia AG
+
+/dts-v1/;
+#include "imx6q-phytec-pfla02.dtsi"
+
+/ {
+	model = "COMVETIA QSoIP LXR-2";
+	compatible = "comvetia,imx6q-lxr", "phytec,imx6q-pfla02", "fsl,imx6q";
+
+	chosen {
+		stdout-path = &uart4;
+	};
+
+	spi {
+		compatible = "spi-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_spi_gpio>;
+		sck-gpios = <&gpio5 8 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio5 7 GPIO_ACTIVE_HIGH>;
+		num-chipselects = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fpga@0 {
+			compatible = "altr,fpga-passive-serial";
+			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_fpga>;
+			nconfig-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
+			nstat-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
+			confd-gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&ecspi3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi3>;
+	cs-gpios = <&gpio4 24 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+	};
+};
+
+&fec {
+	status = "okay";
+};
+
+&i2c3 {
+	status = "okay";
+};
+
+&uart3 {
+	status = "okay";
+};
+
+&uart4 {
+	status = "okay";
+};
+
+&usdhc3 {
+	no-1-8-v;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_fpga: fpgagrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_6__GPIO1_IO06       0x1b0b0
+			MX6QDL_PAD_DI0_PIN2__GPIO4_IO18     0x1b0b0
+			MX6QDL_PAD_DI0_PIN3__GPIO4_IO19     0x1b0b0
+		>;
+	};
+
+	pinctrl_spi_gpio: spigpiogrp {
+		fsl,pins = <
+			MX6QDL_PAD_DISP0_DAT14__GPIO5_IO08  0x1b0b0
+			MX6QDL_PAD_DISP0_DAT13__GPIO5_IO07  0x1b0b0
+		>;
+	};
+};
-- 
2.34.1



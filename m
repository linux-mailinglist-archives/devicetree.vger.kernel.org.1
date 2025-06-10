Return-Path: <devicetree+bounces-184187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5EDAD3312
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:04:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04FE71746E5
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 025F528DB50;
	Tue, 10 Jun 2025 10:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="XvS1PXEL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E125128D8E4
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 10:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749549723; cv=none; b=B7ggULd4zeHqoVS1KvtyPg7FRUzhCmckYXORtjgY9WcXJxaatnLfbKxPeY7gi/kc1kDHN77e/oOsJJ5R4MzHHodsxRUkdUNpUmb5xZa8Ae5XJFLkQf6zVe/rR/SG75fC4W8YUVHNwg3HT2kbHIylxi3vZPyPdS2GyT7jBLDhkMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749549723; c=relaxed/simple;
	bh=sUY8Qm2rT225RsjUKHgiJWexr6mDGTPhcZ8PJQwOxr8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IoV6BbLe3zDm0627aebo+9u+Qzy+PX4jtUpkQq3x1XchH6ez5cO6YQX09nomiZU3C+0xSMdtj9fuui88ugThG9HZtaagJAAYgAfF5dIV2EeUnLSS5kwtKNfcW5nwVBT7Q60g6hkE0h6Jz9inytWUHO3Z2yg9mQ23V4zMZTwEFH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=XvS1PXEL; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-606ddbda275so9708241a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 03:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749549720; x=1750154520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KzzLaojZq6S39goZRBGJmPMmLZK8oRVTymDDUaNmjK8=;
        b=XvS1PXELdevvRvgQ0BR6TEOkKlf78dIQ3wIm6DlShYUBTNpRy486lD2EQs/GadY4jo
         yViqdi/lJrymduJoWXgrl5yqAU5PkNELarht9aaenffLKj5kTYM01C9A0DBP1VvEVjQd
         wfQeKVx6EwZx17UD9oK7LdVxFkyne4v7zW7O0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749549720; x=1750154520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KzzLaojZq6S39goZRBGJmPMmLZK8oRVTymDDUaNmjK8=;
        b=LeXhdHakDnx7ZlQuunM9KRBD5nNVO//zoCTjoHn/7jiCOa8BNc4PRBueHo3naZ1VgR
         cyQsfRBvjo7F2rsJ+jMHdBjEpfSvnpvZHNFTWzQd1oMCRKIPZTtJb8OtSlXX9o5kbwhe
         7eAhHWqydaBesZ6+JNFPFbdc34t04qNVvh/+IcCzoDcATYfo9gGNnUkPxnDoMJI1Ie42
         U3UO3CZJLwi1aBgwoy2XAvbFjYWnYaeRhMFQYGN+ogJZYIxJ2mgZnLM1n9/qJLd90zQb
         joFqo2Aj+W8RwvJLoKHTpEj7jb8bI7oJC+V7RYKaiaCol3QywOUxDtSR7uOgLl5DKnpk
         GUjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVk08S0jLGRquEjB2irw6rYZOBUlMs9ehkaFTjihvoyTEQgXpKOCejWhOk0cIWuF/Bddt0IFCDw8lIv@vger.kernel.org
X-Gm-Message-State: AOJu0YwvRJQk8jJP5FBtjpnZkDWEJrRUauLNqyUGn6NgvJgNmsq40Yi6
	rNt9uZoCX8mNpertWXyS6TfGzDbMuvF84F4cEd9D6pBMDf5l1QjNHRahASgsbpBnuxc=
X-Gm-Gg: ASbGnctQUBdlD4AGmk2L1it4n6PFfC/9qL973btyyrV5ZjyR/u44E1oNHP6PUnKm8QK
	w0SsOvpWbGm6pb2EQqzk5l4FVF/2VJVwzaOufnBkCOjnbTO7ULzgcVdqP+aDmja+iTSRKz1i1zf
	ewo1TwU0Wz2UJW2EcNaB/93WqNWE3NCMoOwUjqAOhgpuaN70yYPvXTAWLgqWGMOVvNu/nKgp9fH
	j4i+7Muy/xCG0lcV4is2NwkBP2bG6h5zbw5U+GIqm4L2U1iX/4kEqvu02p79S998m23+p44Ifu+
	WJx09UEnFO4Iifv9nYfCWZmRL6LZ8cu1DXU3Z5wtYXeNRcrpJFPLR2hRwTNbpnCa9Iku/AWyjxe
	PYgAf4qGKwPtVhrcp6ncl/S7Wv4Y=
X-Google-Smtp-Source: AGHT+IH2dLOiWE95kMS36GEMfR3+nsxWqc34N4l1VIXOOEfkgDPGuvDfAP3EITz6N3UYOwZQN8jeag==
X-Received: by 2002:a05:6402:350e:b0:5e6:17e6:9510 with SMTP id 4fb4d7f45d1cf-6077341892cmr13964073a12.6.1749549720073;
        Tue, 10 Jun 2025 03:02:00 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6077837ed0bsm5953438a12.36.2025.06.10.03.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 03:01:59 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Matteo Lisi <matteo.lisi@engicam.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 09/10] ARM: dts: imx6ul: support Engicam MicroGEA GTW board
Date: Tue, 10 Jun 2025 12:00:22 +0200
Message-ID: <20250610100139.2476555-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250610100139.2476555-1-dario.binacchi@amarulasolutions.com>
References: <20250610100139.2476555-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support Engicam MicroGEA GTW board with:

- 256 Mbytes NAND Flash
- 512 Mbytes DRAM DDR2
- Buttons
- LEDs
- Micro SD card connector
- USB 2.0 high-speed/full-speed
- Ethernet MAC

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v3:
- Drop an extra blank line from the iomuxc node.

Changes in v2:
- Drop an extra blank line
- Move iomuxc and iomuxc_snvs nodes to the end of the DTS file.

 arch/arm/boot/dts/nxp/imx/Makefile            |   1 +
 .../nxp/imx/imx6ull-engicam-microgea-gtw.dts  | 162 ++++++++++++++++++
 2 files changed, 163 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-gtw.dts

diff --git a/arch/arm/boot/dts/nxp/imx/Makefile b/arch/arm/boot/dts/nxp/imx/Makefile
index 32dfd69b8d8b..de4142e8f3ce 100644
--- a/arch/arm/boot/dts/nxp/imx/Makefile
+++ b/arch/arm/boot/dts/nxp/imx/Makefile
@@ -357,6 +357,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ull-dhcom-picoitx.dtb \
 	imx6ull-dhcor-maveo-box.dtb \
 	imx6ull-engicam-microgea-bmm.dtb \
+	imx6ull-engicam-microgea-gtw.dtb \
 	imx6ull-engicam-microgea-rmm.dtb \
 	imx6ull-jozacp.dtb \
 	imx6ull-kontron-bl.dtb \
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-gtw.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-gtw.dts
new file mode 100644
index 000000000000..d500f8839102
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-gtw.dts
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2025 Amarula Solutions, Dario Binacchi <dario.binacchi@amarulasolutions.com>
+ * Copyright (C) 2025 Engicam srl
+ */
+
+/dts-v1/;
+
+#include "imx6ull-engicam-microgea.dtsi"
+
+/ {
+	compatible = "engicam,microgea-imx6ull-gtw",
+		     "engicam,microgea-imx6ull", "fsl,imx6ull";
+	model = "Engicam MicroGEA i.MX6ULL GTW Board";
+
+	reg_1v8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_keys>;
+
+		user-button {
+			label = "User button";
+			gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_MISC>;
+			wakeup-source;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_leds>, <&pinctrl_pwrled>;
+
+		led-0 {
+			gpios = <&gpio5 7 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		led-1 {
+			gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-2 {
+			gpios = <&gpio1 15 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-3 {
+			gpios = <&gpio1 12 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	usb_hub: usb-hub {
+		compatible = "smsc,usb3503a";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usb_hub>;
+		reset-gpios = <&gpio5 6 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&usbotg1 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	disable-over-current;
+	status = "okay";
+};
+
+/* MicroSD */
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	vmmc-supply = <&reg_3v3>;
+	bus-width = <4>;
+	non-removable;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_gpio_keys: gpio_keysgrp {
+		fsl,pins = <
+			MX6UL_PAD_JTAG_TDI__GPIO1_IO13		0x0b0b0
+		>;
+	};
+
+	pinctrl_leds: ledsgrp {
+		fsl,pins = <
+			MX6UL_PAD_JTAG_TCK__GPIO1_IO14		0x130b0
+			MX6UL_PAD_JTAG_TRST_B__GPIO1_IO15	0x130b0
+			MX6UL_PAD_JTAG_TDO__GPIO1_IO12		0x130b0
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
+			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX6UL_PAD_UART2_TX_DATA__UART2_DCE_TX	0x1b0b1
+			MX6UL_PAD_UART2_RX_DATA__UART2_DCE_RX	0x1b0b1
+			MX6UL_PAD_UART2_RTS_B__UART2_DCE_RTS	0x1b0b1
+			MX6UL_PAD_UART2_CTS_B__UART2_DCE_CTS	0x1b0b1
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x17059
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10059
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
+		>;
+	};
+};
+
+&iomuxc_snvs {
+	pinctrl_pwrled: ledsgrp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x130b0
+		>;
+	};
+
+	pinctrl_usb_hub: usb_hubgrp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER6__GPIO5_IO06	0x17059
+		>;
+	};
+};
-- 
2.43.0



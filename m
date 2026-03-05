Return-Path: <devicetree+bounces-271656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4ASnD768qWnNDQEAu9opvQ
	(envelope-from <devicetree+bounces-271656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:26:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9C62162B1
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:26:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 01F5D304621C
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 17:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666C13E5ECD;
	Thu,  5 Mar 2026 17:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fRthiVUe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613283E558E
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 17:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772731506; cv=none; b=ULkacGoJmKvC24l1U451WzEtEPCnECfolHn7ywG4hr3pgiZ5HydT7bNPbSgjiMy2wWAfui7iOAI3YHpas72knI8rl/FSLrNixS8b83dOAssY1wO+PZ6pMC9gNwudHIYsf0UQ3RHU6wkpl1GfXFnpRFjdUNVFomckhbxgw4Jzwu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772731506; c=relaxed/simple;
	bh=wkoi1v2b0irRWpaxmJ+Uncv1RjSBVMfii+W5TgwM24U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ni+izYqPZ0sJHHkqYA+nQA2mzmfLzdThqx+TgUJkAuiNg5seK7zFliCsRRXbxt60I38Nji7K3ut0ZSuK66yRAIUo4bVKtWyL/VD59duzwm4nZb+1EzfW2oVqFm2rN0ox+MV75+TqLSErUy7Toa2hD9fLIcfFIe/AOmBzwS6Uwus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fRthiVUe; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-480706554beso90328575e9.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772731502; x=1773336302; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FwXBW1bvnuKHtKAFJ+iQrOF7DvoRn1hnFgEXCS4/FD4=;
        b=fRthiVUe7AAYT/WlM8X7JUkxiTrpTUcJp+d2gWPnMMAuHMgK1oSCHS4fVQDjaV+Xt3
         xlIIfwLx8NFDJeQVOJUnh0sIowXVtyT5LSh/AnpgPtzYdEVQrtJUsjZOObxQTtEemvav
         YKSRYXb8k/ZLN4YgdIEQyb57A7JfBbNbN/aaL6HhYEnm7rbpHe0hpTGn0ldUnOoWNZav
         jYY42KE3yVkMrpc8zPbxAGiokBL0pz+UF9rtlngIZCh3gSiiKBlPP8VwXhnbIgVvXMNH
         z/FJWOla8kU4suXERbCtBNmtX1G6WOdggoqd5tKMXTUY3uzZs2bkWg9TgHGePIQ8ZuuD
         fa+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772731502; x=1773336302;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FwXBW1bvnuKHtKAFJ+iQrOF7DvoRn1hnFgEXCS4/FD4=;
        b=P4C/JmG4vxUSDWCdZRamtH2i1+FhR3PO58mR+MaQu51brZeCMFEReRkWvX+X37tHVb
         dfO7IIQevGweniZIocW+chVx1QrU9ouWTWHPrGHX5UqH7J3lhBa+sxLi5LbSbnpYAmzP
         sNrzSHfyQRZeE1+0TR3fQUXkZG+FWUCaMKJIpwL+phRCV5W2RfiPEmxDbPgAP9fbWqkr
         f4iSU2RbjtlQBwXBI8LExKfALY/ybzkP9S0+SNdzCMQIaEjW6XB3i8FPGrOzNzl0W68g
         j6yt76hOgeKCJVaTXuMbzikovoS3zQZsPhqmPxu5u/e4BXQjhfWvMxtgCikISmtSajJ2
         89hg==
X-Forwarded-Encrypted: i=1; AJvYcCXL/9CFiZgjiol9H5/xetNZ/GFM27K7x61dCerAuaiYu6TpaTBoDLlTA2p12yw2t1IQoXzfpP97vP5X@vger.kernel.org
X-Gm-Message-State: AOJu0YzI37War1OEI4Hx6a4ZZPxYGpYIEeyJl1PF+WQL9+vE8Gaa49Pu
	DEgwcUfAdFjZ8wT1ngPpkRoMarTdCE/IWYZIOPASbqxlRDj6wHLGnsQ9xq7fp2/h
X-Gm-Gg: ATEYQzzEwaFvEZ4pMZNeIh8YydrgHPm4OBdXMTsA6PBhCatxnckiT73sPn33dAgidDm
	EefG6QGoBU9TVQK6c0qSInkKHBNI7Vbv+o7dOOa5tjA2hSF4Z8McatRfc0qGrMfm5emI3Hb4nH7
	YxPU9XbMABnAdvvs3DmOXYhD46HU1nTB69X4qGCr3+bamydW60vGKEP6eXpRX2MkN5QfwC6BV9l
	JsRwG8+fEqUsZ1rQotClcEiF4nx3j9gqNY0vAV2regToNgwDVcUTca3hjIQIQtFXawz12oJHEyf
	JhjiptNJwLvvsAmQCTrJahboaDSGVOCLeBlHzSeQgDVCxXrhEARNXeCUOiI4eI6uzveO4/NrW0y
	oRRUrfOj5aEV3Vn8xsL1oUJeMiE+CGtYipLmdcMWWRri47zvtWJq2HkSoYIb2mpeg1L5JspgaHn
	wrvrhgnyziUcvQPwWkq6ZBZbEZuNCRiatWpABPpOFjUeGj5CVYAUkPx7VlBHabVEwszkfIEBU9o
	QFiqTc5yh25hk7aDBeGfajbEvs=
X-Received: by 2002:a05:600c:34d6:b0:477:58af:a91d with SMTP id 5b1f17b1804b1-4851983936cmr122599795e9.5.1772731502386;
        Thu, 05 Mar 2026 09:25:02 -0800 (PST)
Received: from ernest.hoecke-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fafe4c9sm67153495e9.15.2026.03.05.09.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 09:25:01 -0800 (PST)
From: Ernest Van Hoecke <ernestvanhoecke@gmail.com>
Date: Thu, 05 Mar 2026 18:24:34 +0100
Subject: [PATCH 6/6] arm64: dts: freescale: imx95-verdin: Add Yavia carrier
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-verdin-imx95-upstream-frank-li-base-v1-6-823fad02def9@toradex.com>
References: <20260305-verdin-imx95-upstream-frank-li-base-v1-0-823fad02def9@toradex.com>
In-Reply-To: <20260305-verdin-imx95-upstream-frank-li-base-v1-0-823fad02def9@toradex.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>, 
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, 
 Francesco Dolcini <francesco.dolcini@toradex.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.13.0
X-Rspamd-Queue-Id: 1F9C62162B1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271656-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ernestvanhoecke@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

From: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>

Add support for the Verdin i.MX95 SoM mated with the Yavia carrier
board.

Link: https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
Link: https://www.toradex.com/products/carrier-board/yavia
Signed-off-by: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>
---
 arch/arm64/boot/dts/freescale/Makefile             |   2 +
 .../dts/freescale/imx95-verdin-nonwifi-yavia.dts   |  21 ++
 .../boot/dts/freescale/imx95-verdin-wifi-yavia.dts |  21 ++
 .../boot/dts/freescale/imx95-verdin-yavia.dtsi     | 217 +++++++++++++++++++++
 4 files changed, 261 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index e3c34f8f40cd..48e5711526d6 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -456,10 +456,12 @@ dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-nonwifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-nonwifi-dev.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-nonwifi-ivy.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-nonwifi-mallow.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-nonwifi-yavia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-dev.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-ivy.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-mallow.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-yavia.dtb
 
 imx95-15x15-evk-pcie0-ep-dtbs = imx95-15x15-evk.dtb imx-pcie0-ep.dtbo
 dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-evk-pcie0-ep.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx95-verdin-nonwifi-yavia.dts b/arch/arm64/boot/dts/freescale/imx95-verdin-nonwifi-yavia.dts
new file mode 100644
index 000000000000..4f7b4e3a518b
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-verdin-nonwifi-yavia.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
+ * https://www.toradex.com/products/carrier-board/yavia
+ */
+
+/dts-v1/;
+
+#include "imx95-verdin.dtsi"
+#include "imx95-verdin-nonwifi.dtsi"
+#include "imx95-verdin-yavia.dtsi"
+
+/ {
+	model = "Toradex Verdin iMX95 on Yavia Board";
+	compatible = "toradex,verdin-imx95-nonwifi-yavia",
+		     "toradex,verdin-imx95-nonwifi",
+		     "toradex,verdin-imx95",
+		     "fsl,imx95";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx95-verdin-wifi-yavia.dts b/arch/arm64/boot/dts/freescale/imx95-verdin-wifi-yavia.dts
new file mode 100644
index 000000000000..43d35b770db2
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-verdin-wifi-yavia.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
+ * https://www.toradex.com/products/carrier-board/yavia
+ */
+
+/dts-v1/;
+
+#include "imx95-verdin.dtsi"
+#include "imx95-verdin-wifi.dtsi"
+#include "imx95-verdin-yavia.dtsi"
+
+/ {
+	model = "Toradex Verdin iMX95 WB on Yavia Board";
+	compatible = "toradex,verdin-imx95-wifi-yavia",
+		     "toradex,verdin-imx95-wifi",
+		     "toradex,verdin-imx95",
+		     "fsl,imx95";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx95-verdin-yavia.dtsi b/arch/arm64/boot/dts/freescale/imx95-verdin-yavia.dtsi
new file mode 100644
index 000000000000..6403ae584e70
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-verdin-yavia.dtsi
@@ -0,0 +1,217 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * Common dtsi for Verdin iMX95 SoM on Yavia carrier board
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
+ * https://www.toradex.com/products/carrier-board/yavia
+ */
+
+#include <dt-bindings/leds/common.h>
+
+/ {
+	aliases {
+		eeprom1 = &carrier_eeprom;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_qspi1_clk_gpio>,
+			    <&pinctrl_qspi1_cs_gpio>,
+			    <&pinctrl_qspi1_io0_gpio>,
+			    <&pinctrl_qspi1_io1_gpio>,
+			    <&pinctrl_qspi1_io2_gpio>,
+			    <&pinctrl_qspi1_io3_gpio>;
+
+		/* SODIMM 52 - LD1_RED */
+		led-0 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <1>;
+			gpios = <&gpio5 9 GPIO_ACTIVE_HIGH>;
+		};
+		/* SODIMM 54 - LD1_GREEN */
+		led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <1>;
+			gpios = <&gpio5 10 GPIO_ACTIVE_HIGH>;
+		};
+		/* SODIMM 56 - LD1_BLUE */
+		led-2 {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <1>;
+			gpios = <&gpio5 0 GPIO_ACTIVE_HIGH>;
+		};
+		/* SODIMM 58 - LD2_RED */
+		led-3 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <2>;
+			gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
+		};
+		/* SODIMM 60 - LD2_GREEN */
+		led-4 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <2>;
+			gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+		};
+		/* SODIMM 62 - LD2_BLUE */
+		led-5 {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_DEBUG;
+			function-enumerator = <2>;
+			gpios = <&gpio5 3 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+/* Verdin ADC_1, ADC_2, ADC_3 and ADC_4 */
+&adc1 {
+	status = "okay";
+};
+
+/* Verdin ETH_1 (On-module PHY) */
+&enetc_port0 {
+	status = "okay";
+};
+
+/* Verdin CAN_1 */
+&flexcan1 {
+	status = "okay";
+};
+
+/* Verdin CAN_2 */
+&flexcan2 {
+	status = "okay";
+};
+
+&gpio1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ctrl_sleep_moci>;
+};
+
+&gpio2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio1>,
+		    <&pinctrl_gpio2>,
+		    <&pinctrl_gpio3>;
+};
+
+&gpio3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio6>;
+};
+
+&gpio4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio5>;
+};
+
+&gpio5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio4>,
+		    <&pinctrl_qspi1_cs2_gpio>,
+		    <&pinctrl_qspi1_dqs_gpio>;
+};
+
+/* Verdin I2C_3_HDMI */
+&i3c2 {
+	status = "okay";
+};
+
+/* Verdin I2C_2_DSI */
+&lpi2c3 {
+	status = "okay";
+};
+
+/* Verdin I2C_1 */
+&lpi2c4 {
+	status = "okay";
+
+	temperature-sensor@4f {
+		compatible = "ti,tmp75c";
+		reg = <0x4f>;
+	};
+
+	carrier_eeprom: eeprom@57 {
+		compatible = "st,24c02", "atmel,24c02";
+		reg = <0x57>;
+		pagesize = <16>;
+	};
+};
+
+/* Verdin I2C_4_CSI */
+&lpi2c5 {
+	status = "okay";
+};
+
+/* Verdin UART_3, used as the Linux console */
+&lpuart1 {
+	status = "okay";
+};
+
+/* Verdin UART_4 */
+&lpuart2 {
+	status = "okay";
+};
+
+/* Verdin UART_1 */
+&lpuart7 {
+	status = "okay";
+};
+
+/* Verdin UART_2 */
+&lpuart8 {
+	status = "okay";
+};
+
+/* Verdin PCIE_1 */
+&pcie0 {
+	status = "okay";
+};
+
+/* Verdin PWM_1 */
+&tpm4 {
+	status = "okay";
+};
+
+/* Verdin PWM_2 */
+&tpm5 {
+	status = "okay";
+};
+
+/* Verdin PWM_3_DSI */
+&tpm6 {
+	status = "okay";
+};
+
+/* Verdin USB_1 */
+&usb2 {
+	status = "okay";
+};
+
+/* Verdin USB_2 */
+&usb3 {
+	fsl,permanently-attached;
+
+	status = "okay";
+};
+
+&usb3_phy {
+	status = "okay";
+};
+
+/* Verdin SD_1 */
+&usdhc2 {
+	status = "okay";
+};
+
+/* Verdin CTRL_WAKE1_MICO# */
+&verdin_gpio_keys {
+	status = "okay";
+};

-- 
2.43.0



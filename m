Return-Path: <devicetree+bounces-275037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIJoMt/Rs2ncbAAAu9opvQ
	(envelope-from <devicetree+bounces-275037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:59:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 517CD2801E0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AEF67307EACD
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 072F4388E77;
	Fri, 13 Mar 2026 08:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AtkcNwEI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CCF38836B
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392294; cv=none; b=eIcgOEXlwtxL6+0LZKwhw6X64oRDHZxnrISwic99+wKsNHCBbggBn4R0VUTTe6NugIt21PjAVgLhqvOhzPTRnLAGiNl+sDehGxDFDRnMiCb45inD6MrANpVSiyOEfilomp+Q5PhCkFByuX2ZOQ8Wb0B6a0oFd2ETXxFvu+EMmHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392294; c=relaxed/simple;
	bh=QH8eynlXy0gIgK+DynmlxfpO3Z4rjJECQZcK9S7Lhd4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EI+eZUyh24/4OXyuaJAyyFxwcycN7rCAZt2yLBL1kqb4o5jvyeRJDR/j+yw88oMuAtIG1+uyLNb34pFA2zV0jdDb9ltxX5JjppNmdHn9reI9Mc3pEkfKYhJX5RdxOqYdn/eTE9ajqHy6FZfCm34CwkAnDUX5L2v0V7X7YilaklI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AtkcNwEI; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439d8dc4ae4so2054490f8f.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773392287; x=1773997087; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S0Hl18632nmlHwEYEWXxe2Aq6+IeIf7Mul4XFwH113o=;
        b=AtkcNwEIaOIvETFV9W+X4/JlVscUlDKEr9+hrly5jd9rlj9zaKtmTS7QguY5Sp78zd
         OOzjEqdom9w6T9EDFSatgRL6p779X3eMw/xwQHZuS5tXdZ4pIJPiLpE5vGdQlHUM8lSP
         vUxZOxrrvLzOJJY2eTNHb61LM7qSqD8MW24QcyAlNJ+oscidmXbKCc3+mNP6SwBp/ecQ
         QINIA1HVXnq3nbBzRah+vCGZEt5CYW5xd8Ox4Tq9FpxJyf7K3sE7PFPiLOiUfvJTTv4l
         RUcNKnzGhF5YTW2JtM203yJ4dRDxu0Fk+yuYHZ+ezZpezoNzHBh/PGC29M7oqUGCVUCD
         QzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773392287; x=1773997087;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S0Hl18632nmlHwEYEWXxe2Aq6+IeIf7Mul4XFwH113o=;
        b=UgfkQN4Syvc5Cl3j0uEZiv4kdurAc28lVkJ7ZZL3+/9kiwKEV5FqQqG8PhsZRvsrTQ
         y/1l+CMslUQCDb0I5Q+rpitdCNw5fMUb76k/fMmmoxUvGcHqW9njSVapKYsg4/wVzLEr
         sbHZSzFihR7I5j+/QPf7tflS4CU1MzyYboRqtIVyHcADw8+jz6tayErYDkOniua76ku7
         KIvARPbvey6bGFZBmZejRtesBkxRiMWTUcfF4P4OL7CFAdBZUh4qwsC0bgQXpyyD27KK
         kc0Gi8PWBoLqbuQDx2H+MyJdcdna9Cch8OdOstwwm1C5eQJGU7dMxHKL2f3WkefZPECJ
         yklA==
X-Forwarded-Encrypted: i=1; AJvYcCWysaJKi6n1HJKSBpN8ly6GMsrl1m8e0AbLVvv425TRL2HXNJofG0k9lRRyXUTF5mshc+sPMN+XWnu+@vger.kernel.org
X-Gm-Message-State: AOJu0YxOLHJ5UVhgNBpyGlb4tOPoHcpODSsZG1KCNsfemTP28GRJXJy8
	2LOsS1F0vFpVWdK39zjUphKQi/zZeuabJTuvcxBsEacqRZqVn9KBv4M2
X-Gm-Gg: ATEYQzw0DOHnEQEZLbbc4txeJGPPEfcj3Z4O7r/9PDREZAH42TVfTGSVeWcKBRIql+N
	nzW7NLZdhuZBwbW3t437CWYvxmDtjJ5sGJD3ZVU0f9fB2T8ZWrvY/0NRkhcuRDnopaDxfAPaLix
	dSIqmB/MjANd4qweJWEfOnp6K0tRf3kkFlAVlm6+21uhAZlwsXavjXli5TwH0encgA0uhkYCYvt
	z1vR6sIYrKDWELxQHbjNKz79cS+ODG3UVIgnblL9wpSMfZlzq4mbd2Ye707pcDWj2fSyY4Amilq
	ECySSHkw4uMz2Ah3khGpYvXBm6NZf8NqWTwGePLhDJFRTgF5mkNtQOR3I72+RXIQ0AmCz1u3vtz
	ZLhzhyCZC3Ru53PsiuWSr5ahg4YpevVOKm94DDZ5Q1NfIUNI1iDJCvhZ/5HxzRqXnotSchW/JR3
	gEz/AYQvcFfoaicJ9DPjRcNNkkQTs5nxgZmNky5vtnG2goxs9UEJmNXxz/cYbme/pSuKoIwzzLc
	XcF3oGYCUfeKvL8eDls3TgbJgU=
X-Received: by 2002:a05:600c:a45:b0:485:4006:960c with SMTP id 5b1f17b1804b1-48556702a7dmr36036755e9.16.1773392286808;
        Fri, 13 Mar 2026 01:58:06 -0700 (PDT)
Received: from ernest.hoecke-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43a03cfd18fsm7663718f8f.36.2026.03.13.01.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:58:06 -0700 (PDT)
From: Ernest Van Hoecke <ernestvanhoecke@gmail.com>
Date: Fri, 13 Mar 2026 09:57:45 +0100
Subject: [PATCH v2 4/6] arm64: dts: freescale: imx95-verdin: Add Ivy
 carrier board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-verdin-imx95-upstream-frank-li-base-v2-4-bd488be7c699@toradex.com>
References: <20260313-verdin-imx95-upstream-frank-li-base-v2-0-bd488be7c699@toradex.com>
In-Reply-To: <20260313-verdin-imx95-upstream-frank-li-base-v2-0-bd488be7c699@toradex.com>
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
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275037-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ernestvanhoecke@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[toradex.com:email,toradex.com:mid,toradex.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 517CD2801E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>

Add support for the Verdin i.MX95 SoM mated with the Ivy carrier board.

Link: https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
Link: https://www.toradex.com/products/carrier-board/ivy-carrier-board
Signed-off-by: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>
---
v2: Reordered nodes alphanumerically by node name
v1: https://lore.kernel.org/all/20260305-verdin-imx95-upstream-frank-li-base-v1-4-823fad02def9@toradex.com/
---
 arch/arm64/boot/dts/freescale/Makefile             |   2 +
 .../arm64/boot/dts/freescale/imx95-verdin-ivy.dtsi | 515 +++++++++++++++++++++
 .../dts/freescale/imx95-verdin-nonwifi-ivy.dts     |  21 +
 .../boot/dts/freescale/imx95-verdin-wifi-ivy.dts   |  21 +
 4 files changed, 559 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 952268856cac..34af11b1ef6b 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -454,8 +454,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx95-toradex-smarc-dev.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-tqma9596sa-mb-smarc-2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-nonwifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-nonwifi-dev.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-nonwifi-ivy.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-dev.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx95-verdin-wifi-ivy.dtb
 
 imx95-15x15-evk-pcie0-ep-dtbs = imx95-15x15-evk.dtb imx-pcie0-ep.dtbo
 dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-evk-pcie0-ep.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx95-verdin-ivy.dtsi b/arch/arm64/boot/dts/freescale/imx95-verdin-ivy.dtsi
new file mode 100644
index 000000000000..8337c8b25f05
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-verdin-ivy.dtsi
@@ -0,0 +1,515 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * Common dtsi for Verdin iMX95 SoM on Ivy carrier board
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
+ * https://www.toradex.com/products/carrier-board/ivy-carrier-board
+ */
+
+#include <dt-bindings/mux/mux.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/net/ti-dp83867.h>
+
+/ {
+	aliases {
+		eeprom1 = &carrier_eeprom;
+	};
+
+	ain1-current {
+		compatible = "io-channel-mux";
+		channels = "", "ain1_current";
+		io-channels = <&ain1_current_unmanaged>;
+		io-channel-names = "parent";
+		mux-controls = <&ain1_mode_mux_ctrl>;
+		settle-time-us = <1000>;
+	};
+
+	ain1-voltage {
+		compatible = "io-channel-mux";
+		channels = "ain1_voltage", "";
+		io-channels = <&ain1_voltage_unmanaged 0>;
+		io-channel-names = "parent";
+		mux-controls = <&ain1_mode_mux_ctrl>;
+		settle-time-us = <1000>;
+	};
+
+	ain2-current {
+		compatible = "io-channel-mux";
+		channels = "", "ain2_current";
+		io-channels = <&ain2_current_unmanaged>;
+		io-channel-names = "parent";
+		mux-controls = <&ain2_mode_mux_ctrl>;
+		settle-time-us = <1000>;
+	};
+
+	ain2-voltage {
+		compatible = "io-channel-mux";
+		channels = "ain2_voltage", "";
+		io-channels = <&ain2_voltage_unmanaged 0>;
+		io-channel-names = "parent";
+		mux-controls = <&ain2_mode_mux_ctrl>;
+		settle-time-us = <1000>;
+	};
+
+	/* AIN1 Current w/o AIN1_MODE gpio control */
+	ain1_current_unmanaged: current-sense-shunt-ain1 {
+		compatible = "current-sense-shunt";
+		#io-channel-cells = <0>;
+		io-channels = <&ivy_adc1 1>;
+		shunt-resistor-micro-ohms = <100000000>;
+	};
+
+	/* AIN2 Current w/o AIN2_MODE gpio control */
+	ain2_current_unmanaged: current-sense-shunt-ain2 {
+		compatible = "current-sense-shunt";
+		#io-channel-cells = <0>;
+		io-channels = <&ivy_adc2 1>;
+		shunt-resistor-micro-ohms = <100000000>;
+	};
+
+	/* Ivy Power Supply Input Voltage */
+	ivy-1v8-voltage {
+		compatible = "voltage-divider";
+		/* Verdin ADC_4 */
+		io-channels = <&adc1 3>;
+		full-ohms = <39000>; /* 12k + 27k */
+		output-ohms = <27000>;
+	};
+
+	ivy-3v3-voltage {
+		compatible = "voltage-divider";
+		/* Verdin ADC_3 */
+		io-channels = <&adc1 2>;
+		full-ohms = <54000>; /* 27k + 27k */
+		output-ohms = <27000>;
+	};
+
+	ivy-5v-voltage {
+		compatible = "voltage-divider";
+		/* Verdin ADC_2 */
+		io-channels = <&adc1 1>;
+		full-ohms = <39000>; /* 27k + 12k */
+		output-ohms = <12000>;
+	};
+
+	ivy-input-voltage {
+		compatible = "voltage-divider";
+		/* Verdin ADC_1 */
+		io-channels = <&adc1 0>;
+		full-ohms = <204700>; /* 200k + 4.7k */
+		output-ohms = <4700>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ivy_leds>;
+
+		/* D7 Blue - SODIMM 30 - LEDs.GPIO1 */
+		led-0 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
+			gpios = <&gpio2 16 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D7 Green - SODIMM 32 - LEDs.GPIO2 */
+		led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
+			gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D7 Red - SODIMM 34 - LEDs.GPIO3 */
+		led-2 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <1>;
+			gpios = <&gpio2 21 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D8 Blue - SODIMM 36 - LEDs.GPIO4 */
+		led-3 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <2>;
+			gpios = <&gpio2 20 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D8 Green - SODIMM 54 - LEDs.GPIO5 */
+		led-4 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <2>;
+			gpios = <&gpio5 10 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D8 Red - SODIMM 44 - LEDs.GPIO6 */
+		led-5 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <2>;
+			gpios = <&gpio5 5 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D9 Blue - SODIMM 46 - LEDs.GPIO7 */
+		led-6 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <3>;
+			gpios = <&gpio5 4 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D9 Red - SODIMM 48 - LEDs.GPIO8 */
+		led-7 {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "off";
+			function = LED_FUNCTION_STATUS;
+			function-enumerator = <3>;
+			gpios = <&gpio5 7 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	/* AIN1_MODE - SODIMM 216 */
+	ain1_mode_mux_ctrl: mux-controller-0 {
+		compatible = "gpio-mux";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio5>;
+		#mux-control-cells = <0>;
+		mux-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
+	};
+
+	/* AIN2_MODE - SODIMM 218 */
+	ain2_mode_mux_ctrl: mux-controller-1 {
+		compatible = "gpio-mux";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio6>;
+		#mux-control-cells = <0>;
+		mux-gpios = <&gpio3 27 GPIO_ACTIVE_HIGH>;
+	};
+
+	reg_3v2_ain1: regulator-3v2-ain1 {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <3200000>;
+		regulator-min-microvolt = <3200000>;
+		regulator-name = "+3V2_AIN1";
+	};
+
+	reg_3v2_ain2: regulator-3v2-ain2 {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <3200000>;
+		regulator-min-microvolt = <3200000>;
+		regulator-name = "+3V2_AIN2";
+	};
+
+	/* AIN1 Voltage w/o AIN1_MODE gpio control */
+	ain1_voltage_unmanaged: voltage-divider-ain1 {
+		compatible = "voltage-divider";
+		#io-channel-cells = <1>;
+		io-channels = <&ivy_adc1 0>;
+		full-ohms = <19>;
+		output-ohms = <1>;
+	};
+
+	/* AIN2 Voltage w/o AIN2_MODE gpio control */
+	ain2_voltage_unmanaged: voltage-divider-ain2 {
+		compatible = "voltage-divider";
+		#io-channel-cells = <1>;
+		io-channels = <&ivy_adc2 0>;
+		full-ohms = <19>;
+		output-ohms = <1>;
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
+/* Verdin ETH_2_RGMII */
+&enetc_port1 {
+	phy-handle = <&ethphy2>;
+	phy-mode = "rgmii-id";
+
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
+	gpio-line-names = "";
+};
+
+&gpio2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio2>,
+		    <&pinctrl_gpio3>;
+	gpio-line-names =
+		"", /* 0 */
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"", /* 10 */
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"",
+		"GPIO2", /* Verdin GPIO_2 - SODIMM 208 */
+		"",
+		"", /* 20 */
+		"",
+		"",
+		"",
+		"GPIO3", /* Verdin GPIO_3 - SODIMM 210 */
+		"",
+		"",
+		"",
+		"",
+		"",
+		"", /* 30 */
+		"";
+};
+
+&gpio3 {
+	gpio-line-names = "";
+};
+
+&gpio4 {
+	gpio-line-names = "";
+};
+
+&gpio5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_qspi1_cs2_gpio>,
+		    <&pinctrl_qspi1_dqs_gpio>,
+		    <&pinctrl_qspi1_io0_gpio>,
+		    <&pinctrl_qspi1_io1_gpio>,
+		    <&pinctrl_qspi1_io2_gpio>,
+		    <&pinctrl_qspi1_io3_gpio>;
+	gpio-line-names =
+		"DIGI_1", /* SODIMM 56 */
+		"DIGI_2", /* SODIMM 58 */
+		"REL1",   /* SODIMM 60 */
+		"REL2",   /* SODIMM 62 */
+		"",
+		"",
+		"",
+		"",
+		"REL4", /* SODIMM 66 */
+		"",
+		"", /* 10 */
+		"REL3", /* SODIMM 64 */
+		"",
+		"",
+		"",
+		"",
+		"",
+		"";
+};
+
+/* Verdin I2C_1 */
+&lpi2c4 {
+	status = "okay";
+
+	temperature-sensor@4f {
+		compatible = "ti,tmp1075";
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
+
+	ivy_adc1: adc@40 {
+		compatible = "ti,ads1119";
+		reg = <0x40>;
+		interrupt-parent = <&som_gpio_expander>;
+		interrupts = <0 IRQ_TYPE_EDGE_FALLING>;
+		avdd-supply = <&reg_3v2_ain1>;
+		dvdd-supply = <&reg_3v2_ain1>;
+		vref-supply = <&reg_3v2_ain1>;
+		#address-cells = <1>;
+		#io-channel-cells = <1>;
+		#size-cells = <0>;
+
+		/* AIN1 0-33V Voltage Input */
+		channel@0 {
+			reg = <0>;
+			diff-channels = <0 1>;
+		};
+
+		/* AIN1 0-20mA Current Input */
+		channel@1 {
+			reg = <1>;
+			diff-channels = <2 3>;
+		};
+	};
+
+	ivy_adc2: adc@41 {
+		compatible = "ti,ads1119";
+		reg = <0x41>;
+		interrupt-parent = <&som_gpio_expander>;
+		interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
+		avdd-supply = <&reg_3v2_ain2>;
+		dvdd-supply = <&reg_3v2_ain2>;
+		vref-supply = <&reg_3v2_ain2>;
+		#address-cells = <1>;
+		#io-channel-cells = <1>;
+		#size-cells = <0>;
+
+		/* AIN2 0-33V Voltage Input */
+		channel@0 {
+			reg = <0>;
+			diff-channels = <0 1>;
+		};
+
+		/* AIN2 0-20mA Current Input */
+		channel@1 {
+			reg = <1>;
+			diff-channels = <2 3>;
+		};
+	};
+};
+
+/* Verdin SPI_1 */
+&lpspi6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpspi6>,
+		    <&pinctrl_spi1_cs>,
+		    <&pinctrl_gpio1>,
+		    <&pinctrl_gpio4>;
+	cs-gpios = <&gpio4 29 GPIO_ACTIVE_LOW>,
+		   <&som_gpio_expander 13 GPIO_ACTIVE_LOW>,
+		   <&gpio2 0 GPIO_ACTIVE_LOW>,
+		   <&gpio5 12 GPIO_ACTIVE_LOW>;
+
+	tpm@2 {
+		compatible = "infineon,slb9670", "tcg,tpm_tis-spi";
+		reg = <2>;
+		spi-max-frequency = <18500000>;
+	};
+
+	fram@3 {
+		compatible = "fujitsu,mb85rs256", "atmel,at25";
+		reg = <3>;
+		address-width = <16>;
+		size = <32768>;
+		spi-max-frequency = <33000000>;
+		pagesize = <1>;
+	};
+};
+
+/* Verdin UART_3, used as the Linux console */
+&lpuart1 {
+	status = "okay";
+};
+
+/* Verdin UART_1 */
+&lpuart7 {
+	status = "okay";
+};
+
+/* Verdin UART_2, through RS485 transceiver */
+&lpuart8 {
+	rs485-rts-active-low;
+	rs485-rx-during-tx;
+	linux,rs485-enabled-at-boot-time;
+
+	status = "okay";
+};
+
+&netc_emdio {
+	ethphy2: ethernet-phy@2 {
+		reg = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_eth2_rgmii_int>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+		ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+	};
+};
+
+/* Verdin PCIE_1 */
+&pcie0 {
+	status = "okay";
+};
+
+&som_gpio_expander {
+	gpio-line-names = "";
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
+&scmi_iomuxc {
+	pinctrl_ivy_leds: ivyledsgrp {
+		fsl,pins = <IMX95_PAD_GPIO_IO16__GPIO2_IO_BIT16		0x11e>, /* SODIMM 30 */
+			   <IMX95_PAD_GPIO_IO26__GPIO2_IO_BIT26		0x11e>, /* SODIMM 32 */
+			   <IMX95_PAD_GPIO_IO21__GPIO2_IO_BIT21		0x11e>, /* SODIMM 34 */
+			   <IMX95_PAD_GPIO_IO20__GPIO2_IO_BIT20		0x11e>, /* SODIMM 36 */
+			   <IMX95_PAD_XSPI1_DATA5__GPIO5_IO_BIT5	0x11e>, /* SODIMM 44 */
+			   <IMX95_PAD_XSPI1_DATA4__GPIO5_IO_BIT4	0x11e>, /* SODIMM 46 */
+			   <IMX95_PAD_XSPI1_DATA7__GPIO5_IO_BIT7	0x11e>, /* SODIMM 48 */
+			   <IMX95_PAD_XSPI1_SS0_B__GPIO5_IO_BIT10	0x11e>; /* SODIMM 54 */
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx95-verdin-nonwifi-ivy.dts b/arch/arm64/boot/dts/freescale/imx95-verdin-nonwifi-ivy.dts
new file mode 100644
index 000000000000..ebe1aec1ffa4
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-verdin-nonwifi-ivy.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
+ * https://www.toradex.com/products/carrier-board/ivy-carrier-board
+ */
+
+/dts-v1/;
+
+#include "imx95-verdin.dtsi"
+#include "imx95-verdin-nonwifi.dtsi"
+#include "imx95-verdin-ivy.dtsi"
+
+/ {
+	model = "Toradex Verdin iMX95 on Ivy Board";
+	compatible = "toradex,verdin-imx95-nonwifi-ivy",
+		     "toradex,verdin-imx95-nonwifi",
+		     "toradex,verdin-imx95",
+		     "fsl,imx95";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx95-verdin-wifi-ivy.dts b/arch/arm64/boot/dts/freescale/imx95-verdin-wifi-ivy.dts
new file mode 100644
index 000000000000..7ff2d03a254d
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-verdin-wifi-ivy.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
+ * https://www.toradex.com/products/carrier-board/ivy-carrier-board
+ */
+
+/dts-v1/;
+
+#include "imx95-verdin.dtsi"
+#include "imx95-verdin-wifi.dtsi"
+#include "imx95-verdin-ivy.dtsi"
+
+/ {
+	model = "Toradex Verdin iMX95 WB on Ivy Board";
+	compatible = "toradex,verdin-imx95-wifi-ivy",
+		     "toradex,verdin-imx95-wifi",
+		     "toradex,verdin-imx95",
+		     "fsl,imx95";
+};

-- 
2.43.0



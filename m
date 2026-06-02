Return-Path: <devicetree+bounces-305696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +UMHASnlHmpNYwAAu9opvQ
	(envelope-from <devicetree+bounces-305696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 16:14:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABAF62F320
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 16:13:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=oPxp7Nq8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305696-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305696-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0B9063011A62
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 14:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF4E73CB2E0;
	Tue,  2 Jun 2026 14:13:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACF53E92A5
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 14:13:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780409624; cv=none; b=Ya0vmEycJj5M1I+e0/ebg7VKQ9ZIlwyvi3BRHvkntO0bTOgFHIAIMY8GAKOjtSiRcBU5nknJAusWG2w8yVqJ8eCWRvqqstMM/dDTZ1eC7goVmr6peCNtLhtVynm6PXKE2LoWrNd5OCrt8Pfl7OBvpGBvXgJWZe6xjazFLWL9yWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780409624; c=relaxed/simple;
	bh=kEH6PDbek15rS2LeORRiQN2si7wMGhOMoHQUDgxn8vQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OAvJtelh8I8LASheTrOMdMzLrmoIevYx3biTuMBupGJ/rk/CO2WaD3sTmbdCtPaWGuWSdUhoSuZZHf0K/R06MW8ioBSyK7Dk/0WqJDT8Wc+TI09mQp5AmCW7a/VUEQu0XBgfFUfYgy4l37sQMgMEAXQof965XpijYjvzwKhuFAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=oPxp7Nq8; arc=none smtp.client-ip=209.85.208.41
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-68d233bf083so4116999a12.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 07:13:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780409622; x=1781014422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YJTNSvGmNlfWTZXTUtIjd3Sb6+df9HO925pTn2aF+ec=;
        b=oPxp7Nq8DAYKbFczB2y4w2UUeniiexFs6GIpwHU87RAyYZPzvE9Hg03vs0DOs45c31
         S5rAS44DjK7q+KE/S9h7Muze/eME0yNaKehOpmHSFGBA823B1jFIrQxXVThb2/4T7kNH
         uvVyylGvlhd7UOM9q5WFGq7/UMQG6UhnEs1RBScZl++J32xX94QZbVcf+RndQeB4nLWT
         5y4ulX6UNLyNpqRk//n8Yh6r1qW7sxWW05gtIlY8mpYCQjwuqr7dYXhb1yn8z/rRnykC
         T1YZlfvpketPzkZtdeh/eNCqGIeKtRji8Lhbi+A+nxwLHIxLfRAkzFH0lV/u+iFuwJxN
         mooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780409622; x=1781014422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YJTNSvGmNlfWTZXTUtIjd3Sb6+df9HO925pTn2aF+ec=;
        b=ZLhw45JMgm2eKYrr7f+MJA4B7jdsmQtl/y+fjzsDgUtO4vWCZiH/L5WOToHNpvsMzt
         1RnOaBAxsGHktTgH2niTfIjUyMvpOtszk4ERW45/G2KqK7feaxv5AhbvWg8vnFYLRWvA
         cpYxU1ogoTQaGhnYbKpn6D6FLtwIG8JXCRiXXsBoyzF6UUXYDfi1fgpqPIIci/lggc67
         jQ5KjhMmJBI+F/9Y3PDy8Vpt8zltzUlU3TT2a6QlrpysJNN/2jLf63D2Z6lZ4EVtamA8
         HTAbo8Sysyj6cGT0Xehsq6Kx9d3Coxq/X+BlrdVlg7RfWq6J79H27oRgGucTBMW7Fcw7
         b/Ag==
X-Forwarded-Encrypted: i=1; AFNElJ8CiEjDayw2dmh5C46Dt2GnBVTCrMb2ZLM0oAdDclxFxGxdiecrk0tCxn7q3i8xI0y/1ZvcosERtcGV@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi7uLvDdDVOqZD74F2W/NQyAW5Rm4Bl32umTuGBk5eNpOJtK1C
	Pbgyy78JULXe1Q66pQ8Zdf4OoAJxcFNt8aqBRp6/OJd9gx49fS6txEU8SZxfaw==
X-Gm-Gg: Acq92OGqmikLtYPZxjL0U6lpvGZKMxocHAhC2Ye4bwmnYqdNAvkkAWb0FbKAdLhI0FM
	qCWhzxy21Ghjg5VOEI+0QWWt5Cffy2VrWrr0UACY1B5svZ2VDhCVtmgtsnHgl+KejJZ7bAnZAjK
	nRv6KUupM2Wu+K0ynS7n67g8kgaNa9zeZN2zW22Pzgl9mCzuOOmZlGTG9WMRLUqNSzvrf1o+ZVW
	HrMTMlIN33zt3nVpSjvdv3uslVo6Xq8pEo8UKMQPdGhnDS7APtMSz+yJbdO8HH1sQWnQ5vzpW/r
	eNS/wKlt3xvb6oASpevPC9o75o8nM6MTpc1B5dyCLpGs6XWR6ydFWb48C3BoaFFEN2TT9pHv443
	okSemlirW1CUdV1S9l94gfqrV13ap6FnKFWKdCrQIhs7aeNytqQFHOSZVFFLX0/VV3uCMbrNAtE
	A/dnvNG89IIP/ooIgNQvmXFP/7sA==
X-Received: by 2002:a05:600c:8b77:b0:48a:9428:5522 with SMTP id 5b1f17b1804b1-490a293a0b1mr331988825e9.16.1780409611329;
        Tue, 02 Jun 2026 07:13:31 -0700 (PDT)
Received: from vitor-nb ([2001:8a0:c4c6:f00:e8c3:a961:5b26:a2c6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490b0e0de7bsm60816345e9.3.2026.06.02.07.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 07:13:30 -0700 (PDT)
From: Vitor Soares <ivitro@gmail.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Vitor Soares <vitor.soares@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: ti: k3-am62p-verdin: Add Toradex OV5640 CSI Cameras
Date: Tue,  2 Jun 2026 15:13:13 +0100
Message-ID: <20260602141311.1366818-8-ivitro@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260602141311.1366818-5-ivitro@gmail.com>
References: <20260602141311.1366818-5-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:vitor.soares@toradex.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305696-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[ivitro@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivitro@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[toradex.com:url,toradex.com:email,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5ABAF62F320

From: Vitor Soares <vitor.soares@toradex.com>

Add device tree overlays for the Toradex OV5640 CSI Cameras on Verdin
AM62P CSI_1. Two variants are supported: the current CSI Camera Set 5MP
OV5640 with a 27 MHz oscillator and the legacy CSI Camera Module 5MP
OV5640 with a 24 MHz oscillator.

Link: https://developer.toradex.com/hardware/accessories/cameras/csi-camera-module-5mp-ov5640-arducam
Link: https://developer.toradex.com/hardware/legacy-products/other/csi-camera-module-5mp-ov5640/
Signed-off-by: Vitor Soares <vitor.soares@toradex.com>
---
 arch/arm64/boot/dts/ti/Makefile               |  8 +++
 .../dts/ti/k3-am62p5-verdin-ov5640-24mhz.dtso | 17 +++++
 .../boot/dts/ti/k3-am62p5-verdin-ov5640.dtsi  | 72 +++++++++++++++++++
 .../boot/dts/ti/k3-am62p5-verdin-ov5640.dtso  | 18 +++++
 4 files changed, 115 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640-24mhz.dtso
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640.dtso

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 27a56abb1d7f..9fdf4f1452c4 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -84,6 +84,8 @@ dtb-$(CONFIG_ARCH_K3) += k3-am62p5-verdin-nonwifi-dev.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am62p5-verdin-nonwifi-ivy.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am62p5-verdin-nonwifi-mallow.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am62p5-verdin-nonwifi-yavia.dtb
+dtb-$(CONFIG_ARCH_K3) += k3-am62p5-verdin-ov5640-24mhz.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am62p5-verdin-ov5640.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am62p5-verdin-uart4-mcu.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am62p5-verdin-wifi-dahlia.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am62p5-verdin-wifi-dev.dtb
@@ -278,6 +280,10 @@ k3-am62p5-sk-csi2-tevi-ov5640-dtbs := k3-am62p5-sk.dtb \
 	k3-am62x-sk-csi2-tevi-ov5640.dtbo
 k3-am62p5-verdin-wifi-dev-nau8822-btl-dtbs := k3-am62p5-verdin-wifi-dev.dtb \
 	k3-am62p5-verdin-dev-nau8822-btl.dtbo
+k3-am62p5-verdin-wifi-dev-ov5640-24mhz-dtbs := k3-am62p5-verdin-wifi-dev.dtb \
+	k3-am62p5-verdin-ov5640-24mhz.dtbo
+k3-am62p5-verdin-wifi-dev-ov5640-dtbs := k3-am62p5-verdin-wifi-dev.dtb \
+	k3-am62p5-verdin-ov5640.dtbo
 k3-am62p5-verdin-wifi-dev-uart4-mcu-dtbs := k3-am62p5-verdin-wifi-dev.dtb \
 	k3-am62p5-verdin-uart4-mcu.dtbo
 k3-am642-evm-icssg0-dtbs := \
@@ -379,6 +385,8 @@ dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
 	k3-am62p5-sk-csi2-ov5640.dtb \
 	k3-am62p5-sk-csi2-tevi-ov5640.dtb \
 	k3-am62p5-verdin-wifi-dev-nau8822-btl.dtb \
+	k3-am62p5-verdin-wifi-dev-ov5640-24mhz.dtb \
+	k3-am62p5-verdin-wifi-dev-ov5640.dtb \
 	k3-am62p5-verdin-wifi-dev-uart4-mcu.dtb \
 	k3-am642-evm-icssg0.dtb \
 	k3-am642-evm-icssg1-dualemac.dtb \
diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640-24mhz.dtso b/arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640-24mhz.dtso
new file mode 100644
index 000000000000..1da6329065e6
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640-24mhz.dtso
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * Toradex CSI Camera Module 5MP OV5640 on Verdin AM62P CSI_1.
+ *
+ * https://developer.toradex.com/hardware/legacy-products/other/csi-camera-module-5mp-ov5640/
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include "k3-am62p5-verdin-ov5640.dtsi"
+
+&clock_camera {
+	clock-frequency = <24000000>;
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640.dtsi b/arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640.dtsi
new file mode 100644
index 000000000000..f0430b1efcf1
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640.dtsi
@@ -0,0 +1,72 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * Common device tree include for Toradex OV5640 CSI camera on Verdin AM62P CSI_1.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+
+&{/} {
+	clock_camera: clock-camera {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+	};
+
+	regulator_camera: regulator-camera {
+		compatible = "regulator-fixed";
+		/* Verdin GPIO_8_CSI (SODIMM 222) - CAM_1_CON_PWRCTRL */
+		gpio = <&main_gpio0 52 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-name = "V_CSI";
+		startup-delay-us = <5000>;
+	};
+};
+
+&csi0_port0 {
+	status = "okay";
+
+	csi2rx0_in_sensor: endpoint {
+		remote-endpoint = <&csi2_cam0>;
+		bus-type = <4>; /* CSI2 DPHY. */
+		clock-lanes = <0>;
+		data-lanes = <1 2>;
+	};
+};
+
+&dphy0 {
+	status = "okay";
+};
+
+/* Verdin I2C_4_CSI */
+&main_i2c3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	camera@3c {
+		compatible = "ovti,ov5640";
+		reg = <0x3c>;
+
+		clocks = <&clock_camera>;
+		clock-names = "xclk";
+		AVDD-supply = <&regulator_camera>;
+		DOVDD-supply = <&regulator_camera>;
+		DVDD-supply = <&regulator_camera>;
+		/* Verdin GPIO_6 (SODIMM 218) - CAM_1_CON_PWRDWN */
+		powerdown-gpios = <&main_gpio0 50 GPIO_ACTIVE_HIGH>;
+		/* Verdin GPIO_5 (SODIMM 216) - CAM_1_CON_RST */
+		reset-gpios = <&main_gpio0 49 GPIO_ACTIVE_LOW>;
+
+		port {
+			csi2_cam0: endpoint {
+				remote-endpoint = <&csi2rx0_in_sensor>;
+				clock-lanes = <0>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
+};
+
+&ti_csi2rx0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640.dtso b/arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640.dtso
new file mode 100644
index 000000000000..2e90aeb448b9
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-verdin-ov5640.dtso
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright (c) Toradex
+ *
+ * Toradex CSI Camera Set 5MP OV5640 on Verdin AM62P CSI_1.
+ *
+ * https://developer.toradex.com/hardware/accessories/cameras/csi-camera-module-5mp-ov5640-arducam
+ * https://www.toradex.com/accessories/csi-camera-ov5640
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include "k3-am62p5-verdin-ov5640.dtsi"
+
+&clock_camera {
+	clock-frequency = <27000000>;
+};
-- 
2.54.0



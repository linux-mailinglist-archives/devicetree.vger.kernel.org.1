Return-Path: <devicetree+bounces-256630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C2224D39CFF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 93EDA300DD80
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D6202E36F1;
	Mon, 19 Jan 2026 03:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZZlfJ7sO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78922DBF5E
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768793459; cv=none; b=lUz4ruN9mQkegpgWEPlsaRaepaH1tnUWadx9RtzyMidqb+14a/Ak4O2jqG0UaxsMNJRQBYsJWU5xzmjp/wEcYapm3IgQ18VKAvCQWMibltCKuA3obPVe0Qe9gD6PYTZyAPh5hXzyeijnDwAPjSI5QgATq3jD7umfnjEY6n/lbak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768793459; c=relaxed/simple;
	bh=AUhhKwGaM9grtdftiWmb9K3MniiTndfrY7S51xLJzEI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=phrV9wteJ4o/ASVZ6n+GLBrdUI2JdUTbHat118IXr/TQBrsAm/ZC/11CXPFOAZzSDw5cMqYGizWBJ9/yIn9UfWWOhWRfsC/DlYNIgiAR6UgHHbjlhoHhnyCXf8l2C/4EcQjGBrWLTh5Kp8rd/a/C6LPxr7jeIwozt/3uVIn8eW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZZlfJ7sO; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c531473fdcso533448485a.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 19:30:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768793457; x=1769398257; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=meO53koivOwOs9Bd8q7AbA+V+PS952tTGxoKR0dH/Dg=;
        b=ZZlfJ7sOSEFqGSF1Kyr3ijh9eb0GCktn9NRL1CSlN2Zp5Drc5Y/g8VhPFGtnpNvHpo
         rbURYOb0cFkleCiG1KfSQDzZoolj94yBxqjEwjoVWTNsiPKhVFYBi+NbTwNdaNF8Fu4Q
         +Zs40B6MW7NgzIgn1/N5CLcsrGvS9sUFP0YqGmxf3MYEV3htw7c9WmEZYZFKb8aASDYZ
         rZHBZFOOldZ6LVcmlIQ1eOdlV+sYl5u9XKSNx/1lCXl4VH5XU84Qb2I8t7f0zsEulTTv
         +LuP7D5zpk0dxAbwkPl87rXPqkVg5yzfqKEhEQXueZD9Qtwptli4datdvXabDMa/xlxU
         +MEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768793457; x=1769398257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=meO53koivOwOs9Bd8q7AbA+V+PS952tTGxoKR0dH/Dg=;
        b=kkAwe1SP9pV2+6htkv3WSCLfBgI/tZpG205uiZpAcs3mZsAjahfxyJlOrheiz9olCT
         TeXUxcsnE7WPy0K0FF885aeG12AQb+cL7T24uZ1fy7ef/cW5Jjm9jhgtB1j75gQgaTyf
         bv4jsy1l+hnJIxRTOkrnrtC15fuW6rcCP2dBafW01pw+HeCeASl8XY8l9+8hTSFA3S0w
         5Ylu9IHcYCuKtKLc0O6+drFqn00nDPE51oJFkdTGEIzQdqLdAUvswGWkIgyLnLNyBRoa
         pbOlpml92mHJjh/Yhsp9cM6Oh+RCKzV8mTzkMvtZt4VgZpVJqpNEEZXjU0igk3ZbRezA
         UD/g==
X-Forwarded-Encrypted: i=1; AJvYcCXBkhd1g/RqaxLEm/Qr7P+RUr3cGd11q1KyPz7RojO6Ae1pjn3unwrF6zPLftO7reQRLMrm9sNf3P9J@vger.kernel.org
X-Gm-Message-State: AOJu0YwZYKnZPh9RjuFufV+fZ2GPILCDzEcFwxOEbaxLOtpf/8Nd620e
	Yv44szMc6irefVdEEGYoikQfiXHFWFPUNjwXDfjPKn1M7TmLg/6l608k
X-Gm-Gg: AY/fxX5LyVya4wbmJ2NzOuitQMxhUCkRTeSNQaTGJTmlxXi8JRCbH4jOAMjHwTbSruV
	cB8a4KIEz1aKfkVf5C4GakmRIXeJFVeNZv7o6bWAJhLkpdefEdYbgp3Jk3It858YYjC+pb1AMfm
	SOVJ9IXRuTkJNdChjHkE6FEJNA42qQ8+NOd/vgBqn2Fz7OkHkocoDFVtQEpGdk/9Mc9rv/OXJV5
	2S84w+Q6HdqRzZ0B67B1z8IMRilo3wiAo9WdQLwZAnD06f7Xha27ib6t1YtBrmmKuQwemreDh8H
	+ltlLxTT85Uz6Xnwk1p7BXifof3+Rdr5RIWXFkW5tK33w0vnI99xCKR8VAQrB9G0QZVMdrIkCk7
	4wYoWA51Mc/DxeuCN5JcXqA4xmKYQJmNAHkJFWRO0iRfz1NVkbP5WM7pqR1lA5OMQjqkJCJrCPj
	IQS6kuu4UO7Tt4R3Fj2qtwcvPWHF8W303enwBL/x4iM9BMYWy+qqf5KTqxEa0FYC3gVqU=
X-Received: by 2002:a05:620a:6910:b0:8b2:ea5a:4146 with SMTP id af79cd13be357-8c6a6979f69mr1231120785a.89.1768793456999;
        Sun, 18 Jan 2026 19:30:56 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ab20dsm724706885a.5.2026.01.18.19.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:30:56 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	andreas@kemnade.info,
	khilman@baylibre.com,
	rogerq@kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	quic_jesszhan@quicinc.com,
	bavishimithil@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	thierry.reding@gmail.com
Cc: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v4 10/10] ARM: dts: ti: omap: samsung-espresso10: Add initial support for Galaxy Tab 2 10.1
Date: Sun, 18 Jan 2026 22:30:35 -0500
Message-ID: <20260119033035.57538-12-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119033035.57538-1-bavishimithil@gmail.com>
References: <20260119033035.57538-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Create a device tree for the 10 inch variants (P5100, P5110, P5113)

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
---
 arch/arm/boot/dts/ti/omap/Makefile            |   1 +
 .../dts/ti/omap/omap4-samsung-espresso10.dts  | 104 ++++++++++++++++++
 2 files changed, 105 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts

diff --git a/arch/arm/boot/dts/ti/omap/Makefile b/arch/arm/boot/dts/ti/omap/Makefile
index d24f13efd..140ac39b3 100644
--- a/arch/arm/boot/dts/ti/omap/Makefile
+++ b/arch/arm/boot/dts/ti/omap/Makefile
@@ -81,6 +81,7 @@ dtb-$(CONFIG_ARCH_OMAP4) += \
 	omap4-var-dvk-om44.dtb \
 	omap4-var-stk-om44.dtb \
 	omap4-samsung-espresso7.dtb \
+	omap4-samsung-espresso10.dtb \
 	omap4-xyboard-mz609.dtb \
 	omap4-xyboard-mz617.dtb
 dtb-$(CONFIG_SOC_AM33XX) += \
diff --git a/arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts b/arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts
new file mode 100644
index 000000000..5c00d67ac
--- /dev/null
+++ b/arch/arm/boot/dts/ti/omap/omap4-samsung-espresso10.dts
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/dts-v1/;
+
+#include "omap4-samsung-espresso-common.dtsi"
+#include <dt-bindings/power/summit,smb347-charger.h>
+/ {
+	model = "Samsung Galaxy Tab 2 (10 inch)";
+	compatible = "samsung,espresso10", "ti,omap4430", "ti,omap4";
+
+	i2c-gpio5 {
+		smb347: charger@6 {
+			compatible = "summit,smb347";
+			reg = <0x6>; // 0x0C >> 1
+			interrupt-parent = <&gpio2>;
+			interrupts = <0 IRQ_TYPE_EDGE_BOTH>;
+
+			summit,enable-usb-charging;
+			summit,enable-charge-control = <SMB3XX_CHG_ENABLE_SW>;
+			summit,chip-temperature-threshold-celsius = <120>;
+			summit,usb-current-limit-microamp = <1800000>;
+		};
+	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pinctrl-names = "default";
+		pinctrl-0 = <&backlight_pins>;
+		pwms = <&pwm10 0 1600 0>;
+		power-supply = <&reg_lcd>;
+		enable-gpios = <&gpio3 31 GPIO_ACTIVE_HIGH>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+	};
+
+	panel {
+		compatible = "samsung,ltn101al03", "panel-lvds";
+		power-supply = <&reg_lcd>;
+		width-mm = <223>;
+		height-mm = <125>;
+		data-mapping = "vesa-24";
+		backlight = <&backlight>;
+
+		panel-timing {
+			clock-frequency = <69818000>;
+
+			hback-porch = <64>;
+			hactive = <1280>;
+			hfront-porch = <16>;
+			hsync-len = <48>;
+
+			vback-porch = <11>;
+			vactive = <800>;
+			vfront-porch = <16>;
+			vsync-len = <3>;
+
+			hsync-active = <0>;
+			vsync-active = <0>;
+			de-active = <1>;
+			pixelclk-active = <1>;
+		};
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&bridge_out>;
+			};
+		};
+	};
+};
+
+&i2c3 {
+	touchscreen@20 {
+		compatible = "syna,rmi4-i2c";
+		reg = <0x20>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		interrupt-parent = <&gpio2>;
+		interrupts = <14 IRQ_TYPE_EDGE_FALLING>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&touch_pins>;
+
+		//avdd-supply = <&reg_touch_ldo_en>;
+		vdd-supply = <&ldo6>;
+
+		syna,reset-delay-ms = <200>;
+		syna,startup-delay-ms = <200>;
+
+		touchscreen-size-x = <1280>;
+		touchscreen-size-y = <800>;
+
+		rmi4-f01@1 {
+			reg = <0x01>;
+			syna,nosleep-mode = <1>;
+		};
+
+		rmi4-f11@11 {
+			reg = <0x11>;
+			touchscreen-size-x = <1280>;
+			touchscreen-size-y = <800>;
+			syna,sensor-type = <1>;
+		};
+	};
+};
-- 
2.43.0



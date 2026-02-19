Return-Path: <devicetree+bounces-266726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oB5wIa97l2nmzAIAu9opvQ
	(envelope-from <devicetree+bounces-266726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:07:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D217B1629B7
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:07:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18B2C308CE53
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE61327202;
	Thu, 19 Feb 2026 21:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kQQe93VI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB363271F0
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771535078; cv=none; b=lm7DmW/C4q6ZWkVQYizK5N4rBQfrRknjEnhPNcRCGT/cRnVqUoIS+acYgvifA13BZEDT7rVL+F2n5rTwarg7Is+Ac5W8lVbqSnYF0mkKfoi781PKi3C/DrZTIamP+lrzOdSiIButRv709vcggxSkQ4BVZLJ9Y3CeYKEFVBcJqpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771535078; c=relaxed/simple;
	bh=AUhhKwGaM9grtdftiWmb9K3MniiTndfrY7S51xLJzEI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qkoN2xRoqGhbTuxsveQdqY51RaV6plaOxmB47cTzaAPwny+G8P/BAshuQSuAjIHsIlYP9oQH8FBFLsANls4tuE7x+JdPyGuDsWzz84j/dMiypyCzRCNp/U6SG9f4xg0L4U9HsUMEepgHSgnMRptMzjr7S0iL/BDXqR7pop1mhIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kQQe93VI; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-5069b3e0c66so28069971cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771535076; x=1772139876; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=meO53koivOwOs9Bd8q7AbA+V+PS952tTGxoKR0dH/Dg=;
        b=kQQe93VIP5548TjxJfVwTI9xCLlx5ZA89cszLVTiY71kfL1Rv5eJnxePKf6D2lYUOu
         R3IHCG0/WcmVrliDZYsI9Z7ADfGdh+tM4c7MrD90QG2u0SdR+ipw8v+/69Jj/7NnIEef
         H/+JN3Lic93AV0jhSktTCZ5irmfSlUFf1enQbsung/N4JspR1gjvEJ/ioi/YHiuR4lxK
         AzIN8pgt4QJ3HjPv/TgbFmb84O7d7WX3i5qTWMIW02BTOWSdBFi6hvw81DoVtWTJLhCX
         aSFv9kcYNcmFSpeFrOLtFshQ6Z53PH7j+r0JDqgSUstcQUWg/jGs0fwHN3WqKgZWQd4t
         oGXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771535076; x=1772139876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=meO53koivOwOs9Bd8q7AbA+V+PS952tTGxoKR0dH/Dg=;
        b=DtKpbwEmOVgk8rQZJdzvCtRrlctY5wubw3HvfS/NmVYFDc4gmRgDaPmGTIDP31PN32
         6jpISXknNAUTTfsEl/UXzGHO9yY/daiPXsDzHvjaWDKH1GATZjaHkbhTEFcLZOnVSimM
         2w0gORNBoWvb/SlIBzS53JdpfgD4Eam+VfpYthwywtujbfNOPRiNmPT5Gwz316gCE36P
         nH05ZQsnzhAdQSjMSYVMmx3ETO2pr3Ml9ePJHd8E3GPpKL5juyRHhEn2R3rBnEdLtl3F
         s45kCGOZhPoHTgVfpwmcBpSGk7/pKP/FEmt0265IuTEOyjWuhjnWh6kKjQsTwYdmULky
         BOyw==
X-Gm-Message-State: AOJu0Yy5BtxIoMte4mpd1yWhqTlvtKpzdN3s3pNSxycX64wLUD/ckXGr
	gDyz+rX1ZoqKfcGw05N+Hmz9UJI9zflQe+D5R+nhPAry0cDreqMm1H8q
X-Gm-Gg: AZuq6aI4g9bX/pAR5OKGdpieTUpUq9bfJsrxaSnGlYROkP6XfLeXeTmSWGohb5RxMkt
	o6XgEcGKAVWC7BIFp4ZHPo+zj8q1MwvAo2sxjswCud2OQ/+ksjfjsLpOmnWzhAiAIT/mYbK2FBF
	Qv52cQYMvKiLgOqSRjmJcH35Ufo6ZwyodzP6EQeUyl+xvNqxGsEfkSefEvNykEdLYyZgMHX3GXe
	aDYYWgZQNAhydVFAY/tLuzEiFO6G0IsuvrOt/m7j4qr26lGes+2M0t7AvY6sLIlKrTB1fWZKB+d
	Nj8mFhDgwm0ymUwKyXFfMZgIOOamEmcSXX9sP7pGGp8dJj60D5U0njhwecr2UAu7xphO7alkOX2
	vx0y0P22MgrMAlqEu6hw4rAXZR+zjPoLJFpPHL871RykDD17+rG1Yl1buTsnamPT2PPXw1YtDdt
	Fxjlvs+srRmRK40eJSdg5INsiiaz7akaY0ae0Ld+DRMAaePt4hVL9VaXBOUSajPAcrbKcLopFXa
	wOcRNvOJtE=
X-Received: by 2002:a05:622a:142:b0:4ee:232e:4950 with SMTP id d75a77b69052e-506f33285c4mr39123511cf.8.1771535076074;
        Thu, 19 Feb 2026 13:04:36 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-506b275d59fsm153971511cf.32.2026.02.19.13.04.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:04:35 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH v6 8/8] ARM: dts: ti: omap: samsung-espresso10: Add initial support for Galaxy Tab 2 10.1
Date: Thu, 19 Feb 2026 16:04:07 -0500
Message-ID: <20260219210408.5451-9-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219210408.5451-1-bavishimithil@gmail.com>
References: <20260219210408.5451-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-266726-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.20:email];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.11:email,0.0.0.6:email]
X-Rspamd-Queue-Id: D217B1629B7
X-Rspamd-Action: no action

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



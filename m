Return-Path: <devicetree+bounces-266727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UM5+A7h7l2m6zAIAu9opvQ
	(envelope-from <devicetree+bounces-266727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:08:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC8C1629BE
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:08:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B01BA3090CE7
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02714327798;
	Thu, 19 Feb 2026 21:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O0mv6g0O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8D83254B1
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771535078; cv=none; b=kAkSXPyfeVzy9CDXWscr28Mfcj+OzdrBbYpo8xD+JaPs0fruiCwv1fvPrzHIKZN3PaFSTwhJ2gHfBWjSLbUiVURDRrb2RTisV2yrV3qg98bF4aTBbr69zNOaXVFhjeewE9QXUmd8DhjP4BeFKtQJfVLFwstRsxO1fiboi76QQZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771535078; c=relaxed/simple;
	bh=S2kYng34pyN/wX/EOplOpxbzEXHZ5N9BsJv+d0hNUBU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=atf5VH4/uVXgMPOQYaJDLVszHQmjJGn9sNwz7i1H/99coTxJoCfvInL625/bgs6AgwgwoAoXXRzkO2bu99DmOCs1Ju8iyMFBzqNycTlSCgS9aFuGVikznu3/iCA+lrD3SOqDo6sqSpIkMiTwM9Jo8gP1b/QwGf0M/BmeTKMk3rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O0mv6g0O; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-5069b3e0c66so28069561cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771535074; x=1772139874; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dfxr03p7S9Rer87uRm31FU2g8xU+t3fSe3azXAHj5IA=;
        b=O0mv6g0O9Jnyb4+H2bbEXs4ZgXLvFrR5ogvE+pZ4lk+awzcx+2cjPRqqBFwgSKzmLW
         Gs+F00SPmSTSvTotmqUJMTi066BFb9C08ogd+UIbmsP8oVmKl0oX55bFJgfmwirgRDyg
         E8spzWBlWs7fa7ulcBLApkpDocxGdOZtq1KZmut4CC53QkVNXlsurEDYnfAIRsCUE5/J
         7vV5OZQI7SSsm0Rt+T6fz1y9x3zYHge90AxXnjkkVjX3zcj6v807OjoGPSdrMA6H5N58
         AK22azo2awsKgPHRKvxlnRGQx1iLj0gAUS+fDQJpVlQx6WtnHLc2SV+slrYElAU/q2is
         cMEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771535074; x=1772139874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dfxr03p7S9Rer87uRm31FU2g8xU+t3fSe3azXAHj5IA=;
        b=p0G/kUnxQfezwOFU6MtqKK7ZHV7j5mFjq4Rq45/2ndS3MhYKwq7gT5qpf+yt/Y7iVB
         saH0lLIoju0NW7uUaVOuQoahonOcKUXOpfMNvFLzUuBEaMPzOHhke0tupgZg8coNn4Ln
         KuSw/k+DwYwl/CITFIM3WZVHngZQ8ZjsR58zknhl+9jAc1PnPYgt5g2brvKueVxU1MmY
         Mvbie3oq6eTt9ki2vjU4nsSc9TjI8iE+ml9L21ZWsneWIbM9fkgTo740tlzq8fqdIJDG
         PlwB8T0u6/hPo/uXyOBlUvmqWeh2dNyKjsbgkwK6hvMDRQ/FAfmHmgEBK6UNPkEu2FR2
         9lRw==
X-Gm-Message-State: AOJu0YyDviZmmSoS0JC6n0+l2qDRyizH8jjsSXYNY7GuhsB8T6ZrcIKa
	EoB0BkDE7CC64dvJoeRu81UyuSoogpkVDe+Wk+bNwXIe/ZQnAa/B77DJDWJTYQ3b
X-Gm-Gg: AZuq6aI/Q0A2v2SGhLLUIeg6nwa5Tpl2q2/s/k9k6Ho7UEG0IbJJnQbPTGe1ysMDlYn
	Xkg9Aw/SkQix933gRMOIYaKyVjArfkLQiaRcMmJD6xJUkZMDVLI1BxpIQaGVv59fopvVHn3JtR2
	ENwj0V/z/VdskOFxHTHJJxfzDZKjEexeoMobL/3Pm1ITQJXj5Lrb4Le7fgnFN5S0BNdXhTPwDcW
	pCNuAExS7D8fS4wOzmj6q6WHw03DNsh9Us+nsjAzE4HELLR921H+5HOWoqPFXWJdd8DS5A6yCor
	FNX5n0awmbOcTIFb89lGFdtmP2Ykg2nBNaJyLqUwF6rY/aTMaDRwo4V0yNWabaCWDC+B3AF7CL+
	0CBLRsLgM04/wZ/zRknTWej4wR+aAsSHrWSW+xzwgPVgqJDZcVZL3FxmelReSCsH2iHQkniMbmj
	nhpx0DijdZUlUV91dAHQ9+U7XjSXizpRLTwvViQNwMj1FIafwAPiWdqyrSDHaujKYphg/IJcLfg
	hWnwI9MBQ2//CLnwcyAkg==
X-Received: by 2002:a05:622a:178c:b0:506:6d1b:6e88 with SMTP id d75a77b69052e-506f33a6063mr38594521cf.27.1771535073953;
        Thu, 19 Feb 2026 13:04:33 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-506b275d59fsm153971511cf.32.2026.02.19.13.04.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:04:33 -0800 (PST)
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
Subject: [PATCH v6 7/8] ARM: dts: ti: omap: samsung-espresso7: Add initial support for Galaxy Tab 2 7.0
Date: Thu, 19 Feb 2026 16:04:06 -0500
Message-ID: <20260219210408.5451-8-bavishimithil@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266727-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.48:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5FC8C1629BE
X-Rspamd-Action: no action

Create a device tree for the 7 inch variants (P3100, P3110, P3113)

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
---
 arch/arm/boot/dts/ti/omap/Makefile            |  1 +
 .../dts/ti/omap/omap4-samsung-espresso7.dts   | 70 +++++++++++++++++++
 2 files changed, 71 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso7.dts

diff --git a/arch/arm/boot/dts/ti/omap/Makefile b/arch/arm/boot/dts/ti/omap/Makefile
index 14e500846..d24f13efd 100644
--- a/arch/arm/boot/dts/ti/omap/Makefile
+++ b/arch/arm/boot/dts/ti/omap/Makefile
@@ -80,6 +80,7 @@ dtb-$(CONFIG_ARCH_OMAP4) += \
 	omap4-sdp-es23plus.dtb \
 	omap4-var-dvk-om44.dtb \
 	omap4-var-stk-om44.dtb \
+	omap4-samsung-espresso7.dtb \
 	omap4-xyboard-mz609.dtb \
 	omap4-xyboard-mz617.dtb
 dtb-$(CONFIG_SOC_AM33XX) += \
diff --git a/arch/arm/boot/dts/ti/omap/omap4-samsung-espresso7.dts b/arch/arm/boot/dts/ti/omap/omap4-samsung-espresso7.dts
new file mode 100644
index 000000000..cae37ff06
--- /dev/null
+++ b/arch/arm/boot/dts/ti/omap/omap4-samsung-espresso7.dts
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/dts-v1/;
+
+#include "omap4-samsung-espresso-common.dtsi"
+
+/ {
+	model = "Samsung Galaxy Tab 2 (7 inch)";
+	compatible = "samsung,espresso7", "ti,omap4430", "ti,omap4";
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pinctrl-names = "default";
+		pinctrl-0 = <&backlight_pins>;
+		pwms = <&pwm10 0 1200 0>;
+		power-supply = <&reg_lcd>;
+		enable-gpios = <&gpio3 31 GPIO_ACTIVE_HIGH>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <2>;
+	};
+
+	panel {
+		compatible = "samsung,ltn070nl01", "panel-lvds";
+		power-supply = <&reg_lcd>;
+		width-mm = <154>;
+		height-mm = <90>;
+		data-mapping = "vesa-24";
+		backlight = <&backlight>;
+
+		panel-timing {
+			clock-frequency = <47255554>;
+
+			hback-porch = <210>;
+			hactive = <1024>;
+			hfront-porch = <186>;
+			hsync-len = <50>;
+
+			vback-porch = <11>;
+			vactive = <600>;
+			vfront-porch = <24>;
+			vsync-len = <10>;
+
+			hsync-active = <0>;
+			vsync-active = <0>;
+			de-active = <1>;
+			pixelclk-active = <1>;
+			syncclk-active = <0>;
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
+	touchscreen@48 {
+		compatible = "melfas,mms136";
+		reg = <0x48>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <14 IRQ_TYPE_EDGE_FALLING>;
+		touchscreen-size-x = <1024>;
+		touchscreen-size-y = <600>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&touch_pins>;
+		avdd-supply = <&reg_touch_ldo_en>;
+		vdd-supply = <&ldo6>;
+	};
+};
-- 
2.43.0



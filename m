Return-Path: <devicetree+bounces-270756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIcOLtBFp2kNgAAAu9opvQ
	(envelope-from <devicetree+bounces-270756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:34:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FBD1F6DCF
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:34:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2671031BFFCF
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D2638229C;
	Tue,  3 Mar 2026 20:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DXGvJ1nP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3583373C1B
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 20:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772569843; cv=none; b=mpoWJ8181PnX5S5GCXFjwq37vUWj6qN1FdX/600WNGD8Spt94UkpSOWaGO0IH1LLDM9J+BF2ewF+8e2I9avCr0/+mL5gSLdumZakNY4Vh9L498j43IkDpzZcB5l15iFtb1BMAL/WFwqFEWF+Hub/fPN2sM/bw5BCqItLlg5LiEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772569843; c=relaxed/simple;
	bh=pocmGKWkkKsOAaHqrDffBq8KuvMtZRSl1Ehwcy1nFxY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hxdCpBmrPxGFFPCuwU7IhRSts4P3Z3nhzlX014KPi0JW4+A1qEnu582g7CeQpuA2JYsVY61WvNh2H5sZ0Zt4uhjyEMmlT9m/Wpgv1obLFJluXTiQX/r6zujIX/9aOBifQoxdZKkjq9Z1K495rv8P0cDEYyRQSs8jGtYxQuskDaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DXGvJ1nP; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8cb3fb47559so731380385a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772569839; x=1773174639; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0aFuZEcswfY1n9DtzJQKfDnbrUdcO+CQnvBKx4RAuE=;
        b=DXGvJ1nPoLr3IqN8iGdneUDsHTaQJiTAXvJXt52TqqvLinbWcRubFwPT6VXF0eAhol
         yy2B9BVKMe9kpAM7cxjE+RWjo6NnlZTY83HOd0YeinwiUyS2KqthaV98KoFONaJGAx12
         vavw301kzxtqRt7VkDQPlbHcIycGa9m2Wc8/5iA/Hz8eQ2rA9Ixcc1VkarNWimOk/N0h
         lkS/7es4J4yCc5nsoeDbmy7dV/owbTq8cHlzpb5MBpBIazmdlhB69osYxllyjhCk5vwc
         446ERimpMcXh/gHcGxDWZTAMKFaDHIfOsRVJ1yHZ6RS3nv62Q2Xutujx9PrPRFOw+zNT
         22Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772569839; x=1773174639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S0aFuZEcswfY1n9DtzJQKfDnbrUdcO+CQnvBKx4RAuE=;
        b=YK9K/S3yiIFfjsOagEOHk4nNyxdMUxH1fZfg0nZQFT5UWe8yzKODmr6UbdKmigIlae
         JjkOUJI745dRqrkkH6IS4pN6X93QgTnFWq0d3vYVeb2Pg6dF1UCSh9jS8AE7VPYmbJgC
         4SCgmBOJWrRGydP10jhQSOkc0lDuQ4n1LgwdRjy9reujpRkqskjKXAUErjhG8fApVCLs
         1HJ82Fd819/HUv8sekA5XExhNjHmPkz7JL+RwVXE3VrU/07pQDChqV4/DQ5jjb+xs71S
         uWHR8/0yVgTs90CMgm7a0/n538UXNfjneTzvtm9hbFKjJTwP4OZ5nHF+DN70Yyt/slQ5
         OoqQ==
X-Gm-Message-State: AOJu0YzkBeGatw8ger79UjLbniB0YxW/RCx28ibEs/YjfoQzSm21WqfP
	3p6mBvv1z3TRiHh2YGdt9GNfv/iCZ3V33HteZo7KndmeEIs+VBdViRCI
X-Gm-Gg: ATEYQzwIy7UJNviQGpC3nzMB8yXI0lJeRddv9HRZ2t1pZqECy4xM4s2AikI+7F65t9i
	8iN1XRuWoNG0cVUTZPxwMPj/h86HUNRj+yZpg+Zr0e6s2Ni0QMJYFQxnms/GbbMv1qBS9v12YpT
	aMl5ydduSrY/AWzAcVLpljitl3U1zoeiFtpzPySv5J8gLJnKmw05oFUjI5P49iCPKggcxESMn+d
	qIkBCXc8F3TYT6W6a+2eZsYNO7I4SnHN3UE3klE4a5ypwMMcBsL6ZyGSjdTI5CpikxUA5qtCghE
	Lq80FH/tIBbcbh8/Bbti3DX8kUyl4unUtg1kgizky5XYPyJkfNoyNymz7VAMMBr//rz84XiiKqO
	h98q79zB5FkQtZ6Of5nEtT4I126ssX34OtEqp3ByESfKZU9mK8PNB+DgX8ryCw9IsKWoVf54f3/
	ezOTCW6wp+GqzLQq2t8LFzYNHjVTxU+AhT2/c76miCxzhhie1ASl58FsDYdMncm/3MxO6tBBiJa
	dKrNLEDMfs=
X-Received: by 2002:a05:620a:1aa2:b0:8c5:2ce6:db1 with SMTP id af79cd13be357-8cbc8d67d4dmr2185912885a.3.1772569838816;
        Tue, 03 Mar 2026 12:30:38 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf564c27sm1465032085a.0.2026.03.03.12.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 12:30:38 -0800 (PST)
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
Subject: [PATCH v9 7/8] ARM: dts: ti: omap: samsung-espresso7: Add initial support for Galaxy Tab 2 7.0
Date: Tue,  3 Mar 2026 15:30:16 -0500
Message-ID: <20260303203017.511-8-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260303203017.511-1-bavishimithil@gmail.com>
References: <20260303203017.511-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C4FBD1F6DCF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270756-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.48:email]
X-Rspamd-Action: no action

Create a device tree for the 7 inch variants (P3100, P3110, P3113)

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
---
 arch/arm/boot/dts/ti/omap/Makefile            |  1 +
 .../dts/ti/omap/omap4-samsung-espresso7.dts   | 70 +++++++++++++++++++
 2 files changed, 71 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/omap4-samsung-espresso7.dts

diff --git a/arch/arm/boot/dts/ti/omap/Makefile b/arch/arm/boot/dts/ti/omap/Makefile
index 3f54b515c..1fd426204 100644
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



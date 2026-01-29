Return-Path: <devicetree+bounces-260730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MJAMpP0emnDAAIAu9opvQ
	(envelope-from <devicetree+bounces-260730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:48:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB94AC0E5
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:48:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7B9003006B4F
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C703030748B;
	Thu, 29 Jan 2026 05:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CxTk63RJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6D03064AF
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769665680; cv=none; b=r/6bG9rm5p423ZCcVp1MXMTOnM4lTTrA0HOYPhk8G7OkPo0vLxRzZjNi1s7xfXHNaQJf8DdsdExrRnUDih0BtKbxazswuxoKXLT89PNbKhfNqQjwQIZo/4ML5iPYX07wX25JR4U41YUh6+6LEPw3txqarNZL8Pi/wodEca2n+V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769665680; c=relaxed/simple;
	bh=S2kYng34pyN/wX/EOplOpxbzEXHZ5N9BsJv+d0hNUBU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NtpJlMGOL5yU8S0U8VF2m80jGhB+MUHL26kELd4bfzJWaeMJZvpci+vQKsizGLjRk/oiI2B4GLeH+yDcbaevz+bFDJazLuUPC6jJVTySGwHdCpH36e/PypnqFgaHesblWcLkPosCPHpF7GLCcvsQJdWwYFGE5QFJE+68WMbGixA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CxTk63RJ; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8c5386f1c9fso87817285a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 21:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769665678; x=1770270478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dfxr03p7S9Rer87uRm31FU2g8xU+t3fSe3azXAHj5IA=;
        b=CxTk63RJwNexj1dlTJJXZUv7rOLhJW3woKuFvpHRNnWFOIw6iy+CDK1vV7S0or4C1L
         KXZV3EtNqWc5B43XJXB3uiVfLbR8/c7lHjphJN8rTSW1FNA4raV5tmRpHtKqeY1G5ibe
         4uNZ8CIoHZhm9OWbFGV5Pj8AXXhxvSxZvdpyf/OApCgfbypRJWnk0E4ndCbA2fTQWa54
         VtlcDNbY/oBANKtEFstyDjd4716JOSw/4dLqdwiFzzeysfEpT8GjhLQc/1v+YFuf/ntl
         PYtqB9d9E74uYwG8RlrQVTWC+4TDJ2cmnv42/0uCWW8wZHWucBrp3jPcXvXjQzmK4i6S
         r5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769665678; x=1770270478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dfxr03p7S9Rer87uRm31FU2g8xU+t3fSe3azXAHj5IA=;
        b=i9tZOGYWbCvp3KKHey1ohm///CzroGEEAbi6su91fnfm3nIcB9WOfO+uUuenfA70Fk
         xKVLupZ4mQIk8FIedoKYM0B8nWfx+B9XCXu8ldSyifOB7GYEQbW+VoUtCOx9hLVy4R5t
         WnZV+tyFwUIjG3pXrzn/mTQRjZ89c9aZ640lmqnVOjRLrWtgV3ZzX1b9Kq3nQ56mC2zE
         /76mFwxxIHdM7m1BxUPlptkH37fSj5gmX3fw1nttjm21HCJF8uvG6yQmGrnQIi6vp/kl
         hiPHpEtBHV11be3jL32klvg+Op4e+Lg3W+hsYMN+kQeztuQ5lAFEVKrBs9gwnEPE72p3
         dDig==
X-Gm-Message-State: AOJu0YzAJlAgQMT8/4oci4h6mpAnaR0mqmli+ER5mNUODPFENonnSOgE
	+d+PUhGQOhckHvtdxapJc0p1wtlzAXT8ufTwNE6k1/Sdz+R94BzEtn83
X-Gm-Gg: AZuq6aItoKGnIzJracEg33KW//4GUW01UXh48hKCPzlse658SuKkMP1OIEJnXxxSYID
	wcwG1w7Jhb13h8cWFmOhoGdkGjIEGttqPVKOCjFOq5QxGQ55UwunAp50gVAh9AVxQHCtdUSq5G1
	CXZvxrP78X2GZa+HwcQiAWLD4UZq92wc4LEnMeYAMuTqMNqE90mFUDzo3pF7H10KrhCD+4vfz7z
	LdITD5G0xeDWuPTK/KRkYHZRlsZ+vLV5ZlULsyYtmFB5czfByMjiV3MPYdqhi2hCTkCuuzZP3np
	hwR8LLIl67hsXt6xuI1b4JQ/O4gKpMjUrm8tfDAKD7jYyQ8vYAJgiUA+4bLEZ8dnKcEajAAYf/C
	1aFOQKKd/bP3zf/qfnOI3wZKUVU/mX9JVpZYRrZ7+Jg3/6xVZXFszZNuRKw3/2i698wyWXjk4us
	UiKm37OTuFARPYsbJO0ZABd5VGw4XfiOz8GBjsaUb+xdzlMBfS6qJMLqHKHDAwGB9q4w6I+74=
X-Received: by 2002:a05:620a:5d9a:b0:8c7:155a:6d03 with SMTP id af79cd13be357-8c7155a71b6mr401340185a.58.1769665677768;
        Wed, 28 Jan 2026 21:47:57 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d36dd1cfsm30903216d6.25.2026.01.28.21.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 21:47:57 -0800 (PST)
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
Subject: [PATCH v5 7/8] ARM: dts: ti: omap: samsung-espresso7: Add initial support for Galaxy Tab 2 7.0
Date: Thu, 29 Jan 2026 00:47:08 -0500
Message-ID: <20260129054709.3878-8-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129054709.3878-1-bavishimithil@gmail.com>
References: <20260129054709.3878-1-bavishimithil@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-260730-lists,devicetree=lfdr.de];
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
	DBL_PROHIBIT(0.00)[0.0.0.48:email];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6FB94AC0E5
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



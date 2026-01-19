Return-Path: <devicetree+bounces-256628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7FCD39D07
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:32:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 576B33010566
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6400E2DB781;
	Mon, 19 Jan 2026 03:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PYLXv4AW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7137B289824
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768793457; cv=none; b=H3CVZgYejoDIgE1PCEs5RKaH+z0n6Yn2+xmeeI5bZ6Pl2eXzUdneG61DbToxp48HkgaIW9mHvMekWfsuseJ184f0Ij8HX5yNS2L5sptWzeL9Rlto/Fsz8rz+sMAVcXrw5x14FkAZDhrAkxItaUJlR+uRzudt22v2T3o9DD+rcrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768793457; c=relaxed/simple;
	bh=S2kYng34pyN/wX/EOplOpxbzEXHZ5N9BsJv+d0hNUBU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RyUTD46zWUmbhlk85mAa5pQ8ib5lFZemfN9c9udJlh60VGr6lcbWoEW6GdFwXAlYTPTiRsF2N+SwCrJhAoysYJNos32h0oJZVcap4lDpz8rOHf5CFB4NaWnzW51lfU5QqGa0Be7PLEN0QQhjHGBAObKS09WtKFRGMxAKgkyBIp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PYLXv4AW; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8c53198a65fso395917385a.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 19:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768793454; x=1769398254; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dfxr03p7S9Rer87uRm31FU2g8xU+t3fSe3azXAHj5IA=;
        b=PYLXv4AWnxww6O3KEhieWpki85vDCR0blYxiX31eRJPcbQKOPxpOXTys74fKn5F3Ld
         gpNYmvzAD+WoCd6Yvv6m4uh+lr+qRgUBcWvUIERmUrNB3dJNgPn7wWnLFmE0DUpC52eg
         fTwE9xIseUX/8KZQGF9CbS7AXykC/ebnPxhohR5ZTWqeX4dyEkRo7o463KAkH4FNNCQ9
         SZEA/AVrmI9TQAgcId7oiQ1UVYIBuNwD4JVPb8GpOoTXvR/e/uOz3uXTyj1SbOQ7Zbtr
         Nfro9QUjWPCTLrKrvG54BA1dknM1hwKcb2OpqbL0ZMgsZ1D3EQWUezWxQzEHeSK+x0Ek
         /G7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768793454; x=1769398254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dfxr03p7S9Rer87uRm31FU2g8xU+t3fSe3azXAHj5IA=;
        b=JM1+29+cmYYqitDUYZFZSHC9O7upMZbCXdT1uTG9+l3dQq8UYpT74ITFAq5jxyVBTD
         fOzrpCfhe6aY33u6iQH+G6+tOn8DYVagIqrNMGM/ZGaJvX9nILlW6Ij0I28CTTc8hdMj
         Pyy1IE1OjY9H17l6gpfhwrlDT12XzhOTTSdu4+B9PtCCJrd9bKF8pWF8kxDT+5KiB5uH
         WzxO66KV2ULAIft1mRNGUjTzbBK5C68C1E8ecm32sgwGOW34NIDSUn27JhHAOW9kSQnj
         jGfvMbJMJlRBG0yM/BJC1JHE0/KeiZGplB4ie/tFdWFHfvXELkewxajkS/K+T5L3u85X
         3Y2g==
X-Forwarded-Encrypted: i=1; AJvYcCVbgoAWVCOKK73HOay+CZtH69vMfcB22B9j2aoSVQS0s1d172FAIx+nDiKE1scPd/REhx4RsAbZvdXa@vger.kernel.org
X-Gm-Message-State: AOJu0YzEmcOAg6rwGo0DbneMmsmNy39va9pVhfduCAx9PslFOvELaWfp
	Fe5W+cfOPAUtjWC+aCxNNaCCNh8aGk6b2Q9xtszw96Fc8sNlMn9Bbjhv
X-Gm-Gg: AY/fxX7XUnZtKGfM9YfkkBKBczPOFv/XlTu32YbsX4UPqYT6JQsGGPXVWP70U0aKoQK
	FOEZ+rLqzqm2HYsyeyH3V4XXwFRaSK9P1TeC/JijyBSnF+NLkoJ3+eZ2vLbSJelfCJmhBcxtfD0
	LH2pvRYyX0DFLzsGvmF0fKqdrY2fwejfbBUQ2vBVZrgJNQuzR4/wklHu7GK0CFTLo7Bqqj0DwXN
	vihxgzXIhtP/cOsSJTk7XlVWjH59pIfg1iA4lf3mYouc9VuYQ36uBCSMwyg7HFJ37IGdzkcpwl3
	PCzYWvRgkanSQYMa2eU4YTR4Vq59IFki6wtedoVtQQQHjxEuystw4kasQTA3wqmm+Z3O0iOUjc1
	C5B0vTUF259lreMsBUkxaPmWqDqcKmI2NhlL754KxSO9GSujD1QemKzENgvrCrAjpN+gw0jucsi
	vUKFfm9orY/c6laiFw9A9z3QEksPVqUeN9RgpYfAoVkODHHlQMXr063XYXvOhXliayU8U=
X-Received: by 2002:a05:620a:29d3:b0:8b2:e513:6419 with SMTP id af79cd13be357-8c6a693b0d2mr1393824685a.48.1768793454390;
        Sun, 18 Jan 2026 19:30:54 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ab20dsm724706885a.5.2026.01.18.19.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:30:53 -0800 (PST)
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
Subject: [PATCH v4 08/10] ARM: dts: ti: omap: samsung-espresso7: Add initial support for Galaxy Tab 2 7.0
Date: Sun, 18 Jan 2026 22:30:33 -0500
Message-ID: <20260119033035.57538-10-bavishimithil@gmail.com>
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



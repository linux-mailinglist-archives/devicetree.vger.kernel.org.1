Return-Path: <devicetree+bounces-256646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C73AD39DB8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BB5FC3000B51
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 05:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8FAA330646;
	Mon, 19 Jan 2026 05:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W3b7l8vp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FD1330320
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 05:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768800305; cv=none; b=FjGYwLoujLpwoV28lJQVU7DhzdPPN4cDYn9VrXfX1mlc7CGOTNhkFEaz87dxHZIcitR+I7bP27zjURSYMDuux+bTo/0pD2GD1oOIYg1Ncg84decDX7TMPkynD80wrn23uhnBSnQBX4jylQ7z9skM18NllKGorWZZYrZHddYDL98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768800305; c=relaxed/simple;
	bh=Cr5+IhCHxPHPW3626dojbnKDaxlXfjju7kU8t6CdTJ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fj6fISMKE3sa3i/29okCSj1jMyR4zyT/D3H78JQPelzCCyDX8NTA0GJJack1s8LmaOE1RLqWwZOFBEacQbG9hLNa+OBWWMw1OoqxUAYnB73+wpD0wKLl+LkkWW4A/krLPoN/iorKSpGSaCykcn2IMfvrfUEFhqpuuWhc6CG6big=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W3b7l8vp; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-888bd3bd639so46610926d6.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 21:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768800303; x=1769405103; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nclpl2L8R9cKrulz3mBbfGGvQIswT/qMcBsWKZFoMYo=;
        b=W3b7l8vp5K6uCugNI6tfKm/3wCA/pfa4AABufEMh1c0/n8egyn4btLYI6lCcTJv2AM
         igGtEW+T5XEzFb/JlzfDz8LwUEAflpBU4IEbN4k8yHckMYJeeeuvf6/vod9vhqrZxjkx
         OPyZ0k6QUuOdv7Do1AEuOWWZps2hdsWu/hNh0XWEOjmWgy3NPINK+kmIBGJHcBhKOh6E
         MfDh+7XzybK4lE76EFy4V1NPutGJQME2KnlM8Yd6IdruA/YeBI9Se/vA05PJ7HCjcmbv
         RlJRchdSsuJRtR4hlISx2bIAbt+shbprgsazXE8/5n7HnceY9CISHpnLUvDO9JgSz7oE
         Kvmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768800303; x=1769405103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nclpl2L8R9cKrulz3mBbfGGvQIswT/qMcBsWKZFoMYo=;
        b=HG5WwZE8toGFviFn6neaVNNmjqbZ3NLqwyvwHYwmTtTvbFKdEEE3GpQ32lIqElDd97
         TSkCgdR0k1GD5kFzDVFlvKeSqG5JT4+EoLt7s6NLFHYGv9mKiz20Vp7hWL+P549avlSs
         /oTlaz6AUn0F3pnQojJnKGaxMkBYHULLvhVp0DiDHt9kea+pEUeHiskNO6txjuswFGdP
         i+DU688Lo0Ov7QeioqgN4akqKo8721FcGl2gn7iOUjzrQ3qfmZXgY+7k0d3I5S0tsJ97
         48MUvF14rts9cBSS+uUgNi/PJpYFU8Ojm8dTG2PcR6UZe6WsD5fIVu4EY2wSMYiWXRjL
         lGdw==
X-Forwarded-Encrypted: i=1; AJvYcCWej1RGw8hRziJkXKKLPJ/qGaVKlvQqiYLV+cqxmvx0mucKtQfCdX9ze9poEOerI0KU1mAm5GfW75Kk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8XOo7NW+DIRnL+w+C0iVV//3nBbLfLeDCQoMOEaGaJwF4nBLW
	2U49pLGgt9lOBx9IT7fbMCSIdBBB3kzirJZhCW8cm65/ReiEBBfmv4NK+6Id0Q==
X-Gm-Gg: AY/fxX6LHJMxxFz9WqMbmfWjsDIeNQWRaUgDEiogZ2DPUrcqargyFH4mo1jHiYTgIV7
	VPisc1zvg25Ul2S3ASjRMXlkx44Hn2G+yg2cm/aaH1zp+fHaloQ8C2nPyXtihnVOX6jTV4gmCK3
	lmfW65eL0fpW0lBahsWhl1ZIlNVWbn0e2Ng04DdTta0JKVQvvDjfPxfjbCiQL5WYL7JlOlC/E2o
	ewbu2rvae/xtQq+KfFAH3MigSj9o6SmrIaVURWCZ098j4rCGcVfwNB75O/QoKCGQQtLVM5B/yor
	4ulliEsq4JpHOXjOThn7zyDNyvQmtMC8gVfnlyBIa9Dl1iWJGUigd7iGRZi9NnadXODQ5JiTP09
	5YOe1hgqmCjBYmtEvVtLy4SGticzHNNy0rNjibEBrm2Vq8gSliIu7HczTnb2IfkSQivUsBiIhFk
	CNoSIbOcaoKDISNqbmlAHEWqoM6IaBXbQ5uhxcjxsHCi8M1pxfvSjTXytsq1sKtj1epbM=
X-Received: by 2002:a05:620a:450b:b0:8c6:a587:377f with SMTP id af79cd13be357-8c6a58737e7mr1680298485a.36.1768793444229;
        Sun, 18 Jan 2026 19:30:44 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ab20dsm724706885a.5.2026.01.18.19.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:30:43 -0800 (PST)
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
Subject: [PATCH v4 01/10] ARM: dts: twl6032: Add DTS file for TWL6032 PMIC
Date: Sun, 18 Jan 2026 22:30:26 -0500
Message-ID: <20260119033035.57538-3-bavishimithil@gmail.com>
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

Add a dedicated DTS file for the TWL6032 PMIC (Phoenix Lite). Already
has driver support with TWL6030 (Phoenix) since both of them are so
similar, some nodes can be reused from TWL6030 as well.

This can be included in the board files like twl6030.
Example:
...
&i2c1 {
    twl: twl@48 {
        reg = <0x48>;
        interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
        interrupt-controller;
        interrupt-parent = <&gic>;
    };
};

/include/ "twl6032.dtsi"
...

Used in devices like samsung-espresso, amazon-jem, epson-embt2ws etc.

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
---
 arch/arm/boot/dts/ti/omap/twl6032.dtsi | 77 ++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 arch/arm/boot/dts/ti/omap/twl6032.dtsi

diff --git a/arch/arm/boot/dts/ti/omap/twl6032.dtsi b/arch/arm/boot/dts/ti/omap/twl6032.dtsi
new file mode 100644
index 000000000..d599a2ca6
--- /dev/null
+++ b/arch/arm/boot/dts/ti/omap/twl6032.dtsi
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Integrated Power Management Chip
+ * https://www.ti.com/lit/ds/symlink/twl6032.pdf
+ */
+
+&twl {
+	compatible = "ti,twl6032";
+	interrupt-controller;
+	#interrupt-cells = <1>;
+
+	rtc {
+		compatible = "ti,twl4030-rtc";
+		interrupts = <11>;
+	};
+
+	vio: regulator-vio {
+		compatible = "ti,twl6032-vio";
+	};
+
+	ldo1: regulator-ldo1 {
+		compatible = "ti,twl6032-ldo1";
+	};
+
+	ldo2: regulator-ldo2 {
+		compatible = "ti,twl6032-ldo2";
+	};
+
+	ldo3: regulator-ldo3 {
+		compatible = "ti,twl6032-ldo3";
+	};
+
+	ldo4: regulator-ldo4 {
+		compatible = "ti,twl6032-ldo4";
+	};
+
+	ldo5: regulator-ldo5 {
+		compatible = "ti,twl6032-ldo5";
+	};
+
+	ldo6: regulator-ldo6 {
+		compatible = "ti,twl6032-ldo6";
+	};
+
+	ldoln: regulator-ldoln {
+		compatible = "ti,twl6032-ldoln";
+	};
+
+	ldousb: regulator-ldousb {
+		compatible = "ti,twl6032-ldousb";
+	};
+
+	smps4: regulator-smps4 {
+		compatible = "ti,twl6032-smps4";
+	};
+
+	gpadc: gpadc {
+		compatible = "ti,twl6032-gpadc";
+		interrupts = <3>;
+		#io-channel-cells = <1>;
+	};
+
+	twl_usb_comparator: usb-comparator {
+		compatible = "ti,twl6030-usb";
+		interrupts = <4>, <10>;
+	};
+
+	twl_pwm: pwm {
+		compatible = "ti,twl6030-pwm";
+		#pwm-cells = <2>;
+	};
+
+	twl_pwmled: pwmled {
+		compatible = "ti,twl6030-pwmled";
+		#pwm-cells = <2>;
+	};
+};
-- 
2.43.0



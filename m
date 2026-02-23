Return-Path: <devicetree+bounces-267289-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCrMCLACnGn6+wMAu9opvQ
	(envelope-from <devicetree+bounces-267289-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:33:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D26172B86
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 08:33:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3A58D3009F34
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2359E25393B;
	Mon, 23 Feb 2026 07:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Mx6Ktpy4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C771FEADC
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 07:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771831976; cv=none; b=o+kJQpGCARaBlADJfQe5VkHtfWIS3KeM3b61jK+55wZ9xkStjxxZYPob8NDqalR8zj1e1u/8u3J/tBTf+Ql3i5CA3rq4Krll60WMrrBWwZb+c7HZRbt1bS6V3XnrW81lmz1JUVWEOv8FYxvKHRkDBwqWO026cSjzjH2kz5Tmx6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771831976; c=relaxed/simple;
	bh=KAvlbY0yYL9PaaTueRuO9yIwL2QGgENhM1iet7MXCjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rhydEG8bkZ7QaL4uAdmz0+oKoZz6VDQGyv4k0RLZM+NUepyOSYWj3OjjwpnxxZGLxoqvzm97u0Zq5hEHjYuC//FgLzo7Ak+r4jzVKqB1GR1UMOhVJ1saow0JZlp6TjGMOp+jf9Cc/0mhWaAkxrggEImzwn/XIKywIFU8J3vZDxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Mx6Ktpy4; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5fd05e8d317so2458519137.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 23:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771831974; x=1772436774; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MfQfBaf9AAlms3smQ5+Ri25UHHgHjEr008f22TiaTqo=;
        b=Mx6Ktpy4ny0cQxTtDFA4LGUvPLfgvEwz5TlFJj0NeAZWTTKQ3Mw4YTQVRIic83gSKo
         LCnuASYNwxOJexqosratyTuBNowrrDZ2CYBvctpy82nthMQw7fhAEIBSEqd6tyU91OkC
         Sn5DX8BFjKGE8Ayng9qrJC2gzFJlx3AAcs5nG+zPNmnz5+Mlr0jU8DKhwpK2Djn3dUvo
         xRG+HVlG8XFHcsAf7Bi28l4w66zePI0htpGVABI6hcPa9F8HQnELkPsiQ5b60gXf3h9L
         8SgEvIcdQzthZ5XWSqgI20zI+ESCMmUuX8fLzCjrmVC8tclVZ73D1s9WmK2wJC0dwVSN
         TS/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771831974; x=1772436774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MfQfBaf9AAlms3smQ5+Ri25UHHgHjEr008f22TiaTqo=;
        b=fktnRIlpzDFSjNJsghaMVOTyDLQOCueESMm7fatzxasgDPUpXoTifQTBxyFLasP2ml
         cyp3SN6gNJLx1qQqStBcynmK2eMW6ZCWID1dSYpZuTGBTE2CW+LmENIcXlmuBFJA+DvH
         GrN1XeEekxAS4RvIZdGCrPsw/xXKASJDZyCxhEb2Qzw9gPqfSwZpNA5nlCaKXWV9jna5
         1lW3PrMVJCGC/YMbJVIn1Twt60exr4dLxFD8MBhppFXFhO1Nvf/JO62dP5hxWukKY0PK
         42qKrV2QlIKGopp0lT939zyQJzWO3vB7Buwa+l9Hdo3ScvFD+JPkjfQjfNccN5VBwYGU
         qHuQ==
X-Gm-Message-State: AOJu0YxKTYijXrDqSHjqW875PC3JG0b9zI/L+goRaf4HXsD8/jmRAbyZ
	MEGpw4pKZA6hTaDE0BYsAQHQgfIbY68PO7K/m6HLJhPEpOpQ40QUxiLaH0HW7AFD
X-Gm-Gg: AZuq6aJeLU9rna8g1U1tYMNFeIwzA2xsgNQbZ9qFUAo1oszJ0XBKN6/Q6jaTwgGEF1o
	If9sEf4jEi19Orb3CjvrVDMZpV+yMS52fDZk1G+KEzjvaUrd6NHw4hhzdyvW6ycU1Yy6C7qEvWa
	gx/NBeJ8keb9cbunSso/B6RvChYT02U5PHi3aerxPgJbwmR7BYLQk33xLU/KkDi9vsz34IE8EHm
	Ghkql5tbDNJFQYVRcpe8R3xo5Py6IOo17X7Gr93djsk9b6fa7w9d+GqXeMuOz9znDCcVVk992mo
	OYUgs9MXdoqcb7ssany6euf4P+ictqOETm0mNG6D9OWlCpQwa7HY4fwQq6hTgspk02RVii6Nm1+
	gz/ekY5jgvxjKRUhBoE5zJPq1Q2fdtzfs6zOulaTISxEXSJxd0BIATsLCmn3A0yi+mActyfxygm
	iZ4QB0zN0iS8gxIFhDjKpenr9D1xB0WRwcj+pZ6ow1lgZ/csvrcazxxQd+RbRyi6eeYqf++pJx+
	lgSw3Xnf5o=
X-Received: by 2002:a05:6214:301a:b0:786:8f81:42f with SMTP id 6a1803df08f44-89979d3f785mr103660256d6.39.1771825879381;
        Sun, 22 Feb 2026 21:51:19 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8997e62f453sm59459096d6.36.2026.02.22.21.51.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 21:51:19 -0800 (PST)
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
Subject: [PATCH v7 1/8] ARM: dts: twl6032: Add DTS file for TWL6032 PMIC
Date: Mon, 23 Feb 2026 00:51:06 -0500
Message-ID: <20260223055113.1288-2-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260223055113.1288-1-bavishimithil@gmail.com>
References: <20260223055113.1288-1-bavishimithil@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267289-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:url,0.0.0.48:email]
X-Rspamd-Queue-Id: 35D26172B86
X-Rspamd-Action: no action

Add a dedicated DTS file for the TWL6032 PMIC (Phoenix Lite). Already
has driver support with TWL6030 (Phoenix) since both of them are so
similar, some nodes can be reused from TWL6030 as well

This can be included in the board files like twl6030
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

Used in devices like samsung-espresso, amazon-jem, epson-embt2ws etc

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



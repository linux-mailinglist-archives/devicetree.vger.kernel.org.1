Return-Path: <devicetree+bounces-256648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6FBD39DC9
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:33:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8BF9E3007977
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 05:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23FF022D7B5;
	Mon, 19 Jan 2026 05:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="meQocg3a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCA413A3F7
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 05:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768800802; cv=none; b=LzULOMitX/+fNpvcUMObtLDPreorDpcIKnzZPjVuDYYEORfejPi7hH2l8VEg5vUdOCpqpSZyIuM7W2ewVygPLIEiSiU5lh6AyUWrRcxILeacWCs+fL9OdlmTLQjYV0q1IzJ50Hk1laCKDBxLM0O8v5qARRa8CoPvNsTa8KSK5AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768800802; c=relaxed/simple;
	bh=Cr5+IhCHxPHPW3626dojbnKDaxlXfjju7kU8t6CdTJ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=glv8vu+7iCARxkIz3zCdj0gP1RbucDsjYh8tHOUswZAOzKiBQxhJQrsPmD6jv0sJLPAR0KRzYkN1xrf/rMbO+BJ717f30chWiVdRXvsRLvxlOm9fZbO6HghSPMs/gXacHKp9DJq8SmlWDBjLPePZUYrae/5f/Phx7fdUmVOydF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=meQocg3a; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-81f223c70d8so3332704b3a.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 21:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768800800; x=1769405600; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nclpl2L8R9cKrulz3mBbfGGvQIswT/qMcBsWKZFoMYo=;
        b=meQocg3ajyo9brCPcXMaLhjO61Xuydhd9D3tjZ7kDoCX3CsVFRnfL8v1b14cR06dse
         jakW5fJ6O54Oh1OZKDFHWo96qVzJQpFyR/rWlJ8TJOwr8uEwWvQMsZ6ESBbho6ESCzcc
         tSY2Z8wQF8rRzFCnPoVYU5LSbrLO/7q5vjNZvxWW5oj8FtPuzWfFcV/MektWPWBzrasR
         Xnpket5BhZyJAHQwt5mn6Xt1bZvLVI84Gp+dwWkEyfn06zGF3iRIQLj0iFc0qCFOm41W
         y6GSNwIf+/vTy07qCZno9MmdnG+ixVzzoZ9KZ3oxszG4zL+kMUHJqdadtAShOkyDSS7y
         epMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768800800; x=1769405600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nclpl2L8R9cKrulz3mBbfGGvQIswT/qMcBsWKZFoMYo=;
        b=j1N8b10n6E86u9HlgZqs9zZlYPdOnisXl/s0O/Tu34H6k6OD4AnmhYfnNtTcQeodkA
         m8jIzWl5WIryA+G10MCFPJGdpqCvmlUVpbKcgE+3gC6s3cIcre1Z7SFMSTc6zaNvengX
         NUlWRIT0ZvWf+JUcXF4n1T9EkIF9pdwU/EetNPuRFTJ3PR6c3X4I8FLxNwQG6jiQns0P
         A3wu9JFNbXmM+w2gfbCtrHjVj0ozukdrxgA2jC2H29BW2/tICbK/CssWLjt2+M3PEyPA
         Lo3yzstns3Yccf8AuNGF3QcubbCg/xvhs0KC7PQT+NbRYCMlXlTgvWfG8MRRkiCy79iF
         KBtg==
X-Forwarded-Encrypted: i=1; AJvYcCWrp6pxz2lPsTITIvW+/gOgNCll+cozbbwXLilA85sAilahqKof7n+0pxzdwzCkbEFv8ZrvEwZy0tFf@vger.kernel.org
X-Gm-Message-State: AOJu0YyF5RM/mkGq4vgHjxAxOUpZjcpT1SRgC3xKSD/RqcPCRthwkJN8
	yL2atde4UKcvaNu8jkYFG0839T6CPlXcM2S3eHu6faleK4wG2j5xAmJvcqC1TA==
X-Gm-Gg: AY/fxX7Rgw68wJdlMtMbEGDR05eHDQoiSkBAel98qOZuZ+ybO7YcKMekGkkgPQSKy8Q
	w/yCKTInH37wPsj8IP82mN3ovKEZQcFqCRTMLffwtkc9W5xMRmCAzxylcC0G6QPWjxkRDHezr74
	b6DixTmLT/VOu+DWyMwQnlKmh/QuaQOfFWrOOsbdNm6Cy+ycX0IlsZWXLkzKYXhkxKIXdfGVm5J
	KdjYWIFT8J/8zFEzXwiu88elLE1yMjX2gjFSwkyfaBH6CT4LDBZ8Zd7/+ruAJ6UFriWXneqALDs
	A+YM5+1XKJUnRG4SO1q/PK7SjI4qWUpWiImtXYEJmNQxYYZs/7IJ2Ecap27SF/Dz9HE/wvEfb9b
	bY2lQZ3bxOMQ3TbyOwgrEnCABx2QEnfxJo9e/Kd+4rSTMun6cOPstUtnB9Rv1VkjlDSnDF2pdYQ
	kyG0fh82prpTmFzwUhkIC3EJc3HxW6wOxio55k2Rf0EbQHU6qHomuhye96Xi12jDWHgDb41bmeX
	iiKRA==
X-Received: by 2002:a05:622a:15c6:b0:4ff:c63c:525b with SMTP id d75a77b69052e-502a1e5d13cmr132927051cf.26.1768794044833;
        Sun, 18 Jan 2026 19:40:44 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1f1b872sm64030801cf.31.2026.01.18.19.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:40:44 -0800 (PST)
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
Date: Sun, 18 Jan 2026 22:40:25 -0500
Message-ID: <20260119034025.58091-2-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119034025.58091-1-bavishimithil@gmail.com>
References: <20260119034025.58091-1-bavishimithil@gmail.com>
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



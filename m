Return-Path: <devicetree+bounces-202583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E94B1E22D
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:20:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFE907240F1
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 06:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D72246769;
	Fri,  8 Aug 2025 06:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hL8cXAX6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93738241680
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 06:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754633919; cv=none; b=HSPsVLMtPu+uKhRwRxupAdc+i2zr+i//lwXXaMyPd5owuxAInJTLBmNteRXowmEz/lRz8nipZfGR9+O32vPiBrFGQcM/yUiOU7a8ArstpQoXx/J9J8JPNKYvjYuCSZsxnhyvdm7l26nhLpYkHtgX9ObGyw1RgsGGjkWxS4GwYoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754633919; c=relaxed/simple;
	bh=K7/71SKMMpzwaGFKFzf2Lv1zWIeCMhaFITEsUbXeAEc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MS3JU3A27yvcPQy/qhUwFLXwGh6ogf5hRFa6tMaxv77HJxO1+HqEzI6EZ+CqHOPKU8gh31ddZgdwCc0CVQZpQpEIxbgkkJnWsJcS55yoDX//0EfzueQXLvJu4Mmrtj+BbEb/ZP9FHddYZ8cx25mcAajQnETtf2YYFhYg6DABKTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hL8cXAX6; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ae0bde4d5c9so335648166b.3
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 23:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633915; x=1755238715; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2pwCItUf8lochLUJYKKJUMt5Wr88pHOpjuGrG4FTd+I=;
        b=hL8cXAX6JvHkWgBov9Qrtvi9oOWD5EtKdxLeEAQg7TZufjXWItR5MWA8nzDvawIwNV
         TjFiDaN5ZLjHuDG6zC66VRBFt1dpWmsnI144JYq9ErZiwvXkbRjUTtvKBbtibx6nYmOT
         G8BrJk8KClGHJM7nw1WbibMxhwMoFRBHTVPoOiZhOw22dBvWO8i+Kf85W9lUwsa5HnvG
         1pPh7VETvO2gIsqbF898AUeDUmRujo9PsMxCau8H/Mn35Obq8HAE+cKDx2gFQN2VhTsD
         CiW94lcuiOiSqXC6wRncYmidRXspoSEpwLlgjIyyC2/4NleXIzYMyYKD7AghiVnJWuNS
         3x5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633915; x=1755238715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2pwCItUf8lochLUJYKKJUMt5Wr88pHOpjuGrG4FTd+I=;
        b=oNwSXfs1NlvAgfXRqFHctHmmBxhOawMLvy+fmZYrLu9PXQoshdX4iJNcuXMuj8OInJ
         uavWkpBvkzsRvcc8Rr7lfEGx2hQQ02pCVPHj+NQI+GC5tSRz5nSqSzkV/sGGomsbl7tv
         GDyMNtL7mVX1yRptAaGvZYec6DnQTzQWQpi67spZw77afEdMddw/7e1WXNm9PgNM+cQ2
         nqfKCcGNVNs+sNmua5dD5gxUiaav5NjYobA9tdrMJY3Q5ik3MkENbnL7f6wLyMZ3lIRD
         4RMUqN5uRgsd7HG8Z/sn0QlzXQgnxiqk3hyYNuxFUUXYyfSGhNDylvQt7I2i6bUMi6yZ
         Cfaw==
X-Forwarded-Encrypted: i=1; AJvYcCVCugajmAXEAzLIXxnIFJJRDp2J72knHJ7/Q4aDWd/7veBuY7XY3socGxA9u40CnCNngUnZzqIoAVu5@vger.kernel.org
X-Gm-Message-State: AOJu0YxhGYBvp6HOAJ75uNRq5UcbXvwr61IxCtfNBrsjgn6L4wcLFl/g
	rEy3CRSZC8qFf5hOj+caVXzOrdJxb8GV9skZjh6Jdxc4Cuu6G1epnW/J+C29v5ZtO5U=
X-Gm-Gg: ASbGnctJ1HNnuO3yUqhTf+2jTw/xRpqWD/2fC/bTFKUFmkPXhjO5pI5qpFMESQyCMab
	7y663ux0eHa49j2SpZH4+T7DD5qJWzz5KQ0s8qpHl1fbhUaqdBocpsyPVxiLLd9uEEvYYuHfO3K
	rIzZpE6whADmZORXDwxj+5D9MNrImw2GyFf0tZmNaN3fZl8TQWRQ7rNIGXJBf/R4J90gOUWHlL6
	EbAElUJKFPNYCK+0zFUTBasAkXLc+yvUcGat96V1MGho5aAYoCzewpL5HuhDj2UnBo362GMgHMU
	D9hzMVllul5oZfx5rNytfVRu1s4EM2HapGRjvlyfwDZXoC5amQI/Z+JOSQnIWGCFhxD1tjGPQSz
	t4JdyXVIuYXnA8HZVkoHi7VCKqZ2gEB6qzMVSOW/T4k6hdK+spqtV
X-Google-Smtp-Source: AGHT+IEmiE/zbR2dVxwuOYRcd6Is9fffLfNLfVXgzHM7b0VqeTBk1rAyyw8ui+JOUCtHEfB6xw3DqQ==
X-Received: by 2002:a17:907:7f90:b0:af1:8be4:768 with SMTP id a640c23a62f3a-af9c6342033mr152769866b.5.1754633914828;
        Thu, 07 Aug 2025 23:18:34 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:34 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 8/8] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Fri,  8 Aug 2025 09:18:06 +0300
Message-ID: <20250808061806.2729274-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable USB support (host, device, USB PHYs).

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- none

Changes in v3:
- collected tags

Changes in v2:
- this was patch 15/16 in v1:
- dropped sysc enablement as it is now done in SoC dtsi file

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 57 ++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 5e044a4d0234..5586dd43c4d5 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -92,6 +92,20 @@ &audio_clk2 {
 	clock-frequency = <12288000>;
 };
 
+&ehci0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&hsusb {
+	dr_mode = "otg";
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -132,6 +146,15 @@ power-monitor@44 {
 	};
 };
 
+&ohci0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
 &pinctrl {
 	audio_clock_pins: audio-clock {
 		pins = "AUDIO_CLK1", "AUDIO_CLK2";
@@ -207,6 +230,27 @@ ssi3_pins: ssi3 {
 			 <RZG2L_PORT_PINMUX(18, 4, 8)>, /* TXD */
 			 <RZG2L_PORT_PINMUX(18, 5, 8)>; /* RXD */
 	};
+
+	usb0_pins: usb0 {
+		peri {
+			pinmux = <RZG2L_PORT_PINMUX(5, 0, 1)>, /* VBUS */
+				 <RZG2L_PORT_PINMUX(5, 2, 1)>; /* OVC */
+		};
+
+		otg {
+			pinmux = <RZG2L_PORT_PINMUX(5, 3, 1)>; /* OTG_ID */
+			bias-pull-up;
+		};
+	};
+
+	usb1_pins: usb1 {
+		pinmux = <RZG2L_PORT_PINMUX(5, 4, 5)>, /* OVC */
+			 <RZG2L_PORT_PINMUX(6, 0, 1)>; /* VBUS */
+	};
+};
+
+&phyrst {
+	status = "okay";
 };
 
 &scif0 {
@@ -242,3 +286,16 @@ &ssi3 {
 	pinctrl-0 = <&ssi3_pins>, <&audio_clock_pins>;
 	status = "okay";
 };
+
+&usb2_phy0 {
+	pinctrl-0 = <&usb0_pins>;
+	pinctrl-names = "default";
+	vbus-supply = <&usb0_vbus_otg>;
+	status = "okay";
+};
+
+&usb2_phy1 {
+	pinctrl-0 = <&usb1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.43.0



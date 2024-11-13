Return-Path: <devicetree+bounces-121535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C8F9C711B
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 14:43:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B3481F291CC
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 13:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49EEB214409;
	Wed, 13 Nov 2024 13:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NefPgpSH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8F8213EE0
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 13:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731504995; cv=none; b=ELSa++Sv2maNnDYIDs4WC3g57daU36iUeMkB6Qac2YpkzTgLg2QEJ1OMBv+KBNhH1TTA7AmgujS2MeqvaQjmjUGjPdsU2Kw8vBRlh72LLxQp5pQTqNhHdbnllcIcKVrycP8ZEKXoupwZ960gLgN0Ogr1JSDM9hE5HeiAXX7APyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731504995; c=relaxed/simple;
	bh=05NUJdkVH5lfAI5e/Zejqxjku9Jv+hvVRilH9by2h34=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YMDzyv7p7MQ96NXXR20HymfxO4n0FdKRsBQ+j/Oj6HxGfyDUQ9I73zZa4oYvkddf1N9hqXu0NavxMWWqfLKnqOZOrOotwbQFVJ+v5eW//KN3I0fUJdiVrtH2SbDQc10dM9J4v2hpWSa8J1HDYNkSUWLfC90AnbJsi0QYl44Z4js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NefPgpSH; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-37d47b38336so5204483f8f.3
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 05:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731504991; x=1732109791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y0gntJ8wXzTaVgqGjZnswtc+VO95LvVUaZ8foAL7ehw=;
        b=NefPgpSHTN1+Fm0RAw3y4lhwEh8Ez5sQp3PTmvfVXJb7IjC8wfaiu0adu4d7+MhOKp
         /bh62Q3Li97DBjybV7OQp//TBBwQYo5uitLcjaRibqO6ct3Zo5nyDyAbxGMWhHhuh8Bs
         npt0o2iSDojN3BiWnfZNzcB97Vkkry0xJKk6/mcAXAglOaL08RSoUDmvMjgbBgXI6Amp
         sIzTlR4+eNXlNDS3+7uIE9QT1gpdsblLhr9Nmhudq4bGLgK/DSYRArWjvUGj7cEL72NJ
         ElOqY5YnVC6ZiWeeYgzRc5p7YJMEmFfd3YRCSOTZQX4pYC4HOru60cj6VKnQx0J146ym
         K/mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731504991; x=1732109791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y0gntJ8wXzTaVgqGjZnswtc+VO95LvVUaZ8foAL7ehw=;
        b=tG+guuuqUjfvgMrYvUYtGdyHOy2cmWWidSZWj26y2wJFpuWtJGdDYAw3LtzgODavaB
         Fv1SBJuli4YXZV29XbhJV802X5JcThu6YMeZ/M02IdrjE8yRTdoChPeQt8AsUCoFIbFd
         ghnh8UWXi42hrSCGcgwUt0yjqo66XP1H6kdoKsVlWDGQGf7T7ys68V4IjGPYEzPez3to
         EMjVxnbv3au9xtPIKRI9F9h5qp2xXhNz7OVyooo04GPcZfYdyJwSRbM8wfkEEtezQOPb
         FgrafWNM6sp4LUBwHplRnQuGce0GcsQ7faS2jpBqVdT2ovXAlyXZLcDreGr0h2no7sS8
         Il8A==
X-Forwarded-Encrypted: i=1; AJvYcCVFBUrf8/zpgK/yFOZ8cH+6XD1YRnhXQDmguN4kuSbaEqoLu29ueXEKkWDIZ8elRsS9QVxkf9VocLJM@vger.kernel.org
X-Gm-Message-State: AOJu0YxyW3PXoiiepGG4DBVX/tPlLV13Zi1nVatricxhT9IK7YFMR9fW
	nM31MtqKrRfQoMtrQEZxby8UvoIPsfMwRliA79LBfzhlBVIaQeJmujeU5uxHPE0=
X-Google-Smtp-Source: AGHT+IHMpNsm+tA+moi1PsX8Fx/MpdGlMLIuBwgupFykjQqj029sjvbi32kecFxI6Es62zdjCD33ag==
X-Received: by 2002:a05:6000:18a9:b0:37d:4ebe:164f with SMTP id ffacd0b85a97d-381f1883d96mr18213594f8f.46.1731504991041;
        Wed, 13 Nov 2024 05:36:31 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432d54e2f2esm25664165e9.1.2024.11.13.05.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 05:36:30 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 23/25] arm64: dts: renesas: Add da7212 audio codec node
Date: Wed, 13 Nov 2024 15:35:38 +0200
Message-Id: <20241113133540.2005850-24-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add the da7212 audio codec node. Along with it regulators nodes were
reworked to be able to re-use them on da7212.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- none

 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     | 17 ++++++++++----
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  | 23 +++++++++++++++++++
 2 files changed, 35 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 6e58d47d85b0..5ee9dac4aebb 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -63,7 +63,6 @@ vcc_sdhi0: regulator0 {
 		enable-active-high;
 	};
 
-#if SW_CONFIG2 == SW_ON
 	vccq_sdhi0: regulator1 {
 		compatible = "regulator-gpio";
 		regulator-name = "SDHI0 VccQ";
@@ -73,8 +72,8 @@ vccq_sdhi0: regulator1 {
 		gpios-states = <1>;
 		states = <3300000 1>, <1800000 0>;
 	};
-#else
-	reg_1p8v: regulator1 {
+
+	reg_1p8v: regulator2 {
 		compatible = "regulator-fixed";
 		regulator-name = "fixed-1.8V";
 		regulator-min-microvolt = <1800000>;
@@ -82,9 +81,17 @@ reg_1p8v: regulator1 {
 		regulator-boot-on;
 		regulator-always-on;
 	};
-#endif
 
-	vcc_sdhi2: regulator2 {
+	reg_3p3v: regulator3 {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	vcc_sdhi2: regulator4 {
 		compatible = "regulator-fixed";
 		regulator-name = "SDHI2 Vcc";
 		regulator-min-microvolt = <3300000>;
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 4509151344c4..4aa99814b808 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -68,6 +68,29 @@ &i2c0 {
 	status = "okay";
 
 	clock-frequency = <1000000>;
+
+	da7212: codec@1a {
+		compatible = "dlg,da7212";
+		reg = <0x1a>;
+
+		#sound-dai-cells = <0>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		clocks = <&versa3 1>;
+		clock-names = "mclk";
+
+		dlg,micbias1-lvl = <2500>;
+		dlg,micbias2-lvl = <2500>;
+		dlg,dmic-data-sel = "lrise_rfall";
+		dlg,dmic-samplephase = "between_clkedge";
+		dlg,dmic-clkrate = <3000000>;
+
+		VDDA-supply = <&reg_1p8v>;
+		VDDSP-supply = <&reg_3p3v>;
+		VDDMIC-supply = <&reg_3p3v>;
+		VDDIO-supply = <&reg_1p8v>;
+	};
 };
 
 &pinctrl {
-- 
2.39.2



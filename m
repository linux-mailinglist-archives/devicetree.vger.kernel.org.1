Return-Path: <devicetree+bounces-150535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 194BDA429E7
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 18:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF64E17F78A
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 17:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D0FB265CD0;
	Mon, 24 Feb 2025 17:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="leDzknSq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFF9264A99
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740418329; cv=none; b=hKX6SwbYmM7/J6OLIKbghb3TXMK1Eh+J3w4ZI1eR4dN+w8jzeuh0v/sNz2N8NokedjHog+U/vy35A61DgPYuZpAmiLjcR1N2wTdjy4BrLEyu5jFWHixMhgPJwEiqTaynUmmUbP7N/5MWBfvZ5wOlSWn+KdovSuc6tSxc5uMX00s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740418329; c=relaxed/simple;
	bh=JTUCCbCCWqHuncZ5oHBOQmD62rGMndm5FqoLy/lZso8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JPLY2huvzJ1DnMo1EUOed3m2krEhU+aJ8+Nm/mh49Rnz7r5DzLnORG8KItMMCjMeTzO7XB4bCM2jQPuDB3lvVlLjOy/NOi5XmaU+LbrFHxZ8I3V7auRp2UXc7ulJGClpvnE7XrT4Mnl5aX59frMSE/8nAh9vZsvtf7dLeOMmMJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=leDzknSq; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5dec996069aso7548447a12.2
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 09:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740418325; x=1741023125; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+1yo3qtSfIhFeGAEiRzmVMQo73ZalEAsSnX/cJq79kA=;
        b=leDzknSqCqtMKvI2s5QNRZEAmzUK7/zFE1HCb4C9M9pdUjBxLVSAFDWI/k7bUoxiCq
         9TP+LX+26cTn4Vgo3ZB9xvKYQrRG5FYGP7fYYrIt2acEiMXB5l5u83mUPGZR9glr+W9D
         jwZ1rlQ0GkLW5TuFEuB8Kt6meJlqEesbGSLXD3To/oTjlgre3w4VXRDv/VmFs66Gr/gS
         AHcxITptoU6Ox+4y/BsW6bN/68yNVe5RrE1n+kLhCdEl3vAA/PlvF+4GJ36i62sFFgcQ
         JCzBjK1/YDxlLdPJslxZWLS+th6+F4YjmODsxm8uEwgPkAiXdHT9TTTooTU17f4dZw1W
         tfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740418325; x=1741023125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+1yo3qtSfIhFeGAEiRzmVMQo73ZalEAsSnX/cJq79kA=;
        b=SY+syNUSblDBJHnSUvBopkb50oZs1S5q4/3EiEUW25pKUxfZb9LulqP9BmznwOXYU8
         S2qq6CAbg8Wio0BfthvL0pp3jWFE+u/B2GLeiLQWkK0D+Qfaq3F3HanttnEnL5g31NLY
         7z/1n3uB2gECL0vMB/9BTtpqhzn8Ku3xGzb1sEbYfG0eOSe9TDJTkjZ0Lf14UT/lMR+/
         pX5PNHbP5zA3EsteS3OjtNnRAH+1antbzj2spHkeeDyio/Y7NH0Y7kY53l/lxEkemVzK
         2SrRKR2WmXJmkHb/67XhidLWicVhSSHxOeDmj2zTDV00fc98DNAky+6gpfuaTTd8Ee+w
         Ro8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXX+BHop6lIsGtNZfHHL43Ei4C25zFsfIPgJkQS22UBsOovujr0eXRbscQ5SXkl2rtnyiYAcysJXrxI@vger.kernel.org
X-Gm-Message-State: AOJu0YymFktDtzUUcVEyvpQQdNRT3wJP6+mYYndvmamLcqZ9B05Xui0D
	w/sVC8yQXlKOCLkGEjQgscqrhMLd4j43HeHFAalct9DzL87j/JmxmDyFNvKdIRM=
X-Gm-Gg: ASbGncswB2+2afKV/fpmgxbT/ynzNpFkQz8jQdb2C/KVCvcQTFUHZmqLjHl988OiBF7
	FBoAY+QYpVAxZj0DPdXl//c9SOXnDdtt5+cn6XH+4CEhTG8lfbxHk+Ie5wT654fDhBd0G4mbcZ/
	z2CJUu28DSN/QdZNyuNJnjWza3E/+WzTZsI1wwarZ4J+4DRdy/H57WCVF/V3B1ZucUr2gpJhn25
	TwP7pzfzYlqPmiL9lgqM90FqzpU+dNisB0Q67fKtGUJcDRhUjVzuriERYDSkBZwk6dwt9sD7E0y
	IPIjfDQJ5I6m6TKHWAZNsL2rou3OMPPNsZhAT7x/Hvbl8tplm9VS6+k=
X-Google-Smtp-Source: AGHT+IEvfXereLG4YfzIby0vL8BC3Kca01jNjsC9KnxwSBKk7fKmr/umERW/k7CxUdOT/iVLoKfvqg==
X-Received: by 2002:a17:907:6d02:b0:ab7:b5d6:2696 with SMTP id a640c23a62f3a-abc09b1470amr1217759666b.32.1740418325327;
        Mon, 24 Feb 2025 09:32:05 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece270a7fsm18674357a12.58.2025.02.24.09.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 09:32:04 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	rui.zhang@intel.com,
	lukasz.luba@arm.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 3/4] arm64: dts: renesas: r9a08g045: Add TSU node
Date: Mon, 24 Feb 2025 19:31:43 +0200
Message-ID: <20250224173144.1952801-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250224173144.1952801-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250224173144.1952801-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add TSU node along with thermal zones and keep it enabled in the SoC DTSI.
The temperature reported by the TSU can only be read through channel 8 of
the ADC. Therefore, enable the ADC by default.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected Geert's tag
- adjusted the trip points temperature as suggested in the review
  process
- added cpu_alert1 passive trip point as suggested in the review
  process; along with it changed the trip point nodes and label names

Hi, Geert,

I kept your Rb tag. Please let me know if it should be dropped.

Thank you,
Claudiu

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 49 ++++++++++++++++++-
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |  4 --
 2 files changed, 48 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 0364f89776e6..3f56fff7d9b0 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -233,7 +233,6 @@ adc: adc@10058000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			#io-channel-cells = <1>;
-			status = "disabled";
 
 			channel@0 {
 				reg = <0>;
@@ -272,6 +271,17 @@ channel@8 {
 			};
 		};
 
+		tsu: thermal@10059000 {
+			compatible = "renesas,r9a08g045-tsu";
+			reg = <0 0x10059000 0 0x1000>;
+			clocks = <&cpg CPG_MOD R9A08G045_TSU_PCLK>;
+			resets = <&cpg R9A08G045_TSU_PRESETN>;
+			power-domains = <&cpg>;
+			#thermal-sensor-cells = <0>;
+			io-channels = <&adc 8>;
+			io-channel-names = "tsu";
+		};
+
 		vbattb: clock-controller@1005c000 {
 			compatible = "renesas,r9a08g045-vbattb";
 			reg = <0 0x1005c000 0 0x1000>;
@@ -717,6 +727,43 @@ timer {
 				  "hyp-virt";
 	};
 
+	thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+			thermal-sensors = <&tsu>;
+			sustainable-power = <423>;
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert0>;
+					cooling-device = <&cpu0 0 2>;
+					contribution = <1024>;
+				};
+			};
+
+			trips {
+				cpu_crit: cpu-critical {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+
+				cpu_alert1: trip-point1 {
+					temperature = <90000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				cpu_alert0: trip-point0 {
+					temperature = <85000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+	};
+
 	vbattb_xtal: vbattb-xtal {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 39845faec894..6f25ab617982 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -84,10 +84,6 @@ x3_clk: x3-clock {
 	};
 };
 
-&adc {
-	status = "okay";
-};
-
 #if SW_CONFIG3 == SW_ON
 &eth0 {
 	pinctrl-0 = <&eth0_pins>;
-- 
2.43.0



Return-Path: <devicetree+bounces-135379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9A6A00C43
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:39:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 12D5E7A1F13
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 16:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 409C51FCD0D;
	Fri,  3 Jan 2025 16:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="nPddEcXr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92DC51FC0E8
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 16:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735922324; cv=none; b=jWpCPWD801KaAjq077UGFvV8dtLEBT1oKnQ0/4PvjFt45qDp65APrUbpwERXfOlrJjGrdYfQ7yRgXm+MnNb1m5RrynmfQ2nMqCWGH1/xZQGuwWjobrVNvHznJOuV+7woxCD/+dVT9Be+m8ME9msNSv4gRaxwr051QVHb2Lrbk4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735922324; c=relaxed/simple;
	bh=uA7zSCyT+GU3Zteq7U0sWo2VeqLEzQfO9yMYYfppUds=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Cp/z6hRa8/BEJMvglXgj3+QnTwSv8HFQX6tTBebq+ApNjPenmnZhvgizdUQ1kUD6pKs+zQtVbxUUPv2U7s8wsXnYHBBOZ1+4GliK7+UFWhLsHYXycc9bPjoDzehQpVXj70lrBIxdiJ2MWF1Z5n+A3zhLop6XmQM1Bv5PqQDhbGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=nPddEcXr; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa66ead88b3so2279645666b.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 08:38:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1735922320; x=1736527120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WzIPlmgQYvqaNwex1YHnIy7YRZOsyuGpSTntBCm6GNw=;
        b=nPddEcXr+DKBPwBGhd68CXns0WzpisDTshyQrivcZSVjxfTiIra7TAB2AKTecjIaT/
         6C0u/ZswMffft1jQBrbcT62GmMd6C+tBzUyna7T79zHud+v4luSKSWr/A5LCZAPcOUsP
         t5uc789kXPQHF24N+dKy8z6+slml5N1LK6Z1QcO1cICKW+tNfjwtI400GSOPk+aSBZuy
         cRtAz1UOyCX7wDmVqiOpv9IDpw42xxrmE0pllDNkwyIVO5tzw+6Mjrrd1fprFDRRFEGf
         5iNMtN1w22O+Vl60PjrcOhNb0SXHjOOW8aSXvIFxf6OKruy8YNvdV+EmRisHUm6QXx5y
         GzBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735922320; x=1736527120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WzIPlmgQYvqaNwex1YHnIy7YRZOsyuGpSTntBCm6GNw=;
        b=McSSoYbXc3BV/tXgjaFGn3nHBMu7odI0BxsnFUVhWow75iLyrAvp2wEXsIJ/y+XxQk
         ZbK3PZcHW95f0o8Q+8cfkpa+vuEZL4rx0/9EV9XmsXHcUGj6Nc856RjCuI6HJT4VgJQu
         HfyaLn18f0PyBjNb8Dv15auhn7JvmVcSo3RoBIpTWmoLClgtqclinw2uipnbslExg20f
         sJKDDKTF1xJKlAjUL6LQUkoEvGdywViuzj3k3VpaZVDZ4M20Dp9IcHBhPep9L3URHg4E
         6jAjmeCHc1LW3Sonrx1cTbFmsBvEgYaC75Fhyu1FtIKlIYXvgVzA+AHu8HzN/YV7WVH3
         bpZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFixzwcIS32kMUkeqSCSCHw7yPEXN5/YXH6w3u6LB79v0ZvcufCOAl+mzOCkSaWlHz5vox5yBOCEUs@vger.kernel.org
X-Gm-Message-State: AOJu0YzUMLIoLveQsAkumCgxm0UuA3W/wNxFw8w5WmPFqN/o2abpJzkD
	byadquV2iOQdlpurPwswXQgl5agJL6yJrzCtX9xTzi327OrXb0TtVLYVQ9/x1EQ=
X-Gm-Gg: ASbGnctsqRdFTOEpESn/PXwFhxoOqJ68KdC1Gec1kRKcPEwRMemjiy+I9sEo2aeYWs1
	0V1E2TN9rbhmilgLTv55GP+IIURxNGJ8lY1wEKjQ9V9YVBmmYQvrFqIGojWoOVDA0t2Wjjwe/Sh
	Vp2sycrducqHTu+VU64lBFKqBzGHispRzMm3walbwnMwZgbeaiZ7EltwlN79uEUHbsqMNNXbQQh
	gPacKehdTsHOMfAYwYH2npo7DrF6m5eDA1x+12nfVkxpR5yA5iQMZArOI9AxI2N+pVjQpCgx2nz
	faBFCLyZR+Y=
X-Google-Smtp-Source: AGHT+IE84xLk/WtOOKb4Wwm+4qdlu+SqcMhw+gwQquj/QrYYaTzEDXr5cpwvEJHSOv4z3jx+xnmhFA==
X-Received: by 2002:a17:907:724b:b0:aa6:7737:1991 with SMTP id a640c23a62f3a-aac2702ae51mr5003000966b.2.1735922318403;
        Fri, 03 Jan 2025 08:38:38 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.102])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e8953b6sm1932984066b.65.2025.01.03.08.38.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 08:38:37 -0800 (PST)
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
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	ulf.hansson@linaro.org
Cc: claudiu.beznea@tuxon.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 5/6] arm64: dts: renesas: r9a08g045: Add TSU node
Date: Fri,  3 Jan 2025 18:38:04 +0200
Message-ID: <20250103163805.1775705-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 43 ++++++++++++++++++-
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |  4 --
 2 files changed, 42 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index a9b98db9ef95..fd74138198a8 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -205,7 +205,6 @@ adc: adc@10058000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			#io-channel-cells = <1>;
-			status = "disabled";
 
 			channel@0 {
 				reg = <0>;
@@ -244,6 +243,17 @@ channel@8 {
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
@@ -690,6 +700,37 @@ timer {
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
+					trip = <&target>;
+					cooling-device = <&cpu0 0 2>;
+					contribution = <1024>;
+				};
+			};
+
+			trips {
+				sensor_crit: sensor-crit {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+
+				target: trip-point {
+					temperature = <100000>;
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
index ef12c1c462a7..041d256d7b79 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -102,10 +102,6 @@ x3_clk: x3-clock {
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



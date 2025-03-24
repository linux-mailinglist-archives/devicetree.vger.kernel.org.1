Return-Path: <devicetree+bounces-160183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4334DA6DC4F
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:58:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 120F13ABD92
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A102F25FA27;
	Mon, 24 Mar 2025 13:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dMzLGfD3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4BD25F793
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742824639; cv=none; b=T1SF+ftoZFEWQWic8Lc4oSDdlmA2ab9RS6fFqAlJtDo7TZvoCPoInkc+q81x4IJqHjyehe5tsQjUKnKkZFYSuHRqMVGOdnsW2kSn0sBffmUJzuYlDflOQQLNqESWfA1G1R0FPskuHC85HJzPXgA11UZoyrFvJmozRoDJ9AbNIS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742824639; c=relaxed/simple;
	bh=kNDYGsurRMw1oAlr00fQlVE32k5QZ58+VqZ3UbAvmcQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UiGfuD2ryR8K4io6LvKZI0OhBVkBPVzmfagctO8Nw4iqvgchNrvjEbKesLNKAGhEJpKx4XMhJurIl5M/hfzxCmI9229mgeplftwteBN8txHNA0qD+oUlDlLKDl2Bfvfwf3VOF1LO8EQKBllhPinlViLjQeF3SDFJJU9H1EENrSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dMzLGfD3; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43d0618746bso29435895e9.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1742824635; x=1743429435; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mMplGUMafRwp7HXFHP8HY84mcYsdyQC2G6ObWF63fwE=;
        b=dMzLGfD3bv7xA5UI8z+RwWtjbubYG6t3fIEM77ru/yt6mXPin6B1+1jz5vFMeNzzPW
         7RRUTGqFS8OiMUj6Gz4aUZA8bl7hv4U4JKurKFqov/HsLRGCQar45ipm3jpyKvg/rDAw
         aNy4yJa2vDLyVttJJyU1CUJZJfVZG0ABZBBvmmgccdzMO7tXv1wN3tLLQks2Got6ZwO6
         AVh8J9zTXotr83m3j5QHYp5ob2120xPA1Ud/3HbpBMSuZDLMMtBwHrFGpIRBWBZK4S4/
         gVNZgoScgr4z86V0MwJldpJMwihapriD0c/Mkl2rhIDvKeir3Ckea/moneuX7b3Z1dRG
         fTVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742824635; x=1743429435;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mMplGUMafRwp7HXFHP8HY84mcYsdyQC2G6ObWF63fwE=;
        b=k+ZqUhcTI/h+ERQVR45c4TnRco8ZnzdLy850Pev3eIJi22o+mjpIIG5LX0lk+nG+Ya
         otNGTvMd/bhjH9DL59JhcciT7F5XQ1AQv/7AzTu1KzFalYxYaDsQEsT3+ZuKvRLsqGWK
         esuazeqarE7BhEVBK7aNgh3gelrt4mjsv4C6C0XQyRiVIlm0i8MY0aSWQnABWxXgJqOr
         3bZkjPyrgVYp+dEW6zwbZGJJO/C+yUsa6z8Z5bweuev8u4omaZjWwg66KNc2xNT5B0O3
         IyU2C9s/b7/HmUbLOv/qAssS035i4EGQK8oy2azoyCjLPZX+bUwXaDkuVg1DC1nq9JnL
         fgxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLamGSCiWFWh3B0Ath7ZoX3RcBivMetsr8PJm4/5fr8ghWBTRLxk1vWdJg8ZyZk7Ta89X471V9j1Al@vger.kernel.org
X-Gm-Message-State: AOJu0Yx16Hc9S388o3PMpydDr/UsQGKiQQWWb6dqXk+fZDRwHbyIwfEU
	JfUy+QKFW3hcpigwHUjEGH3AOaeDQ/nAyGTI3nQixbe5JuwCbd88o44/gIuo8KQ=
X-Gm-Gg: ASbGncv8ZBVUvHDoNOWEWHqwtsWfCnOdTIk5LwPOv91YYKeo6iGcIVI3KCTdywvhxOj
	KDpFWBKoWkkwj7MDoyVCuSEx9qTwdv+trjUGMc0SvG8Q9CyENrNYH9Rn9+6Y9Cbu5odG3ZpEmQO
	UdSUOxaGubIaSJV+zp1AKOTc6xNbF7VGkq4HrUPbU/q6fBQfYvwFV+novlyboyxg8BiR4ldO1Vj
	UMgb8hY60ACtBVghdoP97+LsS5HXUJ3740ogUCjwqnUtG4X42gT+uXM7eFVYs0SrSUzfmXdcJsv
	lVSOzZncNm7kP9B0OPz14PdkmlLJswriXl5ZCV7tQV9UjaNv11q1otDoxMzoNSbrCe6O09H4Xg=
	=
X-Google-Smtp-Source: AGHT+IHobCejWB+ti0E5Uw69+nVxjpEbVDbvYp3oPBiD2PXSMtx/XLxjlfZxbT4NY1k5LpuIjy51Hw==
X-Received: by 2002:a05:600c:1d15:b0:43c:fe85:e4a0 with SMTP id 5b1f17b1804b1-43d509ec36fmr89567225e9.7.1742824634707;
        Mon, 24 Mar 2025 06:57:14 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbcfaasm120146525e9.35.2025.03.24.06.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 06:57:14 -0700 (PDT)
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
Subject: [PATCH v3 3/4] arm64: dts: renesas: r9a08g045: Add TSU node
Date: Mon, 24 Mar 2025 15:57:00 +0200
Message-ID: <20250324135701.179827-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250324135701.179827-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250324135701.179827-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v3:
- none

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



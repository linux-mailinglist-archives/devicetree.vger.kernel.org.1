Return-Path: <devicetree+bounces-178233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A754BABB1D0
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 23:59:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F389174433
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 21:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C76F3B2A0;
	Sun, 18 May 2025 21:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OldE6/VR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A003207
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 21:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747605591; cv=none; b=Zr1ql9Ep5PojTL19tJ6V9Zd0+JHErK4DyIGO5pUm5lKoa6CQTGZj9AQNFxF5DXuiTxuGZ5ih03PcmHKhxsUVsCnOfBA6hqrtLDeCU/OMyJwiPWBVjTrHlqJoTxXAiNPCNAKTqzZzsF0mRsU9CQEzXwBVdIvTz0XSdwDySQPQeQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747605591; c=relaxed/simple;
	bh=KoMGJBsFlDIoPK6k++KhjVw8XC78/XLkwZTxQTnTyKY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UmVk4ufnG27dBEp3/egpR1+PZkxC19rHBOWeYq9nh/RJUY0YDdyPogHlxDUA86KgCRn84apVy8Rdi2kPRNwaQQl6DHg9oADtiZZzwSAfyGa6B58vJ0IMbdHIZV0NRdw2mQTJe87w0SRSPA740ne1r7bsYjhMT43n1GWkyjfbnE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OldE6/VR; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-442ec3ce724so30370635e9.0
        for <devicetree@vger.kernel.org>; Sun, 18 May 2025 14:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747605588; x=1748210388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1jcWHYj2Bjj7Gqb8nwWrV3vO98Qb0ffMBHjyALl6BfM=;
        b=OldE6/VR/KSSMOArcQetJKUrRoJiT/vynWq1tWzprfOxUqmLj/ezNLKmI2X4YeVWbt
         p61t95HMvFGMaJdkV9I81vGZ5X+CWTv4rQAqmQuO+dvWQ9HlikPGY/EgnIGzw4eFC0DM
         JLT3yy5Rkkx3qvimMTgw065EH6dHTHGDII6o9JxIjI8WCV3Sr8eFusnBdeJ5dhNc7ENR
         hKpDtXmGFHjBZ8vnYkMnXsbqxxJE7PmLYELQRNi41bSJwrr8N4HmsJyIWRo8vAxvhu3r
         xFcJYbLio+wACTudlBsOfInolHq9PQJpNpTRlgGqgu0Rn3LQ0nkgYurjEVZCx9q+lZ1a
         gBlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747605588; x=1748210388;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1jcWHYj2Bjj7Gqb8nwWrV3vO98Qb0ffMBHjyALl6BfM=;
        b=XblTo2+gSjRzLBG04WeqQ63V2RtUeYkvPmtQyWyDxRDf2Pf6s1nZPizjo1W5HK6GCh
         0c4UihFl9S0QgZoptu+naUdzPsUO+R3RItTeMNgJRS756zA32Jd1I3GziupW/Fp5Tidn
         ct086dzxDYyhhpVHKUlvULxXHINOZXl+ujU90BQUlW+3JXcRPa/5JJ8C43YdOdW+3icJ
         fcBxIgkyWj/2owS7k3nLqQp0I5yK80Iv/NoC6oy4aat9Bq1VRTEIE4zuIXZgKSphtNK2
         8CttoFzLvwarukVyt5jCK17T4WjWL0y0/KVgyUtyNyR2grSlN2DAZgubS+yYOtCVKkoM
         G/kQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkNWpEfBkD0zWhb8D7ocQ1EUzLOvxUfvwt63a9vt527+hySKmsU/DbbNZI62w4I94S6yHf3ROsR/f7@vger.kernel.org
X-Gm-Message-State: AOJu0YxttTmGYY817Chz67APN/bMhfcLJ9TO//XjZRWv6uF1bT8gOjzD
	fHqxuMVjUomBgIrstH6kZ0DzItGYMbR0fyNY1yR1z8KdmtJD4uHuwS7s
X-Gm-Gg: ASbGncs/rBqmGnkDvkomTZvwRbZD6aoSJfzz+QmO2I6e15EN2XIBefg4NeqSSAgVfLu
	Zv7SKix9AkNnz47Advl91A2JF/+kjNoLc/R9ozzsvlYde1P6OJ2aAqifN0402LxeikQOERLqI//
	Gopc0rPvmqbWJc5//Ut7zlijBcIHDjk5esdz+iRhM2RjBcyQ+h3rkDNvFPAbDMfZXNY8EwOA+ks
	/rCGSCG6l7f3lz46WGcrz163qOxtT6msBj/LxD4LBomF0vFSqJLEWhG5neC2M3mo44fd5z6sFEc
	HpJgQBQkdgaQZkVZLDtiad7QdHeGUc/GzMXH1+8h7G3BE59Tn4+QiHcaoEDYaf1qBHYjKyB1LBy
	7EfFeFJZY+NIAahRkG7uRySJWlVq5iOerffev/nlRNROXheipqGF/N/iwfgDn9h4wOt3RxUVB4P
	sancqUVA/UWQ==
X-Google-Smtp-Source: AGHT+IHEoNHpgy/GHjNzWJO4qHfmQbt3TtQ05k1RPPmbrZqKlkbHKvDWBWg0LpEWKjRbnreSuLjTHg==
X-Received: by 2002:a05:600c:1d96:b0:43c:fe90:1282 with SMTP id 5b1f17b1804b1-442fd60b8ccmr94872805e9.7.1747605587518;
        Sun, 18 May 2025 14:59:47 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-442f39ef81csm185711995e9.34.2025.05.18.14.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 14:59:47 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: drop touch panel display from rockpro64
Date: Sun, 18 May 2025 22:59:33 +0100
Message-ID: <20250518215944.178582-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The touch panel display is an optional add on for the RockPro64
so this should be an DT overlay, drop the panel options in
preparation to add this as an overlay.

This effectively reverts commit b65155c786c4 so as to add an
overlay for it.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 64 -------------------
 1 file changed, 64 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 51c6aa26d8285..e848ea6efac3f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -20,15 +20,6 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	/* enable for panel backlight support */
-	backlight: backlight {
-		compatible = "pwm-backlight";
-		brightness-levels = <0 4 8 16 32 64 128 255>;
-		default-brightness-level = <5>;
-		pwms = <&pwm0 0 1000000 0>;
-		status = "disabled";
-	};
-
 	clkin_gmac: external-gmac-clock {
 		compatible = "fixed-clock";
 		clock-frequency = <125000000>;
@@ -116,14 +107,6 @@ dit_p0_0: endpoint {
 		};
 	};
 
-	avdd: regulator-avdd {
-		compatible = "regulator-fixed";
-		regulator-name = "avdd";
-		regulator-min-microvolt = <11000000>;
-		regulator-max-microvolt = <11000000>;
-		vin-supply = <&vcc3v3_s0>;
-	};
-
 	vcc12v_dcin: regulator-vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -590,19 +573,6 @@ fusb0: typec-portc@22 {
 		vbus-supply = <&vcc5v0_typec>;
 		status = "okay";
 	};
-
-	/* enable for pine64 touch screen support */
-	touch: touchscreen@5d {
-		compatible = "goodix,gt911";
-		reg = <0x5d>;
-		interrupt-parent = <&gpio4>;
-		interrupts = <RK_PD5 IRQ_TYPE_EDGE_FALLING>;
-		AVDD28-supply = <&vcc3v0_touch>;
-		VDDIO-supply = <&vcc3v0_touch>;
-		irq-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
-		status = "disabled";
-	};
 };
 
 &i2s0 {
@@ -638,36 +608,6 @@ &io_domains {
 	gpio1830-supply = <&vcc_3v0>;
 };
 
-/* enable for pine64 panel display support */
-&mipi_dsi {
-	clock-master;
-	status = "disabled";
-
-	ports {
-		mipi_out: port@1 {
-			reg = <1>;
-
-			mipi_out_panel: endpoint {
-				remote-endpoint = <&mipi_in_panel>;
-			};
-		};
-	};
-
-	mipi_panel: panel@0 {
-		compatible = "feiyang,fy07024di26a30d";
-		reg = <0>;
-		avdd-supply = <&avdd>;
-		backlight = <&backlight>;
-		dvdd-supply = <&vcc3v3_s0>;
-
-		port {
-			mipi_in_panel: endpoint {
-				remote-endpoint = <&mipi_out_panel>;
-			};
-		};
-	};
-};
-
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
 	num-lanes = <4>;
@@ -782,10 +722,6 @@ vcc5v0_host_en: vcc5v0-host-en {
 	};
 };
 
-&pwm0 {
-	status = "okay";
-};
-
 &pwm1 {
 	status = "okay";
 };
-- 
2.49.0



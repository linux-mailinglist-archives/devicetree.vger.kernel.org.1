Return-Path: <devicetree+bounces-188136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3011AE2E33
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 05:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D57B3AC969
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 03:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C9B17A319;
	Sun, 22 Jun 2025 03:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="NJnFV0by"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7171684B0
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750562995; cv=none; b=lGaFnsH43HlDHbSeOTIytyaoVuVR9fQ8BWqMDS67uNa7lHUmeo6ixfGG+JJ5QWa8HNGNJQWgU7mtlwp/ivpPISQG6vdoJzme2REas7ulbRw5PB0Pd2LZJdkHSsQcrFTW1guVgEwEGXc5UUcLSxDmlhbtPSuElamx41qUEmpCixc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750562995; c=relaxed/simple;
	bh=PfwZzjjqJBdpG245rW9fZ43Yt8RFpe6Kf9hR0M/wvXw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=auF/1JfAEBCo1rMhVWJn4cmIozOvuLXKsg4CjbS5huIT3l9i+gMLXe4/WKYghPurAJ+ACOMM/7+NxMpXGdqF7XffAceu+8ppdyqOJnyWlcizP6jnh9qscSohhwVg/U3RzM8T2iyH4BlHWg9VeHh4qG4YWysYxJXfIXKkX33d/QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=NJnFV0by; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6fadd3ad18eso34578546d6.2
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 20:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750562993; x=1751167793; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWnze/SjFdW+lfNDCsnEitBUx1r5ZcEMc14OReZ/axQ=;
        b=NJnFV0byZG+1ffKp537cPX/zh1Wf6nnjoCXa0t3T/mxjgUcbwDhtXTieWZWo4F4SDI
         7XiRhqpOXXDyFYcDtaZn8gvzJakj8Rqe0QxL4zQZdFCDzWYasRhhKxpyNvxaT+tMR0U5
         H868+X+UmRMJIJITPL3RjQDSwTHEIDhG4AEbJxUglDFhE6JX/jVCq/FWSIQDgtskPHQk
         vyHWMFQSviKXmHc3vfboLveeTJ6y5RVK9ffAgRicw+iY7DFvwLXZ+09PMFKf5IQXW7xs
         VpbCctkrhZeKgQbA5zDSElFk7ezZa5qYpo0Xufa5RoxpNJx241wWWftqa4ccsv6xUDTp
         mwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750562993; x=1751167793;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NWnze/SjFdW+lfNDCsnEitBUx1r5ZcEMc14OReZ/axQ=;
        b=gMsGvvSyo3M7fTiBbLHVne4lkQbgmrsaaWfdZeJk9X6WH6goE5mFg6s4PL98VZ7As8
         32Zwh7wZ7XeGb1jIicNFWBGlyUrkL1a82XKWD5ffLI8CUUd939g+/qXbzhoOu3BHC3Yx
         xc+UKETVpeZboi3OU/SpjpU4HI1P53TZG9+TAoABlCuLvvE7SxqEbt4tQ4kTGH5KxjbS
         0TQuYU2ia37bqHD0e4zVRbAQc9AKq56W1LjlqwGTpOpv/5if9QL3ARcqH/l517EoRUSN
         a5y6ZaybrHVnfQ8X1MxTvNDz/voYvpPE62k0yE3LO1Qb4hSp7gsXstf85IROY80CWwI6
         79NA==
X-Forwarded-Encrypted: i=1; AJvYcCXzyzS6+syUmX3LmAq/QRFZ023z68sHWIb/iD0lckYrnDi9xpjYF6ewdxtaa5EzgW2vtltprIr+8Jzp@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwpy7K+vhk4foS0cj6sEk6ZxxcixAkV0nG6QFSOJDUHCy4KrOf
	sUav4Vaa5acSAedHvWKhxiVGhEkL9/s0K7aTPWMTp8FPQGjDDt6itKcBXKcLdAH/dIE=
X-Gm-Gg: ASbGncuQItAU07WM/TuSc6SR7VQv/HOzrMyeyoTL+p+p8d2Af1LkCdOAVrUI2W2/5lo
	ceupnheqb7wA8Sy0ZG1bwlwHDHjL/gG/bR+BwvWy+SX6dCFks0jaKALmqQD+ptTOZJE0QH6u9bD
	lp1/HfEKlafkgbzxHTOg5K0yhder4vGmeBKgMnTZu0ZnRGOhyoXhV+CRVJeAF7/GEWHpWefovVp
	a4/898MqzMvsnalG0t4iK6n0mQhLYa2XcgpGzmT2lectG8GiN0XvOHkA1iuv5otYXFK2kV3ClqW
	qyc2MS1Gh6Gme4jmwfzOnVjUUAT9FzHaY5Ktzy7EjYE8MfQdpL3esaOwQvE4e+SstsxuagE7DhW
	34aWrTnGvTds4sr9butLgNXlbAS52cz8YScGWjKNiLy1ETw==
X-Google-Smtp-Source: AGHT+IEZ9RQ3qooYvQegxhYJwv4FcXekxCuxqEkQ4IfzYRI0IXuLRFYbafB1Ip22u1/MKqba1/A0aQ==
X-Received: by 2002:a05:6214:5413:b0:6fb:4c6d:d4d9 with SMTP id 6a1803df08f44-6fd0a46841emr132548106d6.13.1750562992722;
        Sat, 21 Jun 2025 20:29:52 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd0945183dsm30014526d6.44.2025.06.21.20.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 20:29:52 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	alexandre.belloni@bootlin.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	wangruikang@iscas.ac.cn,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-rtc@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 5/7] riscv: dts: spacemit: enable the i2c8 adapter
Date: Sat, 21 Jun 2025 22:29:37 -0500
Message-ID: <20250622032941.3768912-6-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250622032941.3768912-1-elder@riscstar.com>
References: <20250622032941.3768912-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define properties for the I2C adapter that provides access to the
SpacemiT P1 PMIC.  Enable this adapter on the Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 15 +++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi    |  7 +++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi            | 11 +++++++++++
 3 files changed, 33 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index fe22c747c5012..7c9f91c88e01a 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -40,6 +40,21 @@ &emmc {
 	status = "okay";
 };
 
+&i2c8 {
+	pinctrl-0 = <&i2c8_cfg>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	pmic@41 {
+		compatible = "spacemit,p1";
+		reg = <0x41>;
+		interrupts = <64>;
+		status = "okay";
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index 283663647a86f..9d6d4503fe751 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -11,6 +11,13 @@
 #define K1_GPIO(x)	(x / 32) (x % 32)
 
 &pinctrl {
+	i2c8_cfg: i2c8-cfg {
+		i2c8-0-pins {
+			pinmux = <K1_PADCONF(93, 0)>,	/* PWR_SCL */
+				 <K1_PADCONF(94, 0)>;	/* PWR_SDA */
+		};
+	};
+
 	uart0_2_cfg: uart0-2-cfg {
 		uart0-2-pins {
 			pinmux = <K1_PADCONF(68, 2)>,
diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 14097f1f6f447..a85239e8e430b 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -483,6 +483,17 @@ gpio: gpio@d4019000 {
 				      <&pinctrl 3 0 96 32>;
 		};
 
+		i2c8: i2c@d401d800 {
+			compatible = "spacemit,k1-i2c";
+			reg = <0x0 0xd401d800 0x0 0x38>;
+			interrupts = <19>;
+			clocks = <&syscon_apbc CLK_TWSI8>,
+				 <&syscon_apbc CLK_TWSI8_BUS>;
+			clock-names = "func", "bus";
+			clock-frequency = <400000>;
+			status = "disabled";
+		};
+
 		pinctrl: pinctrl@d401e000 {
 			compatible = "spacemit,k1-pinctrl";
 			reg = <0x0 0xd401e000 0x0 0x400>;
-- 
2.45.2



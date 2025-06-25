Return-Path: <devicetree+bounces-189641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BB9AE8A27
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 18:42:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FED83AE866
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 16:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 125522D8DBE;
	Wed, 25 Jun 2025 16:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="WHR8OwaX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169BB2D8DC3
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 16:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750869694; cv=none; b=K2H5R3Fj+cct2cmeOsog3/7kypGR1aXBXAL+MyBxT/N2bLVzXWyaj8i13wgxd4VyPZrE18zYnt6qDhKBPwGM+giGynGyambYleV3wtaM2tJdjNw7/QxafEFxqM9FDPyARAMoB5bYCUe6E/ZwXYz4Gce2d+ssdSuSStYEQl9zWsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750869694; c=relaxed/simple;
	bh=PfwZzjjqJBdpG245rW9fZ43Yt8RFpe6Kf9hR0M/wvXw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ekp5hGimXRG0nVvBh/Nfq7Je+7Sn4dC3u0x/dFeSFb9J0LoNqDSnkeDgDVc1+X6xksTh0puexwim+RceBkO+biTnjQ9CfI8X01Q1bnQVRlK7bx2Sdeo6dgDZz4A9krFIH74s+Uhz+7PbnCvXJlsz0NJ1BetaccTFvszRCScRXBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=WHR8OwaX; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7c5f720c717so117349885a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750869691; x=1751474491; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWnze/SjFdW+lfNDCsnEitBUx1r5ZcEMc14OReZ/axQ=;
        b=WHR8OwaXm4YVA6un6SIKhvgDDanBMuZpv4c9gAeA5bGJHExwrQew5lHj8huA7fAix+
         +XO2tXLUzBwnHIpFj3w3MJii7Jt60iK4pGnUFB2AQ2S9gj2H0NjIpr9y2ommPANt+unU
         IqYxldzezD0mkHT06wgwz5qbaQijEeghbEHkwP0r5gWhklnoA+JWWvY1rH+1EUA1rqtI
         uOXD7W0hAky3Q6/h3VLe7s0JynW16SJgI+z4foSEEvOXrh4fLK7XMA/L14M6ZoQun+bY
         2RX0yUmiEo7ByzJMJOpYFS7aYvUTA0zx40PvuDJcQCVIuCurt35dcnIG6hJJG4DJ4OeJ
         C65g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750869691; x=1751474491;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NWnze/SjFdW+lfNDCsnEitBUx1r5ZcEMc14OReZ/axQ=;
        b=hJWdWFH5Rk993XYwgtaJqrIaWepAnuWAjofNkli7vaZ9cOYnULpQuxljZajnNgIeXM
         ma6Skpdde/zw3GsRE6DPee6Vkkhjnnil6t9rVWtlRJXTN1t0QdHz3gidObWcQJHP97vv
         JzKGHKN/Z4y0nsk1fCsxR1qIc/wVmfkzQPpMYMUZ6/BbEIQzUsv7suVB6UnlSDTw2632
         2DZJsm/w1bAHPay11+EYjg/846Aabd62Eah49w3RDlrYhf16uy5XmaSB3Z+S7lZlnwgm
         Od/DiGGWmQu7zqHLoUm+m+rLYr2WoY5VmYuFZu0XxYOHO0HGXSM2gpSU4OMHoNXXHOBl
         dCvw==
X-Forwarded-Encrypted: i=1; AJvYcCX8uLqU15ZAt/7+BQhRZq3jCSc+tGu5PYuqE1vwO1JpKBSaypiPNtH2QJm4l20CYaI60jlwCkxuW15u@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9k8xRSY17IwXYfOMPaLITYvPLJaGd/TKtMdMkxCnIsXadYbGt
	7gWordwiTDxGwdexvnVmNeV4lhoFCGiG7wyBkwbd+JMxSpBmn0ZxkhqYyedQGqIInrs=
X-Gm-Gg: ASbGncujBsGAyEUxB2K0NfakpsJqYyYlW0Sfjj9b72Flr13yMgNzbTN1ArWV3wL7SrE
	/gjNhEqdZN6adXvdSuUNZLJKRMtXxUYzPmVg60E6VLlCkyq2AdiZgHq9WGL1qmEUwMQtvMymfpJ
	jQr1LqqrbGC8b79D2LSd69TXpnuW8MITV/YY9t3knTs3v13MovdTEyNLcxXbWhRiy9AaIN/rMVk
	kK6hcWsWFrSkOgfIr3pUJDQlm02RsYC24mPqIY00he4fbykOWlaJfpjHAP4XThIOlFqBzpk0lUa
	yjGErgAdN85kTswEw864Zi1IVuXbXmfZSf3XNo6GoQ6nNbEKKiR/PGaYjbGG7Qr/KVoGv0GEHw3
	SNIas73MY+5WTpXZY7usn3ejGTnUQxrr76UToVyQkpuZsmg==
X-Google-Smtp-Source: AGHT+IH4WBO33AQEU4daDUfdQCrNAmkqlpvMPDGNy9OxOBKPBp4zs4BCFmH0xBJiPH3X1thxaYnaIA==
X-Received: by 2002:a05:620a:40c3:b0:7d0:9a99:1bb1 with SMTP id af79cd13be357-7d43bbdd560mr26509885a.25.1750869690791;
        Wed, 25 Jun 2025 09:41:30 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d3ffdb190esm576783085a.86.2025.06.25.09.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 09:41:30 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 5/7] riscv: dts: spacemit: enable the i2c8 adapter
Date: Wed, 25 Jun 2025 11:41:16 -0500
Message-ID: <20250625164119.1068842-6-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250625164119.1068842-1-elder@riscstar.com>
References: <20250625164119.1068842-1-elder@riscstar.com>
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



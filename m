Return-Path: <devicetree+bounces-149889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F49BA40B72
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 20:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B78B3BAEC3
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 19:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CDC01FCF62;
	Sat, 22 Feb 2025 19:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K/HjbhRs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05D6145B16
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 19:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740252854; cv=none; b=k3CuGmWRcVq3bc8GQDmYiYDy0Epp3xCIin+s9zyXbD6dwoCjtBMZCo7YSevOf1EW9yRRJEYhCk1xWdJZGNGczsAWaaIU15MQpVTn04EHkmyTjm8DXdZdL++DnG53xn0C4oizws9QOnLLEHCRnmfMLWBE/pDxtmWU0myCrZt9sWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740252854; c=relaxed/simple;
	bh=FWrNx9AoEjysHEe8W0psvxalzCowjC5NMY70E3o6r9E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eGB9o+14mOxN6l2hzcFFrFQggHs5irs+oC0ZdYPNMDRsl0UmG6SX9VuLReGchfY7ox13xY6dVSgsa5LgnsTLBuCrh2FmJThoLQXJcXG/Mcorv4MzLEXdxbs2mzLRmU/z4x28qY7o0I/72LnomdzTfCADU3xSo5uHto1c1yMUZhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K/HjbhRs; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5fc016cbbe8so1949561eaf.0
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 11:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740252852; x=1740857652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cmCEr2QyJdNLJyiq0r9W5cRfJfYLIBpOGRkkQooY70=;
        b=K/HjbhRsuAXR+ifPaqpVsmTOoAC8lX33lD/YIqxcUj5cW25Sg6auEdFzr1PSpa11Ou
         +dBPf4+3M9vLBUsKKq1fRchcvlVynPN10S9u3VXmuMSScXj4DPUdWWA528H7F/bQbzIC
         mnFZ7/GyQAK9T/7V2JcRtc0abpBqHGGqd7ahFBIsBOWBEaoLAFj15qUggVjCoLKU5zRt
         dd2N4xDytEVawFTYRng0sVYhSzm4Y2XxxNXjnl89m9aiPdQUVNcprmPbrgc6MDVn2u3j
         rpAVTtNEM2xxUVPAgrApZIYNhBs7YfO0nIg9GBC6aHyC4teJB/tHNFhpDkNODhh4Zcqz
         /M0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740252852; x=1740857652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+cmCEr2QyJdNLJyiq0r9W5cRfJfYLIBpOGRkkQooY70=;
        b=n8/NqIBfvYB/KDX7oJT0be2NJS5AANgoeHXwDEiQpz99Hw5ObHbbk2DxyCw4Emf+ad
         /BA3YbBZuVqjFYWXDZ4aU3aSe1E6GyUvS3zCwDBlb7bbLmmr9Fr9vo46zC6FtXuP5GbA
         AukhBocZe7MDC/F0uGvqCKDJaCSPwjYzLU0ogM9VkEu0l2nr/r2X92nM3oyh8mNcYzNp
         Tk3kkym+1UINHI5LpHcMOEhCcdflQIJx8cel2zTjkziOPiGPYYY3mIIiJ9CePmA7S3fj
         JzN8qDx8MXBOH5YGaR1CQjOgwyUkUkdrCxj0APXRPlklsrRlHVi1QNfmtO73ulJQa3S7
         JcpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOX8JrPzSWBHB12xFeFlKJw5BCPE+U87gUgZc2jIZ0f9Yuqu4PLVDAaJewWml2/lrgrwjkprkqX+ph@vger.kernel.org
X-Gm-Message-State: AOJu0Yyno4Vy24j3V6UeOaDUA1/hsjgmQX2mE8KFquCYyPG8evaSfMfj
	/xU7IHZ862zoqlkWtlEQX7VvhO44AliW3j+JWiEh86MADylhdfR+4GazHBt+
X-Gm-Gg: ASbGncu6sPvW0Eu7aDlGDShKN8240VwNswTTlLrWsC/6m94LTaI9J8VNrsPIYP5e5Lx
	biSi1zdwTXGRZEWxpowsNUaCfoP7MHSLK2GtsTB6oQRU+HN0cf/jaMoxTg0Tm+/58XYnESUGQvu
	CEWdRFnM8RrwDtLSwTwC9Eb/aqJeGXkHHa4anBPugVcMOxcr0g4S8zW2zKd3jmdWo3Jw/YFe7xr
	5u9splsAG6S6fAwPMmC1+G2rDZ5V/Aeml6xa5PAflUbhrpncW26fsuYYaHsZhBPNgRAt0nWm/tz
	XcKQUuW45cPfiZ9l5crcC5q/pO2qWfzZNg==
X-Google-Smtp-Source: AGHT+IF1m1xi+ESe2qVPwSI5zRUCJCtATZEZshHH+DixnMthAQSmiun7ZP6eieG56zLhw1dwoKwgdA==
X-Received: by 2002:a05:6820:611:b0:5fc:babd:8648 with SMTP id 006d021491bc7-5fd1960c9c6mr5181578eaf.3.1740252851887;
        Sat, 22 Feb 2025 11:34:11 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:b69:ffa3:9d4e:2cd7])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fce7afabd8sm2724012eaf.34.2025.02.22.11.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 11:34:10 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v7 1/5] arm64: dts: rockchip: Differences in Orange Pi 5 Max
Date: Sat, 22 Feb 2025 13:33:28 -0600
Message-ID: <20250222193332.1761-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250222193332.1761-1-honyuenkwun@gmail.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

...than the Orange Pi 5 Ultra

The Orange Pi 5 Plus and Orange Pi 5 Max have 2SK3018s attached to the
PWM LEDs. The Orange Pi 5 Ultra does not, and thus needs the PWM
polarity inverted.

Also remove the model/compatible from the dtsi. It should be at the
board level only.

Fixes: c600d252dc52 ("arm64: dts: rockchip: Add Orange Pi 5 Max board")
Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi     | 9 ---------
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts   | 8 ++++++++
 2 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
index 87090cb98020..6e4dcd8fff26 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
@@ -7,9 +7,6 @@
 #include "rk3588-orangepi-5.dtsi"
 
 / {
-	model = "Xunlong Orange Pi 5 Max";
-	compatible = "xunlong,orangepi-5-max", "rockchip,rk3588";
-
 	vcc5v0_usb30_otg: vcc5v0-usb30-otg-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -62,15 +59,9 @@ &hym8563 {
 
 &led_blue_pwm {
 	/* PWM_LED1 */
-	pwms = <&pwm4 0 25000 0>;
 	status = "okay";
 };
 
-&led_green_pwm {
-	/* PWM_LED2 */
-	pwms = <&pwm5 0 25000 0>;
-};
-
 /* phy2 */
 &pcie2x1l1 {
 	reset-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index 26421ca7843b..be8cc96b5308 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -77,6 +77,14 @@ &hdptxphy1 {
 	status = "okay";
 };
 
+&led_blue_pwm {
+	pwms = <&pwm4 0 25000 0>;
+};
+
+&led_green_pwm {
+	pwms = <&pwm5 0 25000 0>;
+};
+
 &pinctrl {
 
 	usb {
-- 
2.48.1



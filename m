Return-Path: <devicetree+bounces-149874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 131ECA40AAE
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 18:29:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8C1E189894D
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9407C2080C6;
	Sat, 22 Feb 2025 17:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nEcs4CCK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D86A1FF7DA
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 17:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740245328; cv=none; b=IwhwXBsx5Gv5xQ/yPJexvXtBHboc3Uup1Nag64oZp23BU8wDmk9YMK525cXqTvPrWgGcD4etjZXPqFH5jkh4gaoaC/mU8/ZkS3EqUhRy7dT+Fecn3xcYgruGsJrjor8oAoxrbqQ+hXsyM365xgHRGehja0qTpGeiUnH29aXJmYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740245328; c=relaxed/simple;
	bh=FWrNx9AoEjysHEe8W0psvxalzCowjC5NMY70E3o6r9E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SUTxW1l49js5UeEpCpjL39fp19QyMudEUA70KnuB9Jr4nAVirW3wgbMD1MtOgedUUfRUj8PgjLiKfyh6Rdpb5e+LqoRWMyvK2T4t1xuXeODUyswz9EHOKfZQCvGyAZPwlf7+L9PMSQ3UjSyJdno8P1oM6cmRhrXHXcTAQpc5PTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nEcs4CCK; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-2bc607b3190so1501339fac.1
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 09:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740245326; x=1740850126; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cmCEr2QyJdNLJyiq0r9W5cRfJfYLIBpOGRkkQooY70=;
        b=nEcs4CCKMumjGxV+oqoNAAGR/uRQow1avq4YpGajaAR5XYXuTwOoK7LmY5E18Xf0zV
         phrFcc+agYYquw29cYzZD33vSzRXDfVmldVteKI33GB6qWJ4xPVchqh8v0MZfWS8XZ5P
         hpMAxkonl569Ik/Yc2+JF++6ZtaiHJWcBN4mRcKFnHV/fAa80iBgNUpjheYEHG0SA5Y5
         QoG+yLDOhoOw9xJM5pWPtvDjaj0yfFMvVySY09uBiiNgu7StksEMNgh4L+k8vdGDta3b
         5KlN4I82CjPr11bUFriVCI08R0lqvA2H90J8/6M7VnO34fABH1+jGQ+pThEiBie6Qa5U
         vgDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740245326; x=1740850126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+cmCEr2QyJdNLJyiq0r9W5cRfJfYLIBpOGRkkQooY70=;
        b=lYA7kCIagLdA5vn8zKda/DfXnja3IgXELjdmoRsZlGzl/8NPRLEaJSFpHrO2DO16+w
         2erbuakM5HWAe4WEFf17neSxlHw7bTjXUl5ejrHOdXT+0rCCG6GxZxG3SIV0fjnKeqaR
         C8z049y8NLaFqxMa+gS3fO3KgFcjXSWqFfgWjcMW1A/naj/xkoK9xGGr1ddalnmUtusk
         /+m+ZMNvKxX1sd1jK9bXOAus+kkFuFtfc1FlJMS7Ki3Lu3BxlEpG7PYw5zkAEtvOKS1v
         7DH2LAtfUtYTImdWPI40udzYPt0gN1dyHnTV83X2bLxX6P2aD/UsIk+x9Rk312KjAz+u
         rZuw==
X-Forwarded-Encrypted: i=1; AJvYcCUoLUmpx/8cXvyIGbdDQJJYX/1+9E/FLV0CHS25NoHDhCkXddK42TFW+1tauKYEkLXJYrim28fw0hK+@vger.kernel.org
X-Gm-Message-State: AOJu0YzN8jWcauYZYZnihWd5bN51ojmiRL8VRpN3oZRFFPLzhHX31gjS
	XcHJdCSIgzV/bH3CUd49r7lr1vr/nPMe3YnkA+oNJXLEZcrf7uEy
X-Gm-Gg: ASbGnctqWoW5ig71Pw3cMB18lXLPLhKMvq3vKxztHCHc1OzJMmnygHOHUDKNRtFI4h1
	dV3P5tqcgbK3NEPfSrcQWfpiQqg4r33WZ78CLbS1oUT5dyZR/he824VHxUnu2muYhVjKZiPPJqm
	ZFWNzBm+NVtLCk+kgiQmA14BIHt55aXQpNQOgPTn7X6W1a9NFJ9a4Vp5TacpVWErmfHAFqm1/JY
	NsmhjuVTj2os6FP7dbpODmuVA4DeIsKM/e7ip9w8miqM4tEJO83yaUy8jgRvzVpYRg5vyNkzoyG
	Av2zH21AlsC1xA7zxMURqZ9Gbb/+eLeCzdg=
X-Google-Smtp-Source: AGHT+IEvlX6bmCxueMeOW3jS1NUONbXb14HRchHHbVtWpxNB8PPRxD9vhqOabVgGgsZS5bRfekLR6A==
X-Received: by 2002:a05:6870:3b09:b0:29e:6dea:223a with SMTP id 586e51a60fabf-2bd50394b13mr6228162fac.14.1740245325836;
        Sat, 22 Feb 2025 09:28:45 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:996a:132b:43a2:f7b0])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b963a0ac4bsm7244238fac.47.2025.02.22.09.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 09:28:44 -0800 (PST)
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
Subject: [PATCH v6 1/5] arm64: dts: rockchip: Differences in Orange Pi 5 Max
Date: Sat, 22 Feb 2025 11:27:48 -0600
Message-ID: <20250222172752.6254-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250222172752.6254-1-honyuenkwun@gmail.com>
References: <20250222172752.6254-1-honyuenkwun@gmail.com>
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



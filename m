Return-Path: <devicetree+bounces-143373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41532A29820
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 18:55:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 866CA161EEF
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 17:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8C881FC7C1;
	Wed,  5 Feb 2025 17:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uIIcFEgF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C091FC7E2
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 17:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738778070; cv=none; b=mDg9/QDrNN9a68ZqhYBWaQjpCtjUwQwOwpesAzgzKFdbDT3f5YuPS1J5qexI37xTpZ3dKgorDmlG5VBNaQlytD7/lFse4ASZIHA+KWhY/pwOTsxLkec6OmMdQ9iY3pJbsZ1NyP50/ihQJRY4GmzdeVJLuckjUGHyMygWCdvyKk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738778070; c=relaxed/simple;
	bh=iBU9OUHxDFRwrkGtwor16WU4NZhH5SNhALBCHkrsTmA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=t64EdxfliAbI3ScPVTv9Y4ov662QF6Aq3qkdumVf/v7YNKPXdfCOqct1qiSjjjtUkfG00GwW2ypd8sSShv66+MF8Cov+n9vuThPWj3lA+ZSVMPAg72lHmutZTXTlGuzENvecgPslZ+zOkXmQqbVePx6xiQS6pQM4/l5ay8OHK4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uIIcFEgF; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ab7157cf352so238012466b.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 09:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738778067; x=1739382867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x0qvYmPCyPNFC5gLGw5pr5m26K+35wbL4YftBfSGxVs=;
        b=uIIcFEgFdnUkUnVH/GXRU7BL1sSHu1S8pSu4W414j6zqHqJR4XiHHlRrGYITZF6RZ4
         XFlXTcDggO1DPyVQn2Z/aZPecYlG6ZGdrrcC6a8fzgJYAeGn0qCNQAbRdwySVrx5tBfc
         5nSk3zAHt34cdrhoJBDDR028eO8eXPkQWB5n2nhPfD5r1s4zgezPpPBVMzWNjVgaH3qW
         CRFa4EFzyuDgEjnjfC3w++pn7WkK3ytQwmHVKAXrYifKaVWZP8NAYpLqU0uvGnOrSCN7
         RGFo9JTaRFciQxsik0yO85HFUjDZcK1W7WXnCHJQI1QKXii6PuNO+J9ghVVTIeQaAwXe
         hzNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738778067; x=1739382867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x0qvYmPCyPNFC5gLGw5pr5m26K+35wbL4YftBfSGxVs=;
        b=jeYkleiTbN/cQtgTAxwrrCW2+FNpreRv7yfCLN6b+JM3tOeSJvbZmOfdTL+00wd66z
         br3dWMe8/iEnCS0c/XDGB6Fkcz6KDb0xHS0VgDDAX8BVVQgW1cqFjIiKVYP2SfDhV3jY
         AilexHhoYGQ0u5NX5UFm46cljFpQRjqkplosVe96+Bxs4+WbGtu67Sqbg+aDKbLFPOUT
         DXtXC7BygWL/22ddQm4ZeYXLUmQbo8V/yvdHTznDx5R7B7w6S38GKL/dME3rtCb0pldL
         KagDw6tLtUJIBjE/WiwC0qv/1QMciyTZGLHHJf0gtQIzz37dvmqpRoAvhvDoPv2YbTHV
         676Q==
X-Forwarded-Encrypted: i=1; AJvYcCWFdo4nFyzSdGu3BWwiXOYSSE4NxRvhBk2fBN6yAwctAK75RyUrrarycJ+/QRe1sT0TZpeCVu3z8G7R@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2vWRn7kDfHAGNQy3uZZR67CKc05PSIqaH8dJkJ4qYhnSOkmFI
	5mSs9h37neGL8+6jVMuNTC5O6QQUQD5C2KeAG6EJH11vX+1NUBHU0d/n/mNcHRo=
X-Gm-Gg: ASbGncvcNTuuatvJcbjEljnn0PfMzlC1RUKt2eBctxML43UsotjcjwfzMn70aVW+Kfu
	1CT069QlBjclaQ/7MX5mzqvsezo1CScnEA5S03PX+eo2+k1nAAzKoDP5gt/RtLGCwXCu6M9gEtg
	bgst3UJW3ZSyAxcShEF3pZMpUz5wmevYxFxWGef4VXCuj11fvw0YGxiiPDouO9xJL0hughWZzcK
	TqcLAX7vHmwAItCfyrLbQ7pOaql51+LXa6hTI1zjFdTIAHyDdMCEy0BbijRbesAMhpLa05mLP3T
	Q3DEePfWEvKd/jkiAeBEkvZuUBZnNVVgEnHogGi1qPjvpoJxhWlnDJh7tw==
X-Google-Smtp-Source: AGHT+IF92wMPufEGt9cvnv832yheronJqrKc1D31ugycDeyrAicJl2GAOxWT42IXWDLHshxUJkJSnQ==
X-Received: by 2002:a17:907:7b9f:b0:ab6:ef92:c238 with SMTP id a640c23a62f3a-ab76e9876bdmr31149666b.20.1738778066758;
        Wed, 05 Feb 2025 09:54:26 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e4a5b5ebsm1131303866b.181.2025.02.05.09.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 09:54:26 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: =?UTF-8?q?Herv=C3=A9=20Codina?= <herve.codina@bootlin.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/3] ARM: dts: pxa: Use #pwm-cells = <3> for marvell,pxa-pwm devices
Date: Wed,  5 Feb 2025 18:54:02 +0100
Message-ID:  <9722b7efc8b9dfeac6ded6302e026f538cde9518.1738777221.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1738777221.git.u.kleine-koenig@baylibre.com>
References: <cover.1738777221.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=4037; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=iBU9OUHxDFRwrkGtwor16WU4NZhH5SNhALBCHkrsTmA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBno6W/v2o83YpyNGfd1Rl33qRbjwDiFw+kiB5NO 7QJ/ueiAxWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ6OlvwAKCRCPgPtYfRL+ TjimCACv1XnU/EyqtKVJ7VMA0V++XPrQAxgKrYl92evq7HhjlahPkqlzO6fTqUUSkmZOicDP2Et RrsaWMsd7hA1yIZ4GJotAhKIDXOnQ1Ujol08cJVsdgqQmLxWeWf7rqq4POxE7kjegWSbPk9EhNW ewx4DQPY9PYODSmPoRzpDODC7nC+v/hotdTSCdYG/i1P8F+sx7TB953LdLlHnTHuA1ge7R/WLhq u56rGSqjyR2N1aZ5OLDCpRtjO4EcBvqdLlU139QbhlFTU+qcg4YpaMOgX9RfvQUktJ3XIg8G4AS 59lL5JfYfzr6qGEPQUgpPBssvXuddxVMYc8bKSvOEcpWP3PE
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

For consistency with most other pwm bindings, also use 3 cells for
phandles to PWM devices.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 arch/arm/boot/dts/intel/pxa/pxa25x.dtsi                   | 4 ++--
 arch/arm/boot/dts/intel/pxa/pxa27x.dtsi                   | 8 ++++----
 .../arm/boot/dts/intel/pxa/pxa300-raumfeld-controller.dts | 2 +-
 arch/arm/boot/dts/intel/pxa/pxa3xx.dtsi                   | 8 ++++----
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/intel/pxa/pxa25x.dtsi b/arch/arm/boot/dts/intel/pxa/pxa25x.dtsi
index 5f8300e356ad..d25065caeebc 100644
--- a/arch/arm/boot/dts/intel/pxa/pxa25x.dtsi
+++ b/arch/arm/boot/dts/intel/pxa/pxa25x.dtsi
@@ -67,14 +67,14 @@ gpio: gpio@40e00000 {
 		pwm0: pwm@40b00000 {
 			compatible = "marvell,pxa250-pwm";
 			reg = <0x40b00000 0x10>;
-			#pwm-cells = <1>;
+			#pwm-cells = <3>;
 			clocks = <&clks CLK_PWM0>;
 		};
 
 		pwm1: pwm@40b00010 {
 			compatible = "marvell,pxa250-pwm";
 			reg = <0x40b00010 0x10>;
-			#pwm-cells = <1>;
+			#pwm-cells = <3>;
 			clocks = <&clks CLK_PWM1>;
 		};
 
diff --git a/arch/arm/boot/dts/intel/pxa/pxa27x.dtsi b/arch/arm/boot/dts/intel/pxa/pxa27x.dtsi
index a2cbfb3be609..ed07b65cc362 100644
--- a/arch/arm/boot/dts/intel/pxa/pxa27x.dtsi
+++ b/arch/arm/boot/dts/intel/pxa/pxa27x.dtsi
@@ -49,28 +49,28 @@ usb0: usb@4c000000 {
 		pwm0: pwm@40b00000 {
 			compatible = "marvell,pxa270-pwm", "marvell,pxa250-pwm";
 			reg = <0x40b00000 0x10>;
-			#pwm-cells = <1>;
+			#pwm-cells = <3>;
 			clocks = <&clks CLK_PWM0>;
 		};
 
 		pwm1: pwm@40b00010 {
 			compatible = "marvell,pxa270-pwm", "marvell,pxa250-pwm";
 			reg = <0x40b00010 0x10>;
-			#pwm-cells = <1>;
+			#pwm-cells = <3>;
 			clocks = <&clks CLK_PWM1>;
 		};
 
 		pwm2: pwm@40c00000 {
 			compatible = "marvell,pxa270-pwm", "marvell,pxa250-pwm";
 			reg = <0x40c00000 0x10>;
-			#pwm-cells = <1>;
+			#pwm-cells = <3>;
 			clocks = <&clks CLK_PWM0>;
 		};
 
 		pwm3: pwm@40c00010 {
 			compatible = "marvell,pxa270-pwm", "marvell,pxa250-pwm";
 			reg = <0x40c00010 0x10>;
-			#pwm-cells = <1>;
+			#pwm-cells = <3>;
 			clocks = <&clks CLK_PWM1>;
 		};
 
diff --git a/arch/arm/boot/dts/intel/pxa/pxa300-raumfeld-controller.dts b/arch/arm/boot/dts/intel/pxa/pxa300-raumfeld-controller.dts
index 12b15945ac6d..9094ec422577 100644
--- a/arch/arm/boot/dts/intel/pxa/pxa300-raumfeld-controller.dts
+++ b/arch/arm/boot/dts/intel/pxa/pxa300-raumfeld-controller.dts
@@ -56,7 +56,7 @@ backlight-controller-pwm {
 		compatible = "pwm-backlight";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm0_pins>;
-		pwms = <&pwm0 10000>;
+		pwms = <&pwm0 0 10000 0>;
 		power-supply = <&reg_vbatt>;
 		status = "disabled";
 
diff --git a/arch/arm/boot/dts/intel/pxa/pxa3xx.dtsi b/arch/arm/boot/dts/intel/pxa/pxa3xx.dtsi
index f9c216f91865..4e69b4da0ba6 100644
--- a/arch/arm/boot/dts/intel/pxa/pxa3xx.dtsi
+++ b/arch/arm/boot/dts/intel/pxa/pxa3xx.dtsi
@@ -224,7 +224,7 @@ usb0: usb@4c000000 {
 		pwm0: pwm@40b00000 {
 			compatible = "marvell,pxa270-pwm";
 			reg = <0x40b00000 0x10>;
-			#pwm-cells = <1>;
+			#pwm-cells = <3>;
 			clocks = <&clks CLK_PWM0>;
 			status = "disabled";
 		};
@@ -232,7 +232,7 @@ pwm0: pwm@40b00000 {
 		pwm1: pwm@40b00010 {
 			compatible = "marvell,pxa270-pwm";
 			reg = <0x40b00010 0x10>;
-			#pwm-cells = <1>;
+			#pwm-cells = <3>;
 			clocks = <&clks CLK_PWM1>;
 			status = "disabled";
 		};
@@ -240,7 +240,7 @@ pwm1: pwm@40b00010 {
 		pwm2: pwm@40c00000 {
 			compatible = "marvell,pxa270-pwm";
 			reg = <0x40c00000 0x10>;
-			#pwm-cells = <1>;
+			#pwm-cells = <3>;
 			clocks = <&clks CLK_PWM0>;
 			status = "disabled";
 		};
@@ -248,7 +248,7 @@ pwm2: pwm@40c00000 {
 		pwm3: pwm@40c00010 {
 			compatible = "marvell,pxa270-pwm";
 			reg = <0x40c00010 0x10>;
-			#pwm-cells = <1>;
+			#pwm-cells = <3>;
 			clocks = <&clks CLK_PWM1>;
 			status = "disabled";
 		};
-- 
2.47.1



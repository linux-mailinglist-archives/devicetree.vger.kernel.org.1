Return-Path: <devicetree+bounces-143590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 813BBA2A81C
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:06:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 908723A771F
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 12:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C194322C352;
	Thu,  6 Feb 2025 12:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZgzHGZQL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247D822CBFE
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 12:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738843614; cv=none; b=U2DVBf/2ajgPMTHqsMhnEBJVXIF7AetYZPzALujQiUt3tJU6ihssNUgIjn96IuKdtCNrWC4yLG4rYR1dDAF3rYPTAdqQmEnTFceVwSbgMz2r1AtG2HGW5sxJuvm3T+ScUYJkYC4xcIo+Mv4gOXaAsLjZlbvlmOXj2K9w1ReNCYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738843614; c=relaxed/simple;
	bh=5+DEXbonSTYjkcktKvLdRgdRfeSdfMjc1Rj9POliA3E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rPCc6lKu647Ezchnwuze4B7brRLMqLJ9hDIgmuyYUi4NuLB8Sa6ER0wwcSZm09chdAkyCqA+C/q4OJFOHMmAucWNAcLuKyG2se/a6iSRjVIipeTXd5oZKozPkChn7MaAGH0Qa6i8NwJPnf/7EnI/FyAEpZkSs+2evQ/UCH9jENc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZgzHGZQL; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5dc82e38c10so1850029a12.3
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 04:06:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738843609; x=1739448409; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=azgIPPvnb3xo8w6FQBxsN5Kr8m/w1ZbCcc3sgLdo0JI=;
        b=ZgzHGZQLhAg5huXHomwrCK93VbczPjDwLtsG4V/YMLLPnNjcbr+WaVWKiZJt3Ewm54
         xHdSjq0A9xCU6uVRzEW1e2vPpjpXhV/ozv2OWFZpQbJ9rrEyB+jWpEigbWED7FB2/00l
         0k684ScEzjdLf2ki1/vpvhbe/y68MIyhCjZWvmedzFsJcrvm4AtGK5m9sVVH+q+bgVg/
         aQtCS3lxLZDtB3QV66YaoOMNg7PW/yzsH0OdU0piZ5IqOy9Y8dWOikAbsPF5LfSBa2Oa
         Zfrju0JCmyrxHZ5i1vam9182FHpS+nNUzJJhDCtLTJ5QqwyZpd5ESPRCZuWi1z4n54hW
         cudg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738843609; x=1739448409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=azgIPPvnb3xo8w6FQBxsN5Kr8m/w1ZbCcc3sgLdo0JI=;
        b=VkkkzzPwoe2IjacuislNifnBdO6wjujxJ/sWRFPTn5rgyzz+aYFC5Xbavlfew2w9XY
         Fg0TJXzQwYWlTTiE473TYH6TtHPFR95m6A4W70WkJYrzGUPS+Uq+chMwOqHLFcBuio2g
         YXvC5g9ezmWyUs5QYrywndLC4Fm8G1b7Duk0yI0DbWxneb5eQEFdab5e0E9kXEoYv3bZ
         g9F9e67jGpFtWGlbhrNvQQofIUBPTFTcUDOTOx2Z6jIeJH6wCDIFV3gngpGmVcygjbL2
         qO0ZBxXC4zPcLf8WVk7JI+kwm5k7Fj5OChf8DmrZgsr1q03lEpun81Z5xWsyfGtRtM1C
         wUjA==
X-Forwarded-Encrypted: i=1; AJvYcCUG4vyRLX83UNtpaZs9Ya3GL+y2Y6kjtOTcC3LRF6OWff4RE6JYALI9eHc4fuReER9Z/rsnZsL2bzJZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyNrzRi4MLzGOqtlFlGwkHz5ff+lUERP86Jtbqt3o94L1aXzIxV
	LOkrC6heevtdTYe8ToMpIrJZwVXEVgUUer07ukURddO6QoaGo0TO1Pg27DmRcMI=
X-Gm-Gg: ASbGncuAsCMXgorCau0JTGtFJoWEvgxOcTd2mPjip+bluBYF29pWLFh+c7e5ZttBys7
	YWXzcNvC4TE9fXHf7pMXZ2aKMtf4MP3EBYEBcf7EfN6kO8Fmu1VG2smGLgf/hKRsJg7jS/jZ5en
	RT6UEPwGr/SPPMaham7+yur2XEI8AVBUCkFBfqvy45jzBE40voUQy2GbHagC4bSQacHgyJwosEQ
	0LgCv6Tf0BtHqCG41LTHqhYxup7rKjMYIlE4AFtHs+PIJUbuiWdkt6olV+kxKhkONOCTXRwge22
	uHMV6I+QnF6JN8Af1QVfGR/MMJNgV1hdfp9oBq5kx7TzWogdphnQaQqFKg==
X-Google-Smtp-Source: AGHT+IG5uqRw3jqoLLEGSCIgSLFJdBnS0MRDiPp24UX/D9Hd8p8T334IFdUKb4jPzFuoHC/yaN/s3Q==
X-Received: by 2002:a17:907:268a:b0:ab6:eec6:7cab with SMTP id a640c23a62f3a-ab75e2f1177mr683407366b.38.1738843609230;
        Thu, 06 Feb 2025 04:06:49 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7732e718asm89556366b.99.2025.02.06.04.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 04:06:48 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>,
	linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] ARM: dts: pxa: Use #pwm-cells = <3> for marvell,pxa-pwm devices
Date: Thu,  6 Feb 2025 13:06:27 +0100
Message-ID:  <f5ae474c74f43d0002d45f77b956f28d5b1f7ed1.1738842938.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1738842938.git.u.kleine-koenig@baylibre.com>
References: <cover.1738842938.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=4137; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=5+DEXbonSTYjkcktKvLdRgdRfeSdfMjc1Rj9POliA3E=; b=owGbwMvMwMXY3/A7olbonx/jabUkhvQlS08kl1+fkjvrR20le+KLGfPtNzVIvF8ubbQmX9Rg3 dS99mKvOhmNWRgYuRhkxRRZ7BvXZFpVyUV2rv13GWYQKxPIFAYuTgGYiLERB8PuL+kbPlhfvGFy i/Wx3hkrtivr1Br69n0J/R5/dE+63wWPkxINYWw8Mn0LMl6uyrbQkknJK/FOvCUiv17X+cLclL0 7lB6tuhezekLJaYfmR4ov128xeOtfyyas4WgXEsidJ59x0++nmOurMyv3pV9++MfKgcff5tJWto VSJ/qtelbpruIU5I28Vp/Q9u3/7JWPkkJy9ywNkzK667dZfjeXzcMz7dGaJfs0unOD2xR5MmWV3 r8RdFw9pfZp9Ho1s2+eft4v8kMsmxtLO6bG85a4h/X4Rl6se6IseODqyVixF5sDqnw1bVxZi8WP i88XXqTUVKIwq0DV5Yv+vCJ7efM32/NEru65mZ5RFqYHAA==
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

For consistency with most other pwm bindings, also use 3 cells for
phandles to PWM devices.

Tested-by: Duje Mihanović <duje.mihanovic@skole.hr>
Reviewed-by: Daniel Mack <daniel@zonque.org>
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



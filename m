Return-Path: <devicetree+bounces-167550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C02A8AC0B
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 01:25:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D947C1901510
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 23:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF182D8DC4;
	Tue, 15 Apr 2025 23:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="iEYWZcvu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828F82D8DBA
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 23:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744759533; cv=none; b=KOTAZ50kBF7QpwiK1oFJKDHWVhsPyfLJbk/c3g9WMgJ55DlH3i/WHy+0t9bYUoBqwnRrEgQZ6Dv+o1BdYgJJwMUEOurBAzNag9ppo47evYJahez7WUWEcJZ1onmEFPOiCH/gME766BG759IpcX9CMX28yWCY7RkELXjYz5G9/Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744759533; c=relaxed/simple;
	bh=c8DBvaJrvgzsKkIA8gytUTCThGm7eqgoKYGFWa7di9o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=J6RgiZzQT6hhSVMldw1FQd6+/OtFZMzoV1ZpCVbLsO8DMnkf9QV3xif7PhcakfXPjsxE9yEB52PQ9TZYGaJwF+PG/vXwJ7NPz0YEr5r2b7Up8XfVRBobglkWyowHZZz4k5CS8kxqqFSgUKbEzIYhbz4heDe9S6li0uSZ5195yn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=iEYWZcvu; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-73712952e1cso5907357b3a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 16:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1744759529; x=1745364329; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Typi1g6KX7Ehfn4YypTfJOkSrzPqdsOWJwM5fjFePI0=;
        b=iEYWZcvuHYCIyHTo9B/Mi9GegXyeH1OoMW/I8TRJNkF3DnVMzsY4643YVdNiXFezI3
         jE8529fR82laqtbOjam6tCUmrPe/De9CQby7n8ncLZGhtiZ5rmDHKk9m3CAtdsWAAmp2
         Cvem1Rw2rvfx0OyDOSEOXKgwIRf042+5tiKrVKvLGpUYDkDgRerXc8jRPaDPFggEewVA
         0Dk2WQ6/DibfncaT4ByixkrDtwbJYzACp/zleLXJ665KDJZqkrzMpNoW+0vUFSf1Ua2m
         w4wXahAfsivlM0945etEFlfquEYabEqoY6a1088PI1N1PG3Z44mG+TAwoL1fQwRpcEf0
         0wRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744759529; x=1745364329;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Typi1g6KX7Ehfn4YypTfJOkSrzPqdsOWJwM5fjFePI0=;
        b=rIM6d5EPxHIJ/FOj7p0TihLT3n2+bkR4KHV4zoN6g78qmmAVZ9VrBGErHF4oNMdIoA
         JoaksF+UJtsU9A3k46rsa318kWiFmMAThSQn9LK78WPYkUEMO7DcL6ViYhtJEo4rqAYS
         YTUv+sdcr/zfJMi1Nj2ndQNv7bnqSg6fcoXDstDtPN+2+Y+hyMJwmBif9lL2GJeup3+F
         CLwO8xFxOF0U4Ncz0Ni5WnKXeDJydUtdr5hYxxHko7QhVdloz2BUXxf1RKaOSX2z9S+6
         TASjZa2c65ivG0nLGUasWoD9XnA3u6dLWjs6Rcm5oOmZDnJQTChwl7lPgMyLa5Mg+3ko
         QYLA==
X-Forwarded-Encrypted: i=1; AJvYcCX1nVnjOhTHfZ8whel78W+u85Lk4xgBc/GOe1/L19EH5vJw8b1hA6isP5awmkouGGNroeEMrnS6BJIa@vger.kernel.org
X-Gm-Message-State: AOJu0YwGAIdMCyQmL/mXsq5Daf9Nvp6OPqYGGd86VRBQDY+lLciXerVL
	qqncQmg8t94AjGu+hhvb1Y2wRIZxrIU6GBTgKsqu0/fgCATysG444Pk3Tq+RNGU=
X-Gm-Gg: ASbGncsbqkCDV57SN9J1iUK1q2bWq4fI8IGcFSeCWEYOwBBEEs7pFmWxK1aS27UzdD0
	WfaYV0JoAJ2DmcDC6VL4scmqByWnc08lPfSpUuDD8vvvPOe229aXZycGtGD54LVaaJaOzQBlr5v
	oWPKDaMQfPe4moYeM5yJuaxH607GMJYTwQtzc858soTDNGb/okLqe0Zmav8tozls4nttg6NyG7K
	yCQ0r2mCOzEd0EYNNr3p6u1bVJrXaXomjtEaUL5V9vAvJoZd+CQ/0dW1lNFgLxhYKaecIigMtMr
	f++daYARlj7Jt2uxHmNkFY68Ft13VIjEU9zu6QsHU2yFYIuCD0Bigx01/6d4mGc7eI06kxKe5z0
	q8bueFBP4aerUfHW9TjurkcLHxZ0=
X-Google-Smtp-Source: AGHT+IEzphQP3s7FZ5e4GcCAa2R4BFsGamVOHIKYq0Z6d5ikKqoVlCyBOojccFabDl5OP2cE0NKWaA==
X-Received: by 2002:a05:6a00:a2a:b0:736:9f20:a175 with SMTP id d2e1a72fcca58-73c1f8d3744mr1737009b3a.2.1744759529366;
        Tue, 15 Apr 2025 16:25:29 -0700 (PDT)
Received: from wak-linux.svl.corp.google.com ([2a00:79e0:2e5b:9:ef0:9d76:c8a5:f522])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd21c5e98sm9443850b3a.57.2025.04.15.16.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 16:25:28 -0700 (PDT)
From: "William A. Kennington III" <william@wkennington.com>
To: Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	"William A. Kennington III" <william@wkennington.com>
Subject: [PATCH] arm64: dts: Fix nuvoton 8xx clock properties
Date: Tue, 15 Apr 2025 16:25:21 -0700
Message-ID: <20250415232521.2049906-1-william@wkennington.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The latest iteration of the clock driver got rid of the separate clock
compatible node, merging clock and reset devices.

Signed-off-by: William A. Kennington III <william@wkennington.com>
---
 .../boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi | 16 ++++++----------
 .../boot/dts/nuvoton/nuvoton-npcm845-evb.dts     |  8 ++++++++
 2 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
index ecd171b2feba..4da62308b274 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
@@ -47,17 +47,13 @@ ahb {
 		interrupt-parent = <&gic>;
 		ranges;
 
-		rstc: reset-controller@f0801000 {
+		clk: rstc: reset-controller@f0801000 {
 			compatible = "nuvoton,npcm845-reset";
 			reg = <0x0 0xf0801000 0x0 0x78>;
 			#reset-cells = <2>;
 			nuvoton,sysgcr = <&gcr>;
-		};
-
-		clk: clock-controller@f0801000 {
-			compatible = "nuvoton,npcm845-clk";
+			clocks = <&refclk>;
 			#clock-cells = <1>;
-			reg = <0x0 0xf0801000 0x0 0x1000>;
 		};
 
 		apb {
@@ -81,7 +77,7 @@ timer0: timer@8000 {
 				compatible = "nuvoton,npcm845-timer";
 				interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <0x8000 0x1C>;
-				clocks = <&clk NPCM8XX_CLK_REFCLK>;
+				clocks = <&refclk>;
 				clock-names = "refclk";
 			};
 
@@ -153,7 +149,7 @@ watchdog0: watchdog@801c {
 				interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <0x801c 0x4>;
 				status = "disabled";
-				clocks = <&clk NPCM8XX_CLK_REFCLK>;
+				clocks = <&refclk>;
 				syscon = <&gcr>;
 			};
 
@@ -162,7 +158,7 @@ watchdog1: watchdog@901c {
 				interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <0x901c 0x4>;
 				status = "disabled";
-				clocks = <&clk NPCM8XX_CLK_REFCLK>;
+				clocks = <&refclk>;
 				syscon = <&gcr>;
 			};
 
@@ -171,7 +167,7 @@ watchdog2: watchdog@a01c {
 				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 				reg = <0xa01c 0x4>;
 				status = "disabled";
-				clocks = <&clk NPCM8XX_CLK_REFCLK>;
+				clocks = <&refclk>;
 				syscon = <&gcr>;
 			};
 		};
diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
index eeceb5b292a8..a20f95c60a62 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
@@ -19,6 +19,14 @@ chosen {
 	memory@0 {
 		reg = <0x0 0x0 0x0 0x40000000>;
 	};
+
+	refclk: refclk-25mhz {
+		compatible = "fixed-clock";
+		clock-output-names = "ref";
+		clock-frequency = <25000000>;
+		#clock-cells = <0>;
+	};
+
 };
 
 &serial0 {
-- 
2.49.0.604.gff1f9ca942-goog



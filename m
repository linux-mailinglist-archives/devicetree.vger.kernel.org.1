Return-Path: <devicetree+bounces-90394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 611E79452EA
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 20:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8F461F2476F
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 18:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4168A14A602;
	Thu,  1 Aug 2024 18:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="qbrmKhMn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F4614C5A3
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 18:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722537512; cv=none; b=L5Pv1Nyi7f0DxtXsdIMGhO1tIadSMNl3QGqfTqVud5JDhPrUMKglSlIY1MYzAtIj6GcVrL7W0GX0YgmCLmt5/bB602Ye7Y87gA7HBpzigkeoIOd6Y2vvA+AHd8kNWgTAV/dKOtmH2APUn15Q3Iz1JkXdaGXR7SLz3OcKsJOEWaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722537512; c=relaxed/simple;
	bh=EYJYIiAEAfD7NH+H9HMoYZqrRMCnEO9dgrADRI9Gx0E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kxeZUyUcVHzYSnPqN+UYLWePOvU5ZfnDGDNaXvq8Sq2vnLHyDQc3LSM54+b0I3rRsa9SwX8TmyDuRn375AWf/LW4JmiCNv+nZ4CJ11N20IRBGWwju/+VZb0t8+uYPvRHN3PbJUbRAL+EgRiCEI2IuluLFobjqArpluCwd4sV4pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=qbrmKhMn; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-7afd1aeac83so1977275a12.0
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 11:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1722537509; x=1723142309; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V5ZHzEhK/iqIbovaWXtYghu86qtEZ1UEP6cVND/8xFY=;
        b=qbrmKhMnzIky2ze8p/kvf4PGE9tBu82IgyUQk5rUbUjeEK/yUi46oncC/68C5Z1fq8
         hR4HCCXKQqAv3Nvymygf4VqXkKu2YUeE6y4U14PFEggIt80ixs6HTYaJWLa1DxIeVnkA
         HfsBW5/iIArNFQQXFFeR2cghnr2D1B6t8ZBEvTUb02Fkcoxxp0NdQ+oJl9h1UUk1pm1q
         Gb7uJ0CdeqQSqn9rELdE6Srk1mcl4SJEoyFrxVGxSY12weHxeVP2X4rDnl3PrwWjHcbw
         Tb5h0QTlX59i0SX8svzYqxRn9A8TiLjkSTyz4H6RmXbNYGM+06Ap9MKEl6EI/MXFpSKv
         e4yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722537509; x=1723142309;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V5ZHzEhK/iqIbovaWXtYghu86qtEZ1UEP6cVND/8xFY=;
        b=D8uADSGFRCQUykba10PBRp1mvfI3jkf/ohEqKMIc8591gR3qoy2YF0CLHJGi5GW50q
         XvJvSVFt//PX9x6CW3Bv8KoHnWVsOHbhgIU1TuHlfEr1LsS6zIuUv34gTQViHGrBZ/p/
         V98Hrz0KZyHiAwC3OMnKRU75srglKQpoAQHJc8tBz6Mv7l/sMJ/GZlxPWCuELjvzu66k
         xcMKORtsRJ48JkXDrp1ng91z6MlvV+XqLEPRPAdpY8YL4Wsk8IYm0JCRf2C4iHVMty0J
         VELm1XcWPd6vdCCGgg58XU2ZtOfntNtkrs+y22gcq99lfi7bMF4bRGKek6GBO82gsJ1n
         Y5Ew==
X-Forwarded-Encrypted: i=1; AJvYcCW1gySZIxBXHdvSZyDOgbQCXEjp3efokPEaHnqGjPCYRIxJZzlUATqOUd+EKwoE1rZsBq+3pBJurI5V2NLcFuPog1A8YOt//2Ubwg==
X-Gm-Message-State: AOJu0Yy2KaxiMGnJhP6K1VnZbwoAAsRQYu7vBmYvdBCMNxB9ZIO7mdeV
	fXSnvRAs19tnKR49Rt4Wo/Dxk7YfpMnnydgJZggOT9wYxc1J8uzk2+PyNOoPb20=
X-Google-Smtp-Source: AGHT+IE7euEhKw9ZvLGZgoJ3nB4r1T+YCPL1oMKPqsmgOUjr5Pfy6QWgZSIFTVenufI1eR46X4W9Ag==
X-Received: by 2002:a17:90b:1a86:b0:2c2:d590:808e with SMTP id 98e67ed59e1d1-2cffa200df2mr1270706a91.13.1722537508634;
        Thu, 01 Aug 2024 11:38:28 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:dfa1:41a7:9478:9d47])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cffaf69d54sm279728a91.12.2024.08.01.11.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 11:38:27 -0700 (PDT)
From: Drew Fustini <drew@pdp7.com>
Date: Thu, 01 Aug 2024 11:38:10 -0700
Subject: [PATCH 6/6] riscv: dts: thead: change TH1520 SPI node to use clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240801-th1520-clk-dts-v1-6-71077a0614b8@pdp7.com>
References: <20240801-th1520-clk-dts-v1-0-71077a0614b8@pdp7.com>
In-Reply-To: <20240801-th1520-clk-dts-v1-0-71077a0614b8@pdp7.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Kanak Shilledar <kanakshilledar@gmail.com>, 
 Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Drew Fustini <drew@pdp7.com>, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=2303; i=drew@pdp7.com;
 h=from:subject:message-id; bh=GEkmEzaBBCWW5dvp0uJoNHGIioeJZ823d7ZJt1ChQBI=;
 b=owGbwMvMwCF2+43O4ZsaG3kYT6slMaStvibFWr3h3cwewfTJzWvni31U2PSlSjEs/s+V9QuVA
 u9svnPmW0cpC4MYB4OsmCLLpg95F5Z4hX5dMP/FNpg5rEwgQxi4OAVgItc6GRl2PzSIMtz8ppXt
 /dRsHlW5y+9/nrgXM/Gl8X2zvlIB09QnjAy3hfVYV025nBKU4268Y9LKjvjFFRc3OrW/kBd5fir
 tVjg3AA==
X-Developer-Key: i=drew@pdp7.com; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

From: Drew Fustini <dfustini@tenstorrent.com>

Change the clock property in the TH1520 SPI controller node to a clock
provided by AP_SYS clock controller.

Remove spi_clk fixed clock reference from BeagleV Ahead and LPI4a dts.

Link: https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts     | 4 ----
 arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi | 4 ----
 arch/riscv/boot/dts/thead/th1520.dtsi                  | 8 +-------
 3 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 425f07d73b32..497d961456f3 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -45,10 +45,6 @@ &osc_32k {
 	clock-frequency = <32768>;
 };
 
-&spi_clk {
-	clock-frequency = <396000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 077dbbe4abb6..78977bdbbe3d 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -25,10 +25,6 @@ &osc_32k {
 	clock-frequency = <32768>;
 };
 
-&spi_clk {
-	clock-frequency = <396000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 5f4f94ca9cc7..6992060e6a54 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -216,12 +216,6 @@ osc_32k: 32k-oscillator {
 		#clock-cells = <0>;
 	};
 
-	spi_clk: spi-clock {
-		compatible = "fixed-clock";
-		clock-output-names = "spi_clk";
-		#clock-cells = <0>;
-	};
-
 	soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&plic>;
@@ -256,7 +250,7 @@ spi0: spi@ffe700c000 {
 			compatible = "thead,th1520-spi", "snps,dw-apb-ssi";
 			reg = <0xff 0xe700c000 0x0 0x1000>;
 			interrupts = <54 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&spi_clk>;
+			clocks = <&clk CLK_SPI>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 			status = "disabled";

-- 
2.34.1



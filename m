Return-Path: <devicetree+bounces-90390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A639452E0
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 20:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BEEC5286098
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 18:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458E614A0A0;
	Thu,  1 Aug 2024 18:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="3Z2ZiNSD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3D21494B4
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 18:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722537505; cv=none; b=t5SdEjuPeWunRccIjoSAZmwRK0DdQ/C7VjhxQTtLI3+w/jhntmrpew2Pkm90GDfqivS5OIMu0nTOt5ckhU0cId49iVreK7PqOVai/cjctaGTge3bU33fLMfId/N3alzWrFjjewIwVR68Znqs4P8/VkYHFkp2CjXz+o2/LDrU0D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722537505; c=relaxed/simple;
	bh=zyPbPBIj2qEzcrhUciVyfETbDIvtyWnG+vkoKcAabbk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oFG42YR12a75G2cwofrgalO0Yc6EVVM/xGQQMkP0K36+JCZMucxDWaiWYFzH0dZeS9gpGrIOpby1RXmhre0QBiISVjK3kZ2JXfHYSujxlTizAu70VAXt6fB6X+N3Eb9Sju8EvzT27rMnS2XJe2JNVTLppEh4n/1NUAtEA80XrxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=3Z2ZiNSD; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7a92098ec97so4966533a12.2
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 11:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1722537503; x=1723142303; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DEw3dyBLm4whsP1APCKPqoAvXIJliR/Puks1ZjMePFE=;
        b=3Z2ZiNSDxkQLr/fiGknGS8dSVvC0aR4oM8yeIHkzAu3VkMWkjE9vRwG4OQlWObxrhQ
         6lQnGg6uOVi0IE53oRuGRNCYVxoUDg6oWKB3INU/5QRjindrVq00sxhqwC8g2wWSVCJg
         mXGO29z3p7MT7x2b+mwobHoKEVgDKHGwr5nPjMirPF5lHM9G9ldxPPaPFAKiCUcUSaPA
         ma6L/KEvd7WDhHZDksXhj5uRR1PuD4mEGoJem+aiDepx/GtXcP3gALqD5d5MgkJAZgCQ
         OhB18B7kZDF1aGHVF+rumZ95iz3Ip7IlXztEiXGEwXv5MjCNT+agW1180wy0m9iqbLbx
         mKYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722537503; x=1723142303;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DEw3dyBLm4whsP1APCKPqoAvXIJliR/Puks1ZjMePFE=;
        b=lHvyRj2CjFw9oOhK3DKP10nQPGUfazav3iY5zfzeiVB8gIAV7wTq4nU+t872EK+8SL
         Bs0OWTGfOuhMZS8uytisegC1JD2byjJNKz8QTDAvBDIzorhaCJ6jt1bnqu0L96r2o1AL
         74klpZRTt2c7htMz0CAFsVOATr18fdDKsC2A77trkpUA9p7PhCyXDHd0F5exbq6gb0Lo
         uxNJyncQUqvuZvSEZzx5nTiG3YS2SabZ463Utz3T5kciLJShGt7eYgWRJxQCSJIafqDF
         YUlE2sVgWJ1OXaLOYVnhyKxXKlaxv4394YgLARP9+2rNuPJqKoLJ3VMW4WFzi5R+VGxr
         j+eA==
X-Forwarded-Encrypted: i=1; AJvYcCU6mkMGvFhWi8bwTJgwTMASrdpO1XCLmrYTNAriyuhPedrSkNMKvpLbwNUdRLuzh3ke5sLxaTr9+AdSjCwlWHUpLR9houURGPoQXQ==
X-Gm-Message-State: AOJu0Yw4umFYa3nlRNMU8glSz1yO8bTEHhn0vvgas6hhapK01aaRTCL3
	kNigWGBl2t7E2l9eQTLa9v5huQ07I5Qj0Ek5j4T824+InCANi0ELUyDl1rTD5RA=
X-Google-Smtp-Source: AGHT+IHULYcfJhgkY9uqTOBDbGPkre57En9YBbkpCwWlqnDcSy0euccsS6e1fapTeChG+4tg1pGf4g==
X-Received: by 2002:a17:90a:644b:b0:2c9:6514:39ff with SMTP id 98e67ed59e1d1-2cff952c35bmr1415423a91.33.1722537502847;
        Thu, 01 Aug 2024 11:38:22 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:dfa1:41a7:9478:9d47])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cffaf69d54sm279728a91.12.2024.08.01.11.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 11:38:22 -0700 (PDT)
From: Drew Fustini <drew@pdp7.com>
Date: Thu, 01 Aug 2024 11:38:06 -0700
Subject: [PATCH 2/6] riscv: dts: thead: change TH1520 uart nodes to use
 clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240801-th1520-clk-dts-v1-2-71077a0614b8@pdp7.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4182; i=drew@pdp7.com;
 h=from:subject:message-id; bh=LEB/O6tBSHji0s/zln825HKghg4t/13zO0aXBDRHXqQ=;
 b=owGbwMvMwCF2+43O4ZsaG3kYT6slMaStviaZeERijtv6qz7z2/z/rPigN7lo4YKFez7k3JLUK
 ryo0rlEuaOUhUGMg0FWTJFl04e8C0u8Qr8umP9iG8wcViaQIQxcnAIwkeoARoaD2dO2L3a+auaj
 s4PrEOPPgImWnjZTtuk+FXy3Pj7+2TYpRoZV3Cncj1zzeR/3h2iprfFh4v01W6lRScSvr0cxpuI
 dBxcA
X-Developer-Key: i=drew@pdp7.com; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

From: Drew Fustini <dfustini@tenstorrent.com>

Change the clock property in TH1520 uart nodes to a clock provided by
AP_SUBSYS clock controller.

Link: https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts |  4 ----
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    |  4 ----
 arch/riscv/boot/dts/thead/th1520.dtsi              | 24 +++++++++++-----------
 3 files changed, 12 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index b4d2e1d69bdb..90585883b059 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -57,10 +57,6 @@ &spi_clk {
 	clock-frequency = <396000000>;
 };
 
-&uart_sclk {
-	clock-frequency = <100000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 6939bd36560c..1c5c7075ae17 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -37,10 +37,6 @@ &spi_clk {
 	clock-frequency = <396000000>;
 };
 
-&uart_sclk {
-	clock-frequency = <100000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 25ef5ee729e6..a543be8d6e37 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -228,12 +228,6 @@ spi_clk: spi-clock {
 		#clock-cells = <0>;
 	};
 
-	uart_sclk: uart-sclk-clock {
-		compatible = "fixed-clock";
-		clock-output-names = "uart_sclk";
-		#clock-cells = <0>;
-	};
-
 	sdhci_clk: sdhci-clock {
 		compatible = "fixed-clock";
 		clock-frequency = <198000000>;
@@ -285,7 +279,8 @@ uart0: serial@ffe7014000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xe7014000 0x0 0x100>;
 			interrupts = <36 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART0_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -322,7 +317,8 @@ uart1: serial@ffe7f00000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xe7f00000 0x0 0x100>;
 			interrupts = <37 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART1_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -332,7 +328,8 @@ uart3: serial@ffe7f04000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xe7f04000 0x0 0x100>;
 			interrupts = <39 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART3_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -414,7 +411,8 @@ uart2: serial@ffec010000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xec010000 0x0 0x4000>;
 			interrupts = <38 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART2_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -483,7 +481,8 @@ uart4: serial@fff7f08000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xf7f08000 0x0 0x4000>;
 			interrupts = <40 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART4_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -493,7 +492,8 @@ uart5: serial@fff7f0c000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xf7f0c000 0x0 0x4000>;
 			interrupts = <41 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART5_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";

-- 
2.34.1



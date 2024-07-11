Return-Path: <devicetree+bounces-85086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 857DB92ED3E
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 18:57:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8CD71C20D20
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 16:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2B416E860;
	Thu, 11 Jul 2024 16:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="XW6NlZXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2C816D9AF
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 16:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720716993; cv=none; b=W0QkpiX6p8juvOa5/y2xij5+eg17tZ3Q/FraYpnl3WpBqXAkYspK3cVIWB6qAjLkZ6Pa+gnEpkZfFUtXT5fFu8JgmuxG2UrXykbt1sRbg124PjCnoFXldgLjehdAgPNRtCx/MXsPoryM/OJ+wqOmRAxm1+J6xwdWWAQfsVTQ854=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720716993; c=relaxed/simple;
	bh=xJjYh93ZJoHUv/WIA9Svqg5tFxria/k9YnyGDGG2DQA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YGDcZDKV76a1Z040EloP8gM9UCErOkyUBUFxSdZpAMsfHBg8epEJjC8IAWmgC/ZCsg76JwmS39d4MXCc4wxeO5Q2eoYL9XlA3SOalccgySLjPm4BB4RV9/an2nKHLzzrOe2+j1k547rUHcS7m9BJjxQdIaGPglRuUIkpuweD+80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=XW6NlZXL; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7035c367c4cso645319a34.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 09:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1720716990; x=1721321790; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ruH/DofYGilJLJutg03AKQ4VFq4us3a7+DtTMhD3iuU=;
        b=XW6NlZXLQssLxT+cs2CdC/XCf6vgn4YqvqQqmU8HKwh+H3d7QFxWkpL7uCXnHfbMOW
         z7B1vR5u+vB/rTZqP1ScemCDrR9BVhsti8FJgFDGI6oftz22/LXIY2rFPv2Gzk3EGDFo
         1/0ZPYziRBbgW+4wx093/bmsAivU2+WCnyvPbUa0rHTYfh/76zpTGGI0Ij1z+1eGl2IK
         qQRXKaPsrHM9vFlzx1ONoiYEflwiyIqe8wJoUd9DzlaDJOChbsvuIPIqE1rNf1IFgeFs
         rJMuc3UYFO7xDU6UKNQ96n2ebtxsft+8NFSvTy0gXZvkG7HqBmuV+EVPw/usKQuSXAbb
         lUlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720716990; x=1721321790;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ruH/DofYGilJLJutg03AKQ4VFq4us3a7+DtTMhD3iuU=;
        b=AxO5OWx7E65lHLvDaLurR8XY8uzGKeCDW1I5c6+KX8M0nA54owZQo3MJxpPIlrJ6lq
         y/Usr/MwCH6eoOy6sXsPDxZ4CQfCnqLaPV3kHQ1y3bGDwNlQGlCQNQIRelADKmEsmPRE
         nvqOvdiyVLJbWI4SGgPSAh/yD0sGraFUl0/Ds1bKFiImTxCNhqYrzAvooKFxqFavduoi
         dVkU8FZPPAYpepbpGaaNoMD4vjMbTsM++Mt7sF4fgciC7FtvP2/Dm1bp5pMDNQFlLHor
         rf6xaWgs5YSEUkcVJEmdgiNSS9G8xr3pXJAfC4MG9DLBvDV+dmY/l1apCY4tk2GK03Ki
         q2LQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwFN8AHblX3FVs9Se5jlCaodL7rlQKJ2wJeInI4NJerl6sRtxIXq303Inb3UsfhTg5mI71hLn8zEbhQHuxC6o8YsJI/r/7Hh5mmQ==
X-Gm-Message-State: AOJu0Yz7OhSZXW2ijlxRUq1ezRsBNhzl7a4e1HQ7mEkGmE5GpOpDPLF/
	ULIhJCq7DbQF6Wuzd8aYsdCb8XGnLHX/JeS+RDuHo6sWpke/leTATqVFYPI4gr1RblDD8st2VRq
	3
X-Google-Smtp-Source: AGHT+IHoMUzquKnbfcRkWdDziuw20/JinIdYFvXU3N+Paif2hr1KelFCJVVI2IsdFLb2Re6eGOslMg==
X-Received: by 2002:a05:6870:7009:b0:255:2e14:3d9d with SMTP id 586e51a60fabf-25eae75ee3bmr7502793fac.5.1720716990273;
        Thu, 11 Jul 2024 09:56:30 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:5ee9:fea0:d9de:cee8])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-787089bc5f6sm1360038a12.92.2024.07.11.09.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 09:56:30 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Thu, 11 Jul 2024 09:56:22 -0700
Subject: [PATCH v3 4/7] riscv: dts: thead: change TH1520 uart nodes to use
 clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240711-th1520-clk-v3-4-6ff17bb318fb@tenstorrent.com>
References: <20240711-th1520-clk-v3-0-6ff17bb318fb@tenstorrent.com>
In-Reply-To: <20240711-th1520-clk-v3-0-6ff17bb318fb@tenstorrent.com>
To: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Yangtao Li <frank.li@vivo.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720716985; l=4190;
 i=dfustini@tenstorrent.com; s=20230430; h=from:subject:message-id;
 bh=xJjYh93ZJoHUv/WIA9Svqg5tFxria/k9YnyGDGG2DQA=;
 b=nyFV0Wu2uJFoC+agpP9/18eNNSyUfRdKDDjw2JpZxahuHrsrQHpiFKlqu7sAk8ktKhyV+SL31
 LzXurV9LWtECyLMExgBgAcJCRhCeFzHR3oEB+1ljjMvM7eh1LJWa4rX
X-Developer-Key: i=dfustini@tenstorrent.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

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
index d9b4de9e4757..164afd18b56c 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -52,10 +52,6 @@ &sdhci_clk {
 	clock-frequency = <198000000>;
 };
 
-&uart_sclk {
-	clock-frequency = <100000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 1365d3a512a3..1b7ede570994 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -33,10 +33,6 @@ &sdhci_clk {
 	clock-frequency = <198000000>;
 };
 
-&uart_sclk {
-	clock-frequency = <100000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 10a38ed55658..66df04ceb3e4 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -141,12 +141,6 @@ apb_clk: apb-clk-clock {
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
@@ -195,7 +189,8 @@ uart0: serial@ffe7014000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xe7014000 0x0 0x100>;
 			interrupts = <36 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART0_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -232,7 +227,8 @@ uart1: serial@ffe7f00000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xe7f00000 0x0 0x100>;
 			interrupts = <37 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART1_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -242,7 +238,8 @@ uart3: serial@ffe7f04000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xe7f04000 0x0 0x100>;
 			interrupts = <39 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART3_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -324,7 +321,8 @@ uart2: serial@ffec010000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xec010000 0x0 0x4000>;
 			interrupts = <38 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART2_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -386,7 +384,8 @@ uart4: serial@fff7f08000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xf7f08000 0x0 0x4000>;
 			interrupts = <40 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&uart_sclk>;
+			clocks = <&clk CLK_UART_SCLK>, <&clk CLK_UART4_PCLK>;
+			clock-names = "baudclk", "apb_pclk";
 			reg-shift = <2>;
 			reg-io-width = <4>;
 			status = "disabled";
@@ -396,7 +395,8 @@ uart5: serial@fff7f0c000 {
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



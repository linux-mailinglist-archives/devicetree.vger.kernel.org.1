Return-Path: <devicetree+bounces-90392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8016B9452E5
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 20:39:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0204C1F22E92
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 18:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54FF14B95F;
	Thu,  1 Aug 2024 18:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="bCzKHQjS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270EA14A4D2
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 18:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722537507; cv=none; b=dDYXHyelS92H8N/zz9e3sq+hTFA6o4oeiS2acMVb4NI8usydNLWJ4aqdT6rM5/XXxbxtw3Eyt9Ou65Hm6c2/xBOWUAn0aBwwQVM5835iFBXLmhh4uNP8S/mIfMjuXYknBqlOYscHb7pKvC5ftbgL2+DFKAutLbwdMJ1tk5yaw1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722537507; c=relaxed/simple;
	bh=OLnbkCH1XOAF2L9AkxB99n3lYte3iKF6LAjfYa15Wh0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Uh7cq2AzpJxI2NJnWmPc0IpWwaLdRF8vsScVrAtT9ver9e9PRPDYXKbDIp7MWld459MG7kTh8jmZwrpClqJ68xO8gWdr1gsMlvPnSNgTKbw6a4dM6NsijlqwLeKSG/YaKS5XpzZujRhlyLF0somgiKtbBO+zGZP95jU79vZ3wVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=bCzKHQjS; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2cb53da06a9so1827136a91.0
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 11:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1722537505; x=1723142305; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eKmhtaGRyEOGi2nd6GvoahBxNPaEwqWJrLn3nZw3XHE=;
        b=bCzKHQjS2ZINEZ4MC5XP7mHH9bL7Ey5Ua6kekG28uTTHD22BkHCgz0PAhpl2PFSmwb
         ajsl7Ws4/W33Zeia4hBMky0X36LgORji+7WeFZOhMgRRqPtT4eoEnMx7D3fHotWZ0eLx
         3kXqLLpgv6SeOOXnSAyxbwadJbTqGfWFj/9v2sEPnb3Z5YDtRIbOqtpjisv+oIGPjAlx
         hCJWzgKGOgLmy20LwsWrDS4xyJfcUn+0HWHL1IftoYM4TI5ZII20oAYkWSl9S+Evijxg
         4pvJcdmCb9RKU2yR3AKIEUwYvzNPEIi8WyaCKNiOoUWtOsA/7Mi66NTtIvMgoW99Ipn2
         zGkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722537505; x=1723142305;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eKmhtaGRyEOGi2nd6GvoahBxNPaEwqWJrLn3nZw3XHE=;
        b=RqcCkeLDIhEZuQJJyU0aKqTS6wYGN4sEegyEdnrtrhwtE1PjV5kIzJOqZgCFFDGmq5
         advv/PB6L4Kq0sE2n64jbbYtyScg6CzZDO1uQixQATwzCnk4TdJoEi0f29vEJHnllYdF
         /jZfvErmnwadmA2aB03kP1dBZ4X217b+6OaLjHUh5cbhTZjMjoueDQ6TccRJAfWOMzr4
         PlwqDcOKYR+0o9bgIZuW3sBizuXM0+ZS2a2lEFWEpa1a5PxIY7EiSoVMVmdBpN1vnPwW
         341qSrjxcwB7dKhuoSy/7kWye1GpSz88IvQ6gPHbp34NQs8Zm5AfnBk3gPJe5qPgcFcl
         elpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCQZdHKCgPM0dc52W7KXMK2UBtgXkggE70vsTK+FsNjYmUe/ACkRCgWbU+1iT0nHrP/Secyw2/teoEVqeoPyQ2rVjqX6JQA+HD+Q==
X-Gm-Message-State: AOJu0YxA014ReImGtEswYXqj+6iPK+fQU/hMubvxK5urMDhLou7NbVUw
	XuoO3Ry5vW6A60rU4kteDkZPwTsitcHmqgCP5R+LdSFnzgXD/fCsK18wP20Jcas=
X-Google-Smtp-Source: AGHT+IGBuAA4SywlPhra6w7AJzP3mKVHnrcaX+bRBBExitUVszi/sGsxxxRHqCZ4zJ+GBBej8SAVAw==
X-Received: by 2002:a17:90b:4b03:b0:2cb:5dbb:d394 with SMTP id 98e67ed59e1d1-2cff0904558mr3485163a91.4.1722537505482;
        Thu, 01 Aug 2024 11:38:25 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:dfa1:41a7:9478:9d47])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cffaf69d54sm279728a91.12.2024.08.01.11.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 11:38:25 -0700 (PDT)
From: Drew Fustini <drew@pdp7.com>
Date: Thu, 01 Aug 2024 11:38:08 -0700
Subject: [PATCH 4/6] riscv: dts: thead: update TH1520 dma and timer nodes
 to use clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240801-th1520-clk-dts-v1-4-71077a0614b8@pdp7.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4983; i=drew@pdp7.com;
 h=from:subject:message-id; bh=39TQlbKslvMloaaNbMx3AO4nAgflfRVN9+VBBv24ZBA=;
 b=owGbwMvMwCF2+43O4ZsaG3kYT6slMaStvia16RHD6S/rDnRVlqTz7fDvXp9k9J1hy4n7t2vuK
 QQlB4XbdpSyMIhxMMiKKbJs+pB3YYlX6NcF819sg5nDygQyhIGLUwAm8o2R4Z9Cq69huxxjfUzY
 1fWfhHK+RT5MWRQ3qeiBUeAmTVa5XUqMDP/3ssi+7hHInB+81v7t0jifv99+f2PNV/o368VBjWr
 jczwA
X-Developer-Key: i=drew@pdp7.com; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

From: Drew Fustini <dfustini@tenstorrent.com>

Change the dma-controller and timer nodes to use the APB clock provided
by the AP_SUBSYS clock controller.

Remove apb_clk reference from BeagleV Ahead and LPI4a dts.

Link: https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts |  4 ----
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    |  4 ----
 arch/riscv/boot/dts/thead/th1520.dtsi              | 24 ++++++++--------------
 3 files changed, 9 insertions(+), 23 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 5169a718f79c..425f07d73b32 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -45,10 +45,6 @@ &osc_32k {
 	clock-frequency = <32768>;
 };
 
-&apb_clk {
-	clock-frequency = <62500000>;
-};
-
 &spi_clk {
 	clock-frequency = <396000000>;
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index be982a3ac18c..077dbbe4abb6 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -25,10 +25,6 @@ &osc_32k {
 	clock-frequency = <32768>;
 };
 
-&apb_clk {
-	clock-frequency = <62500000>;
-};
-
 &spi_clk {
 	clock-frequency = <396000000>;
 };
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index f3b2f8236096..6ea5cabbcf60 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -216,12 +216,6 @@ osc_32k: 32k-oscillator {
 		#clock-cells = <0>;
 	};
 
-	apb_clk: apb-clk-clock {
-		compatible = "fixed-clock";
-		clock-output-names = "apb_clk";
-		#clock-cells = <0>;
-	};
-
 	spi_clk: spi-clock {
 		compatible = "fixed-clock";
 		clock-output-names = "spi_clk";
@@ -422,7 +416,7 @@ dmac0: dma-controller@ffefc00000 {
 			compatible = "snps,axi-dma-1.01a";
 			reg = <0xff 0xefc00000 0x0 0x1000>;
 			interrupts = <27 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&apb_clk>, <&apb_clk>;
+			clocks = <&clk CLK_PERI_APB_PCLK>, <&clk CLK_PERI_APB_PCLK>;
 			clock-names = "core-clk", "cfgr-clk";
 			#dma-cells = <1>;
 			dma-channels = <4>;
@@ -437,7 +431,7 @@ dmac0: dma-controller@ffefc00000 {
 		timer0: timer@ffefc32000 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xefc32000 0x0 0x14>;
-			clocks = <&apb_clk>;
+			clocks = <&clk CLK_PERI_APB_PCLK>;
 			clock-names = "timer";
 			interrupts = <16 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
@@ -446,7 +440,7 @@ timer0: timer@ffefc32000 {
 		timer1: timer@ffefc32014 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xefc32014 0x0 0x14>;
-			clocks = <&apb_clk>;
+			clocks = <&clk CLK_PERI_APB_PCLK>;
 			clock-names = "timer";
 			interrupts = <17 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
@@ -455,7 +449,7 @@ timer1: timer@ffefc32014 {
 		timer2: timer@ffefc32028 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xefc32028 0x0 0x14>;
-			clocks = <&apb_clk>;
+			clocks = <&clk CLK_PERI_APB_PCLK>;
 			clock-names = "timer";
 			interrupts = <18 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
@@ -464,7 +458,7 @@ timer2: timer@ffefc32028 {
 		timer3: timer@ffefc3203c {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xefc3203c 0x0 0x14>;
-			clocks = <&apb_clk>;
+			clocks = <&clk CLK_PERI_APB_PCLK>;
 			clock-names = "timer";
 			interrupts = <19 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
@@ -495,7 +489,7 @@ uart5: serial@fff7f0c000 {
 		timer4: timer@ffffc33000 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xffc33000 0x0 0x14>;
-			clocks = <&apb_clk>;
+			clocks = <&clk CLK_PERI_APB_PCLK>;
 			clock-names = "timer";
 			interrupts = <20 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
@@ -504,7 +498,7 @@ timer4: timer@ffffc33000 {
 		timer5: timer@ffffc33014 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xffc33014 0x0 0x14>;
-			clocks = <&apb_clk>;
+			clocks = <&clk CLK_PERI_APB_PCLK>;
 			clock-names = "timer";
 			interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
@@ -513,7 +507,7 @@ timer5: timer@ffffc33014 {
 		timer6: timer@ffffc33028 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xffc33028 0x0 0x14>;
-			clocks = <&apb_clk>;
+			clocks = <&clk CLK_PERI_APB_PCLK>;
 			clock-names = "timer";
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
@@ -522,7 +516,7 @@ timer6: timer@ffffc33028 {
 		timer7: timer@ffffc3303c {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xffc3303c 0x0 0x14>;
-			clocks = <&apb_clk>;
+			clocks = <&clk CLK_PERI_APB_PCLK>;
 			clock-names = "timer";
 			interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";

-- 
2.34.1



Return-Path: <devicetree+bounces-90391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A959452E3
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 20:39:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79CF6288DA2
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 18:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD6E114B082;
	Thu,  1 Aug 2024 18:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="dNsRj5dD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDA7149C68
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 18:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722537506; cv=none; b=WBTXAQDP6HoKAGnu+Qf00uEGcaDeOXKDwkig0NvMk/h/jZQtBSTEAqG/5pV+XNuGD7EcYiyDY/QT93HJe/6posiHkwGNP9gmEoFVCrbDSURJ5JAQEy28+0GpHd79u32pp5YNFlpLuUwEVAXvSTiTFr4bft4rweabDBXPABcUfuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722537506; c=relaxed/simple;
	bh=nV+jsTobX5gHajEV6iQOf7TxEhIDApgjwpeG631nsBs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qr3bkuYgXuQe6A2GuGflT5O+jiLV8B/QmzAP38BLI4qrqhww/QytXffMhZBy+gBWmvHDzI5guZqi9ZOJFC7TcU91cGzm12DM1YIz4+VPxcv100GlVyyTGqk/VnN1soN5ew15LnNli09YRFSv8reMZBty5LZJcubHYpRzN0bieBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=dNsRj5dD; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-7a264a24ea7so4821997a12.3
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 11:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1722537504; x=1723142304; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7k5Y14QoKTIGZv5ED7TKJ9QkQzVPlN/pOz7jQ450cGw=;
        b=dNsRj5dDwVmxBY2STj+ImwA1rlL6a+4ulrfV+2axwW0bxhqW6IwqxgcU1ydLhabqt2
         d2Y8QmvUtCHmZ+0/x3WSZ50tFIlrKiDcwJRxRb72kWKauwYLTsqc2Xg1I0RGKJITxYP5
         wXUViVqs1Q0mKZMag3sI6GBNePbXUgDtmPSYcZXzKmcycBbBEfyyJnNRs2zvf9S+0+qX
         oCYJZ+Ae0YHHE3OFLQ3GWwk7bphdEZ04M5YRjTQ1Yj+xWKm5VnRRtsdpuDbxTN3sGFxm
         +G98Y0c9e3Ye8jjfzb3N5FwXdlPhZAWS5ge5P1AIr6ZLACXnNyIzOcIeKyX2IzC9DfHw
         dPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722537504; x=1723142304;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7k5Y14QoKTIGZv5ED7TKJ9QkQzVPlN/pOz7jQ450cGw=;
        b=Jryz5Nu2cNCdStydOJRhzn7qJ6SqCTVxpBeaXXM051iSC+HwLfyQhc2S8YDDwY9eRq
         IQBHaBUk4UUiL2BpM4Sr14pZ73hPR1Q+JqkoGL2Gkdpko4w/oLukUhaoDTZfGlAc9GCa
         yVD4xbvxCxXJ7qO78tkwlf3ABxwT/8CUatltvh/ZbPpIYvQx2PyDa1znh+hM7Tms/725
         n0ZPnbsEKSTk/NO090J6/P50sJUWybKiYNBnBAQaNEAKVUNEt+YPe485VjSWxZwvWwxi
         kfpWj7nZDYkwFUJiNjiDXqUEFTx42VrwH+ZfCjM4hEQ+zYmtJxrGCMhGruS/q7OrOndU
         vEIA==
X-Forwarded-Encrypted: i=1; AJvYcCVKt5UWyrvEB79D/9GKytAmfh/XRgK7vLRhUbY4aCY68AlN2e5ML2IvtzwEa8r5nPEb2Cb6MzbPP/tvsUwA+N5ejDnqjtCrKXyHzA==
X-Gm-Message-State: AOJu0Yz4+S7LH36PWcH6lgmtbksP6JGCmNOO8JiCCXsFtUa5UINot4WC
	pTONjHnY4TvAy20tHAt3YbeTU66ARPRAoiPqjczurSDxJKMKx3026JyzAsqQzsA=
X-Google-Smtp-Source: AGHT+IEbwmXj3GsHyNOyvCxKppeV4Fa7p04dhZcVzCj1i5nOMGRw1GuT2KI27d6JjaaQ6Sfph5milQ==
X-Received: by 2002:a17:90a:ba82:b0:2c9:74cc:1c1b with SMTP id 98e67ed59e1d1-2cff93c6029mr1520455a91.7.1722537504332;
        Thu, 01 Aug 2024 11:38:24 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:dfa1:41a7:9478:9d47])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cffaf69d54sm279728a91.12.2024.08.01.11.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 11:38:23 -0700 (PDT)
From: Drew Fustini <drew@pdp7.com>
Date: Thu, 01 Aug 2024 11:38:07 -0700
Subject: [PATCH 3/6] riscv: dts: thead: change TH1520 mmc nodes to use
 clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240801-th1520-clk-dts-v1-3-71077a0614b8@pdp7.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2960; i=drew@pdp7.com;
 h=from:subject:message-id; bh=YuaP04LUjcDqw71tzI0qnQ5/4oo5IjakGbRJi9B2Yv4=;
 b=owGbwMvMwCF2+43O4ZsaG3kYT6slMaStviZ1I9lFu9CO7WBeRnGBVKrm0Y9916xmHWGReh7Id
 6nPZP73jlIWBjEOBlkxRZZNH/IuLPEK/bpg/ottMHNYmUCGMHBxCsBN/sPwz0xuy+PMhQ1l6W71
 jO9XvvXYtOXHY+0HO3QlfZcHnOiPvsLIcLiy+63V0+SL+zbsVv56y8lpzozTpXksd34mfg348iI
 6gBkA
X-Developer-Key: i=drew@pdp7.com; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

From: Drew Fustini <dfustini@tenstorrent.com>

Change the clock property in the TH1520 mmc controller nodes to a clock
provided by AP_SYS clock controller.

Remove sdhci fixed clock reference from BeagleV Ahead and LPI4a dts.

Link: https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts     |  4 ----
 arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi |  4 ----
 arch/riscv/boot/dts/thead/th1520.dtsi                  | 13 +++----------
 3 files changed, 3 insertions(+), 18 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 90585883b059..5169a718f79c 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -49,10 +49,6 @@ &apb_clk {
 	clock-frequency = <62500000>;
 };
 
-&sdhci_clk {
-	clock-frequency = <198000000>;
-};
-
 &spi_clk {
 	clock-frequency = <396000000>;
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 1c5c7075ae17..be982a3ac18c 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -29,10 +29,6 @@ &apb_clk {
 	clock-frequency = <62500000>;
 };
 
-&sdhci_clk {
-	clock-frequency = <198000000>;
-};
-
 &spi_clk {
 	clock-frequency = <396000000>;
 };
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index a543be8d6e37..f3b2f8236096 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -228,13 +228,6 @@ spi_clk: spi-clock {
 		#clock-cells = <0>;
 	};
 
-	sdhci_clk: sdhci-clock {
-		compatible = "fixed-clock";
-		clock-frequency = <198000000>;
-		clock-output-names = "sdhci_clk";
-		#clock-cells = <0>;
-	};
-
 	soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&plic>;
@@ -290,7 +283,7 @@ emmc: mmc@ffe7080000 {
 			compatible = "thead,th1520-dwcmshc";
 			reg = <0xff 0xe7080000 0x0 0x10000>;
 			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
+			clocks = <&clk CLK_EMMC_SDIO>;
 			clock-names = "core";
 			status = "disabled";
 		};
@@ -299,7 +292,7 @@ sdio0: mmc@ffe7090000 {
 			compatible = "thead,th1520-dwcmshc";
 			reg = <0xff 0xe7090000 0x0 0x10000>;
 			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
+			clocks = <&clk CLK_EMMC_SDIO>;
 			clock-names = "core";
 			status = "disabled";
 		};
@@ -308,7 +301,7 @@ sdio1: mmc@ffe70a0000 {
 			compatible = "thead,th1520-dwcmshc";
 			reg = <0xff 0xe70a0000 0x0 0x10000>;
 			interrupts = <71 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
+			clocks = <&clk CLK_EMMC_SDIO>;
 			clock-names = "core";
 			status = "disabled";
 		};

-- 
2.34.1



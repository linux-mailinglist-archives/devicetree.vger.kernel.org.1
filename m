Return-Path: <devicetree+bounces-79093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A3791405D
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 04:16:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9A4E1C21A9D
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 02:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA8BFBEF;
	Mon, 24 Jun 2024 02:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="Ab1iwlA4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871868C11
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 02:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719195351; cv=none; b=LjamSJPf3lfz7b3fjkU1QxxyVB6YfOGUbF9xrSWjo00hVZDGrvKyo70gs9ABO7ju7xfs5pIBQYrlhhfrIlsi3oJ8JGM1d+kQd/rQP4BCODIWEnirUtIEiOhVeP1+Wh0QwuVfatkZeTYwEvODdGdeV1K3uJ1DtbEWY9ECb1jg/QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719195351; c=relaxed/simple;
	bh=fVxaLUMTb3CyDlrBVjs+Sch5+L04pOv+EAfH3Xd/w5E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BZ2cFct0JZ1jhG135QtPRlNYxx4KHG8KeSI+4OqX2WDzqShI5Oyxf5EdaWAxwKLU5goT/iDV5YZZgFyrB9MQYsLR7qDFUiqKMPWKLbklu5cVKtuMerd/RkylUO9jVMt9S7qIMJzSntC083j6gs4g0bbnJ55/SyDULZxEl8F+xXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=Ab1iwlA4; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-7182a634815so1364302a12.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 19:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1719195349; x=1719800149; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sjiqrN6ZK51SnDznCbj3+gzdRKmK7FOnr/vCNYUG2QY=;
        b=Ab1iwlA45aHvSiJKWVXEbOWW1Jr7n06x/JzweuAu8JHUOx2WSiq0h5Nn3BV5up9Q1W
         V/t6Fzo9g7Cxq5/JoK+0UVS60gZPX5RmTWDfgqYvTdlMZEZhzPiwHIcaI82BD3f+lDlH
         1HvOODNoa5UdhPUvV9/hNezxxucuEn3ukxvtuoVRrYJlOfEnH713NKelnRX77CzAmYz/
         xKBvANbNzFUjTrU4S9V6PEWtu9UsmOwTSinggPO06qc+i65yspAsVgdwF0zZvuh9fpEB
         2cAaK8WFZWOevIgM6+fBekXdDFuT0qV8nLrDP1pO+mbhyAWgXDBLTuwOcS9k0jiDnual
         Z9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719195349; x=1719800149;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sjiqrN6ZK51SnDznCbj3+gzdRKmK7FOnr/vCNYUG2QY=;
        b=rg1VCz+lQ/K0g3vlKIUVWBgcYKdxC/1KGLT4rGfaLHPxQ+k33IakBZOfL1tXMrzFtp
         JwYx8fp2PHWYSeey7pnBP7JLNuv2aC88NypJInbiL4cfHWN3OyYmR35zsqs+D8c+50bX
         gAW1eYFP/49zxgOvfZKAfYok8V3ZuqYd1JKFr7CJubA0UiNWWsnflaS47jKyGQpg+ovg
         OxQ5hQP88x3FDe3N62Pp9OaEDMDAyqtiEI0Km5s1zEsQBZF0aTcdHwi8BJ8PwrYR86FR
         Ce/FgeFW+ttch8vhSKuha9byVGDGq1zs1vFStd7SecdHSLFTVe1MwEPnxvVQ0rCWrY12
         mx4Q==
X-Forwarded-Encrypted: i=1; AJvYcCX41OWrPpDxUQqPfyBV8BrZwlkQzHacYuKE+4JdfH5xghYPusQR/Tf8i/odmYflIgQKnDpe0DqTTEYs6p38IHuXm1lJC+ARUqpz7A==
X-Gm-Message-State: AOJu0YzIjEt6h9gM6ZoEXToPJMG6xjWg35IQWFZ4spTo8984q05CDzcx
	1PimguX0zUsIwlykAewkVnscTg58Tb63jbt42cnvKcF9OaEXuzK5lVMoTSZcB+Y=
X-Google-Smtp-Source: AGHT+IEpOJg5cTyl1rKSokOjaYsq1oFSF+Vg++cvFpeQHqC15A8f7WRXLOQ2rcZgaL+QgOhTSIDd1A==
X-Received: by 2002:a05:6a20:b918:b0:1b1:f0d4:71b6 with SMTP id adf61e73a8af0-1bcf7ff9c95mr2331801637.54.1719195348931;
        Sun, 23 Jun 2024 19:15:48 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:1584:936e:5eb0:fab])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-706511b137csm5071770b3a.86.2024.06.23.19.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 19:15:48 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Sun, 23 Jun 2024 19:12:35 -0700
Subject: [PATCH v2 5/7] riscv: dts: thead: change TH1520 mmc nodes to use
 clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240623-th1520-clk-v2-5-ad8d6432d9fb@tenstorrent.com>
References: <20240623-th1520-clk-v2-0-ad8d6432d9fb@tenstorrent.com>
In-Reply-To: <20240623-th1520-clk-v2-0-ad8d6432d9fb@tenstorrent.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719195343; l=2852;
 i=dfustini@tenstorrent.com; s=20230430; h=from:subject:message-id;
 bh=fVxaLUMTb3CyDlrBVjs+Sch5+L04pOv+EAfH3Xd/w5E=;
 b=HNA4TrACYlPMj2b3NCZ/cUVczsm8my7IqBecoB3JoarAlOInJZM8as4J/k9ayqg7ee3656Zyx
 vC3CHuzDSZVAdmafpeWS9vx0NjCbXL48XSXYgClr3N6mcirKtZ/noTJ
X-Developer-Key: i=dfustini@tenstorrent.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Change the clock property in the TH1520 mmc controller nodes to a clock
provided by AP_SYS clock controller.

Remove sdhci fixed clock reference from BeagleV Ahead and LPI4a dts.

Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts     |  4 ----
 arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi |  4 ----
 arch/riscv/boot/dts/thead/th1520.dtsi                  | 13 +++----------
 3 files changed, 3 insertions(+), 18 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 164afd18b56c..55f1ed0cb433 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -48,10 +48,6 @@ &apb_clk {
 	clock-frequency = <62500000>;
 };
 
-&sdhci_clk {
-	clock-frequency = <198000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 1b7ede570994..762eceb415f8 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -29,10 +29,6 @@ &apb_clk {
 	clock-frequency = <62500000>;
 };
 
-&sdhci_clk {
-	clock-frequency = <198000000>;
-};
-
 &dmac0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 66df04ceb3e4..ce3a0847aa9c 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -141,13 +141,6 @@ apb_clk: apb-clk-clock {
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
@@ -200,7 +193,7 @@ emmc: mmc@ffe7080000 {
 			compatible = "thead,th1520-dwcmshc";
 			reg = <0xff 0xe7080000 0x0 0x10000>;
 			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
+			clocks = <&clk CLK_EMMC_SDIO>;
 			clock-names = "core";
 			status = "disabled";
 		};
@@ -209,7 +202,7 @@ sdio0: mmc@ffe7090000 {
 			compatible = "thead,th1520-dwcmshc";
 			reg = <0xff 0xe7090000 0x0 0x10000>;
 			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
+			clocks = <&clk CLK_EMMC_SDIO>;
 			clock-names = "core";
 			status = "disabled";
 		};
@@ -218,7 +211,7 @@ sdio1: mmc@ffe70a0000 {
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



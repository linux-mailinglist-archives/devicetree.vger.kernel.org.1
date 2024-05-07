Return-Path: <devicetree+bounces-65312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E728BDA65
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 06:58:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A472F1F25561
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 04:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6388A7316D;
	Tue,  7 May 2024 04:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="baibC2nB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573156A8DE
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 04:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715057859; cv=none; b=UTMCD8tBV6CQ3iyx/b/uo5YRykMC7b4m7zj+GF4kk9lbY7LRV07b18W1CXFrosiTA1Qq91KUzC33FtvUfKKECY+dUFLeRrnpJpCiyrrM7Drww2/HvAPtN3SflkHpLzC4yOekhQ58K6owhqpiyR3Kt8BtR7ZoRdpl5ezUU32yhbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715057859; c=relaxed/simple;
	bh=OUFR3qpXcXj7TePvrKOEf7IaTgZBtQzS5Gcb0JSxYYc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JhDpQwMIvNKFB4d+4FQb+bPtmdXATJZ8U7m5YRxma4H3cOxz8Dv3vMkO91Rrg9m51uz6wDUPIwz4Mj1rVMux+sRXwPEahq9QH4hq7f7WTW/kUzGY/2UPHjPu49MvMgB4ZlensA0tHmkG6I9rFtiNTAKioWEUn/3UEGFGY7kqoUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=baibC2nB; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5ac8c73cf88so1773254eaf.2
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 21:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1715057856; x=1715662656; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ja0fFObIKrPPvbAU5aagsD2alb53+cRkDTlbcB+NuL8=;
        b=baibC2nBlF1ga6nvLwEJTJHjMXkSog88arQJkUsK4p82Ew/2XeRIWBBjP8QE4i5aMm
         Je3HTsGaegI2c75nrbiRlvECeFUywaQ3RmtUbpBMs0UZ5gJIFQBN5CzbY+meMLvIWq8W
         mmc5fhSMRFImTd09RwD4FzdcYkKarrUfwUtMC0+ztlQSClehgPMI8EAFTUFqHVe+lfN4
         EM7CXY4K56fKPzBZl7bcZOjnfnTIoM0JZkVst0+KE+v87TXV2V3YoFqIhrhCC+BFrfsy
         qxFJ/fClbiwxY1iWWrhPZeKYZKM6H86ml79gadFzhP/A6eeDQ7VyXgv5Rf/ij4/BDOrr
         o6Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715057856; x=1715662656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ja0fFObIKrPPvbAU5aagsD2alb53+cRkDTlbcB+NuL8=;
        b=Q7OG4NsBQpc1SWknaCFi5FTwRg19OzcDVutahAp88B8+6Fh+5rQV6zeDQnW/wlLuJF
         ClfnY0rM7F++jHwtvjTDEk/+zgsVO3aVAnXwsjJubhckCNs7g7q2IUt34VFJl0ZcKc9y
         p+EhaqbV4WjD8tDOHIP0gRaHmlcqhzvk15Z6+sf3K1liv/njO7uFGDjTneE94bHWWvLS
         IHrFkJ97dSSsnrn5vOSdPOn4KwC6Zq63e/GVaFMfuOOjw/4WD52fxCXndwmKRL0QQoTj
         U0e5XkfmA0nhvSuP5UOYQNkqy33M1pua0uV7xZlZwnnH/ykvuR1FEqEnbkPFChw5+4Y6
         F/ww==
X-Forwarded-Encrypted: i=1; AJvYcCWYLu28WuMzqnV0gI5qtY2ynkYwdrJpOJnafdinTlMQ1r2ZEy5iAqdjjfOs2Wl1VQcvxhf/v4sd2SOl4e6dc5xkYQgOoldP+f+0tw==
X-Gm-Message-State: AOJu0Yw9RR3iXUETiBvRUWcbeA9K8JGosonPmfS5L3d2XHZw+AaHHfDa
	VbOY4wH5LkD5zTDaFPTiNBDC8CopxeK17dVdn2IGLoPRKLe8BIXGmGiuy/u/bIA=
X-Google-Smtp-Source: AGHT+IGms+tcwn3hJYeU5F0/M05vXw2h9WN1d1+wEKWQtzbHSyyHCzfL5c+o38RpzC+GO+Rn405Gyg==
X-Received: by 2002:a05:6359:f8a:b0:18a:8e58:b992 with SMTP id hx10-20020a0563590f8a00b0018a8e58b992mr20617603rwb.28.1715057856455;
        Mon, 06 May 2024 21:57:36 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:6870:7119:e255:c3a0])
        by smtp.gmail.com with ESMTPSA id o14-20020a637e4e000000b005f80aced5f3sm8987249pgn.0.2024.05.06.21.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 21:57:36 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 06 May 2024 21:55:19 -0700
Subject: [PATCH RFC v3 6/7] riscv: dts: thead: change TH1520 mmc nodes to
 use clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240506-th1520-clk-v3-6-085a18a23a7f@tenstorrent.com>
References: <20240506-th1520-clk-v3-0-085a18a23a7f@tenstorrent.com>
In-Reply-To: <20240506-th1520-clk-v3-0-085a18a23a7f@tenstorrent.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715057849; l=2852;
 i=dfustini@tenstorrent.com; s=20230430; h=from:subject:message-id;
 bh=OUFR3qpXcXj7TePvrKOEf7IaTgZBtQzS5Gcb0JSxYYc=;
 b=iNarSOopWZV22F1WTSuygcpwGBUXFmpXfraZzMxIY0BKPrRyPthQNT34GelMdfKFz4c4M4PLj
 e+PrCy1ghpfDUt8tgw2ezv2sWsYMcU8xsnYX8yVasA66jKVcOZZeh0f
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
index 963c786f3c53..cf2141c3976f 100644
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
@@ -201,7 +194,7 @@ emmc: mmc@ffe7080000 {
 			compatible = "thead,th1520-dwcmshc";
 			reg = <0xff 0xe7080000 0x0 0x10000>;
 			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
+			clocks = <&clk CLK_EMMC_SDIO>;
 			clock-names = "core";
 			status = "disabled";
 		};
@@ -210,7 +203,7 @@ sdio0: mmc@ffe7090000 {
 			compatible = "thead,th1520-dwcmshc";
 			reg = <0xff 0xe7090000 0x0 0x10000>;
 			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
+			clocks = <&clk CLK_EMMC_SDIO>;
 			clock-names = "core";
 			status = "disabled";
 		};
@@ -219,7 +212,7 @@ sdio1: mmc@ffe70a0000 {
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



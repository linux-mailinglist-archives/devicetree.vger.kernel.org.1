Return-Path: <devicetree+bounces-65307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E628BDA56
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 06:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4966E286BF6
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 04:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F126BFBA;
	Tue,  7 May 2024 04:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="fVijD/Xg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21106BB37
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 04:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715057854; cv=none; b=GQVxdt1p+OhYqSMVP09UsYfnBnZav8+WccBRnCHIVTfP9y3E5FIBbIeCTlXrvxXj+IUUyhWLL6QjDEmcc0jr3Z0tj8ucf2IaLRvG1blzwupuDiBM0DD4JyJDnvwASC+UwpaQUXaE4mW62OxjiMMW8dhJdf3SXD0bAQW0qZspVnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715057854; c=relaxed/simple;
	bh=Yba66V7fg6k67xvwARdOY8T2HOGTwD7Vg2Zq+zVyGpk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IqVu9WMWJMqS4isPDT85sGRsRPMxvjg8BugpPBhwxLllNgTZYNhkrEVEvrCd0mlz/vghFOON/Y1BVLqC/lXk6CBl+mOpznIMCU+QrF3ckv8sbi0BIS77pTA7/4gjIwMHLoL+fulR6PV6XtSo9iaIn7JyAoZ+YaQ0bUdKIKs/7aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=fVijD/Xg; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6f460e05101so1626348b3a.1
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 21:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1715057851; x=1715662651; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DvImobpR9QD2Br3BfnFIc4ZTdsXi4UyVtbpSlCU10uI=;
        b=fVijD/XgKQhdnXvcb25bJuB6s4WNJTIXIjxPaVgVwk6CjsNXVBJyZJrmcC+y++n2te
         SrUAzYQM8SSvV9sTK9yj2Yyg892FGVBjv2mQIkuka3ZB8rnqZVtUBQc4VhxW5iNQS93W
         9H3//mwoEm4UybphlGM4+DTjQz0631Bz5Y5XB3Cr6TusnvayC/xKm1D6HpbNsGew5gVO
         Hd+sbDBWqA+5RgBMgt+U1WHZk1gGbkVzpnYk/EBI12TMfl19LYCuRkScklL/5FSP+oOr
         Gj0SW0h6U1ioMKvCX2QkRdEtj3kz9zCcEmdHbUha6bX3RI+H6U95YoWSaBojFF9rsxJM
         KZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715057851; x=1715662651;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DvImobpR9QD2Br3BfnFIc4ZTdsXi4UyVtbpSlCU10uI=;
        b=KTBeoh7OgcH9+lgVovhns5LK1O2at9e+zfmF2/ZchDg9fd6BpZ8aqYdJ7rEp6W2avu
         mlzxEWzLRJySUFPUjMwauSUxEsbkyMFjykLjAPssU0vXoOHWzO2+bbzednbhfTtrsZDz
         Px0jjwGaLWASqOZ1hM3C1FZFLo+YJizMAHDYvbdHHreE8TXVLqlbGN8FLm+NyhbSsLq6
         +WRh3Nq79VbHPA3ZHV8gYj19R4JDb6ugyMVTi5mlYKyZOV5bM99RnHo+cfokEdVONKUh
         +vPFOSznoh8tk+K2tN13bNSE242LktG8/5iG4mkqq58reIjYIHhEIDVpGAe6Z36Cioy6
         +SdA==
X-Forwarded-Encrypted: i=1; AJvYcCVVmBRt7dQOcaHy5uX9d6m+jqGH7GcfKDAqwEPk7Npu1I0Uhh+VYAtxOmCv89fAV6fdqC89Nr8nHPowAuSUCG+YwnxofPxzQ6vPsw==
X-Gm-Message-State: AOJu0Ywr3KkqPg1c1HZPKLIbVLhdC0YVefAt5/Udknz7pG2oUZRdfJb/
	7XMzwJi0Ats/Ni1lKVUloaO8SBkvRckwoGoXh6mLefRJwKfvmVDFkC3Z4obToFc=
X-Google-Smtp-Source: AGHT+IEsztZhA15eZ+a3JYYUcAVtuUaDjpScLG/VWRPRMBDOCAO3wkLLYVuT6QgjYV9F5R9xkVQbng==
X-Received: by 2002:aa7:8742:0:b0:6ed:41f4:1886 with SMTP id g2-20020aa78742000000b006ed41f41886mr2203053pfo.8.1715057851282;
        Mon, 06 May 2024 21:57:31 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:6870:7119:e255:c3a0])
        by smtp.gmail.com with ESMTPSA id o14-20020a637e4e000000b005f80aced5f3sm8987249pgn.0.2024.05.06.21.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 21:57:31 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 06 May 2024 21:55:14 -0700
Subject: [PATCH RFC v3 1/7] riscv: dts: thead: Fix node ordering in TH1520
 device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240506-th1520-clk-v3-1-085a18a23a7f@tenstorrent.com>
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
 Drew Fustini <dfustini@tenstorrent.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715057849; l=2484;
 i=dfustini@tenstorrent.com; s=20230430; h=from:subject:message-id;
 bh=0Ot4hVSus7f5v4Ml6Hb9TXPwAtMpDZsRAGOrrpUZWI8=;
 b=HLvXY5FVkY8PqB/hsbRI2GENm5Nc6Jmo+rVl3j00x+TMr9OtGpxR5SNDbrBI7Vz1CFWK3Zua9
 D/x6qhAhIwhBnZTDAHOfJBMN261PJt7KOch5ZDKmpAs5nZxVwLc2E9W
X-Developer-Key: i=dfustini@tenstorrent.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

From: Thomas Bonnefille <thomas.bonnefille@bootlin.com>

According to the device tree coding style, nodes shall be ordered by
unit address in ascending order.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 54 +++++++++++++++++------------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 8b915e206f3a..d2fa25839012 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -193,6 +193,33 @@ uart0: serial@ffe7014000 {
 			status = "disabled";
 		};
 
+		emmc: mmc@ffe7080000 {
+			compatible = "thead,th1520-dwcmshc";
+			reg = <0xff 0xe7080000 0x0 0x10000>;
+			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sdhci_clk>;
+			clock-names = "core";
+			status = "disabled";
+		};
+
+		sdio0: mmc@ffe7090000 {
+			compatible = "thead,th1520-dwcmshc";
+			reg = <0xff 0xe7090000 0x0 0x10000>;
+			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sdhci_clk>;
+			clock-names = "core";
+			status = "disabled";
+		};
+
+		sdio1: mmc@ffe70a0000 {
+			compatible = "thead,th1520-dwcmshc";
+			reg = <0xff 0xe70a0000 0x0 0x10000>;
+			interrupts = <71 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sdhci_clk>;
+			clock-names = "core";
+			status = "disabled";
+		};
+
 		uart1: serial@ffe7f00000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0xff 0xe7f00000 0x0 0x100>;
@@ -311,33 +338,6 @@ dmac0: dma-controller@ffefc00000 {
 			status = "disabled";
 		};
 
-		emmc: mmc@ffe7080000 {
-			compatible = "thead,th1520-dwcmshc";
-			reg = <0xff 0xe7080000 0x0 0x10000>;
-			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
-			clock-names = "core";
-			status = "disabled";
-		};
-
-		sdio0: mmc@ffe7090000 {
-			compatible = "thead,th1520-dwcmshc";
-			reg = <0xff 0xe7090000 0x0 0x10000>;
-			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
-			clock-names = "core";
-			status = "disabled";
-		};
-
-		sdio1: mmc@ffe70a0000 {
-			compatible = "thead,th1520-dwcmshc";
-			reg = <0xff 0xe70a0000 0x0 0x10000>;
-			interrupts = <71 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&sdhci_clk>;
-			clock-names = "core";
-			status = "disabled";
-		};
-
 		timer0: timer@ffefc32000 {
 			compatible = "snps,dw-apb-timer";
 			reg = <0xff 0xefc32000 0x0 0x14>;

-- 
2.34.1



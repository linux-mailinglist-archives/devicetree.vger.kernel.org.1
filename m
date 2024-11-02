Return-Path: <devicetree+bounces-118291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C80469B9B7E
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 01:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA36A1C21269
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 00:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2CD61662F4;
	Sat,  2 Nov 2024 00:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="SY6ztOBW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1FA156228
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 00:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730506143; cv=none; b=KxSzd6Ac6XQtJ/bli3FURLBP7GEdVMSk9l9YvaKRd/+w16DYjuvnhxz36NMOSMDF2oM+HA3aHzftCKN144dhy9Ro5W9cntzCaCOH814B6pFVjm5ykR8K7WPOvmgbDwmoiRc12fLgMVZORNfrsrO1/LieOfN40vCUSG69DKN1sp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730506143; c=relaxed/simple;
	bh=5bKzEp2E+apaTWEuLlcZsnWspoDb+MAs6T0sPiKfRr0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kk7ojkmcyFo5AK8ZRUEvPPkvxH9yF0AzJFH1IPCXED/udWgdhdewO2/g2LGEiBHrg7EDtgb83cGzq4TwYxDiCbR89nVxyjCmEKkF+9p6Uc3vYuYeOj7LTT4kq1SOGUV8feHzLIzMmPMBbp3KmuKz1ZhE8hU67apTxjYLekxoHtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=SY6ztOBW; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2e2eba31d3aso1867970a91.2
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 17:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1730506141; x=1731110941; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z+rAnka3y7HDTfLG1azR9CpKSqpVN1TkP7KNPAjIJyU=;
        b=SY6ztOBWRReFT9XsGxvvetOPY/gmuKuYiDDJ0IU8zs5oUuaLRnrsRpdH26CpFd2M/m
         e/7xJpabONin6t02qx+a4UVDSRmZS787e3qLGsd+ydAk4XGpvOjN4BSqxM0n22ISPKna
         S0WDmXOinsyEgSe4hflq7nLl011ZgFQ63hAFyyHzVhQL1OO+Yf5C3J3US+mMXFTQctMj
         oN7dM/tQSc6FPXN+EhGJ2kJ+rRRKr1Cl6QDvkkAWdgFHyx7b1Pf8QqXFQ8LH+6hKxlgt
         Nx6ejDumvyco6SBg4WfCeR+HWkZKGGMvXR9b1FNNewybuUN0ySJwCOBmvKjRQpAMY/4T
         PGsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730506141; x=1731110941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z+rAnka3y7HDTfLG1azR9CpKSqpVN1TkP7KNPAjIJyU=;
        b=Ro35l601+kRpEqv3Qm+XeJBrgCKJQxh5vw063WnRiQim0htCO7/v6jqONGKkcq7hRB
         z3YwegYYkSW3ZExIETAhZrUXjzwAzZkJhj2ncIN9SlPRU4ES5qUwu4qZKRLWbVWS4bqB
         Fefey+1gv9+xssr4/VSLS7UDa/unvVfPhsaK/JjfzkD0V54K75AjiWQrjtagB9vsGNIl
         wQbb7TC1PVMAv12SblvvxSiz8wdGVL71DyslMQ9h5FtwpyzGeg4IQXquBr9rE9xVLWgW
         9xgBKb/XfMl9X9ScFh8P6KmjgBfPBZEQWw7kfg94UAoqTqRrOfEz632VbAXcsjlxpdcM
         bdwg==
X-Gm-Message-State: AOJu0YxiXP74CAuSzUyF2Y7ZGfZqWWJjxlHMdAV5wtp3SiKDHozSTEHw
	lceo9t8/nAFU5xB7/vHEVB07vrAhJhyhw0ewvAgSSRckC4i1marfyfwQrR4KDm0=
X-Google-Smtp-Source: AGHT+IE9dycbI2epbg/rXlLb7+LyF9i1Z79AYkysLeojOoNqjBBp2pOKME/1fRPoHW8Jt+G33gBPpg==
X-Received: by 2002:a17:90b:4d01:b0:2e2:c98e:c33f with SMTP id 98e67ed59e1d1-2e8f1058039mr30664103a91.1.1730506141388;
        Fri, 01 Nov 2024 17:09:01 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e92fc00856sm5505749a91.54.2024.11.01.17.09.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 17:09:00 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH 11/11] riscv: dts: starfive: jh7100: Use physical memory ranges for DMA
Date: Fri,  1 Nov 2024 17:08:05 -0700
Message-ID: <20241102000843.1301099-12-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20241102000843.1301099-1-samuel.holland@sifive.com>
References: <20241102000843.1301099-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

JH7100 provides a physical memory region which is a noncached alias of
normal cacheable DRAM. Now that Linux can apply PMAs by selecting
between aliases of a physical memory region, any page of DRAM can be
marked as noncached for use with DMA, and the preallocated DMA pool is
no longer needed. This allows portable kernels to boot on JH7100 boards.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 arch/riscv/Kconfig.errata                     | 19 ------------
 .../boot/dts/starfive/jh7100-common.dtsi      | 30 ++++---------------
 2 files changed, 6 insertions(+), 43 deletions(-)

diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
index 2806ed7916c7..fc2c7fb2caff 100644
--- a/arch/riscv/Kconfig.errata
+++ b/arch/riscv/Kconfig.errata
@@ -53,25 +53,6 @@ config ERRATA_SIFIVE_CIP_1200
 
 	  If you don't know what to do here, say "Y".
 
-config ERRATA_STARFIVE_JH7100
-	bool "StarFive JH7100 support"
-	depends on ARCH_STARFIVE
-	depends on !DMA_DIRECT_REMAP
-	depends on NONPORTABLE
-	select DMA_GLOBAL_POOL
-	select RISCV_DMA_NONCOHERENT
-	select RISCV_NONSTANDARD_CACHE_OPS
-	select SIFIVE_CCACHE
-	default n
-	help
-	  The StarFive JH7100 was a test chip for the JH7110 and has
-	  caches that are non-coherent with respect to peripheral DMAs.
-	  It was designed before the Zicbom extension so needs non-standard
-	  cache operations through the SiFive cache controller.
-
-	  Say "Y" if you want to support the BeagleV Starlight and/or
-	  StarFive VisionFive V1 boards.
-
 config ERRATA_THEAD
 	bool "T-HEAD errata"
 	depends on RISCV_ALTERNATIVE
diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
index ae1a6aeb0aea..34885fe40e2d 100644
--- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
@@ -9,8 +9,14 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/pinctrl-starfive-jh7100.h>
+#include <dt-bindings/riscv/physical-memory.h>
 
 / {
+	riscv,physical-memory-regions =
+		<0x00 0x00000000 0x40 0x00000000 (PMA_RW | PMA_IO) 0x0>,
+		<0x00 0x80000000 0x08 0x00000000 (PMA_RWXA | PMA_NONCOHERENT_MEMORY) 0x0>,
+		<0x10 0x00000000 0x08 0x00000000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY | PMR_ALIAS(1)) 0x0>;
+
 	aliases {
 		mmc0 = &sdio0;
 		mmc1 = &sdio1;
@@ -42,30 +48,6 @@ led-ack {
 		};
 	};
 
-	reserved-memory {
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		dma-reserved@fa000000 {
-			reg = <0x0 0xfa000000 0x0 0x1000000>;
-			no-map;
-		};
-
-		linux,dma@107a000000 {
-			compatible = "shared-dma-pool";
-			reg = <0x10 0x7a000000 0x0 0x1000000>;
-			no-map;
-			linux,dma-default;
-		};
-	};
-
-	soc {
-		dma-ranges = <0x00 0x80000000 0x00 0x80000000 0x00 0x7a000000>,
-			     <0x00 0xfa000000 0x10 0x7a000000 0x00 0x01000000>,
-			     <0x00 0xfb000000 0x00 0xfb000000 0x07 0x85000000>;
-	};
-
 	wifi_pwrseq: wifi-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&gpio 37 GPIO_ACTIVE_LOW>;
-- 
2.45.1



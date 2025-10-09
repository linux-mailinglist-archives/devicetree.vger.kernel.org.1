Return-Path: <devicetree+bounces-224712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AE1BC7283
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 04:00:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BEBF834E443
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 02:00:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B1F2116F6;
	Thu,  9 Oct 2025 01:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="mosMstHQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19451F3FEC
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975152; cv=none; b=qmliGA9L2F9N+hMp9/PMPZDMUVx2i9gl7ZdqnTD3XwXgEwwAqVBvnHqfsGSmPlOwYoDeeYyZD8GZzujMmjNn4D0wy5henqok7rF3zMU27qPfvRC6BPHwR9Z23/ymG53i+DI4cw1+xOZyHejlRrEOOtehqvNA1RwZ6HvyJ6Fc+FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975152; c=relaxed/simple;
	bh=x1sTV0AT4E4iSlIDE/ZiI0pNoMfZnFcc6z+Ujtu3aW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NcMcUxeKslVhqaOqvhFhp6+wkXZhdMecTvJJTe6OeZJ+qv61zlwHBbZSmiP8nFlAnhulyptw8qM5AyZX/AspR40nN4oIJFEVM2z+tKzr+zwG2UN155bTDWjrJSsAGyOFDKLFKvd23TSvRI/k5ox2An+QG902KuHQ2JAnMaQtq60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=mosMstHQ; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-26e68904f0eso4471405ad.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975142; x=1760579942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n103/Zzy6dOfBxJ4uy1kIK0G1FNuk9TvEmc6PK6Kghg=;
        b=mosMstHQ1iTBb41jMlorrmN2wp3knjLxsKyysgCBLx3gc6xbkh0UyfLkqZ7nF9cH83
         qUK9mBMcm4Oe+2BQSdAYzKk6gN4fLekfORxMxXAdHTEVZINBx7+eEXiu+vhSAcBDGbMn
         PmakDkUr1dHZo+2BSJ0HiR5WQ/A7rRyxT6sJ1ztXqNThfReE8rl2nQaRFgMz6/l9H85l
         LNICufoWbtN1aSdxSi5qF1Zo9mihCk8VEk1albrqkzmPJ6C9kt0KUc6Tnw/cvCIEyPVc
         KFFXPf5g429OBbICCYuzvf0MaXB1VwpVj81cPe4/7z4VM6ReUfJhPBBarr7u/Op6rr1U
         4WKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975142; x=1760579942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n103/Zzy6dOfBxJ4uy1kIK0G1FNuk9TvEmc6PK6Kghg=;
        b=aKcIosf4vX6A5p1LO5+73dmEPf1vbIk8jY4fut1D3bmcLBlbLFuZF9LI5pwUokTeVS
         cFGYrE9g/0jvUJuPpojQN403LzF1RHuFHTtKzJGdrnAdtsGwU5wqpZ5gNt8vDmZaEpd4
         cfbK8WSR85fCfB/cEIRpzptmaWNsdZM/5/sC6Mda9wxss3kGuOg/KcZ0PGym92g9LIpS
         UAMSJIFO6XpeiXaQpam5fnFwFdJCINFFURv+XCD7yRYLW83+6xj1GBqcYPUEk09z+Y1+
         rN8hk9y0nZrmYafB1D0/myp4K4I3OrNNMjtG4Ty1/Uryb7ZDlRBpZyLvXaW+5faFDPFr
         0uZw==
X-Gm-Message-State: AOJu0YwZWDzuQiDN5BDGuS7LT+H/zLhjTM7WZptGd+XQR6mg7HeupnOt
	goGptcMa+0Dqe8PqzUdTKDsU7JgINcizGNh+AtXVueO8iAQLpWUKUVEc/QBIFzwIDOI=
X-Gm-Gg: ASbGncuOfHe3QPcWwr8XfgDZSn3V+89+7aTsSW+o31VGIiaT3by7p3UXvtRO45dgLUM
	ewPXtFFmPjk3ik12Q70q8LHIqzaF+tq7gjsY7hLCEdk/PyXunouwB5r8EI7JNy8WR02hEC/btYn
	cSHFicfV9PDLowKyCEMYVBkMAJ/1GwduB5goN8yqRtznHrI8tVqsEOla4lX4LjNeZeSjaA7k7jK
	UkTKTCVGeQw5p/6bAxotDn803XJVrnL3QlBBEmO7w7f7k7kTq3rmCA4cMeSEc1WpbDYncALvhhc
	JPsRwkGUzoqE6be6u66uatVyoHbZ4nok1kI25VD0Ktnh25FBRrXbqw4JOIisxxMPGO64gAb27Fq
	P6Bb/QNw1VM4YrkzfEn7zTWccKYtSLpGoAFtORx7SIfODuDNG7rLkDPqGx0BhIfn6oMbj
X-Google-Smtp-Source: AGHT+IFWJLoMlJoGXelrIQt9ocniJALkCftXGohMVp8CEHqCZlMQayonVPQ6X5ZOtEekzhDbe0VYyw==
X-Received: by 2002:a17:903:1a03:b0:269:8059:83ab with SMTP id d9443c01a7336-290272e1ccamr67703105ad.51.1759975141970;
        Wed, 08 Oct 2025 18:59:01 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:59:01 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	Conor Dooley <conor@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2 17/18] riscv: dts: starfive: jh7100: Use physical memory ranges for DMA
Date: Wed,  8 Oct 2025 18:57:53 -0700
Message-ID: <20251009015839.3460231-18-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251009015839.3460231-1-samuel.holland@sifive.com>
References: <20251009015839.3460231-1-samuel.holland@sifive.com>
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

Changes in v2:
 - Move the JH7100 DT changes from jh7100-common.dtsi to jh7100.dtsi
 - Keep RISCV_DMA_NONCOHERENT and RISCV_NONSTANDARD_CACHE_OPS selected

 arch/riscv/Kconfig.errata                     | 19 ---------------
 arch/riscv/Kconfig.socs                       |  2 ++
 .../boot/dts/starfive/jh7100-common.dtsi      | 24 -------------------
 arch/riscv/boot/dts/starfive/jh7100.dtsi      |  4 ++++
 4 files changed, 6 insertions(+), 43 deletions(-)

diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
index e318119d570de..62700631a5c5d 100644
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
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 848e7149e4435..a8950206fb750 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -50,6 +50,8 @@ config SOC_STARFIVE
 	bool "StarFive SoCs"
 	select PINCTRL
 	select RESET_CONTROLLER
+	select RISCV_DMA_NONCOHERENT
+	select RISCV_NONSTANDARD_CACHE_OPS
 	select ARM_AMBA
 	help
 	  This enables support for StarFive SoC platform hardware.
diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
index ae1a6aeb0aeaa..47d0cf55bfc02 100644
--- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
@@ -42,30 +42,6 @@ led-ack {
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
diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index 7de0732b8eabe..34ff65d65ac7e 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -7,11 +7,15 @@
 /dts-v1/;
 #include <dt-bindings/clock/starfive-jh7100.h>
 #include <dt-bindings/reset/starfive-jh7100.h>
+#include <dt-bindings/riscv/physical-memory.h>
 
 / {
 	compatible = "starfive,jh7100";
 	#address-cells = <2>;
 	#size-cells = <2>;
+	riscv,physical-memory-regions =
+		<0x00 0x80000000 0x08 0x00000000 (PMA_RWXA | PMA_NONCOHERENT_MEMORY) 0x0>,
+		<0x10 0x00000000 0x08 0x00000000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY | PMR_ALIAS(1)) 0x0>;
 
 	cpus: cpus {
 		#address-cells = <1>;
-- 
2.47.2



Return-Path: <devicetree+bounces-133286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F0B9FA301
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 01:08:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04F4C188AEC5
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 00:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F0ED376;
	Sun, 22 Dec 2024 00:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKQzd9jh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F277F9;
	Sun, 22 Dec 2024 00:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734826132; cv=none; b=k/9G5gX5UB+DY2n3zICIHACm4kZXHjyPOTagG0U9InxGGg1nEozL9A2qo2qKErk5Xb80Av8fiv7pPMLVhn6Wlt89UpIwYWeJJfGb446tskT5rMXH5cXydFZSpL/2mT0UH2sLYGp2ECQmMH602sCLlKM/hEnxQ1WBf2v7Fe8B1D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734826132; c=relaxed/simple;
	bh=RwpQxzUx7RABG1xbrUAZH59uwhOac87f2TorUPeKLEg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qks8NNAVol1yFWPTvO/OzSjDy4s2Gvvc8vuCyiT5kcjZ6ib0MXyrr9HDRnBijoKg4oe7XpifK8r3DIQeDYpDbJKaBHPOi6afC5OuPEDMpiGtPEigr2E/72EKzX0wlism8Zp3+QQmoD6LGgJLBYKF8k1Rb9OXdzPoWAfiMvT7LH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKQzd9jh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CF4FC4CECE;
	Sun, 22 Dec 2024 00:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734826131;
	bh=RwpQxzUx7RABG1xbrUAZH59uwhOac87f2TorUPeKLEg=;
	h=From:To:Cc:Subject:Date:From;
	b=iKQzd9jhO43DC2AqJorSIO4Upy5lJ8guuei3VqhaWDpZbdv6ykkASzE5nlovthawC
	 2cMT3hRTVK50nW9JXrzsNHnqsi7OkBmImLIczMFESsF/eHmiR1VFrZRLgreJHGdPLr
	 AL7MgYaak6IR/g44CQIQKRQYJZCBr6ZiNQC0/UuJScvq8ePqeYX81Ug3vmigWRnL+L
	 ze7NR2jdnKKKHC+NjgfyRdAnIsZxjVi/CryerTMm21yDYYCbl8jWFdGxe+Cx58X2Mr
	 axNsCz/ZRi0CMUK085zhjlCJ1YHjv96bI2vOlPtaXn4Wh74SjJkV2odj8oHPITc0yG
	 7/mpFO62rpwBw==
From: Masahiro Yamada <masahiroy@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	linux-riscv@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] riscv: migrate to the generic rule for built-in DTB
Date: Sun, 22 Dec 2024 09:08:25 +0900
Message-ID: <20241222000836.2578171-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 654102df2ac2 ("kbuild: add generic support for built-in boot
DTBs") introduced generic support for built-in DTBs.

Select GENERIC_BUILTIN_DTB when built-in DTB support is enabled.

To keep consistency across architectures, this commit also renames
CONFIG_BUILTIN_DTB_SOURCE to CONFIG_BUILTIN_DTB_NAME.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

 arch/riscv/Kbuild                              | 1 -
 arch/riscv/Kconfig                             | 3 ++-
 arch/riscv/boot/dts/Makefile                   | 2 --
 arch/riscv/configs/nommu_k210_defconfig        | 2 +-
 arch/riscv/configs/nommu_k210_sdcard_defconfig | 2 +-
 5 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild
index 2c585f7a0b6e..126fb738fc44 100644
--- a/arch/riscv/Kbuild
+++ b/arch/riscv/Kbuild
@@ -1,7 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += kernel/ mm/ net/
-obj-$(CONFIG_BUILTIN_DTB) += boot/dts/
 obj-$(CONFIG_CRYPTO) += crypto/
 obj-y += errata/
 obj-$(CONFIG_KVM) += kvm/
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index d4a7ca0388c0..5f5774892a6e 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -1267,13 +1267,14 @@ config RISCV_ISA_FALLBACK
 config BUILTIN_DTB
 	bool "Built-in device tree"
 	depends on OF && NONPORTABLE
+	select GENERIC_BUILTIN_DTB
 	help
 	  Build a device tree into the Linux image.
 	  This option should be selected if no bootloader is being used.
 	  If unsure, say N.
 
 
-config BUILTIN_DTB_SOURCE
+config BUILTIN_DTB_NAME
 	string "Built-in device tree source"
 	depends on BUILTIN_DTB
 	help
diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
index fdae05bbf556..b09678f9badc 100644
--- a/arch/riscv/boot/dts/Makefile
+++ b/arch/riscv/boot/dts/Makefile
@@ -7,5 +7,3 @@ subdir-y += sifive
 subdir-y += sophgo
 subdir-y += starfive
 subdir-y += thead
-
-obj-$(CONFIG_BUILTIN_DTB) := $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_SOURCE))
diff --git a/arch/riscv/configs/nommu_k210_defconfig b/arch/riscv/configs/nommu_k210_defconfig
index 87ff5a1233af..ee18d1e333f2 100644
--- a/arch/riscv/configs/nommu_k210_defconfig
+++ b/arch/riscv/configs/nommu_k210_defconfig
@@ -35,7 +35,7 @@ CONFIG_NR_CPUS=2
 CONFIG_CMDLINE="earlycon console=ttySIF0"
 CONFIG_CMDLINE_FORCE=y
 CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_SOURCE="canaan/k210_generic"
+CONFIG_BUILTIN_DTB_NAME="canaan/k210_generic"
 # CONFIG_SECCOMP is not set
 # CONFIG_STACKPROTECTOR is not set
 # CONFIG_GCC_PLUGINS is not set
diff --git a/arch/riscv/configs/nommu_k210_sdcard_defconfig b/arch/riscv/configs/nommu_k210_sdcard_defconfig
index 95cbd574f291..e770d81b738e 100644
--- a/arch/riscv/configs/nommu_k210_sdcard_defconfig
+++ b/arch/riscv/configs/nommu_k210_sdcard_defconfig
@@ -27,7 +27,7 @@ CONFIG_NR_CPUS=2
 CONFIG_CMDLINE="earlycon console=ttySIF0 root=/dev/mmcblk0p1 rootwait ro"
 CONFIG_CMDLINE_FORCE=y
 CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_SOURCE="canaan/k210_generic"
+CONFIG_BUILTIN_DTB_NAME="canaan/k210_generic"
 # CONFIG_SECCOMP is not set
 # CONFIG_STACKPROTECTOR is not set
 # CONFIG_GCC_PLUGINS is not set
-- 
2.43.0



Return-Path: <devicetree+bounces-133288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEACE9FA306
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 01:15:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E3B61675A0
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 00:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5F554A31;
	Sun, 22 Dec 2024 00:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQKWq18A"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2CA376;
	Sun, 22 Dec 2024 00:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734826518; cv=none; b=rL5Mhe45DDpI8H52SBE0RdC9aqZMix8FkAbzAPuTHJCvJl2Mb6nZv5lxXcoHixslRdsqNRrMDUBLRP5j9MWE5xHSZfB51E/JiCFKtorst5U/udIGiF1Eh69LGBARmpCCl0jrlDehSLAbCpCW2fIdtZuLcKxagB0bOlvUZ0l8WRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734826518; c=relaxed/simple;
	bh=0iQTKd5JEjZsKA3zgDFFlD61wYpnRy7e9Qv97bTuGsA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hOERbbhKd2wNI+qpJQNVhHZEyoqOf97evWdlP/0f8E+2P2GwISArQVUgNLL+E3fKPnYzfPNdFG+Kyw6AiHkUEHrvKte8gsr9eFZExDegA+Qu7bj+8gMtbZNAPnyylIJy7EQdpbDL5a8ovnZF3DipKafZ8kChmJDH5Y06kPdNUzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQKWq18A; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38DBAC4CECE;
	Sun, 22 Dec 2024 00:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734826517;
	bh=0iQTKd5JEjZsKA3zgDFFlD61wYpnRy7e9Qv97bTuGsA=;
	h=From:To:Cc:Subject:Date:From;
	b=hQKWq18AJZrLfeNBeSnLDrVn1oCfLDEpSWTuhRFxzalrjg5UpLzG3mzE9YviR8kJu
	 DxmmkHnQGzPbi3ObejiJe4mMkyGdD/15vks661jFJxuIlKbMtNVsG1QQ8mNUyKCQ5T
	 EFNboH2GlmkFIgOETkvMYSOzbO0cA9gwlrgx1rthQAdPyPqiRsrvxEpGarUraVrEWx
	 FbQ5/nDn1uxl2f6usQNnrXbwpNH+dcXJLI+UUFUR/mlXehQizwk0NfhLP8RrDn/St0
	 cgzQabRVWzMoubmADOP277T0kEcC/UX9dsTOeU1/8NVIAmFgXgfxiW48QHwImFJuKM
	 AqfUlRzRQ3QjA==
From: Masahiro Yamada <masahiroy@kernel.org>
To: Vineet Gupta <vgupta@kernel.org>,
	linux-snps-arc@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] ARC: migrate to the generic rule for built-in DTB
Date: Sun, 22 Dec 2024 09:15:00 +0900
Message-ID: <20241222001505.2579630-1-masahiroy@kernel.org>
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

Select GENERIC_BUILTIN_DTB to use the generic rule.

To keep consistency across architectures, this commit also renames
CONFIG_ARC_BUILTIN_DTB_NAME to CONFIG_BUILTIN_DTB_NAME.

Now, "nsim_700" is the default value for CONFIG_BUILTIN_DTB_NAME, rather
than a fallback in case it is empty.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/arc/Kconfig                           | 7 ++++---
 arch/arc/Makefile                          | 3 ---
 arch/arc/boot/dts/Makefile                 | 9 +--------
 arch/arc/configs/axs101_defconfig          | 2 +-
 arch/arc/configs/axs103_defconfig          | 2 +-
 arch/arc/configs/axs103_smp_defconfig      | 2 +-
 arch/arc/configs/haps_hs_defconfig         | 2 +-
 arch/arc/configs/haps_hs_smp_defconfig     | 2 +-
 arch/arc/configs/hsdk_defconfig            | 2 +-
 arch/arc/configs/nsim_700_defconfig        | 2 +-
 arch/arc/configs/nsimosci_defconfig        | 2 +-
 arch/arc/configs/nsimosci_hs_defconfig     | 2 +-
 arch/arc/configs/nsimosci_hs_smp_defconfig | 2 +-
 arch/arc/configs/tb10x_defconfig           | 2 +-
 arch/arc/configs/vdk_hs38_defconfig        | 2 +-
 arch/arc/configs/vdk_hs38_smp_defconfig    | 2 +-
 16 files changed, 18 insertions(+), 27 deletions(-)

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index ea5a1dcb133b..0cd2261d3e3c 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -17,6 +17,7 @@ config ARC
 	select ARCH_SUPPORTS_ATOMIC_RMW if ARC_HAS_LLSC
 	select ARCH_32BIT_OFF_T
 	select BUILDTIME_TABLE_SORT
+	select GENERIC_BUILTIN_DTB
 	select CLONE_BACKWARDS
 	select COMMON_CLK
 	select DMA_DIRECT_REMAP
@@ -550,11 +551,11 @@ config ARC_DBG_JUMP_LABEL
 	  part of static keys (jump labels) related code.
 endif
 
-config ARC_BUILTIN_DTB_NAME
+config BUILTIN_DTB_NAME
 	string "Built in DTB"
+	default "nsim_700"
 	help
-	  Set the name of the DTB to embed in the vmlinux binary
-	  Leaving it blank selects the "nsim_700" dtb.
+	  Set the name of the DTB to embed in the vmlinux binary.
 
 endmenu	 # "ARC Architecture Configuration"
 
diff --git a/arch/arc/Makefile b/arch/arc/Makefile
index fb98478ed1ab..0c5e6e6314f2 100644
--- a/arch/arc/Makefile
+++ b/arch/arc/Makefile
@@ -82,9 +82,6 @@ KBUILD_CFLAGS	+= $(cflags-y)
 KBUILD_AFLAGS	+= $(KBUILD_CFLAGS)
 KBUILD_LDFLAGS	+= $(ldflags-y)
 
-# w/o this dtb won't embed into kernel binary
-core-y		+= arch/arc/boot/dts/
-
 core-y				+= arch/arc/plat-sim/
 core-$(CONFIG_ARC_PLAT_TB10X)	+= arch/arc/plat-tb10x/
 core-$(CONFIG_ARC_PLAT_AXS10X)	+= arch/arc/plat-axs10x/
diff --git a/arch/arc/boot/dts/Makefile b/arch/arc/boot/dts/Makefile
index 48704dfdf75c..ee5664f0640d 100644
--- a/arch/arc/boot/dts/Makefile
+++ b/arch/arc/boot/dts/Makefile
@@ -1,13 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
-# Built-in dtb
-builtindtb-y		:= nsim_700
 
-ifneq ($(CONFIG_ARC_BUILTIN_DTB_NAME),)
-	builtindtb-y	:= $(CONFIG_ARC_BUILTIN_DTB_NAME)
-endif
-
-obj-y   += $(builtindtb-y).dtb.o
-dtb-y := $(builtindtb-y).dtb
+dtb-y	:= $(addsuffix .dtb, $(CONFIG_BUILTIN_DTB_NAME))
 
 # for CONFIG_OF_ALL_DTBS test
 dtb-	:= $(patsubst $(src)/%.dts,%.dtb, $(wildcard $(src)/*.dts))
diff --git a/arch/arc/configs/axs101_defconfig b/arch/arc/configs/axs101_defconfig
index 319bbe270322..a7cd526dd7ca 100644
--- a/arch/arc/configs/axs101_defconfig
+++ b/arch/arc/configs/axs101_defconfig
@@ -23,7 +23,7 @@ CONFIG_PARTITION_ADVANCED=y
 CONFIG_ARC_PLAT_AXS10X=y
 CONFIG_AXS101=y
 CONFIG_ARC_CACHE_LINE_SHIFT=5
-CONFIG_ARC_BUILTIN_DTB_NAME="axs101"
+CONFIG_BUILTIN_DTB_NAME="axs101"
 CONFIG_PREEMPT=y
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
diff --git a/arch/arc/configs/axs103_defconfig b/arch/arc/configs/axs103_defconfig
index 8c1f1a111a17..afa6a348f444 100644
--- a/arch/arc/configs/axs103_defconfig
+++ b/arch/arc/configs/axs103_defconfig
@@ -22,7 +22,7 @@ CONFIG_PARTITION_ADVANCED=y
 CONFIG_ARC_PLAT_AXS10X=y
 CONFIG_AXS103=y
 CONFIG_ISA_ARCV2=y
-CONFIG_ARC_BUILTIN_DTB_NAME="axs103"
+CONFIG_BUILTIN_DTB_NAME="axs103"
 CONFIG_PREEMPT=y
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
diff --git a/arch/arc/configs/axs103_smp_defconfig b/arch/arc/configs/axs103_smp_defconfig
index 75cab9f25b5b..2bfa6371953c 100644
--- a/arch/arc/configs/axs103_smp_defconfig
+++ b/arch/arc/configs/axs103_smp_defconfig
@@ -22,7 +22,7 @@ CONFIG_ARC_PLAT_AXS10X=y
 CONFIG_AXS103=y
 CONFIG_ISA_ARCV2=y
 CONFIG_SMP=y
-CONFIG_ARC_BUILTIN_DTB_NAME="axs103_idu"
+CONFIG_BUILTIN_DTB_NAME="axs103_idu"
 CONFIG_PREEMPT=y
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
diff --git a/arch/arc/configs/haps_hs_defconfig b/arch/arc/configs/haps_hs_defconfig
index 8c3ed5d6e6c3..3a1577112078 100644
--- a/arch/arc/configs/haps_hs_defconfig
+++ b/arch/arc/configs/haps_hs_defconfig
@@ -14,7 +14,7 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_EXPERT=y
 CONFIG_PERF_EVENTS=y
 # CONFIG_COMPAT_BRK is not set
-CONFIG_ARC_BUILTIN_DTB_NAME="haps_hs"
+CONFIG_BUILTIN_DTB_NAME="haps_hs"
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
 # CONFIG_COMPACTION is not set
diff --git a/arch/arc/configs/haps_hs_smp_defconfig b/arch/arc/configs/haps_hs_smp_defconfig
index 6fc98c1b9b36..a3cf940b1f5b 100644
--- a/arch/arc/configs/haps_hs_smp_defconfig
+++ b/arch/arc/configs/haps_hs_smp_defconfig
@@ -16,7 +16,7 @@ CONFIG_PERF_EVENTS=y
 # CONFIG_VM_EVENT_COUNTERS is not set
 # CONFIG_COMPAT_BRK is not set
 CONFIG_SMP=y
-CONFIG_ARC_BUILTIN_DTB_NAME="haps_hs_idu"
+CONFIG_BUILTIN_DTB_NAME="haps_hs_idu"
 CONFIG_KPROBES=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
diff --git a/arch/arc/configs/hsdk_defconfig b/arch/arc/configs/hsdk_defconfig
index 9e79154b5535..1558e8e87767 100644
--- a/arch/arc/configs/hsdk_defconfig
+++ b/arch/arc/configs/hsdk_defconfig
@@ -20,7 +20,7 @@ CONFIG_ISA_ARCV2=y
 CONFIG_SMP=y
 CONFIG_LINUX_LINK_BASE=0x90000000
 CONFIG_LINUX_RAM_BASE=0x80000000
-CONFIG_ARC_BUILTIN_DTB_NAME="hsdk"
+CONFIG_BUILTIN_DTB_NAME="hsdk"
 CONFIG_PREEMPT=y
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
diff --git a/arch/arc/configs/nsim_700_defconfig b/arch/arc/configs/nsim_700_defconfig
index 51092c39e360..f8b3235d9a65 100644
--- a/arch/arc/configs/nsim_700_defconfig
+++ b/arch/arc/configs/nsim_700_defconfig
@@ -17,7 +17,7 @@ CONFIG_PERF_EVENTS=y
 # CONFIG_SLUB_DEBUG is not set
 # CONFIG_COMPAT_BRK is not set
 CONFIG_ISA_ARCOMPACT=y
-CONFIG_ARC_BUILTIN_DTB_NAME="nsim_700"
+CONFIG_BUILTIN_DTB_NAME="nsim_700"
 CONFIG_KPROBES=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
diff --git a/arch/arc/configs/nsimosci_defconfig b/arch/arc/configs/nsimosci_defconfig
index 70c17bca4939..ee45dc0877fb 100644
--- a/arch/arc/configs/nsimosci_defconfig
+++ b/arch/arc/configs/nsimosci_defconfig
@@ -19,7 +19,7 @@ CONFIG_ISA_ARCOMPACT=y
 CONFIG_KPROBES=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
-CONFIG_ARC_BUILTIN_DTB_NAME="nsimosci"
+CONFIG_BUILTIN_DTB_NAME="nsimosci"
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
diff --git a/arch/arc/configs/nsimosci_hs_defconfig b/arch/arc/configs/nsimosci_hs_defconfig
index 59a3b6642fe7..e0a309970c20 100644
--- a/arch/arc/configs/nsimosci_hs_defconfig
+++ b/arch/arc/configs/nsimosci_hs_defconfig
@@ -19,7 +19,7 @@ CONFIG_KPROBES=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_ISA_ARCV2=y
-CONFIG_ARC_BUILTIN_DTB_NAME="nsimosci_hs"
+CONFIG_BUILTIN_DTB_NAME="nsimosci_hs"
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
diff --git a/arch/arc/configs/nsimosci_hs_smp_defconfig b/arch/arc/configs/nsimosci_hs_smp_defconfig
index 1419fc946a08..88325b8b49cf 100644
--- a/arch/arc/configs/nsimosci_hs_smp_defconfig
+++ b/arch/arc/configs/nsimosci_hs_smp_defconfig
@@ -16,7 +16,7 @@ CONFIG_MODULES=y
 CONFIG_ISA_ARCV2=y
 CONFIG_SMP=y
 # CONFIG_ARC_TIMERS_64BIT is not set
-CONFIG_ARC_BUILTIN_DTB_NAME="nsimosci_hs_idu"
+CONFIG_BUILTIN_DTB_NAME="nsimosci_hs_idu"
 CONFIG_PREEMPT=y
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
diff --git a/arch/arc/configs/tb10x_defconfig b/arch/arc/configs/tb10x_defconfig
index 5aba3d850fa2..865fbc19ef03 100644
--- a/arch/arc/configs/tb10x_defconfig
+++ b/arch/arc/configs/tb10x_defconfig
@@ -26,7 +26,7 @@ CONFIG_MODULE_UNLOAD=y
 CONFIG_ARC_PLAT_TB10X=y
 CONFIG_ARC_CACHE_LINE_SHIFT=5
 CONFIG_HZ=250
-CONFIG_ARC_BUILTIN_DTB_NAME="abilis_tb100_dvk"
+CONFIG_BUILTIN_DTB_NAME="abilis_tb100_dvk"
 CONFIG_PREEMPT_VOLUNTARY=y
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
diff --git a/arch/arc/configs/vdk_hs38_defconfig b/arch/arc/configs/vdk_hs38_defconfig
index 50c343913825..03d9ac20baa9 100644
--- a/arch/arc/configs/vdk_hs38_defconfig
+++ b/arch/arc/configs/vdk_hs38_defconfig
@@ -13,7 +13,7 @@ CONFIG_PARTITION_ADVANCED=y
 CONFIG_ARC_PLAT_AXS10X=y
 CONFIG_AXS103=y
 CONFIG_ISA_ARCV2=y
-CONFIG_ARC_BUILTIN_DTB_NAME="vdk_hs38"
+CONFIG_BUILTIN_DTB_NAME="vdk_hs38"
 CONFIG_PREEMPT=y
 CONFIG_NET=y
 CONFIG_PACKET=y
diff --git a/arch/arc/configs/vdk_hs38_smp_defconfig b/arch/arc/configs/vdk_hs38_smp_defconfig
index 6d9e1d9f71d2..c09488992f13 100644
--- a/arch/arc/configs/vdk_hs38_smp_defconfig
+++ b/arch/arc/configs/vdk_hs38_smp_defconfig
@@ -15,7 +15,7 @@ CONFIG_AXS103=y
 CONFIG_ISA_ARCV2=y
 CONFIG_SMP=y
 # CONFIG_ARC_TIMERS_64BIT is not set
-CONFIG_ARC_BUILTIN_DTB_NAME="vdk_hs38_smp"
+CONFIG_BUILTIN_DTB_NAME="vdk_hs38_smp"
 CONFIG_PREEMPT=y
 CONFIG_NET=y
 CONFIG_PACKET=y
-- 
2.43.0



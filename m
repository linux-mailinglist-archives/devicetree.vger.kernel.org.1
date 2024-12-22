Return-Path: <devicetree+bounces-133290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF659FA31B
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 01:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B88116658D
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 00:30:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E96E62594AE;
	Sun, 22 Dec 2024 00:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4c3ZN3e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AA323C9;
	Sun, 22 Dec 2024 00:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734827407; cv=none; b=UQAiX2aZ4VmExkZYY3Qnv0UvOOYQaI6d1Ot4EtIj+RE0ogKudEPRhabqKyxKjSOKi2WOnNeERSR+BytIEFKxKNus+szoDhpeZOH5a3fszWvAva4Qi2mTjLGBSv37B47jDrfve0h6EtafR2BcAUnOUQ3EpL9ZnwjrJHCHnmQ67Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734827407; c=relaxed/simple;
	bh=QrzhAJStgRrrdLoqQ//wTcG3H0OLb+rlseibaElrVEw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dzh4Ryb8E65NnHBwF5L1SopTzHrYy8qVQzWTDLEDW2rgHpx0YxO0LvtdU/35cRjQbGm76T1mVZFxzWCO1wexu/rnJ6eJa5Av+2E+cT/15AvAqj0e11GqQ5AGTKJpxQbuoM+vCkDT9SVVpUzMvZWDPWphp+dy0G+ykZPGQabiG44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4c3ZN3e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1CBCC4CECE;
	Sun, 22 Dec 2024 00:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734827407;
	bh=QrzhAJStgRrrdLoqQ//wTcG3H0OLb+rlseibaElrVEw=;
	h=From:To:Cc:Subject:Date:From;
	b=J4c3ZN3emUfbYUGfLEdu0WgD81kgEskqDmQIDTs/UoKSoLO2IIhqCw76DoykFb168
	 OCrF1RcB1+kc4aleOBNH9Bts/Pg9CELKxd+7AB10ovAo7+fGFP7ntxcpuyyT4IumEm
	 SN+FmXCMi/OXDBPiTPqou0fXPSsdy4PS5CNR+crlrzOwdQlQwCdoZ27a8+s1LbzhZn
	 eChdoNkbgxYhix5cMDByU1dMc65uQ/liv9p/DEhPzInm0mEJkC61NEj+O4h3AVCzpr
	 ERQTHVNgiCIQEGfV3DhhcrM34U2MVzZFs0CWW8tinMMVwCozl8N87gFyQ0bJkTszoD
	 Slyn7bLGQfycg==
From: Masahiro Yamada <masahiroy@kernel.org>
To: Chris Zankel <chris@zankel.net>,
	Max Filippov <jcmvbkbc@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] xtensa: migrate to the generic rule for built-in DTB
Date: Sun, 22 Dec 2024 09:29:46 +0900
Message-ID: <20241222002957.2582212-1-masahiroy@kernel.org>
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
CONFIG_BUILTIN_DTB_SOURCE to CONFIG_BUILTIN_DTB_NAME.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/xtensa/Kbuild                          | 2 +-
 arch/xtensa/Kconfig                         | 3 ++-
 arch/xtensa/boot/dts/Makefile               | 2 +-
 arch/xtensa/configs/audio_kc705_defconfig   | 2 +-
 arch/xtensa/configs/cadence_csp_defconfig   | 2 +-
 arch/xtensa/configs/generic_kc705_defconfig | 2 +-
 arch/xtensa/configs/nommu_kc705_defconfig   | 2 +-
 arch/xtensa/configs/smp_lx200_defconfig     | 2 +-
 arch/xtensa/configs/virt_defconfig          | 2 +-
 arch/xtensa/configs/xip_kc705_defconfig     | 2 +-
 10 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/xtensa/Kbuild b/arch/xtensa/Kbuild
index fd12f61745ba..015baeb765b9 100644
--- a/arch/xtensa/Kbuild
+++ b/arch/xtensa/Kbuild
@@ -1,2 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-y += kernel/ mm/ platforms/ boot/dts/
+obj-y += kernel/ mm/ platforms/
diff --git a/arch/xtensa/Kconfig b/arch/xtensa/Kconfig
index d3db28f2f811..f2f9cd9cde50 100644
--- a/arch/xtensa/Kconfig
+++ b/arch/xtensa/Kconfig
@@ -20,6 +20,7 @@ config XTENSA
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_WANT_IPC_PARSE_VERSION
 	select BUILDTIME_TABLE_SORT
+	select GENERIC_BUILTIN_DTB
 	select CLONE_BACKWARDS
 	select COMMON_CLK
 	select DMA_NONCOHERENT_MMAP if MMU
@@ -462,7 +463,7 @@ config USE_OF
 	help
 	  Include support for flattened device tree machine descriptions.
 
-config BUILTIN_DTB_SOURCE
+config BUILTIN_DTB_NAME
 	string "DTB to build into the kernel image"
 	depends on OF
 
diff --git a/arch/xtensa/boot/dts/Makefile b/arch/xtensa/boot/dts/Makefile
index d6408c16d74e..7271294ce523 100644
--- a/arch/xtensa/boot/dts/Makefile
+++ b/arch/xtensa/boot/dts/Makefile
@@ -7,7 +7,7 @@
 #
 #
 
-obj-$(CONFIG_OF) += $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_SOURCE))
+dtb-$(CONFIG_OF) += $(addsuffix .dtb, $(CONFIG_BUILTIN_DTB_NAME))
 
 # for CONFIG_OF_ALL_DTBS test
 dtb-	:= $(patsubst $(src)/%.dts,%.dtb, $(wildcard $(src)/*.dts))
diff --git a/arch/xtensa/configs/audio_kc705_defconfig b/arch/xtensa/configs/audio_kc705_defconfig
index 436b7cac9694..f2af1a32c9c7 100644
--- a/arch/xtensa/configs/audio_kc705_defconfig
+++ b/arch/xtensa/configs/audio_kc705_defconfig
@@ -30,7 +30,7 @@ CONFIG_XTENSA_PLATFORM_XTFPGA=y
 CONFIG_CMDLINE_BOOL=y
 CONFIG_CMDLINE="earlycon=uart8250,mmio32native,0xfd050020,115200n8 console=ttyS0,115200n8 ip=dhcp root=/dev/nfs rw debug memmap=0x38000000@0"
 CONFIG_USE_OF=y
-CONFIG_BUILTIN_DTB_SOURCE="kc705"
+CONFIG_BUILTIN_DTB_NAME="kc705"
 # CONFIG_COMPACTION is not set
 # CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
 CONFIG_PM=y
diff --git a/arch/xtensa/configs/cadence_csp_defconfig b/arch/xtensa/configs/cadence_csp_defconfig
index 91c4c4cae8a7..5a272a278740 100644
--- a/arch/xtensa/configs/cadence_csp_defconfig
+++ b/arch/xtensa/configs/cadence_csp_defconfig
@@ -35,7 +35,7 @@ CONFIG_HIGHMEM=y
 # CONFIG_PCI is not set
 CONFIG_XTENSA_PLATFORM_XTFPGA=y
 CONFIG_USE_OF=y
-CONFIG_BUILTIN_DTB_SOURCE="csp"
+CONFIG_BUILTIN_DTB_NAME="csp"
 # CONFIG_COMPACTION is not set
 CONFIG_XTFPGA_LCD=y
 # CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
diff --git a/arch/xtensa/configs/generic_kc705_defconfig b/arch/xtensa/configs/generic_kc705_defconfig
index e376238bc5ca..4427907becca 100644
--- a/arch/xtensa/configs/generic_kc705_defconfig
+++ b/arch/xtensa/configs/generic_kc705_defconfig
@@ -29,7 +29,7 @@ CONFIG_XTENSA_PLATFORM_XTFPGA=y
 CONFIG_CMDLINE_BOOL=y
 CONFIG_CMDLINE="earlycon=uart8250,mmio32native,0xfd050020,115200n8 console=ttyS0,115200n8 ip=dhcp root=/dev/nfs rw debug memmap=0x38000000@0"
 CONFIG_USE_OF=y
-CONFIG_BUILTIN_DTB_SOURCE="kc705"
+CONFIG_BUILTIN_DTB_NAME="kc705"
 # CONFIG_COMPACTION is not set
 # CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
 CONFIG_NET=y
diff --git a/arch/xtensa/configs/nommu_kc705_defconfig b/arch/xtensa/configs/nommu_kc705_defconfig
index c2ab4306ee20..5828228522ba 100644
--- a/arch/xtensa/configs/nommu_kc705_defconfig
+++ b/arch/xtensa/configs/nommu_kc705_defconfig
@@ -36,7 +36,7 @@ CONFIG_XTENSA_PLATFORM_XTFPGA=y
 CONFIG_CMDLINE_BOOL=y
 CONFIG_CMDLINE="earlycon=uart8250,mmio32native,0x9d050020,115200n8 console=ttyS0,115200n8 ip=dhcp root=/dev/nfs rw debug memmap=256M@0x60000000"
 CONFIG_USE_OF=y
-CONFIG_BUILTIN_DTB_SOURCE="kc705_nommu"
+CONFIG_BUILTIN_DTB_NAME="kc705_nommu"
 CONFIG_BINFMT_FLAT=y
 CONFIG_NET=y
 CONFIG_PACKET=y
diff --git a/arch/xtensa/configs/smp_lx200_defconfig b/arch/xtensa/configs/smp_lx200_defconfig
index 63b56ce79f83..326966ca7831 100644
--- a/arch/xtensa/configs/smp_lx200_defconfig
+++ b/arch/xtensa/configs/smp_lx200_defconfig
@@ -33,7 +33,7 @@ CONFIG_XTENSA_PLATFORM_XTFPGA=y
 CONFIG_CMDLINE_BOOL=y
 CONFIG_CMDLINE="earlycon=uart8250,mmio32native,0xfd050020,115200n8 console=ttyS0,115200n8 ip=dhcp root=/dev/nfs rw debug memmap=96M@0"
 CONFIG_USE_OF=y
-CONFIG_BUILTIN_DTB_SOURCE="lx200mx"
+CONFIG_BUILTIN_DTB_NAME="lx200mx"
 # CONFIG_COMPACTION is not set
 # CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
 CONFIG_NET=y
diff --git a/arch/xtensa/configs/virt_defconfig b/arch/xtensa/configs/virt_defconfig
index 98acb7191cb7..e37048985b47 100644
--- a/arch/xtensa/configs/virt_defconfig
+++ b/arch/xtensa/configs/virt_defconfig
@@ -24,7 +24,7 @@ CONFIG_HIGHMEM=y
 CONFIG_CMDLINE_BOOL=y
 CONFIG_CMDLINE="console=ttyS0,115200n8 ip=dhcp root=/dev/nfs rw debug memmap=0x80000000@0"
 CONFIG_USE_OF=y
-CONFIG_BUILTIN_DTB_SOURCE="virt"
+CONFIG_BUILTIN_DTB_NAME="virt"
 # CONFIG_PARSE_BOOTPARAM is not set
 CONFIG_JUMP_LABEL=y
 CONFIG_MODULES=y
diff --git a/arch/xtensa/configs/xip_kc705_defconfig b/arch/xtensa/configs/xip_kc705_defconfig
index 165652c45b85..ee47438f9b51 100644
--- a/arch/xtensa/configs/xip_kc705_defconfig
+++ b/arch/xtensa/configs/xip_kc705_defconfig
@@ -29,7 +29,7 @@ CONFIG_XTENSA_PLATFORM_XTFPGA=y
 CONFIG_CMDLINE_BOOL=y
 CONFIG_CMDLINE="earlycon=uart8250,mmio32native,0xfd050020,115200n8 console=ttyS0,115200n8 ip=dhcp root=/dev/nfs rw debug memmap=0x38000000@0"
 CONFIG_USE_OF=y
-CONFIG_BUILTIN_DTB_SOURCE="kc705"
+CONFIG_BUILTIN_DTB_NAME="kc705"
 # CONFIG_PARSE_BOOTPARAM is not set
 # CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
 # CONFIG_COMPACTION is not set
-- 
2.43.0



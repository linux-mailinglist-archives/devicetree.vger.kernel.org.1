Return-Path: <devicetree+bounces-26374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C56AA81642C
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 02:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B04B81C20FAA
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 01:53:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A8FC1FBF;
	Mon, 18 Dec 2023 01:53:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC6DE20E4
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 01:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [112.20.112.176])
	by gateway (Coremail) with SMTP id _____8DxVPD5pX9lHeYBAA--.10250S3;
	Mon, 18 Dec 2023 09:52:57 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.112.176])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8DxCHPwpX9lwF8JAA--.29587S5;
	Mon, 18 Dec 2023 09:52:56 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Hongliang Wang <wanghongliang@loongson.cn>,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v5 3/7] LoongArch: Allow device trees to be built into the kernel
Date: Mon, 18 Dec 2023 09:52:36 +0800
Message-Id: <8da27d46fbc72e2e178d81e2f18abec7d9bd725a.1702862778.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <cover.1702862778.git.zhoubinbin@loongson.cn>
References: <cover.1702862778.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:AQAAf8DxCHPwpX9lwF8JAA--.29587S5
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxJw48KF1DJw17Cw1fGFyUJwc_yoWrZw48p3
	y7Aw4kJr4kGryIyr9aq398WrW5Jrs7Cw4aqF12yryjkF47Zr10vr4Sqr9rZF1UGws5J3y0
	qFyfKa42gF4UJagCm3ZEXasCq-sJn29KB7ZKAUJUUUU7529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBFb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVWxJVW8Jr1l84ACjcxK6I8E87Iv6xkF7I0E14v2
	6r4j6r4UJwAaw2AFwI0_Jrv_JF1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0c
	Ia020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jw0_
	WrylYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwI
	xGrwCY1x0262kKe7AKxVWUAVWUtwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWU
	JVW8JwCFI7km07C267AKxVWUXVWUAwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4
	vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IY
	x2IY67AKxVW5JVW7JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26c
	xKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r4j6F4UMIIF0xvEx4A2jsIEc7CjxVAF
	wI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07j2MKZUUUUU=

During the upstream progress of those DT-based drivers, DT properties
are changed a lot so very different from those in existing bootloaders.
It is inevitably that some existing systems do not provide a standard,
canonical device tree to the kernel at boot time. So let's provide a
device tree table in the kernel, keyed by the dts filename, containing
the relevant DTBs.

We can use the built-in dts files as references. Each SoC has only one
built-in dts file which describes all possible device information of
that SoC, so the dts files are good examples during development.

And as a reference, our built-in dts file only enables the most basic
bootable combinations (so it is generic enough), acts as an alternative
in case the dts in the bootloader is unexpected.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
Signed-off-by: Huacai Chen <chenhuacai@loongson.cn>
---
 arch/loongarch/Kconfig           | 18 ++++++++++++++++++
 arch/loongarch/Makefile          | 10 ++++++++--
 arch/loongarch/boot/dts/Makefile |  3 +--
 arch/loongarch/kernel/setup.c    |  9 +++++++--
 4 files changed, 34 insertions(+), 6 deletions(-)

diff --git a/arch/loongarch/Kconfig b/arch/loongarch/Kconfig
index ee123820a476..267de6191dfc 100644
--- a/arch/loongarch/Kconfig
+++ b/arch/loongarch/Kconfig
@@ -331,6 +331,24 @@ config 64KB_3LEVEL
 
 endchoice
 
+config BUILTIN_DTB
+	bool "Enable builtin dtb in kernel"
+	depends on OF
+	help
+	  Some existing systems do not provide a canonical device tree to the
+	  kernel at boot time. Let's provide a device tree table in the kernel,
+	  keyed by the dts filename, containing the relevant DTBs.
+
+	  Built-in DTBs are generic enough and can be used as references.
+
+config BUILTIN_DTB_NAME
+	string "Source file for LoongArch builtin dtb"
+	depends on BUILTIN_DTB
+	help
+	  Base name (without suffix, relative to arch/loongarch/boot/dts/)
+	  for the DTS file that will be used to produce the DTB linked into the
+	  kernel.
+
 config CMDLINE
 	string "Built-in kernel command line"
 	help
diff --git a/arch/loongarch/Makefile b/arch/loongarch/Makefile
index 4ba8d67ddb09..5b84f43adb98 100644
--- a/arch/loongarch/Makefile
+++ b/arch/loongarch/Makefile
@@ -5,7 +5,8 @@
 
 boot	:= arch/loongarch/boot
 
-KBUILD_DEFCONFIG := loongson3_defconfig
+KBUILD_DEFCONFIG		:= loongson3_defconfig
+KBUILD_DTBS			:= dtbs
 
 image-name-y			:= vmlinux
 image-name-$(CONFIG_EFI_ZBOOT)	:= vmlinuz
@@ -141,13 +142,16 @@ endif
 
 vdso-install-y += arch/loongarch/vdso/vdso.so.dbg
 
-all:	$(notdir $(KBUILD_IMAGE))
+all:	$(notdir $(KBUILD_IMAGE)) $(KBUILD_DTBS)
 
 vmlinuz.efi: vmlinux.efi
 
 vmlinux.elf vmlinux.efi vmlinuz.efi: vmlinux
 	$(Q)$(MAKE) $(build)=$(boot) $(bootvars-y) $(boot)/$@
 
+# device-trees
+core-y += arch/loongarch/boot/dts/
+
 install:
 	$(Q)install -D -m 755 $(KBUILD_IMAGE) $(INSTALL_PATH)/$(image-name-y)-$(KERNELRELEASE)
 	$(Q)install -D -m 644 .config $(INSTALL_PATH)/config-$(KERNELRELEASE)
@@ -155,5 +159,7 @@ install:
 
 define archhelp
 	echo '  install              - install kernel into $(INSTALL_PATH)'
+	echo '  dtbs                 - Device-tree blobs for enabled boards'
+	echo '  dtbs_install         - Install dtbs to $(INSTALL_DTBS_PATH)'
 	echo
 endef
diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts/Makefile
index 5f1f55e911ad..1e24cdb5180a 100644
--- a/arch/loongarch/boot/dts/Makefile
+++ b/arch/loongarch/boot/dts/Makefile
@@ -1,4 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
-dtstree	:= $(srctree)/$(src)
 
-dtb-y := $(patsubst $(dtstree)/%.dts,%.dtb, $(wildcard $(dtstree)/*.dts))
+obj-$(CONFIG_BUILTIN_DTB)	+= $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_NAME))
diff --git a/arch/loongarch/kernel/setup.c b/arch/loongarch/kernel/setup.c
index d183a745fb85..6cf3b1e045f6 100644
--- a/arch/loongarch/kernel/setup.c
+++ b/arch/loongarch/kernel/setup.c
@@ -295,8 +295,13 @@ static void __init fdt_setup(void)
 	if (acpi_os_get_root_pointer())
 		return;
 
-	/* Look for a device tree configuration table entry */
-	fdt_pointer = efi_fdt_pointer();
+	/* We prefer to try to use built-in dtb, checking its legality first. */
+	if (!fdt_check_header(__dtb_start))
+		fdt_pointer = __dtb_start;
+	else
+		/* Fallback to efi dtb, when built-in dtb is not available. */
+		fdt_pointer = efi_fdt_pointer();
+
 	if (!fdt_pointer || fdt_check_header(fdt_pointer))
 		return;
 
-- 
2.39.3



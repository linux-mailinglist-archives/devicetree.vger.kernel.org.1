Return-Path: <devicetree+bounces-133333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B039FA50B
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 10:47:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE80A165947
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 09:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A466176ADB;
	Sun, 22 Dec 2024 09:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8Fu1CLv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159D3632;
	Sun, 22 Dec 2024 09:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734860829; cv=none; b=SESLxyxRy+MykiCiuEJ/QCWpnPJ6XPKOzKrIMcqhGyrOFWOGSG+vMdNPlNb2/DmRLG5v3a0eJ7AvCe6mY05VUOiPkj9yFfk9UGNAWasTBgjA4eCVJDTPpTIrCbRhqfnKRugFM9Lg2jb4Y0B+hZ/uH8A5snS7Q/nHR4hrlsDeLws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734860829; c=relaxed/simple;
	bh=e+GpFs/2upi4qQS+97SlZzj2M5prVKClM8sm6bEbAEM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PW0/md29W24jdz7v+W7H8CQbBLkdz/VaFnpoDYp+QGD7vbABD3RMKFXDrSP6vogkfTO2j6q8mPf68NooXM4APaRBsOI19BHPUnwszy6EK1PmM8cU42RpS340B985uZnCslwc8yVtBGG+5KMauMM1FtKCToRGDdxChcph/dV8wtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8Fu1CLv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED0D2C4CECD;
	Sun, 22 Dec 2024 09:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734860828;
	bh=e+GpFs/2upi4qQS+97SlZzj2M5prVKClM8sm6bEbAEM=;
	h=From:To:Cc:Subject:Date:From;
	b=s8Fu1CLvdrhKpnrRAPdUq/wut/EUOghyl7gfMs7z0uvLwjwxCxs2AlGAqvxePg33E
	 acxNiRlt8m7gHEo2Ol8tqHYRGscJL21VTi4gVvlnDzh3yKseZuoi1UFIFlZaN9ifEv
	 7OKmCGDzE5BRaU1nlTeAzmWTp3QZtHwQqN1TppKJDe6wocqZbSR/BxE0kucY4opMkV
	 Dz7DJDYBvOzWIZRZdSKrkQCkOG51/1PlLiGU2UdkGY7Jz5/nS45tZTmHdtZHBGP0jC
	 KJcDOPBD0Y7gq3JGcWjFyoEVLcXrkfY0I5W2hjeoC+jfowGgIF71NjLdDjlGtccYsH
	 GtCmcc2mjECIA==
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org,
	Michal Simek <monstr@monstr.eu>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] microblaze: migrate to the generic rule for built-in DTB
Date: Sun, 22 Dec 2024 18:46:28 +0900
Message-ID: <20241222094701.207592-1-masahiroy@kernel.org>
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

MicroBlaze is the only architecture that places the built-in DTB to its
own section, __fdt_blob, rather than the standard location defined by
the KERNEL_DTB() macro.

For backward compatibility, arch/microblaze/boot/dts/system.dtb is still
placed in the __fdt_blob section, and possibly overwritten by an externel
DTB passed via the r7 register.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/microblaze/Kbuild                | 1 -
 arch/microblaze/Kconfig               | 5 +++++
 arch/microblaze/boot/dts/Makefile     | 5 -----
 arch/microblaze/boot/dts/linked_dtb.S | 2 --
 arch/microblaze/kernel/vmlinux.lds.S  | 2 +-
 5 files changed, 6 insertions(+), 9 deletions(-)
 delete mode 100644 arch/microblaze/boot/dts/linked_dtb.S

diff --git a/arch/microblaze/Kbuild b/arch/microblaze/Kbuild
index 077a0b8e9615..70510389eb92 100644
--- a/arch/microblaze/Kbuild
+++ b/arch/microblaze/Kbuild
@@ -2,7 +2,6 @@
 obj-y			+= kernel/
 obj-y			+= mm/
 obj-$(CONFIG_PCI)	+= pci/
-obj-y			+= boot/dts/
 
 # for cleaning
 subdir- += boot
diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
index f18ec02ddeb2..4ed8ca89f0c9 100644
--- a/arch/microblaze/Kconfig
+++ b/arch/microblaze/Kconfig
@@ -10,6 +10,7 @@ config MICROBLAZE
 	select ARCH_MIGHT_HAVE_PC_PARPORT
 	select ARCH_WANT_IPC_PARSE_VERSION
 	select BUILDTIME_TABLE_SORT
+	select GENERIC_BUILTIN_DTB
 	select TIMER_OF
 	select CLONE_BACKWARDS3
 	select COMMON_CLK
@@ -47,6 +48,10 @@ config MICROBLAZE
 	select TRACE_IRQFLAGS_SUPPORT
 	select GENERIC_IRQ_MULTI_HANDLER
 
+config BUILTIN_DTB_NAME
+	string
+	default "system"
+
 # Endianness selection
 choice
 	prompt "Endianness selection"
diff --git a/arch/microblaze/boot/dts/Makefile b/arch/microblaze/boot/dts/Makefile
index b84e2cbb20ee..87c1d25ff096 100644
--- a/arch/microblaze/boot/dts/Makefile
+++ b/arch/microblaze/boot/dts/Makefile
@@ -4,11 +4,6 @@
 dtb-y := system.dtb
 
 ifneq ($(DTB),)
-obj-y += linked_dtb.o
-
-# Ensure system.dtb exists
-$(obj)/linked_dtb.o: $(obj)/system.dtb
-
 # Generate system.dtb from $(DTB).dtb
 ifneq ($(DTB),system)
 $(obj)/system.dtb: $(obj)/$(DTB).dtb
diff --git a/arch/microblaze/boot/dts/linked_dtb.S b/arch/microblaze/boot/dts/linked_dtb.S
deleted file mode 100644
index 23345af3721f..000000000000
--- a/arch/microblaze/boot/dts/linked_dtb.S
+++ /dev/null
@@ -1,2 +0,0 @@
-.section __fdt_blob,"a"
-.incbin "arch/microblaze/boot/dts/system.dtb"
diff --git a/arch/microblaze/kernel/vmlinux.lds.S b/arch/microblaze/kernel/vmlinux.lds.S
index ae50d3d04a7d..e86f9ca8e979 100644
--- a/arch/microblaze/kernel/vmlinux.lds.S
+++ b/arch/microblaze/kernel/vmlinux.lds.S
@@ -47,7 +47,7 @@ SECTIONS {
 	. = ALIGN (8) ;
 	__fdt_blob : AT(ADDR(__fdt_blob) - LOAD_OFFSET) {
 		_fdt_start = . ;		/* place for fdt blob */
-		*(__fdt_blob) ;			/* Any link-placed DTB */
+		*(.dtb.init.rodata) ;		/* Any link-placed DTB */
 	        . = _fdt_start + 0x10000;	/* Pad up to 64kbyte */
 		_fdt_end = . ;
 	}
-- 
2.43.0



Return-Path: <devicetree+bounces-133291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E26359FA31E
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 01:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57A7B1665D4
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 00:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E71C1854;
	Sun, 22 Dec 2024 00:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0L2dUwX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F2184E;
	Sun, 22 Dec 2024 00:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734827466; cv=none; b=mYSJ/ls4EPlTfpC4IPiFsj37lCkzLe3xU+LD+OQo92RZar5rLA0y8vQDND3M/sQZQHOWUNdVMAKnMEHZhO3WPohzww+TqisS83t1y4KJeVJOUQOiqaDpSwvtC1qE+seCHl5rRalCXYsrCOVTxWR6MZ8lPypBSE7pumOprFPeTEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734827466; c=relaxed/simple;
	bh=EVAktHYhtLKSTU+Wdfy5N7PINcpDHrzUp+zxt9FYpko=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ohwwWn6KVhnpgj41mY8MFkuu9j4fRekSQdq01DTRMg9fcoCeB2mALeeNKSWdhNw06iLSJKZYRXXJW976RQK7VWcZwzL21KjroEVyLav1IQmXMdVld1eZDEtbPAigwHwQ33wLPlQ4Npk493VQsUljru/3n9LQUGB3lVjR0rx2nwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0L2dUwX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF751C4CECE;
	Sun, 22 Dec 2024 00:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734827465;
	bh=EVAktHYhtLKSTU+Wdfy5N7PINcpDHrzUp+zxt9FYpko=;
	h=From:To:Cc:Subject:Date:From;
	b=q0L2dUwXzOq7/OaSpRh5V9XxRMK6kCmT65HmF14GXzM6JNKC0TMMkSkjiSfeAzqKl
	 aHeH4q1ZgWcpzZJ5bvE3Rg5xfjgifgNDsNHnXgm6FmC2Zix8a965KwizSiw6+ixQTq
	 AgDPtJZZXrYz9gXW+uHGBNlT+bwP1MBPBwsUfIyHKKjnUypMfTeEEgEtNnBpt9rnCt
	 P9vnJz/vC3Wy8oj3Nt8FgwuXLjfSuLUKrrKcNlQ+keGSWZUMZor0efNcZca6Q6IWNn
	 5Gsx+OeAcql6kyO6M8QBjQoRm8H/hvJUXX3l6+wFpX4Oo+/XgMlzYsXbpUZp8VnqVv
	 Nun0U83ts3TdQ==
From: Masahiro Yamada <masahiroy@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] nios2: migrate to the generic rule for built-in DTB
Date: Sun, 22 Dec 2024 09:30:53 +0900
Message-ID: <20241222003057.2582425-1-masahiroy@kernel.org>
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
CONFIG_NIOS2_DTB_SOURCE_BOOL to CONFIG_BUILTIN_DTB, and
CONFIG_NIOS2_DTB_SOURCE to CONFIG_BUILTIN_DTB_NAME.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/nios2/Kbuild                    |  2 +-
 arch/nios2/boot/dts/Makefile         |  4 ++--
 arch/nios2/kernel/prom.c             |  2 +-
 arch/nios2/platform/Kconfig.platform | 11 ++++++-----
 4 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/arch/nios2/Kbuild b/arch/nios2/Kbuild
index fc2952edd2de..fa64c5954b20 100644
--- a/arch/nios2/Kbuild
+++ b/arch/nios2/Kbuild
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += kernel/ mm/ platform/ boot/dts/
+obj-y += kernel/ mm/ platform/
 
 # for cleaning
 subdir- += boot
diff --git a/arch/nios2/boot/dts/Makefile b/arch/nios2/boot/dts/Makefile
index 1a2e8996bec7..1b8f41c4154f 100644
--- a/arch/nios2/boot/dts/Makefile
+++ b/arch/nios2/boot/dts/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-y := $(patsubst %.dts,%.dtb.o,$(CONFIG_NIOS2_DTB_SOURCE))
+dtb-y := $(addsuffix .dtb, $(CONFIG_BUILTIN_DTB_NAME))
 
-dtb-$(CONFIG_OF_ALL_DTBS) := $(patsubst $(src)/%.dts,%.dtb, $(wildcard $(src)/*.dts))
+dtb-$(CONFIG_OF_ALL_DTBS) += $(patsubst $(src)/%.dts,%.dtb, $(wildcard $(src)/*.dts))
diff --git a/arch/nios2/kernel/prom.c b/arch/nios2/kernel/prom.c
index db049249766f..4f8c14da6490 100644
--- a/arch/nios2/kernel/prom.c
+++ b/arch/nios2/kernel/prom.c
@@ -32,7 +32,7 @@ void __init early_init_devtree(void *params)
 	}
 #endif
 
-#ifdef CONFIG_NIOS2_DTB_SOURCE_BOOL
+#ifdef CONFIG_BUILTIN_DTB
 	if (be32_to_cpu((__be32) *dtb) == OF_DT_HEADER)
 		params = (void *)__dtb_start;
 #endif
diff --git a/arch/nios2/platform/Kconfig.platform b/arch/nios2/platform/Kconfig.platform
index e849daff6fd1..c75cadd92388 100644
--- a/arch/nios2/platform/Kconfig.platform
+++ b/arch/nios2/platform/Kconfig.platform
@@ -35,19 +35,20 @@ config NIOS2_DTB_PHYS_ADDR
 	help
 	  Physical address of a dtb blob.
 
-config NIOS2_DTB_SOURCE_BOOL
+config BUILTIN_DTB
 	bool "Compile and link device tree into kernel image"
 	depends on !COMPILE_TEST
+	select GENERIC_BUILTIN_DTB
 	help
 	  This allows you to specify a dts (device tree source) file
 	  which will be compiled and linked into the kernel image.
 
-config NIOS2_DTB_SOURCE
-	string "Device tree source file"
-	depends on NIOS2_DTB_SOURCE_BOOL
+config BUILTIN_DTB_NAME
+	string "Built-in device tree name"
+	depends on BUILTIN_DTB
 	default ""
 	help
-	  Absolute path to the device tree source (dts) file describing your
+	  Relative path to the device tree without suffix describing your
 	  system.
 
 comment "Nios II instructions"
-- 
2.43.0



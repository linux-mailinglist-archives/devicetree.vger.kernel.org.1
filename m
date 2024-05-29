Return-Path: <devicetree+bounces-70288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CFF8D3090
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:15:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 958681F27723
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9404917DE09;
	Wed, 29 May 2024 08:07:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBCD216936A;
	Wed, 29 May 2024 08:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=153.127.30.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716970054; cv=none; b=tFA95Iw9togmxA76vLNF+dD94Z5oO+W6GoJrmLkbdWBdY1kEsPilQx1spAkcZz6/cZ7taJ4EbzkJAQZ569EnS9wzR3hWlD0otRRZFYiLROHenAv/E5a0NUIh13qvRyBi+h+zE011GQ9QNnmECtBPItfjczkx6UCIFk0NdDFrafA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716970054; c=relaxed/simple;
	bh=+jChVBe98OHShkl2slecq/QYxzAwUnQ28RTjjeoxIWQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lVzGVNRtsvLQQ34U4pD+YqWIiAaA00Wl9TQsmDnOkpozskswslfORoPFvGCrgfDvnORC55b+wd+EGyvvzDAqkpjoeTt423cgTeFenyc1l4uQSlSbyhOWnQ+VGkx2JFsskiY79e2XtZlsw3Nnx+hwKwZ+Pa1NsTlj8EHvkDYS9rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=users.sourceforge.jp; spf=fail smtp.mailfrom=users.sourceforge.jp; arc=none smtp.client-ip=153.127.30.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=users.sourceforge.jp
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=users.sourceforge.jp
Received: from SIOS1075.ysato.name (al128006.dynamic.ppp.asahi-net.or.jp [111.234.128.6])
	by sakura.ysato.name (Postfix) with ESMTPSA id 4961B1C03C6;
	Wed, 29 May 2024 17:01:33 +0900 (JST)
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: linux-sh@vger.kernel.org
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Rich Felker <dalias@libc.org>,
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
	Lee Jones <lee@kernel.org>,
	Helge Deller <deller@gmx.de>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sre@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Baoquan He <bhe@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Kefeng Wang <wangkefeng.wang@huawei.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Azeem Shaikh <azeemshaikh38@gmail.com>,
	Guo Ren <guoren@kernel.org>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Sam Ravnborg <sam@ravnborg.org>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Sergey Shtylyov <s.shtylyov@omp.ru>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-pci@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-fbdev@vger.kernel.org
Subject: [DO NOT MERGE v8 03/36] sh: Enable OF support for build and configuration.
Date: Wed, 29 May 2024 17:00:49 +0900
Message-Id: <8249ec600f70f80c5a755a9e1d233af21907d7f9.1716965617.git.ysato@users.sourceforge.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716965617.git.ysato@users.sourceforge.jp>
References: <cover.1716965617.git.ysato@users.sourceforge.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

IRQ, CLK and PCI will be migrated to a common driver framework.
So if OF, disable the SH specific drivers.

Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
---
 arch/sh/Kconfig                 | 11 ++++++-----
 arch/sh/drivers/Makefile        |  2 ++
 arch/sh/kernel/cpu/Makefile     |  9 +++++++--
 arch/sh/kernel/cpu/sh4/Makefile |  3 +++
 4 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/arch/sh/Kconfig b/arch/sh/Kconfig
index d6704c57f9dc..91c7c72bc0db 100644
--- a/arch/sh/Kconfig
+++ b/arch/sh/Kconfig
@@ -66,10 +66,10 @@ config SUPERH
 	select MODULES_USE_ELF_RELA
 	select NEED_SG_DMA_LENGTH
 	select NO_DMA if !MMU && !DMA_COHERENT
-	select NO_GENERIC_PCI_IOPORT_MAP if PCI
+	select NO_GENERIC_PCI_IOPORT_MAP if !SH_DEVICE_TREE
 	select OLD_SIGACTION
 	select OLD_SIGSUSPEND
-	select PCI_DOMAINS if PCI
+	select PCI_DOMAINS if PCI && !SH_DEVICE_TREE
 	select PERF_EVENTS
 	select PERF_USE_VMALLOC
 	select RTC_LIB
@@ -154,7 +154,7 @@ menu "System type"
 #
 config CPU_SH2
 	bool
-	select SH_INTC
+	select SH_INTC if !SH_DEVICE_TREE
 
 config CPU_SH2A
 	bool
@@ -180,7 +180,7 @@ config CPU_SH4
 	select CPU_HAS_INTEVT
 	select CPU_HAS_SR_RB
 	select CPU_HAS_FPU if !CPU_SH4AL_DSP
-	select SH_INTC
+	select SH_INTC if !SH_DEVICE_TREE
 	select SYS_SUPPORTS_SH_TMU
 
 config CPU_SH4A
@@ -523,6 +523,7 @@ config SH_PCLK_FREQ
 
 config SH_CLK_CPG
 	def_bool y
+	depends on !COMMON_CLK
 
 config SH_CLK_CPG_LEGACY
 	depends on SH_CLK_CPG
@@ -667,7 +668,7 @@ config BUILTIN_DTB_SOURCE
 	  kernel.
 
 config ZERO_PAGE_OFFSET
-	hex
+	hex "Zero page offset"
 	default "0x00010000" if PAGE_SIZE_64KB || SH_RTS7751R2D || \
 				SH_7751_SOLUTION_ENGINE
 	default "0x00004000" if PAGE_SIZE_16KB || SH_SH03
diff --git a/arch/sh/drivers/Makefile b/arch/sh/drivers/Makefile
index 8bd10b904bf9..83f609ca1eb4 100644
--- a/arch/sh/drivers/Makefile
+++ b/arch/sh/drivers/Makefile
@@ -5,6 +5,8 @@
 
 obj-y		+= dma/ platform_early.o
 
+ifndef CONFIG_SH_DEVICE_TREE
 obj-$(CONFIG_PCI)		+= pci/
+endif
 obj-$(CONFIG_PUSH_SWITCH)	+= push-switch.o
 obj-$(CONFIG_HEARTBEAT)		+= heartbeat.o
diff --git a/arch/sh/kernel/cpu/Makefile b/arch/sh/kernel/cpu/Makefile
index 46118236bf04..e00ebf134985 100644
--- a/arch/sh/kernel/cpu/Makefile
+++ b/arch/sh/kernel/cpu/Makefile
@@ -16,6 +16,11 @@ obj-$(CONFIG_ARCH_SHMOBILE)	+= shmobile/
 # Common interfaces.
 
 obj-$(CONFIG_SH_ADC)		+= adc.o
+ifndef CONFIG_COMMON_CLK
+obj-y += clock.o
 obj-$(CONFIG_SH_CLK_CPG_LEGACY)	+= clock-cpg.o
-
-obj-y	+= irq/ init.o clock.o fpu.o pfc.o proc.o
+endif
+ifndef CONFIG_GENERIC_IRQ_CHIP
+obj-y	+= irq/
+endif
+obj-y	+= init.o fpu.o pfc.o proc.o
diff --git a/arch/sh/kernel/cpu/sh4/Makefile b/arch/sh/kernel/cpu/sh4/Makefile
index 02e3ee16e15c..33da4c86feff 100644
--- a/arch/sh/kernel/cpu/sh4/Makefile
+++ b/arch/sh/kernel/cpu/sh4/Makefile
@@ -15,6 +15,7 @@ perf-$(CONFIG_CPU_SUBTYPE_SH7750)	:= perf_event.o
 perf-$(CONFIG_CPU_SUBTYPE_SH7750S)	:= perf_event.o
 perf-$(CONFIG_CPU_SUBTYPE_SH7091)	:= perf_event.o
 
+ifndef CONFIG_SH_DEVICE_TREE
 # CPU subtype setup
 obj-$(CONFIG_CPU_SUBTYPE_SH7750)	+= setup-sh7750.o
 obj-$(CONFIG_CPU_SUBTYPE_SH7750R)	+= setup-sh7750.o
@@ -29,5 +30,7 @@ ifndef CONFIG_CPU_SH4A
 clock-$(CONFIG_CPU_SH4)			:= clock-sh4.o
 endif
 
+endif # CONFIG_SH_DEVICE_TREE
+
 obj-y					+= $(clock-y)
 obj-$(CONFIG_PERF_EVENTS)		+= $(perf-y)
-- 
2.39.2



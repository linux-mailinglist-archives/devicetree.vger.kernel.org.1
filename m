Return-Path: <devicetree+bounces-56160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5670897FE8
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 07:19:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4574C1F23CF1
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 05:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C7E17350E;
	Thu,  4 Apr 2024 05:15:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65E371B58;
	Thu,  4 Apr 2024 05:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=153.127.30.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712207710; cv=none; b=HmCRghtm7o9mdFQPN1cKm7VztkNLq6Kn7W/SQnKk5Gq1k31qy26OrIH1Ts3yvYkpFRud0LHWvAFS/ASg/FwO0osxkgdUNzmfZ2eu610JypIqbcE6CEtwSnFHBGviHSFzjv5wceC6Exib68NvSJuajhG5s5pgq0hb4DieYeE82K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712207710; c=relaxed/simple;
	bh=HPmmSvMhl0GCAZDx4/OjF2pM4q8N+rvJP+xvKvCJtLQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HsSVhoXq63Uw0loRAGk987t/Ab22OgQ3+x6FfsYv4ouOdk8vqHeJw8JxiVlJ6LYDhtONj/TAAVe1YxGbvNqpZDjqdz94+gm0pxlrWVO4MLnJsOMDQlQRnniVMA4+ALQrL33kH0BjZWu5G6TLmwggL2RG0wIrcuiRJpqxqDrO21I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=users.sourceforge.jp; spf=fail smtp.mailfrom=users.sourceforge.jp; arc=none smtp.client-ip=153.127.30.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=users.sourceforge.jp
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=users.sourceforge.jp
Received: from SIOS1075.ysato.name (al128006.dynamic.ppp.asahi-net.or.jp [111.234.128.6])
	by sakura.ysato.name (Postfix) with ESMTPSA id D0D0F1C0FA0;
	Thu,  4 Apr 2024 14:15:05 +0900 (JST)
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: linux-sh@vger.kernel.org
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
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
	Shawn Guo <shawnguo@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>,
	David Rientjes <rientjes@google.com>,
	Hyeonggon Yoo <42.hyeyoo@gmail.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Baoquan He <bhe@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Kefeng Wang <wangkefeng.wang@huawei.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Guo Ren <guoren@kernel.org>,
	Azeem Shaikh <azeemshaikh38@gmail.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Manikanta Guntupalli <manikanta.guntupalli@amd.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Sam Ravnborg <sam@ravnborg.org>,
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
Subject: [RESEND v7 07/37] sh: Fix COMMON_CLK support in CONFIG_OF=y.
Date: Thu,  4 Apr 2024 14:14:18 +0900
Message-Id: <429d40e16e70381d25d77c627ae490a2be28a0b7.1712207606.git.ysato@users.sourceforge.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712207606.git.ysato@users.sourceforge.jp>
References: <cover.1712207606.git.ysato@users.sourceforge.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Initialize the clock and timer using the COMMON_CLK procedure.
sh's earlytimer mechanism doesn't work properly in OF,
so timer initialization is delayed.
If CONFIG_OF=y, perform the general timer initialization procedure.

Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
---
 arch/sh/boards/of-generic.c | 28 ++++------------------------
 arch/sh/kernel/time.c       | 12 ++++++++++++
 2 files changed, 16 insertions(+), 24 deletions(-)

diff --git a/arch/sh/boards/of-generic.c b/arch/sh/boards/of-generic.c
index f7f3e618e85b..f1ca5a914c11 100644
--- a/arch/sh/boards/of-generic.c
+++ b/arch/sh/boards/of-generic.c
@@ -8,6 +8,7 @@
 #include <linux/of.h>
 #include <linux/of_clk.h>
 #include <linux/of_fdt.h>
+#include <linux/of_platform.h>
 #include <linux/clocksource.h>
 #include <linux/irqchip.h>
 #include <asm/machvec.h>
@@ -98,16 +99,7 @@ static void sh_of_smp_probe(void)
 
 #endif
 
-static void noop(void)
-{
-}
-
-static int noopi(void)
-{
-	return 0;
-}
-
-static void __init sh_of_mem_reserve(void)
+static void __init sh_of_mem_init(void)
 {
 	early_init_fdt_reserve_self();
 	early_init_fdt_scan_reserved_mem();
@@ -140,25 +132,13 @@ static void __init sh_of_init_irq(void)
 	irqchip_init();
 }
 
-static int __init sh_of_clk_init(void)
-{
-#ifdef CONFIG_COMMON_CLK
-	/* Disabled pending move to COMMON_CLK framework. */
-	pr_info("SH generic board support: scanning for clk providers\n");
-	of_clk_init(NULL);
-#endif
-	return 0;
-}
-
 static struct sh_machine_vector __initmv sh_of_generic_mv = {
 	.mv_setup	= sh_of_setup,
 	.mv_name	= "devicetree", /* replaced by DT root's model */
 	.mv_irq_demux	= sh_of_irq_demux,
 	.mv_init_irq	= sh_of_init_irq,
-	.mv_clk_init	= sh_of_clk_init,
-	.mv_mode_pins	= noopi,
-	.mv_mem_init	= noop,
-	.mv_mem_reserve	= sh_of_mem_reserve,
+	.mv_mode_pins	= generic_mode_pins,
+	.mv_mem_init	= sh_of_mem_init,
 };
 
 struct sh_clk_ops;
diff --git a/arch/sh/kernel/time.c b/arch/sh/kernel/time.c
index 821a09cbd605..ce5b7c2f8628 100644
--- a/arch/sh/kernel/time.c
+++ b/arch/sh/kernel/time.c
@@ -19,7 +19,9 @@
 #include <asm/clock.h>
 #include <asm/rtc.h>
 #include <asm/platform_early.h>
+#include <linux/of_clk.h>
 
+#ifndef CONFIG_SH_DEVICE_TREE
 static void __init sh_late_time_init(void)
 {
 	/*
@@ -43,3 +45,13 @@ void __init time_init(void)
 
 	late_time_init = sh_late_time_init;
 }
+#else
+/* CONFIG_SH_DEVICE_TREE */
+void __init time_init(void)
+{
+	pr_info("SH generic board support: scanning for clk providers\n");
+
+	of_clk_init(NULL);
+	timer_probe();
+}
+#endif
-- 
2.39.2



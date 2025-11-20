Return-Path: <devicetree+bounces-240523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AF52AC7258D
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 07:30:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CB9B034B9F3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 06:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5CD82D949E;
	Thu, 20 Nov 2025 06:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="A8BkbQ+o"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7CCB248166;
	Thu, 20 Nov 2025 06:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763620241; cv=none; b=bq1mgwqULNVuBFhi8reuC1I0orCenOp/qG1AU0SJOHxJUUoFCjyphfsuDdLJOfWST7iBd7M3jmfwzss3ARWxBNLHy9d/0tyWJqyN+F+z0fXyPSYMJnIf0qD+SDorIKblbQE5W39t7f0yk0GlpyJ5UGBwUDdviX8u/IrhJcUOx7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763620241; c=relaxed/simple;
	bh=oDFBgb7N7NA90MkJdtzrncH7pyUhwM8OKFb9+2TIf8Y=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=vE8aZqFljbTNDwK07jWi5nFVtJZj7dpl76auES47kzUQjQwcJ/OdajwJW22ts4eMixbdKg3xDy275mGneEJFB3+aIa0U6eLuFquWcj5tG5EnHgLc5SroKycBSubp83z0+eCVBP5JmoQQyJktsRjyTDPVOQSLBZG44NLe49YBj/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=A8BkbQ+o; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AK6UCSF0982950, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763620212; bh=+pDOh4cKZ0MAI/uGXhckbPfmb2xa4KhR7ngbQqXzqAg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=A8BkbQ+olvpljkMcPczKYe2IllXz9NbH+wlHEthwiSQCMyytRMESyucIojMUxPoYf
	 XRl1Tx7bEy+zM9TEXcabkXVuHGDNfxFWootT0AJMnWc0KJk8jvlZQx1Mk70JQ6m+rX
	 gT1nlh/91QdoviJeYr6SDMTyo6/u/kBrxyZ7Zd73DXA5VwwEIICavgUh7Lx2zIFIPn
	 iezsAObzV2cVxBeqOeZoDg4M3nLpxDapaJMw1CR2rt/T5jdbffGKKleXPXD9Fbsfyr
	 bj/wfptrFrs15Rf6ljSpKhPPCec+7ZYSboa6yodF6u35LN8IyhHs3LpfQknTyv+kzE
	 5a3fAHW4S7VvA==
Received: from mail.realtek.com (rtkexhmbs02.realtek.com.tw[172.21.6.41])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AK6UCSF0982950
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 20 Nov 2025 14:30:12 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS02.realtek.com.tw (172.21.6.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Thu, 20 Nov 2025 14:30:11 +0800
Received: from ww-haowen.ting (172.21.177.97) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Thu, 20 Nov 2025 14:30:11 +0800
From: Hao-Wen Ting <haowen.ting@realtek.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
CC: <jinn.cheng@realtek.com>, <edwardwu@realtek.com>, <phelic@realtek.com>,
        <shawn.huang724@realtek.com>, <haowen.ting@realtek.com>,
        <cy.huang@realtek.com>, <james.tai@realtek.com>, <cylee12@realtek.com>,
        <phinex@realtek.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
        <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <stanley_chang@realtek.com>
Subject: [PATCH v4 2/2] clocksource: Add Realtek system timer driver
Date: Thu, 20 Nov 2025 14:30:10 +0800
Message-ID: <20251120063010.830805-3-haowen.ting@realtek.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251120063010.830805-1-haowen.ting@realtek.com>
References: <20251120063010.830805-1-haowen.ting@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add a system timer driver for Realtek SoCs.

This driver registers the 1 MHz global hardware counter on Realtek
platforms as a clock event device. Since this hardware counter starts
counting automatically after SoC power-on, no clock initialization is
required. Because the counter does not stop or get affected by CPU power
down, and it supports oneshot mode, it is typically used as a tick
broadcast timer.

Signed-off-by: Hao-Wen Ting <haowen.ting@realtek.com>
---
 MAINTAINERS                         |   5 +
 drivers/clocksource/Kconfig         |  11 ++
 drivers/clocksource/Makefile        |   1 +
 drivers/clocksource/timer-realtek.c | 150 ++++++++++++++++++++++++++++
 4 files changed, 167 insertions(+)
 create mode 100644 drivers/clocksource/timer-realtek.c

diff --git a/MAINTAINERS b/MAINTAINERS
index c7a116b795d5..90f511bb4982 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21670,6 +21670,11 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/spi/realtek,rtl9301-snand.yaml
 F:	drivers/spi/spi-realtek-rtl-snand.c
 
+REALTEK SYSTIMER DRIVER
+M:	Hao-Wen Ting <haowen.ting@realtek.com>
+S:	Maintained
+F:	drivers/clocksource/timer-realtek.c
+
 REALTEK WIRELESS DRIVER (rtlwifi family)
 M:	Ping-Ke Shih <pkshih@realtek.com>
 L:	linux-wireless@vger.kernel.org
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index ffcd23668763..aa59e5b13351 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -782,4 +782,15 @@ config NXP_STM_TIMER
           Enables the support for NXP System Timer Module found in the
           s32g NXP platform series.
 
+config RTK_SYSTIMER
+	bool "Realtek SYSTIMER support"
+	depends on ARM || ARM64
+	depends on ARCH_REALTEK || COMPILE_TEST
+	select TIMER_OF
+	help
+	  This option enables the driver that registers the global 1 MHz hardware
+	  counter as a clock event device on Realtek SoCs. Make sure to enable
+	  this option only when building for a Realtek platform or for compilation
+	  testing.
+
 endmenu
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index ec4452ee958f..b46376af6b49 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -95,3 +95,4 @@ obj-$(CONFIG_CLKSRC_LOONGSON1_PWM)	+= timer-loongson1-pwm.o
 obj-$(CONFIG_EP93XX_TIMER)		+= timer-ep93xx.o
 obj-$(CONFIG_RALINK_TIMER)		+= timer-ralink.o
 obj-$(CONFIG_NXP_STM_TIMER)		+= timer-nxp-stm.o
+obj-$(CONFIG_RTK_SYSTIMER)		+= timer-realtek.o
diff --git a/drivers/clocksource/timer-realtek.c b/drivers/clocksource/timer-realtek.c
new file mode 100644
index 000000000000..4f0439de9939
--- /dev/null
+++ b/drivers/clocksource/timer-realtek.c
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2025 Realtek Semiconductor Corp.
+ */
+
+#define pr_fmt(fmt)	KBUILD_MODNAME ": " fmt
+
+#include <linux/irqflags.h>
+#include <linux/interrupt.h>
+#include "timer-of.h"
+
+#define ENBL 1
+#define DSBL 0
+
+#define SYSTIMER_RATE 1000000
+#define SYSTIMER_MIN_DELTA 0x64
+#define SYSTIMER_MAX_DELTA ULONG_MAX
+
+/* SYSTIMER Register Offset (RTK Internal Use) */
+#define TS_LW_OFST 0x0
+#define TS_HW_OFST 0x4
+#define TS_CMP_VAL_LW_OFST 0x8
+#define TS_CMP_VAL_HW_OFST 0xC
+#define TS_CMP_CTRL_OFST 0x10
+#define TS_CMP_STAT_OFST 0x14
+
+/* SYSTIMER CMP CTRL REG Mask */
+#define TS_CMP_EN_MASK 0x1
+#define TS_WR_EN0_MASK 0x2
+
+static void __iomem *systimer_base;
+
+static u64 rtk_ts64_read(void)
+{
+	u32 low, high;
+	u64 ts;
+
+	/* Caution: Read LSB word (TS_LW_OFST) first then MSB (TS_HW_OFST) */
+	low = readl(systimer_base + TS_LW_OFST);
+	high = readl(systimer_base + TS_HW_OFST);
+	ts = ((u64)high << 32) | low;
+
+	return ts;
+}
+
+static void rtk_cmp_value_write(u64 value)
+{
+	u32 high, low;
+
+	low = value & 0xFFFFFFFF;
+	high = value >> 32;
+
+	writel(high, systimer_base + TS_CMP_VAL_HW_OFST);
+	writel(low, systimer_base + TS_CMP_VAL_LW_OFST);
+}
+
+static inline void rtk_cmp_en_write(bool cmp_en)
+{
+	u32 val;
+
+	val = TS_WR_EN0_MASK;
+	if (cmp_en == ENBL)
+		val |= TS_CMP_EN_MASK;
+
+	writel(val, systimer_base + TS_CMP_CTRL_OFST);
+}
+
+static int rtk_syst_clkevt_next_event(unsigned long cycles, struct clock_event_device *clkevt)
+{
+	u64 cmp_val;
+
+	rtk_cmp_en_write(DSBL);
+	cmp_val = rtk_ts64_read();
+
+	/* Set CMP value to current timestamp plus delta_us */
+	rtk_cmp_value_write(cmp_val + cycles);
+	rtk_cmp_en_write(ENBL);
+	return 0;
+}
+
+static irqreturn_t rtk_ts_match_intr_handler(int irq, void *dev_id)
+{
+	struct clock_event_device *clkevt = dev_id;
+	void __iomem *reg_base;
+	u32 val;
+
+	/* Disable TS CMP Match */
+	rtk_cmp_en_write(DSBL);
+
+	/* Clear TS CMP INTR */
+	reg_base = systimer_base + TS_CMP_STAT_OFST;
+	val = readl(reg_base) & TS_CMP_EN_MASK;
+	writel(val | TS_CMP_EN_MASK, reg_base);
+	clkevt->event_handler(clkevt);
+
+	return IRQ_HANDLED;
+}
+
+static int rtk_syst_shutdown(struct clock_event_device *clkevt)
+{
+	void __iomem *reg_base;
+	u64 cmp_val = 0;
+
+	/* Disable TS CMP Match */
+	rtk_cmp_en_write(DSBL);
+	/* Set compare value to 0 */
+	rtk_cmp_value_write(cmp_val);
+
+	/* Clear TS CMP INTR */
+	reg_base = systimer_base + TS_CMP_STAT_OFST;
+	writel(TS_CMP_EN_MASK, reg_base);
+	return 0;
+}
+
+static struct timer_of rtk_timer_to = {
+	.flags = TIMER_OF_IRQ | TIMER_OF_BASE,
+
+	.clkevt = {
+		.name			= "rtk-clkevt",
+		.rating			= 300,
+		.cpumask		= cpu_possible_mask,
+		.features		= CLOCK_EVT_FEAT_DYNIRQ |
+					  CLOCK_EVT_FEAT_ONESHOT,
+		.set_next_event		= rtk_syst_clkevt_next_event,
+		.set_state_oneshot	= rtk_syst_shutdown,
+		.set_state_shutdown	= rtk_syst_shutdown,
+	},
+
+	.of_irq = {
+		.flags			= IRQF_TIMER | IRQF_IRQPOLL,
+		.handler		= rtk_ts_match_intr_handler,
+	},
+};
+
+static int __init rtk_systimer_init(struct device_node *node)
+{
+	int ret;
+
+	ret = timer_of_init(node, &rtk_timer_to);
+	if (ret)
+		return ret;
+
+	systimer_base = timer_of_base(&rtk_timer_to);
+	clockevents_config_and_register(&rtk_timer_to.clkevt, SYSTIMER_RATE,
+					SYSTIMER_MIN_DELTA, SYSTIMER_MAX_DELTA);
+
+	return 0;
+}
+
+TIMER_OF_DECLARE(rtk_systimer, "realtek,rtd1625-systimer", rtk_systimer_init);
-- 
2.34.1



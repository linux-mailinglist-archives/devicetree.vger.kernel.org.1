Return-Path: <devicetree+bounces-239224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 208AAC62BBA
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 08:34:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C13573A54EC
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08897319875;
	Mon, 17 Nov 2025 07:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="afx++lF0"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40B731986E;
	Mon, 17 Nov 2025 07:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763364870; cv=none; b=tueynii9nDELLuYSv9yMNi9iKz3ASSGZ7LQSYqQYm7HOMVgQYrY1m3WfPobDpO8bb+7KXlEiZnViNXmuJCQBLX0FYTntLi1C3XGX3nVWJkplQYehImoIewlK4tHaLc3c3VCLbKDA6atThhpIQHLtwQLfhybd/4n4XFpcPfrSPJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763364870; c=relaxed/simple;
	bh=WoAa+OIb6AlAJpEB/4he7zbYrR6+tYm4uafIL7fhz6Y=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=o/kGZZkZ7HngSvRClP8N6J2g/kGZtYPdvX6Iie8JLNQKxvkMFVHgYiHhkiOm4+Alw7jsfgBQ6+6PCDQA8Y67cUQDkeYi5yOPmK7KR5zljaUEnre8JI3cMTRbVb0XrL441LiniW47DTivjwzx2zGuyI+02jZ9HyWBCRQ8fOHxHPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=afx++lF0; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AH7Y7Ma83177073, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763364847; bh=lEpHntmWMrAMa5P6k+ZXb2GBjH3lyKGpeOtiiXEbr+w=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=afx++lF0onoKpC6LTcVleerOk2CDg26F8phvhyvQ2NSGmn/lHgMXWQ7y0ixjS/8MX
	 6eiCVYcPH8X4W3Lt4cbGRepDrK4gr2KLkPgVWNKvjA16P0ooroZkiyPHCZEmqs4pDS
	 cmgTT1fm2HJnWP0ZCQVRnhOvwxieoTM6jMFB359gU7TVishm+Cv5fU+IMkRzMwgIXc
	 V+o/n4sFBGYdSSIklXYHsEmXkDbSYVpoO4XdiEzW8c//VYIbup4jENDbroTpeJY4t8
	 kFHZfiKOt0hMts8dgoCRJbV+UWELde1+XXaHw0Zi4aNPIFrT0KWPAY2X9o3csKCESZ
	 vIcz+YoTnv9zQ==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AH7Y7Ma83177073
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Nov 2025 15:34:07 +0800
Received: from RTKEXHMBS05.realtek.com.tw (10.21.1.55) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 15:34:08 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS05.realtek.com.tw (10.21.1.55) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 15:34:08 +0800
Received: from ww-haowen.ting (172.21.177.97) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Mon, 17 Nov 2025 15:34:08 +0800
From: Hao-Wen Ting <haowen.ting@realtek.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
CC: <jinn.cheng@realtek.com>, <edwardwu@realtek.com>, <phelic@realtek.com>,
        <shawn.huang724@realtek.com>, <haowen.ting@realtek.com>,
        <cy.huang@realtek.com>, <james.tai@realtek.com>, <cylee12@realtek.com>,
        <phinex@realtek.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
        <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <stanley_chang@realtek.com>
Subject: [PATCH v3 2/2] clocksource: Add Realtek systimer as tick broadcast driver
Date: Mon, 17 Nov 2025 15:34:08 +0800
Message-ID: <20251117073408.428190-3-haowen.ting@realtek.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117073408.428190-1-haowen.ting@realtek.com>
References: <20251117073408.428190-1-haowen.ting@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add a tick broadcast timer driver for Realtek SoCs.

On Realtek platforms, CPUs can enter deep idle states (C-states) where
the local timer is stopped and powered off. Without a global tick
broadcast timer, one CPU must remain awake to wake up the others,
preventing all CPUs from entering deep idle simultaneously.

This driver provides a tick broadcast timer which remains active
during deep idle states. This allows all CPUs to enter power-cut
idle states simultaneously, significantly reducing overall power
consumption.

The timer operates at 1MHz and supports oneshot mode.

Signed-off-by: Hao-Wen Ting <haowen.ting@realtek.com>
---
 MAINTAINERS                         |   5 +
 drivers/clocksource/Kconfig         |  11 ++
 drivers/clocksource/Makefile        |   1 +
 drivers/clocksource/timer-realtek.c | 172 ++++++++++++++++++++++++++++
 4 files changed, 189 insertions(+)
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
index ffcd23668763..143dfd57e9e2 100644
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
+	  This enables the global tick-broadcast timer on Realtek platforms.
+	  If your Realtek platform supports power-cut level CPU idle states,
+	  enabling this timer allows all CPUs to enter power-cut simultaneously
+	  to achieve lower power consumption.
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
index 000000000000..f484fd97e964
--- /dev/null
+++ b/drivers/clocksource/timer-realtek.c
@@ -0,0 +1,172 @@
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
+	u64 ts;
+	u32 low, high;
+
+	/* Caution: Read LSB word (TS_LW_OFST) first then MSB (TS_HW_OFST) */
+	low = readl(systimer_base + TS_LW_OFST);
+	high = readl(systimer_base + TS_HW_OFST);
+
+	pr_debug("64bit-TS:HW=0x%08x,LW=0x%08x\n", high, low);
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
+	pr_debug("Write 64bit-CMP:HW=0x%08x,LW=0x%08x\n", high, low);
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
+	pr_debug("Write TS CMP CTRL = 0x%08x\n", val);
+}
+
+static int rtk_syst_clkevt_next_ktime(ktime_t expires,
+				      struct clock_event_device *clkevt)
+{
+	u64 cmp_val;
+	unsigned long flags;
+	ktime_t now = ktime_get();
+	s64 delta_ns = ktime_to_ns(ktime_sub(expires, now));
+	u64 delta_us = delta_ns / 1000;
+
+	pr_debug("delta_ns = %lld, clkevt.min_delta_ns = %llu\n",
+		 delta_ns, clkevt->min_delta_ns);
+
+	if (delta_ns <= (s64)clkevt->min_delta_ns) {
+		delta_ns = clkevt->min_delta_ns;
+		delta_us = delta_ns / 1000;
+		pr_debug("Clamping delta_ns to min_delta_ns\n");
+	}
+
+	rtk_cmp_en_write(DSBL);
+	local_irq_save(flags);
+	cmp_val = rtk_ts64_read();
+
+	/* Set CMP value to current timestamp plus delta_us */
+	rtk_cmp_value_write(cmp_val + delta_us);
+	rtk_cmp_en_write(ENBL);
+	local_irq_restore(flags);
+	return 0;
+}
+
+static irqreturn_t rtk_ts_match_intr_handler(int irq, void *dev_id)
+{
+	u32 val;
+	void __iomem *reg_base;
+	struct clock_event_device *clkevt = dev_id;
+
+	/* Disable TS CMP Match */
+	rtk_cmp_en_write(DSBL);
+
+	/* Clear TS CMP INTR */
+	reg_base = systimer_base + TS_CMP_STAT_OFST;
+	val = readl(reg_base) & TS_CMP_EN_MASK;
+	writel(val | TS_CMP_EN_MASK, reg_base);
+
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
+static struct timer_of _to = {
+	.flags = TIMER_OF_IRQ | TIMER_OF_BASE,
+
+	.clkevt = {
+		.name = "rtk-clkevt",
+		.rating = 300,
+		.cpumask = cpu_possible_mask,
+		.features = CLOCK_EVT_FEAT_DYNIRQ |
+			    CLOCK_EVT_FEAT_ONESHOT |
+			    CLOCK_EVT_FEAT_KTIME,
+		.set_next_ktime = rtk_syst_clkevt_next_ktime,
+		.set_state_oneshot = rtk_syst_shutdown,
+		.set_state_shutdown = rtk_syst_shutdown
+	},
+
+	.of_irq = {
+		.flags = IRQF_TIMER | IRQF_IRQPOLL,
+		.handler = rtk_ts_match_intr_handler
+	},
+};
+
+static int __init rtk_systimer_init(struct device_node *node)
+{
+	int ret;
+
+	ret = timer_of_init(node, &_to);
+	if (ret)
+		return ret;
+
+	systimer_base = timer_of_base(&_to);
+	clockevents_config_and_register(&_to.clkevt, SYSTIMER_RATE,
+					SYSTIMER_MIN_DELTA, SYSTIMER_MAX_DELTA);
+
+	return 0;
+}
+
+TIMER_OF_DECLARE(rtk_systimer, "realtek,rtd1625-systimer", rtk_systimer_init);
-- 
2.34.1



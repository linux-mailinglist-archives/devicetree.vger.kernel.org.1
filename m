Return-Path: <devicetree+bounces-242227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F70C88323
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 07:01:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A411D3B3F68
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 06:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF504315D57;
	Wed, 26 Nov 2025 06:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="gzKUwLeA"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FFF25782D;
	Wed, 26 Nov 2025 06:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764136884; cv=none; b=QZHDS4TTKH3AE30WecqHg4kpQQ7hCdP3hLYd10ADfpr/AmaVxEQJ1qp+oeU7m9yv9h6Y/pu9ZctmA012nISEsZftBUMQG9YwoCA6IXzJWlVRqDULqxytRHoWCfPz0iQ2LZJFxLHyLV6ln26NkBt9au4J3IsbwCUDVJ6eyvUNzuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764136884; c=relaxed/simple;
	bh=jtKjZYfKex07R5qltKOiGpOwQeAx0FQEIE7FwJTNrUQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=o7whuiU51SDealGII5MhtMOGebDCGK6AgJKpObG1P4IfmXFdtXR2HaCiElaR688YWPs8vbL9STR8kcXfVR6l7oZF/PQz+M2ELXGQ66G4FSAy2nOPKyE/zfTBPyz/QxmxyOFLLxQq1Iw9Ez1hdJd5jV4IM0Y8oP1ePVM2JmEKjLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=gzKUwLeA; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AQ61CxL4315786, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1764136872; bh=DYUJa6xhmHLbnSTO05pwW0RS8dTKC+BgTHmjXc1ZDtI=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=gzKUwLeAqPserY2HCvSP2HBq/7T+ihq4+jFgIzgud3dl416qlsVVNt1L24bI1PWW0
	 s+vEVy2Zd+gMVWM237YpUWfPH8MJe2z96+x9zOcVH5hh/VBRJUf3A8Lg1IAQPj1ZAj
	 Hf+prSWmrjvgH84V8egQtt/aNToT/er0pi22BQruuJhoATA0/NBsybzhGP7IBR/aOg
	 qXgkboNBmjUiySjCSo1JcKQ59q7ATQquYGW2SbMbeg8k7ZzxOH0Z+9IUVtetrArEqc
	 X9CcJS6haev6ZMJbdbU4kDM8vxADyiw0RqilN1oO8f2035dQtnFv85NvvVAyF2CbSB
	 DaUL2gHChc+dQ==
Received: from mail.realtek.com (rtkexhmbs02.realtek.com.tw[172.21.6.41])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AQ61CxL4315786
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 26 Nov 2025 14:01:12 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS02.realtek.com.tw (172.21.6.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Wed, 26 Nov 2025 14:01:12 +0800
Received: from RTKEXHMBS03.realtek.com.tw (10.21.1.53) by
 RTKEXHMBS06.realtek.com.tw (10.21.1.56) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Wed, 26 Nov 2025 14:01:10 +0800
Received: from ww-haowen.ting (172.21.177.97) by RTKEXHMBS03.realtek.com.tw
 (10.21.1.53) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Wed, 26 Nov 2025 14:01:10 +0800
From: Hao-Wen Ting <haowen.ting@realtek.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
CC: <jinn.cheng@realtek.com>, <edwardwu@realtek.com>, <phelic@realtek.com>,
        <shawn.huang724@realtek.com>, <haowen.ting@realtek.com>,
        <cy.huang@realtek.com>, <james.tai@realtek.com>,
        <stanley_chang@realtek.com>, <cylee12@realtek.com>,
        <phinex@realtek.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
        <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 2/2] clocksource: Add Realtek system timer driver
Date: Wed, 26 Nov 2025 14:01:10 +0800
Message-ID: <20251126060110.198330-3-haowen.ting@realtek.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251126060110.198330-1-haowen.ting@realtek.com>
References: <20251126060110.198330-1-haowen.ting@realtek.com>
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
Acked-by: Thomas Gleixner <tglx@linutronix.de>
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



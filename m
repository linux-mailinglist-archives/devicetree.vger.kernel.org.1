Return-Path: <devicetree+bounces-254657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5097D1A76A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2791030DCFB0
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F057034E74F;
	Tue, 13 Jan 2026 16:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ENKqJr9l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F02034E745
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768323162; cv=none; b=icffZm+Npjtzo7In226UC7mu/ydB9xYxaOazSuAEUyEeoEg5WfqT9+qVoQogYbOEXzgTLjHyV3KsPij7gid3lqST44epDDAxKzS9f+hzzRiOw2WW8hnjhbaiuyxCJhH1xhPX6et+CbGVmNRY5EPw4J1Ev4qCgZTUB4dTpm3W5TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768323162; c=relaxed/simple;
	bh=98GkFIzSMPnt3Tx/CMMLed78+ru8HzH6WGssVf+Ny5c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ss/6PupuNQzApM7fSlu3osFiL5N34hxjRAFoPvRYLwabrEiyWEGYTGbj+5zg/ijlzrqH6LCSgAb7UP0Bi4r3eA062N1c222PdXFJZn7r8Orabq7tGNAWsQfM49wstIEYVL77jOSNXDMwrqFND3AdrSyOQMTsKVQ2mpUZjF8fSOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ENKqJr9l; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so85387175e9.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768323150; x=1768927950; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YWhKzvLhaue9MXuU+3OoXk5PTgxl6mRUtqqJcyueqfM=;
        b=ENKqJr9lCMQxsKWrwUuy7UnDAvDa0wJGU+NSArHYDIQ1HZc0GgXYaluQm4v0ef9X+/
         4YhQAqLGFUpXRDr4RJ9kg5OeJDyrOJ1ur8rVSETFnPvjkFOslZC7x/FUjdjfDxNZTCKU
         YCbix15C8Wo9W6rGpaEa2tI68uHcp85K3hXHyx3Wka4sEqHWcg8T0dyrKfQP/IC0PomD
         Ioxsq0N1RflCb4FXdZOZ1ogW/TB2QpaT9pT12r6w065nGGbwnfMUgbB6ENKrk9HRY6g+
         rktOtrlMxiYhxQp0wIgCRQJNW09OeHnsfrigUH4M9wf8HTCn+a2LrJOZATEVawKzowaS
         SEOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768323150; x=1768927950;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YWhKzvLhaue9MXuU+3OoXk5PTgxl6mRUtqqJcyueqfM=;
        b=Lpaq5svrirfpTscTSCv4ULE3mvZnKTNrdu1u1Z7acavg94jc0i/eOp6/m6tehSMHJU
         ahJEW4eKCW42jVhTSvRaOLCmXTvtqqwGHeynkjqob1/hMJbeq51M20qK5UooWre5LDfa
         yms8vbDJL4d24oxmMZ/ZI4jeSktbinu0gIvY4mAC552GZ4cA0QpF3FUQMukURhdOvjIC
         mVax3QGK7Dd8B6WywE2kE8sCJ5abHa0100vC6wbwgwQgHh3g3VNlqg4Z92vMJ0FwwX9J
         f6hfnDi3Rg1a4+Z7oSfJr1Ow2H3QxAaXoSb/sk0xKz4boenJUopMdipAbWoEzOwOQXHR
         KdiA==
X-Forwarded-Encrypted: i=1; AJvYcCWkUkVTa6l2AzmMa0CFP4LcNyGvkuhrO/ITzoES+wB3RnxIKYrHC4Hps2p5aphMzn+VM/XkxqIZGR9v@vger.kernel.org
X-Gm-Message-State: AOJu0YxwNEPgJdI33+Ls0hyDHydv3+Yht4zuj9GPeOWK1IpFyNyvIff9
	BB8pBP15XCNoEkBzQo1AKr+3GQ8/pdpL08yA60B45QoMHQtCNDRbPxdwgRrWpZkit81S8/R4MAK
	MvQ9E
X-Gm-Gg: AY/fxX607rkDY1MO4mmOJkt7EzqELYwDUOPHdusOaDTXPieM46U+3Bu9A5S+I2R2tO1
	ULRdbpCQIxvWFAzL4MfGT+UyaVCtabBkw2q+Qho/milfN0jwfO0xTkroDQ4W3I/nk2XVCyRwHPO
	sGs712kjDwIS7B2ubBwZ08pYMjgnWawpIZ71oz6viFpdcPETx32pmtCOnMebVlLQ6X8Y8yNzaaU
	0pTU3BhZn8qnF6buvRwW4dYTp4afwf4tQ4svYhOnkgHzEWI/BBPeCCPfPwPFOAF7t8BYka3cH0f
	sneSQjII7e7HTa3Sxcc96oJC9DA5bUA6NbJZi10FzLwhyRyoZN8Nj/s8HBeGnD7JicOn0qNQR8V
	qaj3dkbt+U1ARBQEwdw9kfRy5tR/X8jfTIW/NXxO+haZt+KIxCc1yM8VmAzGtJJJrQiYkaIy1H0
	PwLi2VEzU0z8cS2/leaVKrZebVW3E1Zeg=
X-Google-Smtp-Source: AGHT+IFhvpSrB9NvHEJa2j8ApIkJ15IacGHwYubI274UiK0PMFXECr6SVMX+STZboFT3UsoJB1oumg==
X-Received: by 2002:a05:600c:4e86:b0:477:9574:d641 with SMTP id 5b1f17b1804b1-47d84b3281fmr256540365e9.22.1768323149606;
        Tue, 13 Jan 2026 08:52:29 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:3594:70ab:9964:c5ec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f41eb3bsm431684925e9.7.2026.01.13.08.52.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:52:29 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org
Cc: Frank.li@nxp.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v5 3/3] counter: Add STM based counter
Date: Tue, 13 Jan 2026 17:52:20 +0100
Message-ID: <20260113165220.1599038-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113165220.1599038-1-daniel.lezcano@linaro.org>
References: <20260113165220.1599038-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NXP S32G2 automotive platform integrates four Cortex-A53 cores and
three Cortex-M7 cores, along with a large number of timers and
counters. These hardware blocks can be used as clocksources or
clockevents, or as timestamp counters shared across the various
subsystems running alongside the Linux kernel, such as firmware
components. Their actual usage depends on the overall platform
software design.

In a Linux-based system, the kernel controls the counter, which is a
read-only shared resource for the other subsystems. One of its primary
purposes is to act as a common timestamp source for messages or
traces, allowing correlation of events occurring in different
operating system contexts.

These changes introduce a basic counter driver that can start, stop,
and reset the counter. It also handles overflow accounting and
configures the prescaler value.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/counter/Kconfig       |  10 +
 drivers/counter/Makefile      |   1 +
 drivers/counter/nxp-stm-cnt.c | 432 ++++++++++++++++++++++++++++++++++
 3 files changed, 443 insertions(+)
 create mode 100644 drivers/counter/nxp-stm-cnt.c

diff --git a/drivers/counter/Kconfig b/drivers/counter/Kconfig
index d30d22dfe577..bf5b281f194c 100644
--- a/drivers/counter/Kconfig
+++ b/drivers/counter/Kconfig
@@ -90,6 +90,16 @@ config MICROCHIP_TCB_CAPTURE
 	  To compile this driver as a module, choose M here: the
 	  module will be called microchip-tcb-capture.
 
+config NXP_STM_CNT
+	tristate "NXP System Timer Module Counter driver"
+	depends on ARCH_S32 || COMPILE_TEST
+	help
+	  Select this option to enable the NXP System Timer Module
+	  Counter driver.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called nxp_stm_cnt.
+
 config RZ_MTU3_CNT
 	tristate "Renesas RZ/G2L MTU3a counter driver"
 	depends on RZ_MTU3
diff --git a/drivers/counter/Makefile b/drivers/counter/Makefile
index 40e644948e7a..196b3c216875 100644
--- a/drivers/counter/Makefile
+++ b/drivers/counter/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_I8254)			+= i8254.o
 obj-$(CONFIG_INTEL_QEP)			+= intel-qep.o
 obj-$(CONFIG_INTERRUPT_CNT)		+= interrupt-cnt.o
 obj-$(CONFIG_MICROCHIP_TCB_CAPTURE)	+= microchip-tcb-capture.o
+obj-$(CONFIG_NXP_STM_CNT)		+= nxp-stm-cnt.o
 obj-$(CONFIG_RZ_MTU3_CNT)		+= rz-mtu3-cnt.o
 obj-$(CONFIG_STM32_TIMER_CNT)		+= stm32-timer-cnt.o
 obj-$(CONFIG_STM32_LPTIMER_CNT)		+= stm32-lptimer-cnt.o
diff --git a/drivers/counter/nxp-stm-cnt.c b/drivers/counter/nxp-stm-cnt.c
new file mode 100644
index 000000000000..dc2a666b323a
--- /dev/null
+++ b/drivers/counter/nxp-stm-cnt.c
@@ -0,0 +1,432 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2018,2021-2025 NXP
+ * Copyright 2025 Linaro Limited
+ *
+ * Author: Daniel Lezcano <daniel.lezcano@linaro.org>
+ *
+ * NXP S32G System Timer Module counters:
+ *
+ *  STM supports commonly required system and application software
+ *  timing functions. STM includes a 32-bit count-up timer and four
+ *  32-bit compare channels with a separate interrupt source for each
+ *  channel. The timer is driven by the STM module clock divided by an
+ *  8-bit prescale value (1 to 256). It has ability to stop the timer
+ *  in Debug mode
+ *
+ */
+#include <linux/atomic.h>
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/counter.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/pm.h>
+#include <linux/slab.h>
+
+#define STM_CR(__base)		(__base)
+#define STM_CR_TEN		BIT(0)
+#define STM_CR_FRZ		BIT(1)
+#define STM_CR_CPS_MASK         GENMASK(15, 8)
+
+#define STM_CCR0(__base)	((__base) + 0x10)
+#define STM_CCR_CEN		BIT(0)
+
+#define STM_CIR0(__base)	((__base) + 0x14)
+#define STM_CIR_CIF		BIT(0)
+
+#define STM_CMP0(__base)	((__base) + 0x18)
+
+#define STM_CNT(__base)		((__base) + 0x04)
+
+#define STM_ENABLE_MASK	(STM_CR_FRZ | STM_CR_TEN)
+
+struct nxp_stm_context {
+	u32 counter;
+	u8 prescaler;
+	bool is_started;
+};
+
+struct nxp_stm_cnt {
+	void __iomem *base;
+	atomic_t nr_wraps;
+	struct nxp_stm_context context;
+};
+
+static void nxp_stm_cnt_enable(struct nxp_stm_cnt *stm_cnt)
+{
+	u32 reg;
+
+	reg = readl(STM_CR(stm_cnt->base));
+
+	reg |= STM_ENABLE_MASK;
+
+	writel(reg, STM_CR(stm_cnt->base));
+}
+
+static void nxp_stm_cnt_disable(struct nxp_stm_cnt *stm_cnt)
+{
+	u32 reg;
+
+	reg = readl(STM_CR(stm_cnt->base));
+
+	reg &= ~STM_ENABLE_MASK;
+
+	writel(reg, STM_CR(stm_cnt->base));
+}
+
+static void nxp_stm_cnt_ccr_disable(struct nxp_stm_cnt *stm_cnt)
+{
+	writel(0, STM_CCR0(stm_cnt->base));
+}
+
+static void nxp_stm_cnt_ccr_enable(struct nxp_stm_cnt *stm_cnt)
+{
+	writel(STM_CCR_CEN, STM_CCR0(stm_cnt->base));
+}
+
+static void nxp_stm_cnt_cfg_overflow(struct nxp_stm_cnt *stm_cnt)
+{
+	/*
+	 * The STM does not have a dedicated interrupt when the
+	 * counter wraps. We need to use the comparator to check if it
+	 * wrapped or not.
+	 */
+	writel(0, STM_CMP0(stm_cnt->base));
+}
+
+static u32 nxp_stm_cnt_get_counter(struct nxp_stm_cnt *stm_cnt)
+{
+	return readl(STM_CNT(stm_cnt->base));
+}
+
+static void nxp_stm_cnt_set_counter(struct nxp_stm_cnt *stm_cnt, u32 counter)
+{
+	writel(counter, STM_CNT(stm_cnt->base));
+}
+
+static void nxp_stm_cnt_set_prescaler(struct nxp_stm_cnt *stm_cnt, u8 prescaler)
+{
+	u32 reg;
+
+	reg = readl(STM_CR(stm_cnt->base));
+
+	FIELD_MODIFY(STM_CR_CPS_MASK, &reg, prescaler);
+
+	writel(reg, STM_CR(stm_cnt->base));
+}
+
+static u8 nxp_stm_cnt_get_prescaler(struct nxp_stm_cnt *stm_cnt)
+{
+	u32 reg = readl(STM_CR(stm_cnt->base));
+
+	return FIELD_GET(STM_CR_CPS_MASK, reg);
+}
+
+static bool nxp_stm_cnt_is_started(struct nxp_stm_cnt *stm_cnt)
+{
+	u32 reg;
+
+	reg = readl(STM_CR(stm_cnt->base));
+
+	return !!FIELD_GET(STM_CR_TEN, reg);
+}
+
+static void nxp_stm_cnt_irq_ack(struct nxp_stm_cnt *stm_cnt)
+{
+	writel(STM_CIR_CIF, STM_CIR0(stm_cnt->base));
+}
+
+static irqreturn_t nxp_stm_cnt_irq(int irq, void *dev_id)
+{
+	struct counter_device *counter = dev_id;
+	struct nxp_stm_cnt *stm_cnt = counter_priv(counter);
+
+	nxp_stm_cnt_irq_ack(stm_cnt);
+
+	atomic_inc(&stm_cnt->nr_wraps);
+
+	counter_push_event(counter, COUNTER_EVENT_OVERFLOW, 0);
+
+	return IRQ_HANDLED;
+}
+
+static void nxp_stm_cnt_start(struct nxp_stm_cnt *stm_cnt)
+{
+	nxp_stm_cnt_cfg_overflow(stm_cnt);
+	nxp_stm_cnt_enable(stm_cnt);
+	nxp_stm_cnt_ccr_enable(stm_cnt);
+}
+
+static void nxp_stm_cnt_stop(struct nxp_stm_cnt *stm_cnt)
+{
+	nxp_stm_cnt_disable(stm_cnt);
+	nxp_stm_cnt_irq_ack(stm_cnt);
+	nxp_stm_cnt_ccr_disable(stm_cnt);
+}
+
+static int nxp_stm_cnt_prescaler_read(struct counter_device *counter,
+				      struct counter_count *count, u8 *val)
+{
+	struct nxp_stm_cnt *stm_cnt = counter_priv(counter);
+
+	*val = nxp_stm_cnt_get_prescaler(stm_cnt);
+
+	return 0;
+}
+
+static int nxp_stm_cnt_prescaler_write(struct counter_device *counter,
+				       struct counter_count *count, u8 val)
+{
+	struct nxp_stm_cnt *stm_cnt = counter_priv(counter);
+
+	nxp_stm_cnt_set_prescaler(stm_cnt, val);
+
+	return 0;
+}
+
+static int nxp_stm_cnt_count_enable_write(struct counter_device *counter,
+					  struct counter_count *count, u8 enable)
+{
+	struct nxp_stm_cnt *stm_cnt = counter_priv(counter);
+
+	if (enable)
+		nxp_stm_cnt_start(stm_cnt);
+	else
+		nxp_stm_cnt_stop(stm_cnt);
+
+	return 0;
+}
+
+static int nxp_stm_cnt_count_enable_read(struct counter_device *counter,
+					 struct counter_count *count, u8 *enable)
+{
+	struct nxp_stm_cnt *stm_cnt = counter_priv(counter);
+
+	*enable = nxp_stm_cnt_is_started(stm_cnt);
+
+	return 0;
+}
+
+static struct counter_comp stm_cnt_count_ext[] = {
+	COUNTER_COMP_COUNT_U8("prescaler", nxp_stm_cnt_prescaler_read, nxp_stm_cnt_prescaler_write),
+	COUNTER_COMP_ENABLE(nxp_stm_cnt_count_enable_read, nxp_stm_cnt_count_enable_write),
+};
+
+static int nxp_stm_cnt_action_read(struct counter_device *counter,
+				   struct counter_count *count,
+				   struct counter_synapse *synapse,
+				   enum counter_synapse_action *action)
+{
+	*action = COUNTER_SYNAPSE_ACTION_RISING_EDGE;
+
+	return 0;
+}
+
+static int nxp_stm_cnt_count_read(struct counter_device *dev,
+				  struct counter_count *count, u64 *val)
+{
+	struct nxp_stm_cnt *stm_cnt = counter_priv(dev);
+	u32 w1, w2, cnt;
+
+	do {
+		w1 = atomic_read(&stm_cnt->nr_wraps);
+		cnt = nxp_stm_cnt_get_counter(stm_cnt);
+		w2 = atomic_read(&stm_cnt->nr_wraps);
+	} while (w1 != w2);
+
+	*val = ((u64)w1 << 32) | cnt;
+
+	return 0;
+}
+
+static int nxp_stm_cnt_count_write(struct counter_device *dev,
+				   struct counter_count *count, u64 val)
+{
+	struct nxp_stm_cnt *stm_cnt = counter_priv(dev);
+
+	nxp_stm_cnt_set_counter(stm_cnt, 0);
+	atomic_set(&stm_cnt->nr_wraps, 0);
+
+	return 0;
+}
+
+static const enum counter_function nxp_stm_cnt_functions[] = {
+	COUNTER_FUNCTION_INCREASE,
+};
+
+static int nxp_stm_cnt_function_read(struct counter_device *counter,
+				     struct counter_count *count,
+				     enum counter_function *function)
+{
+	*function = COUNTER_FUNCTION_INCREASE;
+
+	return 0;
+}
+
+static int nxp_stm_cnt_watch_validate(struct counter_device *counter,
+				      const struct counter_watch *watch)
+{
+	switch (watch->event) {
+	case COUNTER_EVENT_OVERFLOW:
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static const struct counter_ops nxp_stm_cnt_counter_ops = {
+	.action_read = nxp_stm_cnt_action_read,
+	.count_read  = nxp_stm_cnt_count_read,
+	.count_write = nxp_stm_cnt_count_write,
+	.function_read = nxp_stm_cnt_function_read,
+	.watch_validate = nxp_stm_cnt_watch_validate,
+};
+
+static struct counter_signal nxp_stm_cnt_signals[] = {
+	{
+		.id = 0,
+		.name = "Counter wrap signal",
+	},
+};
+
+static const enum counter_synapse_action nxp_stm_cnt_synapse_actions[] = {
+	COUNTER_SYNAPSE_ACTION_RISING_EDGE,
+};
+
+static struct counter_synapse nxp_stm_cnt_synapses[] = {
+	{
+		.actions_list = nxp_stm_cnt_synapse_actions,
+		.num_actions = ARRAY_SIZE(nxp_stm_cnt_synapse_actions),
+		.signal = nxp_stm_cnt_signals,
+	},
+};
+
+static struct counter_count nxp_stm_cnt_counts[] = {
+	{
+		.id = 0,
+		.name = "System Timer Module Counter",
+		.functions_list = nxp_stm_cnt_functions,
+		.num_functions = ARRAY_SIZE(nxp_stm_cnt_functions),
+		.synapses = nxp_stm_cnt_synapses,
+		.num_synapses = ARRAY_SIZE(nxp_stm_cnt_synapses),
+		.ext = stm_cnt_count_ext,
+		.num_ext = ARRAY_SIZE(stm_cnt_count_ext),
+	},
+};
+
+static int nxp_stm_cnt_suspend(struct device *dev)
+{
+	struct nxp_stm_cnt *stm_cnt = dev_get_drvdata(dev);
+
+	stm_cnt->context.is_started = nxp_stm_cnt_is_started(stm_cnt);
+
+	if (stm_cnt->context.is_started) {
+		nxp_stm_cnt_stop(stm_cnt);
+		stm_cnt->context.prescaler = nxp_stm_cnt_get_prescaler(stm_cnt);
+		stm_cnt->context.counter = nxp_stm_cnt_get_counter(stm_cnt);
+	}
+
+	return 0;
+}
+
+static int nxp_stm_cnt_resume(struct device *dev)
+{
+	struct nxp_stm_cnt *stm_cnt = dev_get_drvdata(dev);
+
+	if (stm_cnt->context.is_started) {
+		nxp_stm_cnt_set_counter(stm_cnt, stm_cnt->context.counter);
+		nxp_stm_cnt_set_prescaler(stm_cnt, stm_cnt->context.prescaler);
+		nxp_stm_cnt_start(stm_cnt);
+	}
+
+	return 0;
+}
+
+static DEFINE_SIMPLE_DEV_PM_OPS(nxp_stm_cnt_pm_ops, nxp_stm_cnt_suspend,
+				nxp_stm_cnt_resume);
+
+static int nxp_stm_cnt_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct counter_device *counter;
+	struct nxp_stm_cnt *stm_cnt;
+	struct clk *clk;
+	void __iomem *base;
+	int irq, ret;
+
+	base = devm_of_iomap(dev, np, 0, NULL);
+	if (IS_ERR(base))
+		return dev_err_probe(dev, PTR_ERR(base), "Failed to iomap %pOFn\n", np);
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return dev_err_probe(dev, irq, "Failed to get IRQ\n");
+
+	clk = devm_clk_get_enabled(dev, NULL);
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk), "Clock not found\n");
+
+	counter = devm_counter_alloc(dev, sizeof(*stm_cnt));
+	if (!counter)
+		return -ENOMEM;
+
+	stm_cnt = counter_priv(counter);
+
+	stm_cnt->base = base;
+	atomic_set(&stm_cnt->nr_wraps, 0);
+
+	counter->name       = "stm_counter";
+	counter->parent     = &pdev->dev;
+	counter->ops        = &nxp_stm_cnt_counter_ops;
+	counter->counts     = nxp_stm_cnt_counts;
+	counter->num_counts = ARRAY_SIZE(nxp_stm_cnt_counts);
+
+	ret = devm_request_irq(dev, irq, nxp_stm_cnt_irq, IRQF_TIMER | IRQF_NOBALANCING,
+			       dev_name(&counter->dev), counter);
+	if (ret)
+		return dev_err_probe(dev, ret, "Unable to allocate interrupt line\n");
+
+	ret = devm_counter_add(dev, counter);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to register counter\n");
+
+	platform_set_drvdata(pdev, stm_cnt);
+
+	return 0;
+}
+
+static void nxp_stm_cnt_remove(struct platform_device *pdev)
+{
+	struct nxp_stm_cnt *stm_cnt = platform_get_drvdata(pdev);
+
+	if (nxp_stm_cnt_is_started(stm_cnt))
+		nxp_stm_cnt_stop(stm_cnt);
+}
+
+static const struct of_device_id nxp_stm_cnt_of_match[] = {
+	{ .compatible = "nxp,s32g2-stm-cnt", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, nxp_stm_cnt_of_match);
+
+static struct platform_driver nxp_stm_cnt_driver = {
+	.probe  = nxp_stm_cnt_probe,
+	.remove = nxp_stm_cnt_remove,
+	.driver = {
+		.name           = "nxp-stm-cnt",
+		.pm		= pm_sleep_ptr(&nxp_stm_cnt_pm_ops),
+		.of_match_table = nxp_stm_cnt_of_match,
+	},
+};
+module_platform_driver(nxp_stm_cnt_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Daniel Lezcano");
+MODULE_DESCRIPTION("NXP System Timer Module counter driver");
+MODULE_IMPORT_NS("COUNTER");
-- 
2.43.0



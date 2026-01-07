Return-Path: <devicetree+bounces-252373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF33ACFE13B
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 14:52:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 58D1A30C9267
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 13:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16FB1341650;
	Wed,  7 Jan 2026 13:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tiOupJ6X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D575340298
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 13:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767793205; cv=none; b=RHKV0EouX8f0IIJTycZFVkRfUEmPJeQn/a3No7rZxUVwAhOvYDJo8dgjekEVPI4RaDOe1rzhIWfXWwajMr3K8nXViJkDqpCuV5hape6rSNYEdZJF5Zdh0WaDsTHcgdGwGl7NX3OzbiCHrf1t/+aP1R4mfnwrXItPGyMREbNz4DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767793205; c=relaxed/simple;
	bh=3oaSCpEwHQNjRaWzLNSpiEUXtdJUL/1UDXgE6dtYc/c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o9N8mFCtO+d1rF3fZN1gDAaSv/BRE0oF/CYLYdEP2Kga/cPhvhi30d9HdLyzF/j61e+tCDEbddvg9zCD+sIT6gTue58cOCPGKcqAgWQAe+4Ciyk1oMbQV3RCox/jOF6dcMuL8cwoOkg3JcCGUmB861bQ1dLHYy+kIL/l4PbV2z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tiOupJ6X; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so22054505e9.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767793200; x=1768398000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cv0o0147J322WtXmG75i78Kq0cEouC8K8snGnhFEIYc=;
        b=tiOupJ6X06YlggdxUm/VB2Cugoh60A2apGkr60J4SCcFCO2ACOvUC/kOD33wqFe7QV
         6sMdwSaLyAvdl5cHkUL6tuBWdNVHraHlVf1P+ggn40iokbEz7zjByQv+V+KGeQueaMXU
         MXKGu2XmG7xiCFZfs+sO8G9jG7KeX2Ku2Xzdl7N1KzabDEzWzCh8QndnyKn5HqTN/EUn
         vx9bXHVUnTD5sSbUqyFK67v9FPSUSOrMHJTQtvnsqHrMTCSi7AXE2l+OWhSKgK3mJHTq
         UF2TeITLCPZbG7GRjEHDGqxe28IA843xTPnPoiflqK5PBB2di18qPiDkBqDjmi+Emp/H
         ZPdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767793200; x=1768398000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cv0o0147J322WtXmG75i78Kq0cEouC8K8snGnhFEIYc=;
        b=QhIMcLRvSpZFcmpo2JMv5tM+ueT+ipqHa0gZXA+GNslTc6AUK8U2pFKbsmqnbl3eW+
         hFJ+T3Crdc9tvLNLbwNBzT+4pkqvBcR8WRx/yJ71PpllG5UHCAyOUwk0dgSFnCzIAtDe
         J4/iflLZx0DoAnw/jCWKrIyk7UnDrDlovv+7VGAwiV2hL/6GzwXzk2MJeKMYXtU+YRdU
         BbxTT1OM4xVsD+bgpqMwcmALXNNw41xLRamBkh0YDDPpYTYow0QjHmQUBEuCWj8r9cv2
         99CCKoZszC0lT5l/zY41C/ZIQLs6AeFi25vzV83v76VtZOr4YdsRLzs0hvIMEIDLy+YV
         yNnw==
X-Forwarded-Encrypted: i=1; AJvYcCUyFmQ2aD2Gg92QDc33Lr2DjsRdBlWvmN9Zmm5xDuVbzxB3yZ8F0IEnRM1jnmes9ThXhnFp/umIpE3V@vger.kernel.org
X-Gm-Message-State: AOJu0YywTrqmD9iMzvHmm2bZcHyikv3i9MUJgFNTw03JDO9RiaxszLpA
	Zaoof/6ieIxIRTCWoenIeFcA8FQ9nEoAOzUyC/2I/nfBSrqgfvHg5uNXWZt2Hb2oHwI=
X-Gm-Gg: AY/fxX6VsThcVrnTXY8/HaHpAMXZrdCLl0w+xuBg5FP89GMVrUQBMLElA3Qc2cGnbx+
	B/U/DAd6gGuW0z7C7w6jkAJOAOFOyMraiwdwFtJvqIa0Wep3n8UBF/7/VMq8Nl0L/W/9f/Z1ehW
	a0j12Y8FfNqXWwYNR0vXi+kRjtlDvAsMO6urFJgQ5qojxRGJwvmRcAZOAlARMsIh9TsIvmf5KFs
	DiniRnwjVyQIVgzsovedoN0OIYr2CHU9oNUFzMq7XLljRpf7NfirWVe9PBT7jbLCcqOVUZRdbv5
	rB599uhP0AoGb9/FzU7Ee5EiJAKmD17GjlZWnNdKb+pQmtaVmKMXmIkMswKeHudn3N3wFPIaKde
	LfhZEcTtvp6XLHss0eVW17K8Kd4J2cDZYU6c0qoPYh9wRmzDWYCtfiYqY0Ijv6bJg35eMCA1NNG
	8huZKgfR3E4/OMDrs85S2bUp6Z+Gse7mc=
X-Google-Smtp-Source: AGHT+IFa8+jNsVa/Wp5xtwEn9EuGFb5mykEMRe6NuXsA2P34Nl5a/PACXDrWRnZcOAB9bghQXRohzQ==
X-Received: by 2002:a05:600c:8b0d:b0:477:76bf:e1fb with SMTP id 5b1f17b1804b1-47d84b17a7fmr36771745e9.16.1767793200477;
        Wed, 07 Jan 2026 05:40:00 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:39ee:bc4c:aafe:6bd0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dade5sm10595542f8f.9.2026.01.07.05.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 05:40:00 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v4 3/3] counter: Add STM based counter
Date: Wed,  7 Jan 2026 14:39:52 +0100
Message-ID: <20260107133953.2094015-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260107133953.2094015-1-daniel.lezcano@linaro.org>
References: <20260107133953.2094015-1-daniel.lezcano@linaro.org>
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
 drivers/counter/nxp-stm-cnt.c | 433 ++++++++++++++++++++++++++++++++++
 3 files changed, 444 insertions(+)
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
index 000000000000..9f2edd2161c8
--- /dev/null
+++ b/drivers/counter/nxp-stm-cnt.c
@@ -0,0 +1,433 @@
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
+#include <linux/spinlock.h>
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
+	spinlock_t lock; /* Protects counter */
+	void __iomem *base;
+	u64 counter;
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
+	counter_push_event(counter, COUNTER_EVENT_OVERFLOW, 0);
+
+	spin_lock(&stm_cnt->lock);
+	stm_cnt->counter += U32_MAX;
+	spin_unlock(&stm_cnt->lock);
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
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&stm_cnt->lock, irqflags);
+	*val = stm_cnt->counter + nxp_stm_cnt_get_counter(stm_cnt);
+	spin_unlock_irqrestore(&stm_cnt->lock, irqflags);
+
+	return 0;
+}
+
+static int nxp_stm_cnt_count_write(struct counter_device *dev,
+				   struct counter_count *count, u64 val)
+{
+	struct nxp_stm_cnt *stm_cnt = counter_priv(dev);
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&stm_cnt->lock, irqflags);
+	stm_cnt->counter = 0;
+	nxp_stm_cnt_set_counter(stm_cnt, 0);
+	spin_unlock_irqrestore(&stm_cnt->lock, irqflags);
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
+static const enum counter_synapse_action nxp_stm_cnt_synapse_actions[] = {
+	COUNTER_SYNAPSE_ACTION_RISING_EDGE,
+};
+
+static struct counter_signal nxp_stm_cnt_signals[] = {
+	{
+		.id = 0,
+		.name = "Counter wrap signal"
+	},
+};
+
+static struct counter_synapse nxp_stm_cnt_synapses[] = {
+	{
+		.actions_list = nxp_stm_cnt_synapse_actions,
+		.num_actions = ARRAY_SIZE(nxp_stm_cnt_synapse_actions),
+		.signal = &nxp_stm_cnt_signals[0],
+	},
+};
+
+static struct counter_count nxp_stm_cnt_counts[] = {
+	{
+		.id = 0,
+		.name = "System Timer Module Counter",
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
+	stm_cnt->counter = 0;
+	spin_lock_init(&stm_cnt->lock);
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



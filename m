Return-Path: <devicetree+bounces-155310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B71D2A562EC
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:49:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A45923AB324
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 08:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87EDE1DE2A9;
	Fri,  7 Mar 2025 08:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+DlPTgE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5FF19E971;
	Fri,  7 Mar 2025 08:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741337364; cv=none; b=a27MI2TQEqBLRwdiE+5MF4jusFJBR0WyKapankcLn9HBfBNGhbXVoBa6P2SrmKDDAqc+/m+sXd71Y5ph3ptdiaS86dJrQcvnb5huAkTDvJXUJr3ciPxiWdo5VESiDWvSWycUMtHMimfSSYy384DeA/+5Jv8/x4s3VZV0QQkgjtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741337364; c=relaxed/simple;
	bh=mKRLsZTbVirykZYDZavF7sEwY8hATvHzdNKK4oF1idY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XWrxau8x62LdDYrUkjeWvsc9VONlfUYC1VHZEEV0y1Q5aHZHVOEeq3vfqd9IorbPjPSsqVSJs6mjAEqpyDucS4B5UmRqjFw9iqBQTSWg52b+BelP6eGK5w9rZ4ipcsTGpMb7wyOPRrAedXPw09q5jKUlvD8nUIdBtd4PNEjY2Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+DlPTgE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 315E3C4CEE9;
	Fri,  7 Mar 2025 08:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741337364;
	bh=mKRLsZTbVirykZYDZavF7sEwY8hATvHzdNKK4oF1idY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Q+DlPTgE+8QpRxARmg1serr87RDVD76htmCrnntIHjv+CVLj0ygAWtWmt0SsIxHac
	 F8Put2voT937XIYV5pfkQ+vFUvMGnLwyxEYnwUvh1Hy1S4nxagg7Q5hi/WXfKjpiIB
	 kB3Ug191jmbc5QytyYDAN90HAxcWdzzt+bVI96AJL4ERC428ywOcg7hMMXGnv+ur0C
	 WD7WVDgTDDSdBo9cLnIMJxUNgeH9Pl+rGat/rnAhVFyWpiBLZecusulP4bYAI2ZFvd
	 T05LQNluyUAxjc3Rxey9AVgTYFdU1LqkaVr6SdAOGgfKOlpflHrSEvoLs8xHqb9DHn
	 yMabKQhVfpA/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23295C28B24;
	Fri,  7 Mar 2025 08:49:24 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Fri, 07 Mar 2025 16:49:23 +0800
Subject: [PATCH v4 2/4] irqchip: Add support for Amlogic A4 and A5 SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250307-irqchip-gpio-a4-a5-v4-2-d03a9424151b@amlogic.com>
References: <20250307-irqchip-gpio-a4-a5-v4-0-d03a9424151b@amlogic.com>
In-Reply-To: <20250307-irqchip-gpio-a4-a5-v4-0-d03a9424151b@amlogic.com>
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741337362; l=5381;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=1f21swc6jeBydx77oY7KRx0ym1tuna22S6LIF708IxY=;
 b=B2bqRkvVsIw7sJVwNAPEVd0aj6tFmKZPLsn3LHB7rk/hMzwoBn4zoKb4tq5JbVZ8uirXnCMOQ
 /5ni5TTCfVlDvmLhSi8AgpPYO9aZ6W6b6+OvUwL/zpe1K//e1wgdSzh
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

The Amlogic A4 SoCs support 12 GPIO IRQ lines and 2 AO GPIO IRQ lines,
A5 SoCs support 12 GPIO IRQ lines, details are as below.

A4 IRQ Number:
- 72:55   18 pins on bank T
- 54:32   23 pins on bank X
- 31:16   16 pins on bank D
- 15:14    2 pins on bank E
- 13:0    14 pins on bank B

A4 AO IRQ Number:
- 7       1 pin  on bank TESTN
- 6:0     7 pins on bank AO

A5 IRQ Number:
- 98      1 pin  on bank TESTN
- 97:82   16 pins on bank Z
- 81:62   20 pins on bank X
- 61:48   14 pins on bank T
- 47:32   16 pins on bank D
- 31:27    5 pins on bank H
- 26:25    2 pins on bank E
- 24:14   11 pins on bank C
- 13:0    14 pins on bank B

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 drivers/irqchip/irq-meson-gpio.c | 45 ++++++++++++++++++++++++++++++++--------
 1 file changed, 36 insertions(+), 9 deletions(-)

diff --git a/drivers/irqchip/irq-meson-gpio.c b/drivers/irqchip/irq-meson-gpio.c
index cd789fa51519..e0265d24e3e3 100644
--- a/drivers/irqchip/irq-meson-gpio.c
+++ b/drivers/irqchip/irq-meson-gpio.c
@@ -26,8 +26,6 @@
 
 /* use for A1 like chips */
 #define REG_PIN_A1_SEL	0x04
-/* Used for s4 chips */
-#define REG_EDGE_POL_S4	0x1c
 
 /*
  * Note: The S905X3 datasheet reports that BOTH_EDGE is controlled by
@@ -72,6 +70,7 @@ struct meson_gpio_irq_params {
 	bool support_edge_both;
 	unsigned int edge_both_offset;
 	unsigned int edge_single_offset;
+	unsigned int edge_pol_reg;
 	unsigned int pol_low_offset;
 	unsigned int pin_sel_mask;
 	struct irq_ctl_ops ops;
@@ -105,6 +104,18 @@ struct meson_gpio_irq_params {
 	.pin_sel_mask = 0x7f,					\
 	.nr_channels = 8,					\
 
+#define INIT_MESON_A4_AO_COMMON_DATA(irqs)			\
+	INIT_MESON_COMMON(irqs, meson_a1_gpio_irq_init,		\
+			  meson_a1_gpio_irq_sel_pin,		\
+			  meson_s4_gpio_irq_set_type)		\
+	.support_edge_both = true,				\
+	.edge_both_offset = 0,					\
+	.edge_single_offset = 12,				\
+	.edge_pol_reg = 0x8,					\
+	.pol_low_offset = 0,					\
+	.pin_sel_mask = 0xff,					\
+	.nr_channels = 2,					\
+
 #define INIT_MESON_S4_COMMON_DATA(irqs)				\
 	INIT_MESON_COMMON(irqs, meson_a1_gpio_irq_init,		\
 			  meson_a1_gpio_irq_sel_pin,		\
@@ -112,6 +123,7 @@ struct meson_gpio_irq_params {
 	.support_edge_both = true,				\
 	.edge_both_offset = 0,					\
 	.edge_single_offset = 12,				\
+	.edge_pol_reg = 0x1c,					\
 	.pol_low_offset = 0,					\
 	.pin_sel_mask = 0xff,					\
 	.nr_channels = 12,					\
@@ -146,6 +158,18 @@ static const struct meson_gpio_irq_params a1_params = {
 	INIT_MESON_A1_COMMON_DATA(62)
 };
 
+static const struct meson_gpio_irq_params a4_params = {
+	INIT_MESON_S4_COMMON_DATA(81)
+};
+
+static const struct meson_gpio_irq_params a4_ao_params = {
+	INIT_MESON_A4_AO_COMMON_DATA(8)
+};
+
+static const struct meson_gpio_irq_params a5_params = {
+	INIT_MESON_S4_COMMON_DATA(99)
+};
+
 static const struct meson_gpio_irq_params s4_params = {
 	INIT_MESON_S4_COMMON_DATA(82)
 };
@@ -168,6 +192,9 @@ static const struct of_device_id meson_irq_gpio_matches[] __maybe_unused = {
 	{ .compatible = "amlogic,meson-sm1-gpio-intc", .data = &sm1_params },
 	{ .compatible = "amlogic,meson-a1-gpio-intc", .data = &a1_params },
 	{ .compatible = "amlogic,meson-s4-gpio-intc", .data = &s4_params },
+	{ .compatible = "amlogic,a4-gpio-ao-intc", .data = &a4_ao_params },
+	{ .compatible = "amlogic,a4-gpio-intc", .data = &a4_params },
+	{ .compatible = "amlogic,a5-gpio-intc", .data = &a5_params },
 	{ .compatible = "amlogic,c3-gpio-intc", .data = &c3_params },
 	{ .compatible = "amlogic,t7-gpio-intc", .data = &t7_params },
 	{ }
@@ -299,11 +326,10 @@ meson_gpio_irq_release_channel(struct meson_gpio_irq_controller *ctl,
 static int meson8_gpio_irq_set_type(struct meson_gpio_irq_controller *ctl,
 				    unsigned int type, u32 *channel_hwirq)
 {
-	u32 val = 0;
+	const struct meson_gpio_irq_params *params = ctl->params;
 	unsigned int idx;
-	const struct meson_gpio_irq_params *params;
+	u32 val = 0;
 
-	params = ctl->params;
 	idx = meson_gpio_irq_get_channel_idx(ctl, channel_hwirq);
 
 	/*
@@ -356,18 +382,19 @@ static int meson8_gpio_irq_set_type(struct meson_gpio_irq_controller *ctl,
 static int meson_s4_gpio_irq_set_type(struct meson_gpio_irq_controller *ctl,
 				      unsigned int type, u32 *channel_hwirq)
 {
-	u32 val = 0;
+	const struct meson_gpio_irq_params *params = ctl->params;
 	unsigned int idx;
+	u32 val = 0;
 
 	idx = meson_gpio_irq_get_channel_idx(ctl, channel_hwirq);
 
 	type &= IRQ_TYPE_SENSE_MASK;
 
-	meson_gpio_irq_update_bits(ctl, REG_EDGE_POL_S4, BIT(idx), 0);
+	meson_gpio_irq_update_bits(ctl, params->edge_pol_reg, BIT(idx), 0);
 
 	if (type == IRQ_TYPE_EDGE_BOTH) {
 		val |= BIT(ctl->params->edge_both_offset + idx);
-		meson_gpio_irq_update_bits(ctl, REG_EDGE_POL_S4,
+		meson_gpio_irq_update_bits(ctl, params->edge_pol_reg,
 					   BIT(ctl->params->edge_both_offset + idx), val);
 		return 0;
 	}
@@ -378,7 +405,7 @@ static int meson_s4_gpio_irq_set_type(struct meson_gpio_irq_controller *ctl,
 	if (type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING))
 		val |= BIT(ctl->params->edge_single_offset + idx);
 
-	meson_gpio_irq_update_bits(ctl, REG_EDGE_POL,
+	meson_gpio_irq_update_bits(ctl, params->edge_pol_reg,
 				   BIT(idx) | BIT(12 + idx), val);
 	return 0;
 };

-- 
2.37.1




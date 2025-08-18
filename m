Return-Path: <devicetree+bounces-205580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EEEB297EE
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:14:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 166135E134D
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681D026A08F;
	Mon, 18 Aug 2025 04:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="i7VZhY8w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974342652AC
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490317; cv=none; b=DuJXt0CAEC9vc5sevkM8xL1yGwXcoC8jZ5/5u8PAqhTylgVz7gc49h1mjUlWZkE0iUKus0Dld2bvNdUNsPrE6HbBlGPf1LcpA8czD3OxbQfJn5jYLNy0KmJ0FyU4UxeHB4PQP2RYDI8s/sjxSgMB9Rr3D1/tfgx0m4HB+S3vdnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490317; c=relaxed/simple;
	bh=5vY1utlIhGgu2GRcZ/E+L9ZBRX1HRubcxq7Y4l0aDkU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=isjzKPyndQLYmqHqjY/114FSTFpFm292905wJflILaj4M0ofhf9gqE1ds9kDJnr1xXUklWo+ECLTqwrte+MBUlSJabBdJHJZs90busXR2dJDE9Yt7poS+hpk26HsEgP2cGaDsOKFbSolJdUyecnpjz9DmA6+4K7sb6l9Lg3XECM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=i7VZhY8w; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-76e2eb49b83so2169745b3a.3
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 21:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1755490315; x=1756095115; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JE4BD8CtEcqL1oqME5XAxn58mcVcyZrsGzegXkkuX+s=;
        b=i7VZhY8wHT7JGczVMUWI+bbUyFV4xrQXszk2kMHOUshwfxcpyOz2NB0wm9uSGi9K+4
         M280/b+LyDC16OiR66Ta/EduXwOUsRLRKZKlNi0+a7Qj+gO6CLROVg7ac6C6vtioDlko
         y14q0/IQ3trT5ZXpB2DOxE6pqKrF4tOriWVlaCeEh3+KZQQljRHIQrh/LH76CMOVXcsI
         au2h68EyUlS9zmroW2Z1Ni3Usg23OeO/67coXXkrpMWW79fwDl9eP0O1huaBtzlYQwWx
         s0J621BOx5bLMRPC9BXubdtb68sZ6CRWCP0VxPwbEWZIKRsAqlFeu+5NMrmls4b8+Rst
         ZHlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490315; x=1756095115;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JE4BD8CtEcqL1oqME5XAxn58mcVcyZrsGzegXkkuX+s=;
        b=nSNOLwYaMTwT+WGUwi6bFO0I9YN0CCW1oZ4xfvFb4HgAxL8wVSFlNwG0iqrDBl0/Kw
         HGZp+o123g9KxTMt7KQRNbsOIcCw14/H1AMu6bX3SXgf4ze0kPyGWcVrQ+UxKC1gEXoE
         B5sKA/l4esJ7m72Ci3elZoI0Jpq/RmaKyJZMNfLF3gMC6ftvPNu7OD1omTEl8cSGvUEL
         yC31EhLuE7jZq/JG07h2V54l11PtZ84DsipSTvuf19xOuoBnkTKGg1QF+DWxemiQjEO4
         xwdn812qhUfI/FhhHHhI+8Slrvo7etR7Rqxr9BPMKLJ6v4//4sdAPFYghpaqio2Qgw2V
         AY2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVZOxFQdPq1wazsOQzPqdTFVd2dNvuqhAOJCvn+Tey+qOd210j9g3OW2x8fOLiUHhmcXO921b5lxz9o@vger.kernel.org
X-Gm-Message-State: AOJu0YwdlEs1zDQvjwrhx7Icyhtezkg2IwFUvYdoK0E0dzvbG7hmJ7h/
	gjhwXKlDAe/aIDDFrM10oAaQhGR2avu8lufmzPPp+prVwcaFmJ3FeU4CubR7XTJt4Ek=
X-Gm-Gg: ASbGncs4cqKUC33qqID6e8crWu+30SmMQOzYKQ4GuSQSw1JdO2hJr8bSGNw1QWixWhU
	IYNCuDqIvKWjjdM+VcNvPiy97zC/pYPMdBowH0XrOwbX/tAPCqfbscaSCItjUhakWHOzLx5hfk8
	rULCohCLu690TVuOpOW1eFMYWv4aVOLlk2/XMudqHRu/cKmsZpKkSwpPTz8+iG/P8/egmJKYwtc
	1g83Tf47R4Qil/313BZas0bAtS8LGN7xFo9GIPFbJ7ZEutFguTi+DneLTN7WWXueoKBGl1FFeot
	wz6+oSEk96JvSOYZyPCdqRWmtPCkL4nGrgDrXyRTH7TeshiXQJaV6QAgTkxZHwxuiEcrd1u+RSM
	+tiqkyS7iy9myMhl9wtYo+44plNjfazu3uuHob41ICwZbo2bA7BVSFQ==
X-Google-Smtp-Source: AGHT+IECmKdo5T7zK02OflnGWXxJFTy7QmwmYIYDth6/P6BSLfK+kcJNzoNEtlD9ICq7A0ZYZaCy4Q==
X-Received: by 2002:a05:6a20:548d:b0:240:101c:4417 with SMTP id adf61e73a8af0-240e6122dbfmr10751278637.4.1755490314478;
        Sun, 17 Aug 2025 21:11:54 -0700 (PDT)
Received: from localhost.localdomain ([122.171.17.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c70356sm6560972a91.25.2025.08.17.21.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:11:53 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v10 13/24] irqchip: Add driver for the RPMI system MSI service group
Date: Mon, 18 Aug 2025 09:39:09 +0530
Message-ID: <20250818040920.272664-14-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250818040920.272664-1-apatel@ventanamicro.com>
References: <20250818040920.272664-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RPMI specification defines a system MSI service group which
allows application processors to receive MSIs upon system events
such as graceful shutdown/reboot request, CPU hotplug event, memory
hotplug event, etc.

Add an irqchip driver for the RISC-V RPMI system MSI service group
to directly receive system MSIs in Linux kernel.

Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/Kconfig                    |   7 +
 drivers/irqchip/Makefile                   |   1 +
 drivers/irqchip/irq-riscv-rpmi-sysmsi.c    | 287 +++++++++++++++++++++
 include/linux/mailbox/riscv-rpmi-message.h |  13 +
 4 files changed, 308 insertions(+)
 create mode 100644 drivers/irqchip/irq-riscv-rpmi-sysmsi.c

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 6d12c6ab9ea4..e047ba36df16 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -634,6 +634,13 @@ config RISCV_IMSIC
 	select GENERIC_MSI_IRQ
 	select IRQ_MSI_LIB
 
+config RISCV_RPMI_SYSMSI
+	bool
+	depends on MAILBOX
+	select IRQ_DOMAIN_HIERARCHY
+	select GENERIC_MSI_IRQ
+	default RISCV
+
 config SIFIVE_PLIC
 	bool
 	depends on RISCV
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index 93e3ced023bb..3de083f5484c 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -106,6 +106,7 @@ obj-$(CONFIG_RISCV_INTC)		+= irq-riscv-intc.o
 obj-$(CONFIG_RISCV_APLIC)		+= irq-riscv-aplic-main.o irq-riscv-aplic-direct.o
 obj-$(CONFIG_RISCV_APLIC_MSI)		+= irq-riscv-aplic-msi.o
 obj-$(CONFIG_RISCV_IMSIC)		+= irq-riscv-imsic-state.o irq-riscv-imsic-early.o irq-riscv-imsic-platform.o
+obj-$(CONFIG_RISCV_RPMI_SYSMSI)		+= irq-riscv-rpmi-sysmsi.o
 obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
 obj-$(CONFIG_STARFIVE_JH8100_INTC)	+= irq-starfive-jh8100-intc.o
 obj-$(CONFIG_ACLINT_SSWI)		+= irq-aclint-sswi.o
diff --git a/drivers/irqchip/irq-riscv-rpmi-sysmsi.c b/drivers/irqchip/irq-riscv-rpmi-sysmsi.c
new file mode 100644
index 000000000000..92e8847dfccc
--- /dev/null
+++ b/drivers/irqchip/irq-riscv-rpmi-sysmsi.c
@@ -0,0 +1,287 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2025 Ventana Micro Systems Inc. */
+
+#include <linux/bits.h>
+#include <linux/bug.h>
+#include <linux/device.h>
+#include <linux/device/devres.h>
+#include <linux/dev_printk.h>
+#include <linux/errno.h>
+#include <linux/irq.h>
+#include <linux/irqdomain.h>
+#include <linux/mailbox_client.h>
+#include <linux/mailbox/riscv-rpmi-message.h>
+#include <linux/module.h>
+#include <linux/msi.h>
+#include <linux/of_irq.h>
+#include <linux/platform_device.h>
+#include <linux/types.h>
+
+struct rpmi_sysmsi_get_attrs_rx {
+	__le32 status;
+	__le32 sys_num_msi;
+	__le32 flag0;
+	__le32 flag1;
+};
+
+#define RPMI_SYSMSI_MSI_ATTRIBUTES_FLAG0_PREF_PRIV	BIT(0)
+
+struct rpmi_sysmsi_set_msi_state_tx {
+	__le32 sys_msi_index;
+	__le32 sys_msi_state;
+};
+
+struct rpmi_sysmsi_set_msi_state_rx {
+	__le32 status;
+};
+
+#define RPMI_SYSMSI_MSI_STATE_ENABLE			BIT(0)
+#define RPMI_SYSMSI_MSI_STATE_PENDING			BIT(1)
+
+struct rpmi_sysmsi_set_msi_target_tx {
+	__le32 sys_msi_index;
+	__le32 sys_msi_address_low;
+	__le32 sys_msi_address_high;
+	__le32 sys_msi_data;
+};
+
+struct rpmi_sysmsi_set_msi_target_rx {
+	__le32 status;
+};
+
+struct rpmi_sysmsi_priv {
+	struct device		*dev;
+	struct mbox_client	client;
+	struct mbox_chan	*chan;
+	u32			nr_irqs;
+	u32			gsi_base;
+};
+
+static int rpmi_sysmsi_get_num_msi(struct rpmi_sysmsi_priv *priv)
+{
+	struct rpmi_sysmsi_get_attrs_rx rx;
+	struct rpmi_mbox_message msg;
+	int ret;
+
+	rpmi_mbox_init_send_with_response(&msg, RPMI_SYSMSI_SRV_GET_ATTRIBUTES,
+					  NULL, 0, &rx, sizeof(rx));
+	ret = rpmi_mbox_send_message(priv->chan, &msg);
+	if (ret)
+		return ret;
+	if (rx.status)
+		return rpmi_to_linux_error(le32_to_cpu(rx.status));
+
+	return le32_to_cpu(rx.sys_num_msi);
+}
+
+static int rpmi_sysmsi_set_msi_state(struct rpmi_sysmsi_priv *priv,
+				     u32 sys_msi_index, u32 sys_msi_state)
+{
+	struct rpmi_sysmsi_set_msi_state_tx tx;
+	struct rpmi_sysmsi_set_msi_state_rx rx;
+	struct rpmi_mbox_message msg;
+	int ret;
+
+	tx.sys_msi_index = cpu_to_le32(sys_msi_index);
+	tx.sys_msi_state = cpu_to_le32(sys_msi_state);
+	rpmi_mbox_init_send_with_response(&msg, RPMI_SYSMSI_SRV_SET_MSI_STATE,
+					  &tx, sizeof(tx), &rx, sizeof(rx));
+	ret = rpmi_mbox_send_message(priv->chan, &msg);
+	if (ret)
+		return ret;
+	if (rx.status)
+		return rpmi_to_linux_error(le32_to_cpu(rx.status));
+
+	return 0;
+}
+
+static int rpmi_sysmsi_set_msi_target(struct rpmi_sysmsi_priv *priv,
+				      u32 sys_msi_index, struct msi_msg *m)
+{
+	struct rpmi_sysmsi_set_msi_target_tx tx;
+	struct rpmi_sysmsi_set_msi_target_rx rx;
+	struct rpmi_mbox_message msg;
+	int ret;
+
+	tx.sys_msi_index = cpu_to_le32(sys_msi_index);
+	tx.sys_msi_address_low = cpu_to_le32(m->address_lo);
+	tx.sys_msi_address_high = cpu_to_le32(m->address_hi);
+	tx.sys_msi_data = cpu_to_le32(m->data);
+	rpmi_mbox_init_send_with_response(&msg, RPMI_SYSMSI_SRV_SET_MSI_TARGET,
+					  &tx, sizeof(tx), &rx, sizeof(rx));
+	ret = rpmi_mbox_send_message(priv->chan, &msg);
+	if (ret)
+		return ret;
+	if (rx.status)
+		return rpmi_to_linux_error(le32_to_cpu(rx.status));
+
+	return 0;
+}
+
+static void rpmi_sysmsi_irq_mask(struct irq_data *d)
+{
+	struct rpmi_sysmsi_priv *priv = irq_data_get_irq_chip_data(d);
+	irq_hw_number_t hwirq = irqd_to_hwirq(d);
+	int ret;
+
+	ret = rpmi_sysmsi_set_msi_state(priv, hwirq, 0);
+	if (ret)
+		dev_warn(priv->dev, "Failed to mask hwirq %lu (error %d)\n", hwirq, ret);
+	irq_chip_mask_parent(d);
+}
+
+static void rpmi_sysmsi_irq_unmask(struct irq_data *d)
+{
+	struct rpmi_sysmsi_priv *priv = irq_data_get_irq_chip_data(d);
+	irq_hw_number_t hwirq = irqd_to_hwirq(d);
+	int ret;
+
+	irq_chip_unmask_parent(d);
+	ret = rpmi_sysmsi_set_msi_state(priv, hwirq, RPMI_SYSMSI_MSI_STATE_ENABLE);
+	if (ret)
+		dev_warn(priv->dev, "Failed to unmask hwirq %lu (error %d)\n", hwirq, ret);
+}
+
+static void rpmi_sysmsi_write_msg(struct irq_data *d, struct msi_msg *msg)
+{
+	struct rpmi_sysmsi_priv *priv = irq_data_get_irq_chip_data(d);
+	irq_hw_number_t hwirq = irqd_to_hwirq(d);
+	int ret;
+
+	/* For zeroed MSI, do nothing as of now */
+	if (!msg->address_hi && !msg->address_lo && !msg->data)
+		return;
+
+	ret = rpmi_sysmsi_set_msi_target(priv, hwirq, msg);
+	if (ret)
+		dev_warn(priv->dev, "Failed to set target for hwirq %lu (error %d)\n", hwirq, ret);
+}
+
+static void rpmi_sysmsi_set_desc(msi_alloc_info_t *arg, struct msi_desc *desc)
+{
+	arg->desc = desc;
+	arg->hwirq = desc->data.icookie.value;
+}
+
+static int rpmi_sysmsi_translate(struct irq_domain *d, struct irq_fwspec *fwspec,
+				 unsigned long *hwirq, unsigned int *type)
+{
+	struct msi_domain_info *info = d->host_data;
+	struct rpmi_sysmsi_priv *priv = info->data;
+
+	if (WARN_ON(fwspec->param_count < 1))
+		return -EINVAL;
+
+	/* For DT, gsi_base is always zero. */
+	*hwirq = fwspec->param[0] - priv->gsi_base;
+	*type = IRQ_TYPE_NONE;
+	return 0;
+}
+
+static const struct msi_domain_template rpmi_sysmsi_template = {
+	.chip = {
+		.name			= "RPMI-SYSMSI",
+		.irq_mask		= rpmi_sysmsi_irq_mask,
+		.irq_unmask		= rpmi_sysmsi_irq_unmask,
+#ifdef CONFIG_SMP
+		.irq_set_affinity	= irq_chip_set_affinity_parent,
+#endif
+		.irq_write_msi_msg	= rpmi_sysmsi_write_msg,
+		.flags			= IRQCHIP_SET_TYPE_MASKED |
+					  IRQCHIP_SKIP_SET_WAKE |
+					  IRQCHIP_MASK_ON_SUSPEND,
+	},
+
+	.ops = {
+		.set_desc		= rpmi_sysmsi_set_desc,
+		.msi_translate		= rpmi_sysmsi_translate,
+	},
+
+	.info = {
+		.bus_token		= DOMAIN_BUS_WIRED_TO_MSI,
+		.flags			= MSI_FLAG_USE_DEV_FWNODE,
+		.handler		= handle_simple_irq,
+		.handler_name		= "simple",
+	},
+};
+
+static int rpmi_sysmsi_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rpmi_sysmsi_priv *priv;
+	int rc;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+	priv->dev = dev;
+
+	/* Setup mailbox client */
+	priv->client.dev		= priv->dev;
+	priv->client.rx_callback	= NULL;
+	priv->client.tx_block		= false;
+	priv->client.knows_txdone	= true;
+	priv->client.tx_tout		= 0;
+
+	/* Request mailbox channel */
+	priv->chan = mbox_request_channel(&priv->client, 0);
+	if (IS_ERR(priv->chan))
+		return PTR_ERR(priv->chan);
+
+	/* Get number of system MSIs */
+	rc = rpmi_sysmsi_get_num_msi(priv);
+	if (rc < 1) {
+		mbox_free_channel(priv->chan);
+		if (rc)
+			return dev_err_probe(dev, rc, "Failed to get number of system MSIs\n");
+		else
+			return dev_err_probe(dev, -ENODEV, "No system MSIs found\n");
+	}
+	priv->nr_irqs = rc;
+
+	/*
+	 * The device MSI domain for platform devices on RISC-V architecture
+	 * is only available after the MSI controller driver is probed so,
+	 * explicitly configure here.
+	 */
+	if (!dev_get_msi_domain(dev)) {
+		/*
+		 * The device MSI domain for OF devices is only set at the
+		 * time of populating/creating OF device. If the device MSI
+		 * domain is discovered later after the OF device is created
+		 * then we need to set it explicitly before using any platform
+		 * MSI functions.
+		 */
+		if (dev_of_node(dev))
+			of_msi_configure(dev, dev_of_node(dev));
+
+		if (!dev_get_msi_domain(dev)) {
+			mbox_free_channel(priv->chan);
+			return -EPROBE_DEFER;
+		}
+	}
+
+	if (!msi_create_device_irq_domain(dev, MSI_DEFAULT_DOMAIN,
+					  &rpmi_sysmsi_template,
+					  priv->nr_irqs, priv, priv)) {
+		mbox_free_channel(priv->chan);
+		return dev_err_probe(dev, -ENOMEM, "failed to create MSI irq domain\n");
+	}
+
+	dev_info(dev, "%u system MSIs registered\n", priv->nr_irqs);
+	return 0;
+}
+
+static const struct of_device_id rpmi_sysmsi_match[] = {
+	{ .compatible = "riscv,rpmi-system-msi" },
+	{}
+};
+
+static struct platform_driver rpmi_sysmsi_driver = {
+	.driver = {
+		.name		= "rpmi-sysmsi",
+		.of_match_table	= rpmi_sysmsi_match,
+	},
+	.probe = rpmi_sysmsi_probe,
+};
+builtin_platform_driver(rpmi_sysmsi_driver);
diff --git a/include/linux/mailbox/riscv-rpmi-message.h b/include/linux/mailbox/riscv-rpmi-message.h
index 8176d33747fe..e135c6564d0c 100644
--- a/include/linux/mailbox/riscv-rpmi-message.h
+++ b/include/linux/mailbox/riscv-rpmi-message.h
@@ -91,6 +91,7 @@ static inline int rpmi_to_linux_error(int rpmi_error)
 }
 
 /* RPMI service group IDs */
+#define RPMI_SRVGRP_SYSTEM_MSI		0x00002
 #define RPMI_SRVGRP_CLOCK		0x00008
 
 /* RPMI clock service IDs */
@@ -106,6 +107,18 @@ enum rpmi_clock_service_id {
 	RPMI_CLK_SRV_ID_MAX_COUNT
 };
 
+/* RPMI system MSI service IDs */
+enum rpmi_sysmsi_service_id {
+	RPMI_SYSMSI_SRV_ENABLE_NOTIFICATION = 0x01,
+	RPMI_SYSMSI_SRV_GET_ATTRIBUTES = 0x02,
+	RPMI_SYSMSI_SRV_GET_MSI_ATTRIBUTES = 0x03,
+	RPMI_SYSMSI_SRV_SET_MSI_STATE = 0x04,
+	RPMI_SYSMSI_SRV_GET_MSI_STATE = 0x05,
+	RPMI_SYSMSI_SRV_SET_MSI_TARGET = 0x06,
+	RPMI_SYSMSI_SRV_GET_MSI_TARGET = 0x07,
+	RPMI_SYSMSI_SRV_ID_MAX_COUNT
+};
+
 /* RPMI Linux mailbox attribute IDs */
 enum rpmi_mbox_attribute_id {
 	RPMI_MBOX_ATTR_SPEC_VERSION,
-- 
2.43.0



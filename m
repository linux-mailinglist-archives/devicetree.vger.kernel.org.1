Return-Path: <devicetree+bounces-269111-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kONWA2xHoWkirwQAu9opvQ
	(envelope-from <devicetree+bounces-269111-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:27:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A40591B3DEB
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:27:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 056B53049D7E
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BE53364926;
	Fri, 27 Feb 2026 07:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="jgadb+3d"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B624E163;
	Fri, 27 Feb 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772177256; cv=none; b=G4hFgMFKaCbSQXxiCNNe6G2L07YpRJZXP/jxZAPul9tikL9RsPwPjAa1ZLQ4XLAGofDF4tQgmGHA/YjJsmnkNYMUkgv2TS1kYH1TKR3qBeM4lmtTKZVRWbsYGmZnsx0XgGQwNtb+I4JgRBfY8AOYPmAdH1dDdAMfF5hH98b8BQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772177256; c=relaxed/simple;
	bh=5glSzVpLx0ayUaPEi5y6XKHe5cjKCuSK6P1xdCIoc8I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=br45BAKzLLJOmyEduXF+hnP0+Vk4yqqHoIPMiBKiUOMj14W6UHcwL+zGWtPIA5jDImH1EcO19GvXY3zGkUvkfj31q1/KxlT9I+xpwkAeIj0AXkG5MnBNzyrIJDzzGCft9iIsItKogVOSX41wnD6avOiMuE6rM/loKRbAXTEFz58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=jgadb+3d; arc=none smtp.client-ip=198.175.65.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772177254; x=1803713254;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=5glSzVpLx0ayUaPEi5y6XKHe5cjKCuSK6P1xdCIoc8I=;
  b=jgadb+3dUkUSgKhhLPl3ZQe73YIC77yxBgxTU1FGZuo9ir3j8VWGjQ2H
   EoOBWAkR4mTRMK58LVS8xDfSG+L97jFk1R1AdfNNOlvXdh58r93lcxCxT
   BJJdCAI52GZpk/YbuDdCCt5gv6o9mm8GziGe/QwMJrUzIF72EOBfYYqWK
   5LMGx5NBZn3AGShkXuMr7f5Fm5nYxaVJ0rUYPXboaXK2HvhzZ8d53fLUh
   OY30PkY1rpz0ZqkYF2pLc7ZCXXM3hGQBqfVoPY+1rkSCHA6wyH+Ti4HG9
   n8zicmVZxaISxMNKvnybOg1G3lDKF2IvlznzPNuQD7TnaZF0IxhuxW24U
   g==;
X-CSE-ConnectionGUID: 5A5qOf1TTrO8uqIswCduXQ==
X-CSE-MsgGUID: mIrKVoyoQFSWYAYrywM1ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="76864253"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; 
   d="scan'208";a="76864253"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 23:27:33 -0800
X-CSE-ConnectionGUID: E8bsjU3MRDW9cpf2BKlvFg==
X-CSE-MsgGUID: 2tA0bkgkSCOneRkIOL5HGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; 
   d="scan'208";a="214700811"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa010.fm.intel.com with ESMTP; 26 Feb 2026 23:27:31 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 28F3F99; Fri, 27 Feb 2026 08:27:30 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Randy Dunlap <rdunlap@infradead.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 1/2] bus: Remove not-going-to-be-supported code for Baikal SoC
Date: Fri, 27 Feb 2026 08:26:25 +0100
Message-ID: <20260227072726.1142944-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260227072726.1142944-1-andriy.shevchenko@linux.intel.com>
References: <20260227072726.1142944-1-andriy.shevchenko@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269111-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.983];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:email,intel.com:dkim,baikalelectronics.ru:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: A40591B3DEB
X-Rspamd-Action: no action

As noticed in the discussion [1] the Baikal SoC and platforms
are not going to be finalized, hence remove stale code.

Link: https://lore.kernel.org/lkml/22b92ddf-6321-41b5-8073-f9c7064d3432@infradead.org/ [1]
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/bus/Kconfig   |  30 ----
 drivers/bus/Makefile  |   2 -
 drivers/bus/bt1-apb.c | 396 ------------------------------------------
 drivers/bus/bt1-axi.c | 292 -------------------------------
 4 files changed, 720 deletions(-)
 delete mode 100644 drivers/bus/bt1-apb.c
 delete mode 100644 drivers/bus/bt1-axi.c

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 2a1b46f07080..5a7361c81be5 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -38,36 +38,6 @@ config BRCMSTB_GISB_ARB
 	  arbiter. This driver provides timeout and target abort error handling
 	  and internal bus master decoding.
 
-config BT1_APB
-	bool "Baikal-T1 APB-bus driver"
-	depends on MIPS_BAIKAL_T1 || COMPILE_TEST
-	select REGMAP_MMIO
-	help
-	  Baikal-T1 AXI-APB bridge is used to access the SoC subsystem CSRs.
-	  IO requests are routed to this bus by means of the DW AMBA 3 AXI
-	  Interconnect. In case of any APB protocol collisions, slave device
-	  not responding on timeout an IRQ is raised with an erroneous address
-	  reported to the APB terminator (APB Errors Handler Block). This
-	  driver provides the interrupt handler to detect the erroneous
-	  address, prints an error message about the address fault, updates an
-	  errors counter. The counter and the APB-bus operations timeout can be
-	  accessed via corresponding sysfs nodes.
-
-config BT1_AXI
-	bool "Baikal-T1 AXI-bus driver"
-	depends on MIPS_BAIKAL_T1 || COMPILE_TEST
-	select MFD_SYSCON
-	help
-	  AXI3-bus is the main communication bus connecting all high-speed
-	  peripheral IP-cores with RAM controller and with MIPS P5600 cores on
-	  Baikal-T1 SoC. Traffic arbitration is done by means of DW AMBA 3 AXI
-	  Interconnect (so called AXI Main Interconnect) routing IO requests
-	  from one SoC block to another. This driver provides a way to detect
-	  any bus protocol errors and device not responding situations by
-	  means of an embedded on top of the interconnect errors handler
-	  block (EHB). AXI Interconnect QoS arbitration tuning is currently
-	  unsupported.
-
 config MOXTET
 	tristate "CZ.NIC Turris Mox module configuration bus"
 	depends on SPI_MASTER && OF
diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
index 8e693fe8a03a..768a27e96276 100644
--- a/drivers/bus/Makefile
+++ b/drivers/bus/Makefile
@@ -13,8 +13,6 @@ obj-$(CONFIG_MOXTET)		+= moxtet.o
 # DPAA2 fsl-mc bus
 obj-$(CONFIG_FSL_MC_BUS)	+= fsl-mc/
 
-obj-$(CONFIG_BT1_APB)		+= bt1-apb.o
-obj-$(CONFIG_BT1_AXI)		+= bt1-axi.o
 obj-$(CONFIG_IMX_AIPSTZ)	+= imx-aipstz.o
 obj-$(CONFIG_IMX_WEIM)		+= imx-weim.o
 obj-$(CONFIG_INTEL_IXP4XX_EB)	+= intel-ixp4xx-eb.o
diff --git a/drivers/bus/bt1-apb.c b/drivers/bus/bt1-apb.c
deleted file mode 100644
index 7463124b6dd9..000000000000
--- a/drivers/bus/bt1-apb.c
+++ /dev/null
@@ -1,396 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2020 BAIKAL ELECTRONICS, JSC
- *
- * Authors:
- *   Serge Semin <Sergey.Semin@baikalelectronics.ru>
- *
- * Baikal-T1 APB-bus driver
- */
-
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/types.h>
-#include <linux/device.h>
-#include <linux/atomic.h>
-#include <linux/platform_device.h>
-#include <linux/interrupt.h>
-#include <linux/io.h>
-#include <linux/nmi.h>
-#include <linux/of.h>
-#include <linux/regmap.h>
-#include <linux/clk.h>
-#include <linux/reset.h>
-#include <linux/time64.h>
-#include <linux/sysfs.h>
-
-#define APB_EHB_ISR			0x00
-#define APB_EHB_ISR_PENDING		BIT(0)
-#define APB_EHB_ISR_MASK		BIT(1)
-#define APB_EHB_ADDR			0x04
-#define APB_EHB_TIMEOUT			0x08
-
-#define APB_EHB_TIMEOUT_MIN		0x000003FFU
-#define APB_EHB_TIMEOUT_MAX		0xFFFFFFFFU
-
-/*
- * struct bt1_apb - Baikal-T1 APB EHB private data
- * @dev: Pointer to the device structure.
- * @regs: APB EHB registers map.
- * @res: No-device error injection memory region.
- * @irq: Errors IRQ number.
- * @rate: APB-bus reference clock rate.
- * @pclk: APB-reference clock.
- * @prst: APB domain reset line.
- * @count: Number of errors detected.
- */
-struct bt1_apb {
-	struct device *dev;
-
-	struct regmap *regs;
-	void __iomem *res;
-	int irq;
-
-	unsigned long rate;
-	struct clk *pclk;
-
-	struct reset_control *prst;
-
-	atomic_t count;
-};
-
-static const struct regmap_config bt1_apb_regmap_cfg = {
-	.reg_bits = 32,
-	.val_bits = 32,
-	.reg_stride = 4,
-	.max_register = APB_EHB_TIMEOUT,
-	.fast_io = true
-};
-
-static inline unsigned long bt1_apb_n_to_timeout_us(struct bt1_apb *apb, u32 n)
-{
-	u64 timeout = (u64)n * USEC_PER_SEC;
-
-	do_div(timeout, apb->rate);
-
-	return timeout;
-
-}
-
-static inline unsigned long bt1_apb_timeout_to_n_us(struct bt1_apb *apb,
-						    unsigned long timeout)
-{
-	u64 n = (u64)timeout * apb->rate;
-
-	do_div(n, USEC_PER_SEC);
-
-	return n;
-
-}
-
-static irqreturn_t bt1_apb_isr(int irq, void *data)
-{
-	struct bt1_apb *apb = data;
-	u32 addr = 0;
-
-	regmap_read(apb->regs, APB_EHB_ADDR, &addr);
-
-	dev_crit_ratelimited(apb->dev,
-		"APB-bus fault %d: Slave access timeout at 0x%08x\n",
-		atomic_inc_return(&apb->count),
-		addr);
-
-	/*
-	 * Print backtrace on each CPU. This might be pointless if the fault
-	 * has happened on the same CPU as the IRQ handler is executed or
-	 * the other core proceeded further execution despite the error.
-	 * But if it's not, by looking at the trace we would get straight to
-	 * the cause of the problem.
-	 */
-	trigger_all_cpu_backtrace();
-
-	regmap_update_bits(apb->regs, APB_EHB_ISR, APB_EHB_ISR_PENDING, 0);
-
-	return IRQ_HANDLED;
-}
-
-static void bt1_apb_clear_data(void *data)
-{
-	struct bt1_apb *apb = data;
-	struct platform_device *pdev = to_platform_device(apb->dev);
-
-	platform_set_drvdata(pdev, NULL);
-}
-
-static struct bt1_apb *bt1_apb_create_data(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct bt1_apb *apb;
-	int ret;
-
-	apb = devm_kzalloc(dev, sizeof(*apb), GFP_KERNEL);
-	if (!apb)
-		return ERR_PTR(-ENOMEM);
-
-	ret = devm_add_action(dev, bt1_apb_clear_data, apb);
-	if (ret) {
-		dev_err(dev, "Can't add APB EHB data clear action\n");
-		return ERR_PTR(ret);
-	}
-
-	apb->dev = dev;
-	atomic_set(&apb->count, 0);
-	platform_set_drvdata(pdev, apb);
-
-	return apb;
-}
-
-static int bt1_apb_request_regs(struct bt1_apb *apb)
-{
-	struct platform_device *pdev = to_platform_device(apb->dev);
-	void __iomem *regs;
-
-	regs = devm_platform_ioremap_resource_byname(pdev, "ehb");
-	if (IS_ERR(regs)) {
-		dev_err(apb->dev, "Couldn't map APB EHB registers\n");
-		return PTR_ERR(regs);
-	}
-
-	apb->regs = devm_regmap_init_mmio(apb->dev, regs, &bt1_apb_regmap_cfg);
-	if (IS_ERR(apb->regs)) {
-		dev_err(apb->dev, "Couldn't create APB EHB regmap\n");
-		return PTR_ERR(apb->regs);
-	}
-
-	apb->res = devm_platform_ioremap_resource_byname(pdev, "nodev");
-	if (IS_ERR(apb->res))
-		dev_err(apb->dev, "Couldn't map reserved region\n");
-
-	return PTR_ERR_OR_ZERO(apb->res);
-}
-
-static int bt1_apb_request_rst(struct bt1_apb *apb)
-{
-	int ret;
-
-	apb->prst = devm_reset_control_get_optional_exclusive(apb->dev, "prst");
-	if (IS_ERR(apb->prst))
-		return dev_err_probe(apb->dev, PTR_ERR(apb->prst),
-				     "Couldn't get reset control line\n");
-
-	ret = reset_control_deassert(apb->prst);
-	if (ret)
-		dev_err(apb->dev, "Failed to deassert the reset line\n");
-
-	return ret;
-}
-
-static int bt1_apb_request_clk(struct bt1_apb *apb)
-{
-	apb->pclk = devm_clk_get_enabled(apb->dev, "pclk");
-	if (IS_ERR(apb->pclk))
-		return dev_err_probe(apb->dev, PTR_ERR(apb->pclk),
-				     "Couldn't get APB clock descriptor\n");
-
-	apb->rate = clk_get_rate(apb->pclk);
-	if (!apb->rate) {
-		dev_err(apb->dev, "Invalid clock rate\n");
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static void bt1_apb_clear_irq(void *data)
-{
-	struct bt1_apb *apb = data;
-
-	regmap_update_bits(apb->regs, APB_EHB_ISR, APB_EHB_ISR_MASK, 0);
-}
-
-static int bt1_apb_request_irq(struct bt1_apb *apb)
-{
-	struct platform_device *pdev = to_platform_device(apb->dev);
-	int ret;
-
-	apb->irq = platform_get_irq(pdev, 0);
-	if (apb->irq < 0)
-		return apb->irq;
-
-	ret = devm_request_irq(apb->dev, apb->irq, bt1_apb_isr, IRQF_SHARED,
-			       "bt1-apb", apb);
-	if (ret) {
-		dev_err(apb->dev, "Couldn't request APB EHB IRQ\n");
-		return ret;
-	}
-
-	ret = devm_add_action(apb->dev, bt1_apb_clear_irq, apb);
-	if (ret) {
-		dev_err(apb->dev, "Can't add APB EHB IRQs clear action\n");
-		return ret;
-	}
-
-	/* Unmask IRQ and clear it' pending flag. */
-	regmap_update_bits(apb->regs, APB_EHB_ISR,
-			   APB_EHB_ISR_PENDING | APB_EHB_ISR_MASK,
-			   APB_EHB_ISR_MASK);
-
-	return 0;
-}
-
-static ssize_t count_show(struct device *dev, struct device_attribute *attr,
-			  char *buf)
-{
-	struct bt1_apb *apb = dev_get_drvdata(dev);
-
-	return scnprintf(buf, PAGE_SIZE, "%d\n", atomic_read(&apb->count));
-}
-static DEVICE_ATTR_RO(count);
-
-static ssize_t timeout_show(struct device *dev, struct device_attribute *attr,
-			    char *buf)
-{
-	struct bt1_apb *apb = dev_get_drvdata(dev);
-	unsigned long timeout;
-	int ret;
-	u32 n;
-
-	ret = regmap_read(apb->regs, APB_EHB_TIMEOUT, &n);
-	if (ret)
-		return ret;
-
-	timeout = bt1_apb_n_to_timeout_us(apb, n);
-
-	return scnprintf(buf, PAGE_SIZE, "%lu\n", timeout);
-}
-
-static ssize_t timeout_store(struct device *dev,
-			     struct device_attribute *attr,
-			     const char *buf, size_t count)
-{
-	struct bt1_apb *apb = dev_get_drvdata(dev);
-	unsigned long timeout;
-	int ret;
-	u32 n;
-
-	if (kstrtoul(buf, 0, &timeout) < 0)
-		return -EINVAL;
-
-	n = bt1_apb_timeout_to_n_us(apb, timeout);
-	n = clamp(n, APB_EHB_TIMEOUT_MIN, APB_EHB_TIMEOUT_MAX);
-
-	ret = regmap_write(apb->regs, APB_EHB_TIMEOUT, n);
-
-	return ret ?: count;
-}
-static DEVICE_ATTR_RW(timeout);
-
-static ssize_t inject_error_show(struct device *dev,
-				 struct device_attribute *attr, char *buf)
-{
-	return scnprintf(buf, PAGE_SIZE, "Error injection: nodev irq\n");
-}
-
-static ssize_t inject_error_store(struct device *dev,
-				  struct device_attribute *attr,
-				  const char *data, size_t count)
-{
-	struct bt1_apb *apb = dev_get_drvdata(dev);
-
-	/*
-	 * Either dummy read from the unmapped address in the APB IO area
-	 * or manually set the IRQ status.
-	 */
-	if (sysfs_streq(data, "nodev"))
-		readl(apb->res);
-	else if (sysfs_streq(data, "irq"))
-		regmap_update_bits(apb->regs, APB_EHB_ISR, APB_EHB_ISR_PENDING,
-				   APB_EHB_ISR_PENDING);
-	else
-		return -EINVAL;
-
-	return count;
-}
-static DEVICE_ATTR_RW(inject_error);
-
-static struct attribute *bt1_apb_sysfs_attrs[] = {
-	&dev_attr_count.attr,
-	&dev_attr_timeout.attr,
-	&dev_attr_inject_error.attr,
-	NULL
-};
-ATTRIBUTE_GROUPS(bt1_apb_sysfs);
-
-static void bt1_apb_remove_sysfs(void *data)
-{
-	struct bt1_apb *apb = data;
-
-	device_remove_groups(apb->dev, bt1_apb_sysfs_groups);
-}
-
-static int bt1_apb_init_sysfs(struct bt1_apb *apb)
-{
-	int ret;
-
-	ret = device_add_groups(apb->dev, bt1_apb_sysfs_groups);
-	if (ret) {
-		dev_err(apb->dev, "Failed to create EHB APB sysfs nodes\n");
-		return ret;
-	}
-
-	ret = devm_add_action_or_reset(apb->dev, bt1_apb_remove_sysfs, apb);
-	if (ret)
-		dev_err(apb->dev, "Can't add APB EHB sysfs remove action\n");
-
-	return ret;
-}
-
-static int bt1_apb_probe(struct platform_device *pdev)
-{
-	struct bt1_apb *apb;
-	int ret;
-
-	apb = bt1_apb_create_data(pdev);
-	if (IS_ERR(apb))
-		return PTR_ERR(apb);
-
-	ret = bt1_apb_request_regs(apb);
-	if (ret)
-		return ret;
-
-	ret = bt1_apb_request_rst(apb);
-	if (ret)
-		return ret;
-
-	ret = bt1_apb_request_clk(apb);
-	if (ret)
-		return ret;
-
-	ret = bt1_apb_request_irq(apb);
-	if (ret)
-		return ret;
-
-	ret = bt1_apb_init_sysfs(apb);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static const struct of_device_id bt1_apb_of_match[] = {
-	{ .compatible = "baikal,bt1-apb" },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, bt1_apb_of_match);
-
-static struct platform_driver bt1_apb_driver = {
-	.probe = bt1_apb_probe,
-	.driver = {
-		.name = "bt1-apb",
-		.of_match_table = bt1_apb_of_match
-	}
-};
-module_platform_driver(bt1_apb_driver);
-
-MODULE_AUTHOR("Serge Semin <Sergey.Semin@baikalelectronics.ru>");
-MODULE_DESCRIPTION("Baikal-T1 APB-bus driver");
diff --git a/drivers/bus/bt1-axi.c b/drivers/bus/bt1-axi.c
deleted file mode 100644
index a5254c73bf43..000000000000
--- a/drivers/bus/bt1-axi.c
+++ /dev/null
@@ -1,292 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2020 BAIKAL ELECTRONICS, JSC
- *
- * Authors:
- *   Serge Semin <Sergey.Semin@baikalelectronics.ru>
- *
- * Baikal-T1 AXI-bus driver
- */
-
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/types.h>
-#include <linux/bitfield.h>
-#include <linux/device.h>
-#include <linux/atomic.h>
-#include <linux/regmap.h>
-#include <linux/platform_device.h>
-#include <linux/mfd/syscon.h>
-#include <linux/interrupt.h>
-#include <linux/io.h>
-#include <linux/nmi.h>
-#include <linux/of.h>
-#include <linux/clk.h>
-#include <linux/reset.h>
-#include <linux/sysfs.h>
-
-#define BT1_AXI_WERRL			0x110
-#define BT1_AXI_WERRH			0x114
-#define BT1_AXI_WERRH_TYPE		BIT(23)
-#define BT1_AXI_WERRH_ADDR_FLD		24
-#define BT1_AXI_WERRH_ADDR_MASK		GENMASK(31, BT1_AXI_WERRH_ADDR_FLD)
-
-/*
- * struct bt1_axi - Baikal-T1 AXI-bus private data
- * @dev: Pointer to the device structure.
- * @qos_regs: AXI Interconnect QoS tuning registers.
- * @sys_regs: Baikal-T1 System Controller registers map.
- * @irq: Errors IRQ number.
- * @aclk: AXI reference clock.
- * @arst: AXI Interconnect reset line.
- * @count: Number of errors detected.
- */
-struct bt1_axi {
-	struct device *dev;
-
-	void __iomem *qos_regs;
-	struct regmap *sys_regs;
-	int irq;
-
-	struct clk *aclk;
-
-	struct reset_control *arst;
-
-	atomic_t count;
-};
-
-static irqreturn_t bt1_axi_isr(int irq, void *data)
-{
-	struct bt1_axi *axi = data;
-	u32 low = 0, high = 0;
-
-	regmap_read(axi->sys_regs, BT1_AXI_WERRL, &low);
-	regmap_read(axi->sys_regs, BT1_AXI_WERRH, &high);
-
-	dev_crit_ratelimited(axi->dev,
-		"AXI-bus fault %d: %s at 0x%x%08x\n",
-		atomic_inc_return(&axi->count),
-		high & BT1_AXI_WERRH_TYPE ? "no slave" : "slave protocol error",
-		high, low);
-
-	/*
-	 * Print backtrace on each CPU. This might be pointless if the fault
-	 * has happened on the same CPU as the IRQ handler is executed or
-	 * the other core proceeded further execution despite the error.
-	 * But if it's not, by looking at the trace we would get straight to
-	 * the cause of the problem.
-	 */
-	trigger_all_cpu_backtrace();
-
-	return IRQ_HANDLED;
-}
-
-static void bt1_axi_clear_data(void *data)
-{
-	struct bt1_axi *axi = data;
-	struct platform_device *pdev = to_platform_device(axi->dev);
-
-	platform_set_drvdata(pdev, NULL);
-}
-
-static struct bt1_axi *bt1_axi_create_data(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct bt1_axi *axi;
-	int ret;
-
-	axi = devm_kzalloc(dev, sizeof(*axi), GFP_KERNEL);
-	if (!axi)
-		return ERR_PTR(-ENOMEM);
-
-	ret = devm_add_action(dev, bt1_axi_clear_data, axi);
-	if (ret) {
-		dev_err(dev, "Can't add AXI EHB data clear action\n");
-		return ERR_PTR(ret);
-	}
-
-	axi->dev = dev;
-	atomic_set(&axi->count, 0);
-	platform_set_drvdata(pdev, axi);
-
-	return axi;
-}
-
-static int bt1_axi_request_regs(struct bt1_axi *axi)
-{
-	struct platform_device *pdev = to_platform_device(axi->dev);
-	struct device *dev = axi->dev;
-
-	axi->sys_regs = syscon_regmap_lookup_by_phandle(dev->of_node, "syscon");
-	if (IS_ERR(axi->sys_regs)) {
-		dev_err(dev, "Couldn't find syscon registers\n");
-		return PTR_ERR(axi->sys_regs);
-	}
-
-	axi->qos_regs = devm_platform_ioremap_resource_byname(pdev, "qos");
-	if (IS_ERR(axi->qos_regs))
-		dev_err(dev, "Couldn't map AXI-bus QoS registers\n");
-
-	return PTR_ERR_OR_ZERO(axi->qos_regs);
-}
-
-static int bt1_axi_request_rst(struct bt1_axi *axi)
-{
-	int ret;
-
-	axi->arst = devm_reset_control_get_optional_exclusive(axi->dev, "arst");
-	if (IS_ERR(axi->arst))
-		return dev_err_probe(axi->dev, PTR_ERR(axi->arst),
-				     "Couldn't get reset control line\n");
-
-	ret = reset_control_deassert(axi->arst);
-	if (ret)
-		dev_err(axi->dev, "Failed to deassert the reset line\n");
-
-	return ret;
-}
-
-static int bt1_axi_request_clk(struct bt1_axi *axi)
-{
-	axi->aclk = devm_clk_get_enabled(axi->dev, "aclk");
-	if (IS_ERR(axi->aclk))
-		return dev_err_probe(axi->dev, PTR_ERR(axi->aclk),
-				     "Couldn't get AXI Interconnect clock\n");
-
-	return 0;
-}
-
-static int bt1_axi_request_irq(struct bt1_axi *axi)
-{
-	struct platform_device *pdev = to_platform_device(axi->dev);
-	int ret;
-
-	axi->irq = platform_get_irq(pdev, 0);
-	if (axi->irq < 0)
-		return axi->irq;
-
-	ret = devm_request_irq(axi->dev, axi->irq, bt1_axi_isr, IRQF_SHARED,
-			       "bt1-axi", axi);
-	if (ret)
-		dev_err(axi->dev, "Couldn't request AXI EHB IRQ\n");
-
-	return ret;
-}
-
-static ssize_t count_show(struct device *dev,
-			  struct device_attribute *attr, char *buf)
-{
-	struct bt1_axi *axi = dev_get_drvdata(dev);
-
-	return scnprintf(buf, PAGE_SIZE, "%d\n", atomic_read(&axi->count));
-}
-static DEVICE_ATTR_RO(count);
-
-static ssize_t inject_error_show(struct device *dev,
-				 struct device_attribute *attr, char *buf)
-{
-	return scnprintf(buf, PAGE_SIZE, "Error injection: bus unaligned\n");
-}
-
-static ssize_t inject_error_store(struct device *dev,
-				  struct device_attribute *attr,
-				  const char *data, size_t count)
-{
-	struct bt1_axi *axi = dev_get_drvdata(dev);
-
-	/*
-	 * Performing unaligned read from the memory will cause the CM2 bus
-	 * error while unaligned writing - the AXI bus write error handled
-	 * by this driver.
-	 */
-	if (sysfs_streq(data, "bus"))
-		readb(axi->qos_regs);
-	else if (sysfs_streq(data, "unaligned"))
-		writeb(0, axi->qos_regs);
-	else
-		return -EINVAL;
-
-	return count;
-}
-static DEVICE_ATTR_RW(inject_error);
-
-static struct attribute *bt1_axi_sysfs_attrs[] = {
-	&dev_attr_count.attr,
-	&dev_attr_inject_error.attr,
-	NULL
-};
-ATTRIBUTE_GROUPS(bt1_axi_sysfs);
-
-static void bt1_axi_remove_sysfs(void *data)
-{
-	struct bt1_axi *axi = data;
-
-	device_remove_groups(axi->dev, bt1_axi_sysfs_groups);
-}
-
-static int bt1_axi_init_sysfs(struct bt1_axi *axi)
-{
-	int ret;
-
-	ret = device_add_groups(axi->dev, bt1_axi_sysfs_groups);
-	if (ret) {
-		dev_err(axi->dev, "Failed to add sysfs files group\n");
-		return ret;
-	}
-
-	ret = devm_add_action_or_reset(axi->dev, bt1_axi_remove_sysfs, axi);
-	if (ret)
-		dev_err(axi->dev, "Can't add AXI EHB sysfs remove action\n");
-
-	return ret;
-}
-
-static int bt1_axi_probe(struct platform_device *pdev)
-{
-	struct bt1_axi *axi;
-	int ret;
-
-	axi = bt1_axi_create_data(pdev);
-	if (IS_ERR(axi))
-		return PTR_ERR(axi);
-
-	ret = bt1_axi_request_regs(axi);
-	if (ret)
-		return ret;
-
-	ret = bt1_axi_request_rst(axi);
-	if (ret)
-		return ret;
-
-	ret = bt1_axi_request_clk(axi);
-	if (ret)
-		return ret;
-
-	ret = bt1_axi_request_irq(axi);
-	if (ret)
-		return ret;
-
-	ret = bt1_axi_init_sysfs(axi);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static const struct of_device_id bt1_axi_of_match[] = {
-	{ .compatible = "baikal,bt1-axi" },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, bt1_axi_of_match);
-
-static struct platform_driver bt1_axi_driver = {
-	.probe = bt1_axi_probe,
-	.driver = {
-		.name = "bt1-axi",
-		.of_match_table = bt1_axi_of_match
-	}
-};
-module_platform_driver(bt1_axi_driver);
-
-MODULE_AUTHOR("Serge Semin <Sergey.Semin@baikalelectronics.ru>");
-MODULE_DESCRIPTION("Baikal-T1 AXI-bus driver");
-- 
2.50.1



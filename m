Return-Path: <devicetree+bounces-268506-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EgIKh40n2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268506-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:40:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F2019BACB
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:40:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9D6430BF9AA
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E80D3E9F62;
	Wed, 25 Feb 2026 17:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="M/nzlTAw"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7413DA7DE;
	Wed, 25 Feb 2026 17:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772041182; cv=none; b=hePnjPtXfN8glG+xthH4wbWhfKDZGYUpSZoQ7dk4Jre4fo3AKJG4UdPhXonFCsKh27r4JEI6pXZsKC53hilGqSa6VizGYakFsw5b4Mfd6PwzJacumR9Nb5sEDvxvQ8ESUSErUoz03YcUckHIOCtgnwfqOYLVjNa3w6CYwVfQ0CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772041182; c=relaxed/simple;
	bh=UTyfoEkLXCEdCyZuF5IsheeNEbRey2qwIi9BtA7ePLs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lfk4yJgRoMP8qtLsN+LpZh0fbJo+3P3Sgar86BVWa81Hd5J1cFbxugxh1FOAJ1qgZZlfLKz1KN8g5BDzxEb98nAa1ULkcxYmI02r3fdOZioAXyyyDfjK/mSokHGp62lJaLWaiZgVC2IcNZBsH4QWKYhqVB8H8VGxnfIF0FC+2lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=M/nzlTAw; arc=none smtp.client-ip=198.175.65.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772041180; x=1803577180;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=UTyfoEkLXCEdCyZuF5IsheeNEbRey2qwIi9BtA7ePLs=;
  b=M/nzlTAwxLy51I9W6gvnjV+jR79t4619kLp6pCWAUG7sHDkOoT7Wwn4w
   xoFMsPP1SUsAlugma89FQ86L1i/aeudBFbgnUGLqU+0fl49oPB4ZOeL8P
   uWz5yJgb5RlxwedSDt7zW90SrPNzzsywoMkmDE/XHSqnFDKzFWzdXIINc
   N2xO2pmSM4dgdQzA8dfnJynQWn8zQlyrdrCP6xxAx0ew5iIQ1XcV08DgX
   2Yp3YRms1Ll/gwGb4BaQ9Ll61OsIjX/ZoRKtDeSQpWk9n0fg231FCHiEY
   pmvjFTlYcYCxGdxP6m63YoDpnjQWRSaPTtF5H8dE8LxUunxkDMGlDqMfJ
   w==;
X-CSE-ConnectionGUID: o3N/hLxSR9q+rbBKe97HVA==
X-CSE-MsgGUID: 9GIafAryStWx8K7j0WbAww==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73265236"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="73265236"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 09:39:40 -0800
X-CSE-ConnectionGUID: 3EerfELHRySwrwik9ZBj/Q==
X-CSE-MsgGUID: G7MEZmOKTqe0jPEHpWj16w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="244029450"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa001.fm.intel.com with ESMTP; 25 Feb 2026 09:39:37 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 4EE6899; Wed, 25 Feb 2026 18:39:37 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH v3 1/2] memory: bt1-l2-ctl: Remove not-going-to-be-supported code for Baikal SoC
Date: Wed, 25 Feb 2026 18:37:20 +0100
Message-ID: <20260225173930.3819351-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260225173930.3819351-1-andriy.shevchenko@linux.intel.com>
References: <20260225173930.3819351-1-andriy.shevchenko@linux.intel.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268506-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 18F2019BACB
X-Rspamd-Action: no action

As noticed in the discussion [1] the Baikal SoC and platforms
are not going to be finalized, hence remove stale code.

Link: https://lore.kernel.org/lkml/22b92ddf-6321-41b5-8073-f9c7064d3432@infradead.org/ [1]
Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/memory/Kconfig      |  11 --
 drivers/memory/Makefile     |   1 -
 drivers/memory/bt1-l2-ctl.c | 323 ------------------------------------
 3 files changed, 335 deletions(-)
 delete mode 100644 drivers/memory/bt1-l2-ctl.c

diff --git a/drivers/memory/Kconfig b/drivers/memory/Kconfig
index 79df0d22e218..e5527020ff33 100644
--- a/drivers/memory/Kconfig
+++ b/drivers/memory/Kconfig
@@ -64,17 +64,6 @@ config BRCMSTB_MEMC
 	  controller and specifically control the Self Refresh Power Down
 	  (SRPD) inactivity timeout.
 
-config BT1_L2_CTL
-	bool "Baikal-T1 CM2 L2-RAM Cache Control Block"
-	depends on MIPS_BAIKAL_T1 || COMPILE_TEST
-	select MFD_SYSCON
-	help
-	  Baikal-T1 CPU is based on the MIPS P5600 Warrior IP-core. The CPU
-	  resides Coherency Manager v2 with embedded 1MB L2-cache. It's
-	  possible to tune the L2 cache performance up by setting the data,
-	  tags and way-select latencies of RAM access. This driver provides a
-	  dt properties-based and sysfs interface for it.
-
 config TI_AEMIF
 	tristate "Texas Instruments AEMIF driver"
 	depends on ARCH_DAVINCI || ARCH_KEYSTONE || COMPILE_TEST
diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
index c1959661bf63..3ee883c8759a 100644
--- a/drivers/memory/Makefile
+++ b/drivers/memory/Makefile
@@ -11,7 +11,6 @@ obj-$(CONFIG_ARM_PL172_MPMC)	+= pl172.o
 obj-$(CONFIG_ATMEL_EBI)		+= atmel-ebi.o
 obj-$(CONFIG_BRCMSTB_DPFE)	+= brcmstb_dpfe.o
 obj-$(CONFIG_BRCMSTB_MEMC)	+= brcmstb_memc.o
-obj-$(CONFIG_BT1_L2_CTL)	+= bt1-l2-ctl.o
 obj-$(CONFIG_TI_AEMIF)		+= ti-aemif.o
 obj-$(CONFIG_TI_EMIF)		+= emif.o
 obj-$(CONFIG_OMAP_GPMC)		+= omap-gpmc.o
diff --git a/drivers/memory/bt1-l2-ctl.c b/drivers/memory/bt1-l2-ctl.c
deleted file mode 100644
index 0fd96abc172a..000000000000
--- a/drivers/memory/bt1-l2-ctl.c
+++ /dev/null
@@ -1,323 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2020 BAIKAL ELECTRONICS, JSC
- *
- * Authors:
- *   Serge Semin <Sergey.Semin@baikalelectronics.ru>
- *
- * Baikal-T1 CM2 L2-cache Control Block driver.
- */
-
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/bitfield.h>
-#include <linux/types.h>
-#include <linux/device.h>
-#include <linux/platform_device.h>
-#include <linux/regmap.h>
-#include <linux/mfd/syscon.h>
-#include <linux/sysfs.h>
-#include <linux/of.h>
-
-#define L2_CTL_REG			0x028
-#define L2_CTL_DATA_STALL_FLD		0
-#define L2_CTL_DATA_STALL_MASK		GENMASK(1, L2_CTL_DATA_STALL_FLD)
-#define L2_CTL_TAG_STALL_FLD		2
-#define L2_CTL_TAG_STALL_MASK		GENMASK(3, L2_CTL_TAG_STALL_FLD)
-#define L2_CTL_WS_STALL_FLD		4
-#define L2_CTL_WS_STALL_MASK		GENMASK(5, L2_CTL_WS_STALL_FLD)
-#define L2_CTL_SET_CLKRATIO		BIT(13)
-#define L2_CTL_CLKRATIO_LOCK		BIT(31)
-
-#define L2_CTL_STALL_MIN		0
-#define L2_CTL_STALL_MAX		3
-#define L2_CTL_STALL_SET_DELAY_US	1
-#define L2_CTL_STALL_SET_TOUT_US	1000
-
-/*
- * struct l2_ctl - Baikal-T1 L2 Control block private data.
- * @dev: Pointer to the device structure.
- * @sys_regs: Baikal-T1 System Controller registers map.
- */
-struct l2_ctl {
-	struct device *dev;
-
-	struct regmap *sys_regs;
-};
-
-/*
- * enum l2_ctl_stall - Baikal-T1 L2-cache-RAM stall identifier.
- * @L2_WSSTALL: Way-select latency.
- * @L2_TAGSTALL: Tag latency.
- * @L2_DATASTALL: Data latency.
- */
-enum l2_ctl_stall {
-	L2_WS_STALL,
-	L2_TAG_STALL,
-	L2_DATA_STALL
-};
-
-/*
- * struct l2_ctl_device_attribute - Baikal-T1 L2-cache device attribute.
- * @dev_attr: Actual sysfs device attribute.
- * @id: L2-cache stall field identifier.
- */
-struct l2_ctl_device_attribute {
-	struct device_attribute dev_attr;
-	enum l2_ctl_stall id;
-};
-
-#define to_l2_ctl_dev_attr(_dev_attr) \
-	container_of(_dev_attr, struct l2_ctl_device_attribute, dev_attr)
-
-#define L2_CTL_ATTR_RW(_name, _prefix, _id) \
-	struct l2_ctl_device_attribute l2_ctl_attr_##_name = \
-		{ __ATTR(_name, 0644, _prefix##_show, _prefix##_store),	_id }
-
-static int l2_ctl_get_latency(struct l2_ctl *l2, enum l2_ctl_stall id, u32 *val)
-{
-	u32 data = 0;
-	int ret;
-
-	ret = regmap_read(l2->sys_regs, L2_CTL_REG, &data);
-	if (ret)
-		return ret;
-
-	switch (id) {
-	case L2_WS_STALL:
-		*val = FIELD_GET(L2_CTL_WS_STALL_MASK, data);
-		break;
-	case L2_TAG_STALL:
-		*val = FIELD_GET(L2_CTL_TAG_STALL_MASK, data);
-		break;
-	case L2_DATA_STALL:
-		*val = FIELD_GET(L2_CTL_DATA_STALL_MASK, data);
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static int l2_ctl_set_latency(struct l2_ctl *l2, enum l2_ctl_stall id, u32 val)
-{
-	u32 mask = 0, data = 0;
-	int ret;
-
-	val = clamp_val(val, L2_CTL_STALL_MIN, L2_CTL_STALL_MAX);
-
-	switch (id) {
-	case L2_WS_STALL:
-		data = FIELD_PREP(L2_CTL_WS_STALL_MASK, val);
-		mask = L2_CTL_WS_STALL_MASK;
-		break;
-	case L2_TAG_STALL:
-		data = FIELD_PREP(L2_CTL_TAG_STALL_MASK, val);
-		mask = L2_CTL_TAG_STALL_MASK;
-		break;
-	case L2_DATA_STALL:
-		data = FIELD_PREP(L2_CTL_DATA_STALL_MASK, val);
-		mask = L2_CTL_DATA_STALL_MASK;
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	data |= L2_CTL_SET_CLKRATIO;
-	mask |= L2_CTL_SET_CLKRATIO;
-
-	ret = regmap_update_bits(l2->sys_regs, L2_CTL_REG, mask, data);
-	if (ret)
-		return ret;
-
-	return regmap_read_poll_timeout(l2->sys_regs, L2_CTL_REG, data,
-					data & L2_CTL_CLKRATIO_LOCK,
-					L2_CTL_STALL_SET_DELAY_US,
-					L2_CTL_STALL_SET_TOUT_US);
-}
-
-static void l2_ctl_clear_data(void *data)
-{
-	struct l2_ctl *l2 = data;
-	struct platform_device *pdev = to_platform_device(l2->dev);
-
-	platform_set_drvdata(pdev, NULL);
-}
-
-static struct l2_ctl *l2_ctl_create_data(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct l2_ctl *l2;
-	int ret;
-
-	l2 = devm_kzalloc(dev, sizeof(*l2), GFP_KERNEL);
-	if (!l2)
-		return ERR_PTR(-ENOMEM);
-
-	ret = devm_add_action(dev, l2_ctl_clear_data, l2);
-	if (ret) {
-		dev_err(dev, "Can't add L2 CTL data clear action\n");
-		return ERR_PTR(ret);
-	}
-
-	l2->dev = dev;
-	platform_set_drvdata(pdev, l2);
-
-	return l2;
-}
-
-static int l2_ctl_find_sys_regs(struct l2_ctl *l2)
-{
-	l2->sys_regs = syscon_node_to_regmap(l2->dev->of_node->parent);
-	if (IS_ERR(l2->sys_regs)) {
-		dev_err(l2->dev, "Couldn't get L2 CTL register map\n");
-		return PTR_ERR(l2->sys_regs);
-	}
-
-	return 0;
-}
-
-static int l2_ctl_of_parse_property(struct l2_ctl *l2, enum l2_ctl_stall id,
-				    const char *propname)
-{
-	int ret = 0;
-	u32 data;
-
-	if (!of_property_read_u32(l2->dev->of_node, propname, &data)) {
-		ret = l2_ctl_set_latency(l2, id, data);
-		if (ret)
-			dev_err(l2->dev, "Invalid value of '%s'\n", propname);
-	}
-
-	return ret;
-}
-
-static int l2_ctl_of_parse(struct l2_ctl *l2)
-{
-	int ret;
-
-	ret = l2_ctl_of_parse_property(l2, L2_WS_STALL, "baikal,l2-ws-latency");
-	if (ret)
-		return ret;
-
-	ret = l2_ctl_of_parse_property(l2, L2_TAG_STALL, "baikal,l2-tag-latency");
-	if (ret)
-		return ret;
-
-	return l2_ctl_of_parse_property(l2, L2_DATA_STALL,
-					"baikal,l2-data-latency");
-}
-
-static ssize_t l2_ctl_latency_show(struct device *dev,
-				   struct device_attribute *attr,
-				   char *buf)
-{
-	struct l2_ctl_device_attribute *devattr = to_l2_ctl_dev_attr(attr);
-	struct l2_ctl *l2 = dev_get_drvdata(dev);
-	u32 data;
-	int ret;
-
-	ret = l2_ctl_get_latency(l2, devattr->id, &data);
-	if (ret)
-		return ret;
-
-	return sysfs_emit(buf, "%u\n", data);
-}
-
-static ssize_t l2_ctl_latency_store(struct device *dev,
-				    struct device_attribute *attr,
-				    const char *buf, size_t count)
-{
-	struct l2_ctl_device_attribute *devattr = to_l2_ctl_dev_attr(attr);
-	struct l2_ctl *l2 = dev_get_drvdata(dev);
-	u32 data;
-	int ret;
-
-	if (kstrtouint(buf, 0, &data) < 0)
-		return -EINVAL;
-
-	ret = l2_ctl_set_latency(l2, devattr->id, data);
-	if (ret)
-		return ret;
-
-	return count;
-}
-
-static L2_CTL_ATTR_RW(l2_ws_latency, l2_ctl_latency, L2_WS_STALL);
-static L2_CTL_ATTR_RW(l2_tag_latency, l2_ctl_latency, L2_TAG_STALL);
-static L2_CTL_ATTR_RW(l2_data_latency, l2_ctl_latency, L2_DATA_STALL);
-
-static struct attribute *l2_ctl_sysfs_attrs[] = {
-	&l2_ctl_attr_l2_ws_latency.dev_attr.attr,
-	&l2_ctl_attr_l2_tag_latency.dev_attr.attr,
-	&l2_ctl_attr_l2_data_latency.dev_attr.attr,
-	NULL
-};
-ATTRIBUTE_GROUPS(l2_ctl_sysfs);
-
-static void l2_ctl_remove_sysfs(void *data)
-{
-	struct l2_ctl *l2 = data;
-
-	device_remove_groups(l2->dev, l2_ctl_sysfs_groups);
-}
-
-static int l2_ctl_init_sysfs(struct l2_ctl *l2)
-{
-	int ret;
-
-	ret = device_add_groups(l2->dev, l2_ctl_sysfs_groups);
-	if (ret) {
-		dev_err(l2->dev, "Failed to create L2 CTL sysfs nodes\n");
-		return ret;
-	}
-
-	ret = devm_add_action_or_reset(l2->dev, l2_ctl_remove_sysfs, l2);
-	if (ret)
-		dev_err(l2->dev, "Can't add L2 CTL sysfs remove action\n");
-
-	return ret;
-}
-
-static int l2_ctl_probe(struct platform_device *pdev)
-{
-	struct l2_ctl *l2;
-	int ret;
-
-	l2 = l2_ctl_create_data(pdev);
-	if (IS_ERR(l2))
-		return PTR_ERR(l2);
-
-	ret = l2_ctl_find_sys_regs(l2);
-	if (ret)
-		return ret;
-
-	ret = l2_ctl_of_parse(l2);
-	if (ret)
-		return ret;
-
-	ret = l2_ctl_init_sysfs(l2);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static const struct of_device_id l2_ctl_of_match[] = {
-	{ .compatible = "baikal,bt1-l2-ctl" },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, l2_ctl_of_match);
-
-static struct platform_driver l2_ctl_driver = {
-	.probe = l2_ctl_probe,
-	.driver = {
-		.name = "bt1-l2-ctl",
-		.of_match_table = l2_ctl_of_match
-	}
-};
-module_platform_driver(l2_ctl_driver);
-
-MODULE_AUTHOR("Serge Semin <Sergey.Semin@baikalelectronics.ru>");
-MODULE_DESCRIPTION("Baikal-T1 L2-cache driver");
-- 
2.50.1



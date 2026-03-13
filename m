Return-Path: <devicetree+bounces-274885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFeyHUSps2lWZgAAu9opvQ
	(envelope-from <devicetree+bounces-274885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:05:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA24527D909
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:05:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8049030C9CD7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B36C325491;
	Fri, 13 Mar 2026 06:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="roMihj3h"
X-Original-To: devicetree@vger.kernel.org
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010067.outbound.protection.outlook.com [52.101.46.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E84C238D52;
	Fri, 13 Mar 2026 06:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.46.67
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773381896; cv=fail; b=ZhwyQSKLWvma1uoJC3sJc4M7nDVwU70kI4++hh8/agOaufJv8u9TG8ZdpfD/Zql/t9/RDMHPP418KsDmnprTn2t+GTbhY1M6BVcUC8JBvS0jP4HA5K9iVEHMBAkuGZyoxW5rF0Xcl49FdjcO68qH4aGuQpRvzs77CJkxIB37qWw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773381896; c=relaxed/simple;
	bh=NRZzkJxdHIOBguccRqDBO6qd3USjMpL+7ZgjQBSSFy8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CFLlXtJPlR/uvi1JJlLYxQkFQaRc1A8kmZQYsFJB7XXZAnpuIm7aoQgiek2+XSqRMsEJ1uomK1MEco4OLax00Ct85sb4HyehoMURpBr0meTBXzMbZi11f4Klea4zguSb9QcM5JzVmzcAlnPig6sJwouK/E5tQ0SaIFLDT2NfUcU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=roMihj3h; arc=fail smtp.client-ip=52.101.46.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aF/85155upJpgG3DJ2oufKN5JdfmGvfI1Jv9is9GjUvdgRZY2rERpWo9r26INGItIBOWKbMdPRu3VYLaaXguxLjZKoY2VjnfLGXWw0Lw7WB/WPlcesSqo4rBohQHClTen0VMwMQLiMScqf0tSg0teU+RLg/maJmbdM0x9Jz/SUVqPrZ5eO+PvX4wKjI7RqI8qFBob0q8Gq2yFc13xPK1DCyP4ntsSTeDgKOZYCNmBkfCkaC5viPqcRAG/UsyVwgSy9kex+NP1m2n+O9c8+DOnDLMu8yXGvyl5x/k3Wv4N6UpWrUSdR2pfq2pZ3xvGTrFDjEdRP6v3VCIKANQTRWnzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xya40QhYoV0fW+xJAD9yvyZhKO6DyEtmPnbmUSRx818=;
 b=IOuc6z6VbFiUqGW0TYXZT+6iFLhLqUtb7YDEZKTxowJoR/1N1hv8VNSKqaQ2WO3Qgf9BOjGcei/Cly3Kt1CFZetRKa++bv4OL1dwF3FwK5uukAgs4K1+K2t9J4xhraafrzLW/RBXR7r97cDI+IPgByAmxp5UJd4KDdf9u0uGdcU7uIWkIr/2Ba1iuYU6mtGFRZYlXw2IKq0M0pSkKMcuhqlCjrPTCYki17pR1ChLLjcJJQeMeHoTyTyldbczsRI38Axt3tC1mfOzoLe0W4s12oCZ35xFdBNWqo22XWE3MneXds04ftpTqsSgIMhnpUngoAx6rp8l5zh/B+3zO3D91w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xya40QhYoV0fW+xJAD9yvyZhKO6DyEtmPnbmUSRx818=;
 b=roMihj3h2scv223PzgmeZUsxRX5jsYyjnvA9t1x1087Apc+qdLwiRcoNVd9KQS/8WEQTTKSdiizRexSjOS20xHaFe1pMFvtykNwy0j3LFD1eT0SSr4yRucLN7Yj2c/MmawPEYuUROJKFwpplcPqh+G8RS3dhZoFMdWDy/1OtLqY=
Received: from BY1P220CA0003.NAMP220.PROD.OUTLOOK.COM (2603:10b6:a03:59d::10)
 by LV3PR10MB8034.namprd10.prod.outlook.com (2603:10b6:408:28e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.15; Fri, 13 Mar
 2026 06:04:52 +0000
Received: from SJ1PEPF00001CDC.namprd05.prod.outlook.com
 (2603:10b6:a03:59d:cafe::73) by BY1P220CA0003.outlook.office365.com
 (2603:10b6:a03:59d::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.29 via Frontend Transport; Fri,
 13 Mar 2026 06:04:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 SJ1PEPF00001CDC.mail.protection.outlook.com (10.167.242.4) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.17 via Frontend Transport; Fri, 13 Mar 2026 06:04:51 +0000
Received: from DLEE200.ent.ti.com (157.170.170.75) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 01:04:50 -0500
Received: from DLEE204.ent.ti.com (157.170.170.84) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 13 Mar
 2026 01:04:50 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 13 Mar 2026 01:04:50 -0500
Received: from uda1253387.dhcp.ti.com (uda1253387.dhcp.ti.com [172.24.233.12])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 62D64fK83710415;
	Fri, 13 Mar 2026 01:04:47 -0500
From: Rahul Sharma <r-sharma3@ti.com>
To: <peda@axentia.se>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <vigneshr@ti.com>, <r-sharma3@ti.com>,
	<linux-kernel@vger.kernel.org>
Subject: [RFC uL PATCH 2/2] mux-controller: ti: add driver for event mux router
Date: Fri, 13 Mar 2026 11:34:37 +0530
Message-ID: <20260313060437.3704592-3-r-sharma3@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313060437.3704592-1-r-sharma3@ti.com>
References: <20260313060437.3704592-1-r-sharma3@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CDC:EE_|LV3PR10MB8034:EE_
X-MS-Office365-Filtering-Correlation-Id: 68952e35-77b9-465e-0137-08de80c670e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700016|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	IPpYagk8PhO0z8kZg/dJAbBntZfc6SbZMU+/2kV+VBtE0WKpRI9RMkWr8LzPyhThiFzMBQLjnLq3CFoQjK5duj6HYHhzrVu9GwCYsYAwJ87/3clzTdFRb9ViUy7lmdlvncMfvwuHGvD4cSwjHiqrtH5mwwglgeZLI/rAiVVNBVIIDJvchMlycKZ0j+VVo/PuhC5WwMY3rC0YS8INqYs7CA1CW3MZq9cgxNCJNLCyIiQiVuTRgycaTkkQvFYLVZCiDotH69wlfBt969L6fn3MW2WjENwE8DKiXd9koMTJShzkGERZFrNvYHw5QUNRNArOwfrgcqFQYFI9rVGcxq6Dktnb12ajeXQsjggejI8mYiqv6t8uYpoefyCpbbUGxZbNOWBp5H2zWdNAEHtC5rQMKZpoSRON4LOZbhlA+K/6Hph6z5Xc+qpXBoG8pIivmW6k+L4q+Wkq57bcTBMRYxnPJjrvpMLInviaY8aVBjZALBOwhc6iJL+Ac6BB056N2grVCcXL+PMxCeb3SvAnnaVA5U4qe4uZKitnCaF6BXZfVg5Iay4zcW4p0VVK76htkEa0SP65Cg3WgYs1WjZ8ez/6c+PRKiT2iahPxXgTqOjZIhzctisjaqZa8OG8KqW9h8SjLf4STnOpDXNu1DJBP4M2FSAtPSF+gielC/YYChCn7UK53qtpAbbY+TXbcQSTE5K3wgArL3t/zz+RqLJ6WWp2Eg==
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700016)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	N/KNPD/dlmfI9pF5DcpkAPBSE53grggoRFHOVYlGopH58Zm9ltl4uFxUqI9odWl+Gu9FZpifuCdCMYcpfsK/gb9Y76nKULfouPZeeMkzhnAhq7k9cHY7f51v9PJ2oOUR7X5ug5J3v+Z383oG3p++evsWLaqgHm/T0wqnBoDENLN2RJLj+Mv5lV/rtaUAC+F1473y6ghSL+sA6CkiSTEZg9SvbjZBILXvtO3Y8QEdVLV8vbVHULjoWYpAdnhc6oZ5LEd8t0LhDmfUWpF0hRzUlIJ6pe2A1YX9JaLjMiPAa749q2RfjEi7viP2zBVi8W1O5QR8cqqjOZl93M70OH5RoVuPG4KJFsk/6/vIZb4pTYzkGbnSusgat7SreJxYGMBhHGOg51xAqEPLKaJNZZ5ddBebLPIwKSnaDip2qTVPVpcVlrXd+HgRrH0S0+mKWUib
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 06:04:51.7690
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 68952e35-77b9-465e-0137-08de80c670e5
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CDC.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB8034
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	TAGGED_FROM(0.00)[bounces-274885-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:dkim,ti.com:mid,ti.com:email,ti.com:url,pengutronix.de:email];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[r-sharma3@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: DA24527D909
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The driver supports event muxing routers like gpio mux router and timesync
router. This driver is adaptation of original reg-mux driver, along with
changes specific to support TI's mux router.

The idle states this driver supports are only 2 which active(represented
by 1 in dt-node) and in-active(represented by 0 in dt-node).

Signed-off-by: Rahul Sharma <r-sharma3@ti.com>
---
 drivers/mux/Kconfig           |  15 +++
 drivers/mux/Makefile          |   2 +
 drivers/mux/ti-k3-event-mux.c | 235 ++++++++++++++++++++++++++++++++++
 3 files changed, 252 insertions(+)
 create mode 100644 drivers/mux/ti-k3-event-mux.c

diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
index c68132e38138..ad3af2724d28 100644
--- a/drivers/mux/Kconfig
+++ b/drivers/mux/Kconfig
@@ -59,4 +59,19 @@ config MUX_MMIO
 	  To compile the driver as a module, choose M here: the module will
 	  be called mux-mmio.
 
+config MUX_TI_K3_EVENT_ROUTER
+	tristate "TI Event Mux Router using MMIO registers"
+	depends on OF && (REGMAP_MMIO || COMPILE_TEST)
+	help
+	  This is extension of MMIO mux for  timesync router and gpiomux
+	  routers on TI K3 SoCs. This driver supports the 3-field format for
+	  mux control: <register-offset mask value>.
+
+	  The driver allows configuration of hardware mux routers using
+	  memory-mapped registers. It's based on the mmio-mux driver but
+	  supports the extended 3-field format for more precise control.
+
+	  To compile the driver as a module, choose M here: the module will
+	  be called mux-ti-k3-event.
+
 endmenu
diff --git a/drivers/mux/Makefile b/drivers/mux/Makefile
index 6e9fa47daf56..f3f367de84da 100644
--- a/drivers/mux/Makefile
+++ b/drivers/mux/Makefile
@@ -8,9 +8,11 @@ mux-adg792a-objs		:= adg792a.o
 mux-adgs1408-objs		:= adgs1408.o
 mux-gpio-objs			:= gpio.o
 mux-mmio-objs			:= mmio.o
+mux-ti-k3-event-objs		:= ti-k3-event-mux.o
 
 obj-$(CONFIG_MULTIPLEXER)	+= mux-core.o
 obj-$(CONFIG_MUX_ADG792A)	+= mux-adg792a.o
 obj-$(CONFIG_MUX_ADGS1408)	+= mux-adgs1408.o
 obj-$(CONFIG_MUX_GPIO)		+= mux-gpio.o
 obj-$(CONFIG_MUX_MMIO)		+= mux-mmio.o
+obj-$(CONFIG_MUX_TI_K3_EVENT_ROUTER)	+= mux-ti-k3-event.o
diff --git a/drivers/mux/ti-k3-event-mux.c b/drivers/mux/ti-k3-event-mux.c
new file mode 100644
index 000000000000..2469500d1b48
--- /dev/null
+++ b/drivers/mux/ti-k3-event-mux.c
@@ -0,0 +1,235 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * MMIO register bit-field controlled multiplexer driver
+ *
+ * Copyright (C) 2026 Texas Instruments Incorporated - https://www.ti.com
+ *
+ * Based on drivers/mux/mmio.c by Philipp Zabel <kernel@pengutronix.de>
+ * Modified to support 3-field format: reg-offset, mask & value
+ *
+ * Author: Rahul Sharma <r-sharma3@ti.com>
+ */
+
+#include <linux/bitops.h>
+#include <linux/err.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/mux/driver.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+
+#define MUX_ENABLE_INTR BIT(16)
+
+struct mux_ti_k3_event {
+	struct regmap *regmap;
+	u32 reg;
+	u32 mask;
+	u32 value;
+};
+
+struct mux_ti_k3_event_chip {
+	struct mux_chip *mux_chip;
+	struct mux_ti_k3_event *fields;
+	int num_fields;
+	u32 *saved_states;
+};
+
+static int mux_ti_k3_event_suspend(struct device *dev)
+{
+	struct mux_ti_k3_event_chip *chip = dev_get_drvdata(dev);
+	int i, ret;
+
+	if (!chip->saved_states) {
+		chip->saved_states = devm_kcalloc(dev, chip->num_fields,
+						  sizeof(u32), GFP_KERNEL);
+		if (!chip->saved_states)
+			return -ENOMEM;
+	}
+
+	for (i = 0; i < chip->num_fields; i++) {
+		struct mux_ti_k3_event *field = &chip->fields[i];
+
+		ret = regmap_read(field->regmap, field->reg,
+				  &chip->saved_states[i]);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int mux_ti_k3_event_resume(struct device *dev)
+{
+	struct mux_ti_k3_event_chip *chip = dev_get_drvdata(dev);
+	int i, ret;
+
+	if (!chip->saved_states)
+		return 0;
+
+	for (i = 0; i < chip->num_fields; i++) {
+		struct mux_ti_k3_event *field = &chip->fields[i];
+
+		ret = regmap_write(field->regmap, field->reg,
+				   chip->saved_states[i]);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static DEFINE_SIMPLE_DEV_PM_OPS(mux_ti_k3_event_pm_ops,
+				mux_ti_k3_event_suspend,
+				mux_ti_k3_event_resume);
+
+/*
+ * State behavior:
+ * - state 0: Clears the mask bits in the target register (inactive state)
+ * - state 1: Sets both the value bits and enable bit (bit 16) in the register
+ */
+static int mux_ti_k3_event_set(struct mux_control *mux, int state)
+{
+	struct mux_ti_k3_event *fields = mux_chip_priv(mux->chip);
+	struct mux_ti_k3_event *field = &fields[mux_control_get_index(mux)];
+
+	if (!state)
+		return regmap_update_bits(field->regmap, field->reg, field->mask, 0);
+
+	return regmap_update_bits(field->regmap, field->reg, field->mask | MUX_ENABLE_INTR,
+		field->value | MUX_ENABLE_INTR);
+}
+
+static const struct mux_control_ops mux_ti_k3_event_ops = {
+	.set = mux_ti_k3_event_set,
+};
+
+static const struct regmap_config mux_ti_k3_event_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+};
+
+static int mux_ti_k3_event_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct mux_ti_k3_event_chip *chip;
+	struct mux_ti_k3_event *fields;
+	struct mux_chip *mux_chip;
+	struct regmap *regmap;
+	void __iomem *base;
+	int num_fields;
+	int ret;
+	int i;
+
+	chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
+	if (!chip)
+		return -ENOMEM;
+
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base)) {
+		return dev_err_probe(dev, -ENODEV,
+				     "failed to get base address\n");
+	} else {
+		regmap = devm_regmap_init_mmio(dev, base, &mux_ti_k3_event_regmap_cfg);
+	}
+	if (IS_ERR(regmap)) {
+		iounmap(base);
+		return dev_err_probe(dev, PTR_ERR(regmap),
+				     "failed to get regmap\n");
+	}
+
+	ret = of_property_count_u32_elems(np, "ti,reg-mask-val");
+	if (!ret || ret % 3) {
+		ret = -EINVAL;
+		dev_err(dev, "ti,reg-mask-val property missing or invalid: %d\n",
+			ret);
+		return ret;
+	}
+
+	num_fields = ret / 3;
+	mux_chip = devm_mux_chip_alloc(dev, num_fields, num_fields *
+				       sizeof(*fields));
+	if (IS_ERR(mux_chip))
+		return PTR_ERR(mux_chip);
+
+	fields = mux_chip_priv(mux_chip);
+	chip->mux_chip = mux_chip;
+	chip->fields = fields;
+	chip->num_fields = num_fields;
+
+	platform_set_drvdata(pdev, chip);
+
+	for (i = 0; i < num_fields; i++) {
+		struct mux_control *mux = &mux_chip->mux[i];
+		s32 idle_state = MUX_IDLE_AS_IS;
+		u32 reg, mask, value;
+
+		ret = of_property_read_u32_index(np, "ti,reg-mask-val",
+						 3 * i, &reg);
+		if (!ret)
+			ret = of_property_read_u32_index(np, "ti,reg-mask-val",
+							 3 * i + 1, &mask);
+		if (!ret)
+			ret = of_property_read_u32_index(np, "ti,reg-mask-val",
+							 3 * i + 2, &value);
+		if (ret < 0) {
+			dev_err(dev, "field %d: failed to read ti,reg-mask-val property: %d\n",
+				i, ret);
+			return ret;
+		}
+
+		/* Validate that value bits are within mask */
+		if (value & ~mask) {
+			dev_err(dev, "field %d: value 0x%x has bits outside mask 0x%x\n",
+				i, value, mask);
+			return -EINVAL;
+		}
+
+		fields[i].regmap = regmap;
+		fields[i].reg = reg;
+		fields[i].mask = mask;
+		fields[i].value = value;
+
+		/* This driver supports binary mux (2 states: 0 and active) */
+		mux->states = 2;
+
+		of_property_read_u32_index(np, "idle-states", i,
+					   (u32 *)&idle_state);
+		if (idle_state != MUX_IDLE_AS_IS) {
+			if (idle_state < 0 || idle_state >= mux->states) {
+				dev_err(dev, "field: %d: out of range idle state %d\n",
+					i, idle_state);
+				return -EINVAL;
+			}
+
+			mux->idle_state = idle_state;
+		}
+	}
+
+	mux_chip->ops = &mux_ti_k3_event_ops;
+
+	return devm_mux_chip_register(dev, mux_chip);
+}
+
+static const struct of_device_id mux_ti_k3_event_dt_ids[] = {
+	{ .compatible = "ti,am62l-event-mux-router", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, mux_ti_k3_event_dt_ids);
+
+static struct platform_driver mux_ti_k3_event_driver = {
+	.driver = {
+		.name = "ti-k3-event-mux",
+		.of_match_table	= mux_ti_k3_event_dt_ids,
+		.pm = &mux_ti_k3_event_pm_ops,
+	},
+	.probe = mux_ti_k3_event_probe,
+};
+module_platform_driver(mux_ti_k3_event_driver);
+
+MODULE_DESCRIPTION("TI K3 Bit-field Controlled Event Multiplexer driver");
+MODULE_AUTHOR("Rahul Sharma <r-sharma3@ti.com>");
+MODULE_LICENSE("GPL");
-- 
2.34.1



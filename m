Return-Path: <devicetree+bounces-253687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1E7D107E5
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 04:35:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96B0E300E02A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 03:35:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C87F52F691C;
	Mon, 12 Jan 2026 03:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="Wp/pY4b/"
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012029.outbound.protection.outlook.com [52.101.53.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110FD266576;
	Mon, 12 Jan 2026 03:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.53.29
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768188941; cv=fail; b=HKfSzIh6fM7MhdDAKzxf8QpNdnEvQuXaLD2H7vANgoi1yItwy/ArOJoCm3gzqJQo5JkyaPVBOQUYESUvvn99XoTE8p7LwobDcU9FiAzCWTz+RsMmAn4zJZm1C/AH+TW08qAOMtvRAdhjTzXK1hWTxEdOgZz/u8CpX9DX+RYZ0AM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768188941; c=relaxed/simple;
	bh=ujdEPVyf5lxEe+Yoe/vTa8ZlGQvplarFN/7ecOYbcrk=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=G8IyznT/pMDWBGhHpTEpd87mgFR8lzd2npcub5/Ns6+ZrS2eQiusMfWnkSfyegFbsd7q72vI0Nk1x7L7YlAdm8qPweJJGJOYN/PdhkNGyDU26TZgac3fUwwQQNDK0pZJtJ8SRYU64j7KLBkb29+s6x6p8DU0ox1zryoY4cGOifw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=Wp/pY4b/; arc=fail smtp.client-ip=52.101.53.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bco7bi09nfOJ/9CpeOD5v6vxfqkZgfKakX4P2FMtv/bqm60Sl0wQmxrRKUaBgV1YzCwSwB+0535ktT6bLbgk4nI/VPHFoYXj9htsmFFZpgt6SH8vlZPsZgcy4E6C7HWmlO7kLhcmk6u0rupM3hUKM07vr0YTOEE1/BmzlmHOBXY+nepFIxyAjqzAjn74jPn1XV54XLwTTYbFR68mIh5PIlSeKusc4UWi2kuBasUa6Kii2b7t08ZjYpmCB3te+4N0u1VkwTYPPo6QRGUJ+LRmrmUwHD7tShy+OnuuHIz5ihPLfczLfRnhtT42sQd/q6aAM1xCLgJ9K5zV/in6aErHRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eGmFbCQxmSZetqNCFPux0IVs2G2re2ZixDyCSjpL9IM=;
 b=BzAJ5qHswA2fwqtgfrUG53EwLigbeKhZn4xBkI4K4v7V5OhGXooZg7vb+cK3pDG25BEXXq+iJyfNAtrjD+q11/aSRp1g2X0M0ZUHmKkCV5ieS6Hn8gyngLvnNA+jqnZoykZw4zrxmijwFYUfiawqzdUUJPHtNMKSJuNXLHwwBXu65yoShXDprf7ghkMjF+wZvaov9NYw2MJWfLlSt0beY9XIVxeTc5j8hIfqXjbI4A6Xiy4EEVu1YPlGvzbR0C0FCorVYDKhvGCVlEk92gn0n7NFlX9VBcGP5LorQ5/W6+rEuAH1AhG4vsqKKF6UTaF6BXbbbO56u1B+Sv/70fvW2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eGmFbCQxmSZetqNCFPux0IVs2G2re2ZixDyCSjpL9IM=;
 b=Wp/pY4b/xtAHdlvB6EJUmz8arcfWPklQoXJI4pBdl2BwIEdp8xQnVmkzpGJ63LROQwtDl+Fc5RcnoL5CpLCNz5u4pLEbvDjFQlUd9RYQSLSMHOtudgtS0OT/NdVeMtBNf1NEMsPv97YPz+MQnRkaykkwTl1hwVE8gYcKqmC50PZoribK70PAvIHYZgap7zc6fJBBJmxKJ2UNpjKgCQnxKRai1y9dzoX4XMY3/CE2kLgtsgDzjmJob/D5Xy2y/vblPphEss78ueMR1AMUVz3ETreNAHq3c3NUgU/bbpLvw5YTtxKPWWKZwxJhuFlmCwYHV84+E2Hkce74elGed30Dug==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by DS7PR03MB5527.namprd03.prod.outlook.com (2603:10b6:5:2cd::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 03:35:37 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 03:35:37 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: socfpga: agilex: add emmc support
Date: Sun, 11 Jan 2026 19:35:28 -0800
Message-ID: <df9d1dbd52f6b21d660e6f0910215aba1e6a3841.1768187095.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR21CA0016.namprd21.prod.outlook.com
 (2603:10b6:a03:114::26) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|DS7PR03MB5527:EE_
X-MS-Office365-Filtering-Correlation-Id: d8e323fc-a334-4551-0c65-08de518ba69b
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?aNDb3MoItzswWkJLYfPDgNWE98wZ7iHAswmZrzTuKBLegRAq/IN4iVVEiuJP?=
 =?us-ascii?Q?GIvR1Irg/zgNhrmN1BeZQZfPVevkC2EpVb3/CMlphS6pI7uW4vrbaGMEjfC5?=
 =?us-ascii?Q?kd9X5ZA03rwjorqEjQ+o5Ju7t0z+ni1WOqat22Gi9t29M+IDfUG/QoqZUUrG?=
 =?us-ascii?Q?KjuXxOcvhPT6gTBv7RkoDga0ft7k+BRG1JphR7RGP1iFdXWStIcyhZ/5T0k1?=
 =?us-ascii?Q?BEInCV6rCWop2kth++OdtyejDxH924PyhtUNnf2B6pyeufB+xQLwMB19PPfm?=
 =?us-ascii?Q?VIEd+OyMxOyOEl9GRXbNwnTpyukdZpArR9ckpSetV//L/L1XwvK+fbgCFK82?=
 =?us-ascii?Q?DCmyY8L/U+AeXVQp2D1jOgNqCHSfEynJz/gbfRGbKBDuacv8OK+Xe0Tbefd8?=
 =?us-ascii?Q?pMfHmNSkjqUg/JJ+BYtobQ/Nu74ol0LZZKgtC3I+ujUCZvaOtdGdPEIA2Qv2?=
 =?us-ascii?Q?ZnoDTYdzCFxuclx7+Fs3DJeg7Gh7bKzurL7z/8/oZNugRDHsvzgNAVGkumLv?=
 =?us-ascii?Q?TeOS4RK7TdLAuBNKj+5iacmyYq1UJJ9fh1QkOPfnIQPsQIHd4EoIRKRjeu8D?=
 =?us-ascii?Q?302tVWvV8t4ABM8sGYP75ZKTK7y7xbXgNMCMQnBLPBJlMaROohhiBEpAvHKr?=
 =?us-ascii?Q?FTMUAC4VSlowEaSU3GUdmb7wv/3NqC0VkBHays1Y8f7PJ1SfSXZF8I9tE34B?=
 =?us-ascii?Q?2cGF5qtrneKYRHlGi/hjcs5RFNIiNYMZ229CFycwtQYB6eXQoAtyXBAjK4FO?=
 =?us-ascii?Q?WSE2q2hP7RAOJDEsnq7uekVR5s+kxRC8Mw3CIw4mjp7H3MT+M8dV/odllVbx?=
 =?us-ascii?Q?/jqrLHeXWN18nNIf62lCqdbTQvvfa0IQJr1ajD/W4FYSoufzD1HfvX58C3wS?=
 =?us-ascii?Q?q8usWYzWYOmkiquxhwGtc8RsweWDWwUXllBMDnOBT72p+Npa+B9ZpDP2tgvu?=
 =?us-ascii?Q?Z9W4jzHJweApdgwWB18C5nmTk5SuEeua/nZXUHdMwOFpTbEeDumz/02HzEGE?=
 =?us-ascii?Q?xutEIxOx8ZonPy4HSCP0zKo2gycd5d/737sMqwV/f+/pZYHbqsMbLDfHZ6HY?=
 =?us-ascii?Q?7oBXpUBclHEJ2YWXatrSFmAFfV5SWkyZE+EmF01JvenWVAfnSvGzEmoUIpYn?=
 =?us-ascii?Q?ZDPD+kqYt+0SnoIelggtIPUjoacXwwd2LC/3GbqgiFzns1exM+kg1dN8MHRL?=
 =?us-ascii?Q?ot61KAeRWahAsXEbsAr2cKVB2scVuPo3mcpf/2DvFS2E3pOw/ILc0w9TjUXD?=
 =?us-ascii?Q?2Oe3JaSIo66VSlt6tSClzLTlt9pKtk32Y02pv/gmLQDSourUm92p6OG869mB?=
 =?us-ascii?Q?r+5Vp3wKg0OLBJnnDmATLAHzpcV7vIj5+7nUeKG+TY13fSKE7PuaFKBCJONn?=
 =?us-ascii?Q?qwzcT3WAJJtz7cPa/weUTW3YcOwwf8JdViLr6W4dg+1B4S/w328E4S3BU/8a?=
 =?us-ascii?Q?Zun7nEFTX73n3dwjmhiNp8EBvdXW5WrK?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?aWExlHwzhNCt4fOgG4NqVkvd52aoOxJpIGB4s1/WGHglecX67AKj/1gJwYH7?=
 =?us-ascii?Q?TWIAEL9l1JHW60YMrNtNtwPeME2TyZyPOFfjP9G1IY50gFlRrgsmsp33GZoR?=
 =?us-ascii?Q?OUiaYmx39OYfdgRksZyuYxk64Bhbd6J3FIOvKPbznhN/HOPSkYrPbGoSuN2M?=
 =?us-ascii?Q?t+rKfY7xdknfJNbuQ+HZTfKGplBdN5fQvGe+CuOESNajDhh1zHX1TqTcSDzZ?=
 =?us-ascii?Q?qbHuHjCjygiPwOksTLg+IUn47h+cug5Ro8YrpkNNgth2Yo5vBtUbxt7qQUry?=
 =?us-ascii?Q?NTcZDEoxa6E68xkrC4PVYsHPKIJTOxLbK5wSBRuZAggVb3uC29/yw9XK+aoh?=
 =?us-ascii?Q?EL3M8ej2Axr8d3iWQ6YkbhVfKwyZH6VjgBaSFO5zDH6CPhr1Qg//a7nxnwsU?=
 =?us-ascii?Q?P7UTpKupwtDZ73bC4BIU+/VOzm2NE06nyWOfCXgX2CDXP9m0FiriHVq/t3w2?=
 =?us-ascii?Q?8fu1Q56pY7wxKWAKWrayX+aBRuKYaHoX2CTepngCjBB+I/Cwl1vChgEKNVtj?=
 =?us-ascii?Q?aSMFFAw0aNf4dkgubGagtEZlULNYf4hxbdouy9MQ+rKqS4wDa7+fajg/IZEC?=
 =?us-ascii?Q?dV8IxTK5AZRLmJkL4b6gAMWxLj/T0lvXS0iuM8yudZJFCKlMyZ1w3SKMcRjP?=
 =?us-ascii?Q?uQXf2jmFhctO+Sn/OMpkOm+rT7yKaDzOQ3r0jBaY2ckUBbmBgJvtio+OFFGj?=
 =?us-ascii?Q?AttMA7pZ36Z+pztcbj08zO3ukIezBlt2nRVCyuLL5/yVHQGPzD7VqLwptk8A?=
 =?us-ascii?Q?8BeJ7wmpIGy6UQzCioSE9Y70K5FLaHLdecL9bs1joLLKAV87zEKCX8HAl+Lz?=
 =?us-ascii?Q?R8LcIA0eeegViFFewHSXUHQXKbMyDXTcdzujsKu5GXk4a0w2m/oxXPHPKLX3?=
 =?us-ascii?Q?E+LsCgj06pzu/ZChMo8jDJFe4S90JVXqEgQWXBzTM1jYzChCaDvy9GdvEux+?=
 =?us-ascii?Q?MCUXacn5M2YriyRB/RI5P/GI/dn7zPU16bhM/qzY47616zWpV7zbsR3j7q38?=
 =?us-ascii?Q?znArg7mTbHeQ9eWP10qh04YizMRVX7jMQMfIavjBRedv9Yob3x1I4jyfxKtF?=
 =?us-ascii?Q?1RoM1EdeGyHw51YUwiJh2fI7VECh7anWv7cNNWMyUSzKEIXRyzuDaOOXTcZW?=
 =?us-ascii?Q?ZppUtFmmVeWNsVZfxKOKQjA6pNubyo0WE6MeztHO/rowmpbjnIct4kxMz/dN?=
 =?us-ascii?Q?eo1qoV/Mp83y2yhomUNtYRO9R7fQkfJ21I5I4GKCqgeRKAdGXcsG8n+HKlFL?=
 =?us-ascii?Q?tmNekdGIz9vcmUT1FKnH4+L+65TfM+jKV5Vqj1SflXHzvm+Xnw4LHKvQWdsY?=
 =?us-ascii?Q?J72RE1YbT79X0pNZkokxiwKk6FyHx06dD/010rcm88Pi3kvJc7HlQMxwaOcO?=
 =?us-ascii?Q?sL0LEi9rjjoGjm5iFeI0BUx1i2q93cvqS9HeHSB1IB4hY5jLrd9aY1IRrowg?=
 =?us-ascii?Q?WviT2vRc2jM0DFvNmqc9zPB9IpJg27bSmvMbydGhiSgOL5H7loP6mvmwNTt9?=
 =?us-ascii?Q?H2joe3oT7r04BekiKB72DPDLshx4qHva7y1BtA9WiJghJTW3S1ptJYcnSe/+?=
 =?us-ascii?Q?GHRcJdJ9VRerIf98PeMbWo11zhg5Olee6mo8WapKFHK/xGXQ0phrscdwVsXA?=
 =?us-ascii?Q?k+l2j+Z2xVXeISipD7MY63N1dv+zg9NrAN9aEN/vS8BYOP7TozmRErH/Gksh?=
 =?us-ascii?Q?j50wg8QI25q9/mULOKtiziezn1VWomkaEQa9/laHtVkgS9MVOvyRjq2gnZOQ?=
 =?us-ascii?Q?3Bx8IWhdkQ=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8e323fc-a334-4551-0c65-08de518ba69b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 03:35:37.3177
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V8UrEqNkTJregaf7LuqmB+gqpnHUcFeV30pETJNmxj8C8Z1xHMEHpCcPKFbEbHbySNAgZSH12gn6OrP2bWzWLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR03MB5527

From: Ng Tze Yee <tzeyee.ng@altera.com>

The Agilex devkit supports a separate NAND/eMMC daughter card. The
NAND/eMMC daughter card replaces the SDMMC slot that is on the default
daughter card and thus requires a separate board dts file.

New eMMC dts which is based on the existing NAND dts, which is
needed to comply with spec in which eMMC board ID is designated as 2.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
 arch/arm64/boot/dts/intel/Makefile            |   1 +
 .../dts/intel/socfpga_agilex_socdk_emmc.dts   | 105 ++++++++++++++++++
 2 files changed, 106 insertions(+)
 create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts

diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
index a117268267ee..6f4da79725de 100644
--- a/arch/arm64/boot/dts/intel/Makefile
+++ b/arch/arm64/boot/dts/intel/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_agilex_n6000.dtb \
 				socfpga_agilex_socdk.dtb \
+				socfpga_agilex_socdk_emmc.dtb \
 				socfpga_agilex_socdk_nand.dtb \
 				socfpga_agilex3_socdk.dtb \
 				socfpga_agilex5_socdk.dtb \
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts
new file mode 100644
index 000000000000..5caf231de370
--- /dev/null
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier:     GPL-2.0
+/*
+ * Copyright (C) 2026, Intel Corporation
+ */
+#include "socfpga_agilex.dtsi"
+
+/ {
+	model = "SoCFPGA Agilex SoCDK";
+	compatible = "intel,socfpga-agilex-socdk", "intel,socfpga-agilex";
+
+	aliases {
+		serial0 = &uart0;
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		ethernet2 = &gmac2;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		led0 {
+			label = "hps_led0";
+			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
+		};
+
+		led1 {
+			label = "hps_led1";
+			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		led2 {
+			label = "hps_led2";
+			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the reg */
+		reg = <0 0x80000000 0 0>;
+	};
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gmac2 {
+	status = "okay";
+	/* PHY delays is configured via skew properties */
+	phy-mode = "rgmii";
+	phy-handle = <&phy0>;
+
+	max-frame-size = <9000>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		phy0: ethernet-phy@0 {
+			reg = <4>;
+
+			txd0-skew-ps = <0>; /* -420ps */
+			txd1-skew-ps = <0>; /* -420ps */
+			txd2-skew-ps = <0>; /* -420ps */
+			txd3-skew-ps = <0>; /* -420ps */
+			rxd0-skew-ps = <420>; /* 0ps */
+			rxd1-skew-ps = <420>; /* 0ps */
+			rxd2-skew-ps = <420>; /* 0ps */
+			rxd3-skew-ps = <420>; /* 0ps */
+			txen-skew-ps = <0>; /* -420ps */
+			txc-skew-ps = <900>; /* 0ps */
+			rxdv-skew-ps = <420>; /* 0ps */
+			rxc-skew-ps = <1680>; /* 780ps */
+		};
+	};
+};
+
+&mmc {
+	status = "okay";
+	cap-mmc-highspeed;
+	broken-cd;
+	bus-width = <4>;
+	clk-phase-sd-hs = <0>, <135>;
+};
+
+&osc1 {
+	clock-frequency = <25000000>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+	disable-over-current;
+};
+
+&watchdog0 {
+	status = "okay";
+};
-- 
2.25.1



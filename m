Return-Path: <devicetree+bounces-254917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 198DCD1DACA
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7D1AD3012C73
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661F1389442;
	Wed, 14 Jan 2026 09:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="NBml9vCM"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012063.outbound.protection.outlook.com [40.107.200.63])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A29389474;
	Wed, 14 Jan 2026 09:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.63
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768383793; cv=fail; b=Zg3sTC8m6cuaAcCr7E5q+LDiuLJxQwP6yZzyfDHPfwzTxsWj97m6nBPkimV5Q/NkEpTkkedA5kFXKcdFVHu7mewgWpWg7FoYzzjalbow7S7Bw+J2yFAh5vioQgUxecaLEStGpsfiQLnd7i9hxua/GihTfXYTilYMU5UYf381GR8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768383793; c=relaxed/simple;
	bh=RZgorwgpCdsK4dOJ2k5vqE/7ngNNBUmdkhVh5Gj+T6g=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=iHh+h6goYv0rkpVh6GbMxUS6wDgKGBxoR+6D24hMT2BQkZDDWEDb8ladAEqwc+fZWiCO/fEubt4kG9afnCJ7rINnaC/j+73IMaZjVTMEQyewHBvQcE7SyQd1H7pzEzPYaHsNMjs204UBNgCowIubTTLKUn5JG/ANUqeLrC0X+Oc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=NBml9vCM; arc=fail smtp.client-ip=40.107.200.63
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lv+qDjoR9PZpX3+Rb2s0AWwVpPdJuhL+qi7c9DiS0g5yY/CGBohzwl5cxxI5Y+WhwG2YbOEBWvsLCNM+XIavFgv17sqZ6HxAFw9YIQYJrlJa7pTiMpxUlaOCmqBi1VZR0tymdSVJDA5aDs91UgbYnz8loNmPQUAhnBN8chmVabcdOZvJEzWZbzwkTBmABlzsDr/oUI5i+dje75qVFuU5be/n6CMem334DM7HZtsyeKzg6WNlpT2To/1FK+P4JkHVmATTYsIWiHINbP7euI1KDjCZWHB70zFzrx9qPrDU33n6EjPfAU0nrlf/RCgu+9iyEKr3Twn3sjR2gy/ZDP8OGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TOE2oSZLqjlHceL2HTgVgBrx1SRBmQhLmH47ze4p1+A=;
 b=jSItO6w2JjGzS3ojmn6aGxfSKBARGdV3WDUoFBqRvSmcpCw01oAe1aZMhFZRoKda4fG+E1bDSDAb3iHSGfLHpnQi/upV9UaE9LabmK25zcGRXVj7MWl5VjgPdDKdlSnr3eHPFm6YQZrajoDYnElUlRzZpOuUuMFDW6HWx5Y/rvTXwhwGlqe2W3Cty0c2G9LzSgcxUyztFpoCtsXu1l05DEttxZjgPs9uYuN4BqbCTXlAuYmCtNZrd6vNHmVvQGcYkuQJGfwYNom/NPSKttRfOeyTJ+64CPumrM9wllAa5jx2n96+uGTCxIzossLImQg6S5pkSAcsa6bmZINUgIYP6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TOE2oSZLqjlHceL2HTgVgBrx1SRBmQhLmH47ze4p1+A=;
 b=NBml9vCMmO6BkyaENdt8BAjJ1bSH7pVLESm+xrnfXb3qb4QgZqH/q9MSgaXOeqWjK1IjqG3qMjB8u2Zma/bWzcLJC5BoZ1FFsrw4r34c1Zyl6IeLhECbjKnOiRCBSLZsuBq579i0D5dFifETS13DYGD7DB6IN0X9T9A/PVPl/6GZY29mGdn7gpE+/d1AhHWVL/S6kj2lO776OGI7lLoXeRO8uJRkt3y12y5nHdGtOeAJpAIrhhGEVFLssEsfxA+e9YgKDsK6e+aYCYKZWdkBoJPrSrXlt5BKrC0KAiBql/JeHr5xgHL4BTPkCmBD7fK+6XQFFd0JeGyAe246kyqiIw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by BY1PR03MB7214.namprd03.prod.outlook.com (2603:10b6:a03:530::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 09:42:56 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9499.005; Wed, 14 Jan 2026
 09:42:56 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: socfpga: agilex: add emmc support
Date: Wed, 14 Jan 2026 01:42:53 -0800
Message-ID: <9ed64240436c2dce96db8882f620468dfe5e1981.1768378952.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1768378952.git.tzeyee.ng@altera.com>
References: <cover.1768378952.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR17CA0059.namprd17.prod.outlook.com
 (2603:10b6:a03:167::36) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|BY1PR03MB7214:EE_
X-MS-Office365-Filtering-Correlation-Id: b0e3895d-7172-48a1-9f81-08de53514b5e
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?n4viWl2ehUt5BTJNHXThA2hvA7aDfrwZLXe+073VAhMCthbpOxFgieCd0hvz?=
 =?us-ascii?Q?nEgSN1CPpJEsIW6hWUCICFuk7dJhUIY9ysg00Muvy+EaL65BJ3rzVHRjhKnC?=
 =?us-ascii?Q?2wNPT2bqujW6MmwO3mzHGfMAYeBF9zr+LhFJnUoLKV1T/gNf82Bx8jiT6WF8?=
 =?us-ascii?Q?HiTymL9WS5NyhyQoB7Pvdlb7Ausdckz16DYSqhjN5RSV8/MTLFFHvGI3qffE?=
 =?us-ascii?Q?DQU+0YsaZejB5AJdH8SLI1S71F2bowco/m9HY3mXn24OI/9X3w4iSzCkv+DA?=
 =?us-ascii?Q?1CVHdkO4kfAWIzRol91ppR70HPqHjuA+gq5iF56DHyuIwYb5ux5eBF8n7O5Q?=
 =?us-ascii?Q?R8ILhw01B/dgOQdlFI5Ho/3j/58RDOw1GWs/5hIVdf7wnGliL+BssHNs8omM?=
 =?us-ascii?Q?NgJNd1Ggo+eo4L6RLKgjuKjwZ49hjiGEd9Dd8mda7kmGJ2fTAQ+TK9sHJ4Pf?=
 =?us-ascii?Q?EfetW97sasUpjY9hxlR9EUTb0PW7sPF34kuQb81vCg3AY+3aACrq6p10Ut02?=
 =?us-ascii?Q?dsO/YZ/OOWJrl/W6IZukNabkHNaux0jmstLM5I0455wVVhOqb6USuOu3zWcw?=
 =?us-ascii?Q?2hV5mb0mBNJQEpXg2I/TziX66Lkos3GX4CLJGJNoii5KV5IRMYRWZSMsZfCr?=
 =?us-ascii?Q?4TBKVBLqdicUfMH/Sevw+a7OuOuY3gKqO2XBu3jHhp4I7soVEv1LSuq3NDee?=
 =?us-ascii?Q?1kQg2K4tMxqEKLRwUJDvBWuiw7V2T6mc/QkgkYq046FNoDNF0ttqrHhH4ti0?=
 =?us-ascii?Q?u+PseTMgTLkc84YYZ61Z83B+9iLWR9wUNlEbfCNU96bubYPjo88IuELiKJ+q?=
 =?us-ascii?Q?tEwe2QjfLT2d8D3RY94Sv6Qe96fEjTi9z2C9VC+mvz2mTXVdviXBCyCFwzBc?=
 =?us-ascii?Q?m9AvsZrinNlOocJIkOO179Dm3Y+y68CohJ4osuukrQVeAkSgPws+RwDC0Vy8?=
 =?us-ascii?Q?qwjOYyH7wlwmlqfJfileb2eegQeELN2+/04V9BXBappcYmTnNrsM4bEZIR94?=
 =?us-ascii?Q?FxPKHljdcZsqdRN7QM2XqtoSnlxoNjbXxJfp/O5dx+v+AsUf2I7r2t6dAlUF?=
 =?us-ascii?Q?lY6qlXejv7AiansbKDx/qxeh/QoMeMiRjJTLRkb9Yd8rwN8nTW8U4pHzh8rK?=
 =?us-ascii?Q?nAVRHqklEvuajqg0XK5c62lUaxPcu2ECchuofzcbhTpZYsoUhPeMPkzV8u7k?=
 =?us-ascii?Q?YYp3+Ewg09TJdVOCejThggJ6QalkY2Cto86+i3Uax3Pwn9Hb6ejiViGIW1wI?=
 =?us-ascii?Q?9GHmdM/96UpUrVoT6NFrCOJOFjAzCll2d8s2iHpgSusZfwqa0y3XKBQt7chA?=
 =?us-ascii?Q?LeJCyGkGCPBLpKVBVjaa5MZ6tLubGUHDF4ooKRXKqKUS4W43OIJMPHgGJJN5?=
 =?us-ascii?Q?LwC7gtRu9+vzEyRG95SFOVK8Rdq5ksNPfbzW6havH1MdPJaP0Wpu0+LDZYGM?=
 =?us-ascii?Q?VhiMewicow+sP4jyAvEOIWd2MXvWVRNC?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?yPBqi1JKdq95n+23dEKG5A+F3qkQQn8Tj0mbx9WL8ex8bkMZSJzWfJipg0SD?=
 =?us-ascii?Q?9jWL/lPHbw2CKkdZ2mfCqpLT2HCqH/m2d2VC934eMmyqlIDjfnjD5I8Hlm8b?=
 =?us-ascii?Q?ZEFBDPk4KDxSQSrrl+a1+uy7xnUsKrsF7iIgychbq4ZMF/eK6qj3RzISuP0I?=
 =?us-ascii?Q?6L6zoUhk7S4QCaOxR73iBQ3ceiAfdAR0konVy0VpIHIGfo/A9gqPPWWEknP4?=
 =?us-ascii?Q?lJwqLaMXr+3GnUWpbQXlIVi0vJ9W66iitKkdcojj3Xocc5BzTWDWd3FA+IbO?=
 =?us-ascii?Q?3XGZo9gyKH+XUxux2tEDY2YPqgtLv1YOCKM5SIjmgj9UQVLXgOpPMO2h2l3/?=
 =?us-ascii?Q?EPQJ4w2quHrtks02ClMSqmf6ESXEqLBtAYeNZz0xmPawJ/H92T973OtAzcqo?=
 =?us-ascii?Q?03VBfajSt6aXYamUsUg+62Dp8yvNxAn3wOQ30p8O92I0ezpr9CvSGiHdhHWy?=
 =?us-ascii?Q?nWvPqW27gUDaybYdDmwKv/KxqZwAgLnchMMVRnjqnNBhNYIj04NOQ9sFafLo?=
 =?us-ascii?Q?vsilmYfza50tM+Rqg7q7RGJEldDZhHFdenx6Poh8z2ruom5JsgRheIuKxcGc?=
 =?us-ascii?Q?TM//CK9my5U9b9WPcQ03H3EComY4Fe72YAULp77wEMx8w2jpw2YV+cOE1qhs?=
 =?us-ascii?Q?72DL3Pydeva/Y2ch9p8fjtuVJhDzyq0DmiMx+bzWmm2AR80GJz1YzqHegqDC?=
 =?us-ascii?Q?EIxMJBxZKQNRy1UzsFGupfqrpurcbzcjF/C6ofBz/RUQ0USEcGxUtrKOGGKe?=
 =?us-ascii?Q?0tCuHcI0Oqg9PZet9nOQZdKMq/1OMy/Wu25J7WU0BFiOP2cdzrOT920gFJYw?=
 =?us-ascii?Q?J48kMNZXW5zGSDqK+Wpz7w3hfVOqxSpqwLMH1X31Av2xqWctolG22iO3uu2p?=
 =?us-ascii?Q?y+YQSFeXsLpCxC08R//MARSrXN6zAzLv7ClTs/AeuAgIDmLz7nLuThypI3MX?=
 =?us-ascii?Q?RgK5p9Fs+STpEcU/VkTXZWY7rS2LboKCKNjt7sOP4dTN0YiCY75lU1AadKpS?=
 =?us-ascii?Q?qWDs7CUszSbNDuv5EgaaxPjPCmFz8Sklyb4GXnUA5q2SJIVcfZsEYmWtNacE?=
 =?us-ascii?Q?W03LBrcKmm4V3IXh5wbWraMELfZYg/0uQDd5AGHP5xR3siHNf3U76eWy8ZKj?=
 =?us-ascii?Q?yuHqvlU5G0p1RGv0mkbbWpSXnRF0L7qfhH3mjUaSR07SseLd4Wf9rXA213bP?=
 =?us-ascii?Q?C2grPy46WyZheF6+7o8Y3ERWOON8L6ll269L2bbHOGbupAjxP1kuxDdloSeX?=
 =?us-ascii?Q?UR1V+e9Ar9tnSI7mPO0KPY3eVHUkYW7pcwktMxlCMLfN5P9NGd1uBy5vXNg5?=
 =?us-ascii?Q?m64uDMBg0MtUIvM7Rq7WrsJCnpX0K7A8XDzI4afUVdtGnQpUuh9UJtYFLze+?=
 =?us-ascii?Q?FmLKJeApPfKslFpzOQsrlG83N19t2WV72MKX1++T6T/lMAdCsdCTfOoj832W?=
 =?us-ascii?Q?WL0vHtQhhiXOr1aUsM2vvJlW77nfyC13aNG6ohV+pQ3kG5RYrRuq+qZj/0OF?=
 =?us-ascii?Q?9YGnSiJAECSAVSRwB6/ABVNpnc3Nqmh3EDi7Asn2QFplAGV2fxB1725pZSUg?=
 =?us-ascii?Q?oJHRQLczWVON6hsoo02ZEAGvVhAvcy1d9jRLyoqxirZ/ZXrNXY67cSQB4vqB?=
 =?us-ascii?Q?WCD4zldMyYhYvK/JxKVKfuDQVMwCBKqY8+O5dy2DjHw93NV+iUhd6LGXPXt5?=
 =?us-ascii?Q?kmYLZycuyYB0hoj2kJIbPHMn3pAXU86ZHQgT7MUhf7hzbZHe8WZWG6g38mpA?=
 =?us-ascii?Q?ZPXyl4Ywaw=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0e3895d-7172-48a1-9f81-08de53514b5e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 09:42:55.6146
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dgaaNAlc9XG94B9fdHYVm9uilgK8xi2/0aDeJzl/YmQ6HFzpN4d+lDDgCbRxyN+q3srFWhUeFJxWAti+NzKxZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR03MB7214

From: Ng Tze Yee <tzeyee.ng@altera.com>

The Agilex devkit supports a separate eMMC daughter card. The
eMMC daughter card replaces the SDMMC slot that is on the default
daughter card and thus requires a separate board dts file.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
Changes in v2:
- Fix space indentation in socfpga_agilex_socdk_emmc.dts
- Fix compatible string in socfpga_agilex_socdk_emmc.dts
- Rephase commit messages for clarity
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
index 000000000000..c616c1eb6f1c
--- /dev/null
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2026, Intel Corporation
+ */
+#include "socfpga_agilex.dtsi"
+
+/ {
+	model = "SoCFPGA Agilex SoCDK";
+	compatible = "intel,socfpga-agilex-socdk-emmc", "intel,socfpga-agilex";
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



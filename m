Return-Path: <devicetree+bounces-243668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85742C9B1AC
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 11:22:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79C213A80B2
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 10:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC76B3101A2;
	Tue,  2 Dec 2025 10:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="P9cJysaB"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010062.outbound.protection.outlook.com [52.101.201.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4063101C6;
	Tue,  2 Dec 2025 10:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.62
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764670821; cv=fail; b=QIQBOCNLyA/1nFuayKqKrQlnPgfhm03KxCnZg50vQ7WCMU8VduCBtwbcyRat44OQ39mxinmtSE4v6ZiPIERE7N7sfNwr2jFOITC81wE8ixkZo5HTf3br/qZCyl/JIYKS+zdDqO8zD6K8FHFt7udpdd5BlXElsQDSm9it0VONNzo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764670821; c=relaxed/simple;
	bh=XKniYu8kjIgsJ1tJkm4S01/20U9XQN+VxJ2JGPKIyLg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SScEoQJzwGRzluRAFjQNgazXJyJg3MKjkD21SvyFpedjgTky3n/lVnEYvIMNIZ6o0UmiNBCAHxsD2wlG9apDlcfQZRTkwrVoSxFk8Y+Hv6bdrBE9tzjF73LTPct+ve1u3woE2YHZylMA+MgIjiJOPOb8/Nv+Q/tdpVQKJW6EqfE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=P9cJysaB; arc=fail smtp.client-ip=52.101.201.62
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QcX0/oyUJI2T1UWFhwe/2UzD3sbVW8DUi6cTBq2mYVMWkHal2BSlrBruCGXCM4XKaQsAbvaZ1eq/j2IJGQ+dQa7oY2CRznd8hAyDxMlpu2aVu5GC4Vm0ClbPj8tUGq6rZC96arhCE2KCXkdEgIK8eRekEJxK0uUD8CHJoX+sXfAKlOvgEWVEx9AmM1SqZgvaNAqQa3jRI2i01UTLcG56MS2KHuQxId6DU6l0MUiQXMjqk8i59cFIaGY6iwNKI08k1yWfv/H6PDMEdQp9EPE2dcvWqDmUbVM4MouGvm3WJ2dULhU01CrhVuxydv01TQpNgo99+zyMpZDVgUDSIx0KTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TfmmIyeKn+zHtQ0dVvAGCHXqXS/vQsZi2t6mPVUISCA=;
 b=HRKx7PPm29YJ2CM/Ypelc7FI1QjD0pbjXG7j1pr46urhkWgKBAPJ+wjIYhGo5uz3cCMzKSC8HrqleYC4CWVOfWowREUhIyJHK0SVyS3ANoeo+9FGuPB9/Yjo25tpWnG65pKaDEFrC2U1uBUEufyMJbIAySYREnqdjyMfHdD7diAC5aIULTIkEQCdIi7SV7r2SPUlCoIi6aF42GNpvLKlsBay4KSSfOOubUvZ2SdBBWk+I4e4pwMcBLvP3LRBxD0r3pBVQweb8c1ZdhHvpyV5PoHVUmvyE9igCXQpdDwB/fj3Z1KSDoLGiGQXWAEk3/iM/6yfVrWVCVHB2cib/xA8vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TfmmIyeKn+zHtQ0dVvAGCHXqXS/vQsZi2t6mPVUISCA=;
 b=P9cJysaByuiyuHgY1uG4e2sZtv78KHEDjhT7uDIX6DzFxg9qPJkts3p8S6hp0Z/cuKLqqz5bT9JfLBCrn+dxUzLx08ujn799iePnq2DK/kQr7NSJO6tbT/GpRbGKod83XxI5sVao/UqOGI8ApEzkVga3i2yIC9tIZszaGX87qq34Mp/Y0jZmUATzFhAvS6RKcZk4qzk5LSCP/38M686BmGNl51v+iydWs9dQJ/047HqQMXRKFpgd8rlmBxD2Ce/TAbMfOy+AGAv2cBD+V8pgWxGJEOyf9wYGbHm0IXe8XEWyzGyMYXFnldFaGtYPelbVBhXU8WHVVbvCInnpfOvwzw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from PH0PR03MB6510.namprd03.prod.outlook.com (2603:10b6:510:b0::10)
 by DS0PR03MB7607.namprd03.prod.outlook.com (2603:10b6:8:201::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 10:20:17 +0000
Received: from PH0PR03MB6510.namprd03.prod.outlook.com
 ([fe80::cb76:85d7:16fa:be81]) by PH0PR03MB6510.namprd03.prod.outlook.com
 ([fe80::cb76:85d7:16fa:be81%5]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 10:20:17 +0000
From: niravkumarlaxmidas.rabara@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
Subject: [PATCH 2/2] arm64: dts: socfpga: agilex5: add support for modular board
Date: Tue,  2 Dec 2025 18:16:52 +0800
Message-Id: <20251202101652.2317844-3-niravkumarlaxmidas.rabara@altera.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251202101652.2317844-1-niravkumarlaxmidas.rabara@altera.com>
References: <20251202101652.2317844-1-niravkumarlaxmidas.rabara@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0058.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::33) To PH0PR03MB6510.namprd03.prod.outlook.com
 (2603:10b6:510:b0::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR03MB6510:EE_|DS0PR03MB7607:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fb3b7b1-71cc-4022-3cdd-08de318c63ef
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?B2Wds6CWy/JYHcwVzZgcYvIvaPyMojiYQgJ0T8GQpBqsNVO+SwEbl0GI/QQ0?=
 =?us-ascii?Q?EX31TUNl1W+ia+pxt0yhNL2bEPXRZzAFJ3PzFs0WUemXk1VJMW7fENVeGIAl?=
 =?us-ascii?Q?8Cp2kGmZHK6drgr48cNz597r3jBazzQVmd6iZM56mHOQhcD7FdN1FAQHhgqi?=
 =?us-ascii?Q?4sg341k/c9y9QEGDolhs34RSnQCpWXUFEEYn1gv/PuWj+xXhVe+FeYi7Zbqc?=
 =?us-ascii?Q?oF+/04sQZ1M5GrIjzL0P5h7XD959UofdgTLKYJHk4fL/91wrEILeqlfF/QA2?=
 =?us-ascii?Q?OCcjHR2iZnuZjMZaI5ghgqCIalAtj5cXaqHcNDGjZfpSaSmx1Mztt6E2a8tq?=
 =?us-ascii?Q?7F2ukHvgK9rbP6xxcu1B8aSP89NV20+/Lq1Hqc0q7PmS7dLanxcKxRdRTJ+w?=
 =?us-ascii?Q?obj6d6x1i97Ma3JQtz4Fka/mPl1HWkw8vbKyxwVFPyd31xRO9RAozWy9LaK2?=
 =?us-ascii?Q?w5KpZp5yo7CkIN8YLhCE7fG64JIRjPgXow+zKT5ygYMhdWHTx6Y6uyrXq3Lh?=
 =?us-ascii?Q?uUTA6CP1nXaAa49sJS+cIVf1cH2bCf9uSIv/GKOuTFfAJKahxpRk20OGMMpD?=
 =?us-ascii?Q?2cqhTUFVZVJH9TVDPhNzFI0gt5+d5WY/aGUG33byhWptD780w/BA+s8C9DOD?=
 =?us-ascii?Q?8jBHOWSnb/r8GLclnCHDReI9MrPuEX+RzjopSb2A1rZj7mO23ZnS6r85Kwyt?=
 =?us-ascii?Q?8moPE5DZ3hNCDMWbvyGo6Htwr4GwUeA67550nE6L3ffZpN0kBgTDpRpGysui?=
 =?us-ascii?Q?PCmj6KQuOT8M9g2hxGLU3Pg6YfBzjjpUQ+VItropqrh04Yx/IewvY49kjU1u?=
 =?us-ascii?Q?sSsynaE+/ce3YSnoN9lf6niUGfCAk59R9U381Ij/8kZf6HEnixVUQt9UsHSu?=
 =?us-ascii?Q?K09/5No5RiP6rQXycBHN/Xm88Ay0+G5Sm4zhg9e5TmtLLMS2dw6lbLhImDPV?=
 =?us-ascii?Q?gZ2+LkhsJRIj/je8BZUoeizx+UVgAH62U+dGF2poMBjEvtif31LVYvf3CSMy?=
 =?us-ascii?Q?0DDY74LOgqQdUqPf/BkrWgPx38BecRTEDGplbo0/tHOPFkMLufLwcQjN5dfk?=
 =?us-ascii?Q?rrgugFhqHJ+wZARXhV8IeGKcmNemSj8L89KfgmMWpw+Umg3lpwvkvLLhE+Qa?=
 =?us-ascii?Q?2Mcc2sJQkh2/3C33970AJwTKPotffYfm1z/mUIlmUQs5Mo9vtBkaF/B9fbk8?=
 =?us-ascii?Q?AuTjotPr53CT6XJ7VNFPkOKxjrB7OqxNnEzSfhlIlXRPdgCz4b+ajb0qyCRp?=
 =?us-ascii?Q?x6/3xCatLcmjC/jlu5rnLOviAmnRmyjBZpA1QnG5RMgAQXGwfGooIfy9O1ck?=
 =?us-ascii?Q?ac/so8hMvCFRGdxDf5yxDseD8ZGFkgh/fmNrK2MRsQ/Id+9iO37PmhSTSGUq?=
 =?us-ascii?Q?5yVBRFwvXOu3u2fEqiCzrr5fkPBQtQ6aOXeat4YYEZTX0+5G1ATFS9mqzpqe?=
 =?us-ascii?Q?ntDbSQunjZWyO4N0Pj/aMjjOUV+ViahxtC91BJJyQaEy2J/PbpRQKA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR03MB6510.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?68Bj4GFgx6NHIP55QZCNeZPyVFjbrnlzvIqObqz4NDeaa7p3k8BBO1o+Gzul?=
 =?us-ascii?Q?phDuT5suMhSMMtSFkkaL3QJEBCVkPkGtRNXBvTgiAC8JKkN6R3rScEWmQqC9?=
 =?us-ascii?Q?ikuZI0OFWKLoVmewkzWBpSWZdogogAEZxV2t64jE6GZH6MyC6tVcEUrYnkZq?=
 =?us-ascii?Q?ESZ189JI2zfiWbr2CTCyROzS1QYEwhB1pMvtFKJ9KjSS8r0emQDBZc21WC/c?=
 =?us-ascii?Q?sgwDfevpbSSdEr2hBc8oh3zP1IXdF66neZnnCg99bN1W0RFF6JvqJSoEAh85?=
 =?us-ascii?Q?g88Blx+i0jHjI309uQG2i3a1lnPWgWpP0NIW9I78JBh9+bMlUyIZ6K0O0hEN?=
 =?us-ascii?Q?L9PVAxnwA9JN6SAK0hpnsRVyMOwekcNqtp4+VKdLQTa9gOgHpvo2fyjH1CvT?=
 =?us-ascii?Q?qNABuvB3cWzaLYV6L/auiv2x6nmoduH8UAx2/97bhafVuy2CBd6sUEw5Fm2a?=
 =?us-ascii?Q?4zxc2G3d+F99cbXmbX1Ss/bOKxBse9BpbZI4ufHNSsErPbGY3/EDzxvd+zQh?=
 =?us-ascii?Q?PpacSslxqhbKSTG/fzg62A3czspYuEsw6P+8gw9B5tpeLFUpHL+1LXprayBk?=
 =?us-ascii?Q?uF70SyZtA0JXmVUP2+J1N6S0rvc8l4mfbjJ+tkJhddOmWobwWryaj/mmh5de?=
 =?us-ascii?Q?c9io6CIkJAsVZomgn1SL42rhH0Af6YsHGEbCvazSPnR7Iwp/9HtkGvbllj8A?=
 =?us-ascii?Q?9F5sn9w/TCUfXoKBtkKBM+jsfu0jNXkhYUzXJ13A+K/4nIxWEvpV6qIrPMEO?=
 =?us-ascii?Q?/4K9+2asGWYMBo3b/LXIgIfApnmS4IpC1w8G6u0tHObzOG8fDUtFC2fEBs/+?=
 =?us-ascii?Q?5rzZUJGuu59rZS+ETKilX/wEWdN+a1Pl9k2t3VpQJX+zrmHvJEegXXPVdPQE?=
 =?us-ascii?Q?HwgO+XwZ+RYUNpixlx+6WaVDkXXIE/FA3zMpH4U//3tPYeJwRfqodVDSL1+N?=
 =?us-ascii?Q?MxORTxNvOeHqXF3Pqp8JTjuuwPXFsvH3RVXNniqyJc63OiTp5+Zb3QPuhsLG?=
 =?us-ascii?Q?G37qaZML59u9HqCa4f8ga9CtAh3se80hK4E0pEs82pWOUtf6WlAjMTyU35/X?=
 =?us-ascii?Q?Ekn9egvniNDvz6utnmeXPJpY5xqyVI/Nzk5zjkzg3EEax3slow+A7c4TJlBc?=
 =?us-ascii?Q?g5cxrWvpoFR6cpeSOZpC0G3Or1qA63ccSNypcXGDl4OX6C5HMFZQa8N+c1Zf?=
 =?us-ascii?Q?7B/uTNeM4KRKgIushkJzIQzCa76UlxBSA9/0Tf/wjrPxcd9QgVUkdxXg4UdZ?=
 =?us-ascii?Q?VD+eJblmiC3hjcp/7Q60wCnVMKcIM8sJWhHiVLXU1NGU09Kjb63s26w2xxQg?=
 =?us-ascii?Q?gVBFcLVeqCR/pyvvmCOi0ng+vjP33VXub0xrGCoUGkMTzMLH1xLvmMTnd9Cf?=
 =?us-ascii?Q?DKRp4Z3OOzPyWNdXHT4N5YfF/dqZ5std651YRUnpn3FcGBaUImUwu5HIHm4Z?=
 =?us-ascii?Q?MzjURjiQeQ8RMYWni5/fxsIECZFfDcMjc13kgY0cCZNT9NTsPWkJyeQVUWP9?=
 =?us-ascii?Q?TsP4sYHqqYxHEPyDwbKK1ELeCb9zzkZ0672LXWZR69oWpVHEkjaB8G39dNZj?=
 =?us-ascii?Q?nE3jjHkP3jVFkkgOxFgSWf0ngy6S4snAEoVou3EqAx3OKABhMvwLkIWc4vbJ?=
 =?us-ascii?Q?I362cOLeaSs23InGk2u+lxePDnCivbe4CVDUApucmKJ3?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fb3b7b1-71cc-4022-3cdd-08de318c63ef
X-MS-Exchange-CrossTenant-AuthSource: PH0PR03MB6510.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 10:20:17.7448
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KP1oR6Utdeevig25K+fS8AOJO708n7l0h3WFvwZiDx4XbH4W2c2mOqN97MsR67Cp6/ohZ75mwB60p8GFQDBLvqzZae7cpFOO04jTrLsdfPjfWWyRkKypcHHWq2Kl1UoA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR03MB7607

From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>

The Agilex5 Modular board consists of a compute module (Agilex5 SoCFPGA)
attached to a carrier board that provides PCIe and additional system
interfaces.

Signed-off-by: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
---
Note: This patch is based on socfpga maintainer's tree
https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19

 arch/arm64/boot/dts/intel/Makefile            |   1 +
 .../intel/socfpga_agilex5_socdk_modular.dts   | 109 ++++++++++++++++++
 2 files changed, 110 insertions(+)
 create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_modular.dts

diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
index a117268267ee..b15e9c5083b6 100644
--- a/arch/arm64/boot/dts/intel/Makefile
+++ b/arch/arm64/boot/dts/intel/Makefile
@@ -5,6 +5,7 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_agilex_n6000.dtb \
 				socfpga_agilex3_socdk.dtb \
 				socfpga_agilex5_socdk.dtb \
 				socfpga_agilex5_socdk_013b.dtb \
+				socfpga_agilex5_socdk_modular.dtb \
 				socfpga_agilex5_socdk_nand.dtb \
 				socfpga_n5x_socdk.dtb
 dtb-$(CONFIG_ARCH_KEEMBAY) += keembay-evm.dtb
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_modular.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_modular.dts
new file mode 100644
index 000000000000..1831402d8808
--- /dev/null
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_modular.dts
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2025, Altera Corporation
+ */
+#include "socfpga_agilex5.dtsi"
+
+/ {
+	model = "SoCFPGA Agilex5 SoCDK - Modular development kit";
+	compatible = "intel,socfpga-agilex5-socdk-modular", "intel,socfpga-agilex5";
+
+	aliases {
+		serial0 = &uart0;
+		ethernet2 = &gmac2;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led0 {
+			label = "hps_led0";
+			gpios = <&porta 0x0 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the reg */
+		reg = <0x0 0x80000000 0x0 0x0>;
+	};
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gmac2 {
+	status = "okay";
+	phy-mode = "rgmii-id";
+	phy-handle = <&emac2_phy0>;
+	max-frame-size = <9000>;
+
+	mdio0 {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		emac2_phy0: ethernet-phy@0 {
+			reg = <0>;
+		};
+	};
+};
+
+&osc1 {
+	clock-frequency = <25000000>;
+};
+
+&qspi {
+	status = "okay";
+	flash@0 {
+		compatible = "micron,mt25qu02g", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <100000000>;
+		m25p,fast-read;
+		cdns,read-delay = <2>;
+		cdns,tshsl-ns = <50>;
+		cdns,tsd2d-ns = <50>;
+		cdns,tchsh-ns = <4>;
+		cdns,tslch-ns = <4>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			qspi_boot: partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x04200000>;
+			};
+
+			root: partition@4200000 {
+				label = "root";
+				reg = <0x04200000 0x0be00000>;
+			};
+		};
+	};
+};
+
+&smmu {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&watchdog0 {
+	status = "okay";
+};
-- 
2.25.1



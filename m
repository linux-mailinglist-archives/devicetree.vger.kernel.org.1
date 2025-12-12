Return-Path: <devicetree+bounces-246097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1312BCB8926
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:08:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D1B9300EA2E
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 10:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8FB02E0901;
	Fri, 12 Dec 2025 10:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="RO56Pp4c"
X-Original-To: devicetree@vger.kernel.org
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011053.outbound.protection.outlook.com [52.101.62.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21A32DF13A;
	Fri, 12 Dec 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.62.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765533957; cv=fail; b=agFomwe5vtWxyaCBhcr2nQu0V1UP9F6aOaLU7QtYE36KYQVJ+4RH9ueMScJuQoSkKmnfPWdet8962xEHy2F3i22hKXUVlg51O9K0wogUVY/VZVYsgfZ+61MV6SU7Iq7yyJQKd/M6CpxbzGfyZSOZR16TQYeWBdu0X+f0IrY2akA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765533957; c=relaxed/simple;
	bh=evemME/38mlj1Vj2cgk723D3WHoD4EUDfzhdygeA9PE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=twLHQW2CK5a6eknxBcDd0CJ+F1CY+djYIrptO+xAIqM+NrpwNOUtBCezGjwkwLjJ0c2kW29HC9Cu/goAdFu7Pg3BVJPGYPV3Br9YNB10ifSTjh2Cn/0LKaCAvuMLSg9/NLprDXSe5dqSwAluFm2yuGyvXwHgFdax9fcYXHib6c4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=RO56Pp4c; arc=fail smtp.client-ip=52.101.62.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wbmxL57gW9c2aqUKMTzUx3vGXpixkWNJK0Gm3z+GlEODFjH9psZwhr1x5y4c19NTY6YnD1mSM1DM1omUAWCxSvyk4icUu2sVj8I4rm9ojctyntG8dDbFEHnI6EoRrGfSjOqGwC7EzK+Gu0EFTT9xo5GroJvc1hpFNQvkrPbOsIo4NCp7CIzq6U76ogRrsnVKEqGxyHmFB5ePuryEERJiWZ/1L+C16sorJkC2B5zBa6XkM+XDN8YxX3rhvh91+RPajLdUJPoSj4wpL8VpLBWoqnFoitsGiXu/3QwBopOrxgDmaCs+GthmCRfTIUVFV+gSqC400Q6jx0id1v13MQ7Fhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KGN4TVfZGuWhGcX09/dpj9g6/WnA5WETvvZIDIBzp0s=;
 b=cD3D7eYoTJhQo7mA03g5dikQ6oryG2UiSJh9vNhe6+5yZDkDdAfNYJCu7SKj9IDZacHezH4A62nB3vB5cvXiJLbXw6iwosZhwWAUIg6F4KyaVpWfQoM+z9MsUZCRY1teP2bBAcY77hsoCEqc1oZmsWSQArwMuADuNvJIWuxIDde6QtADxyyFRIjWgTY3GohWOpL0ujKQhGded2fnaRKegM8XM8+ARKrSkPamlPEx1wmuKJ68ct1+aqv/vOVS2/O/LLt6kXtxvBvWAKWTWbUonrsiwKoVGrE+g2W4UmiMl4g6ET2JIzFQdY1YszymPAtv8DmMHKKAA3plRSTgjvChLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KGN4TVfZGuWhGcX09/dpj9g6/WnA5WETvvZIDIBzp0s=;
 b=RO56Pp4cBbdku1rwv6nCb9qSV5KrfD5CHH2TTY8fig8NZ7Q0QeJgjC2wBWG6t9f9wfYkhx/MC8xWRC2wch4Br26OFmqQD8lc2kIJCYN9LnJ3zqrPuAtjVINxkaYwCC1B4vFMLmcX5FS7k8rsHxvXQFMxXeAa0wKs5gGheapzjP4=
Received: from MN0P220CA0006.NAMP220.PROD.OUTLOOK.COM (2603:10b6:208:52e::30)
 by DM6PR12MB4092.namprd12.prod.outlook.com (2603:10b6:5:214::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Fri, 12 Dec
 2025 10:05:47 +0000
Received: from BL6PEPF00020E64.namprd04.prod.outlook.com
 (2603:10b6:208:52e:cafe::ab) by MN0P220CA0006.outlook.office365.com
 (2603:10b6:208:52e::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9412.10 via Frontend Transport; Fri,
 12 Dec 2025 10:05:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb07.amd.com; pr=C
Received: from satlexmb07.amd.com (165.204.84.17) by
 BL6PEPF00020E64.mail.protection.outlook.com (10.167.249.25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.4 via Frontend Transport; Fri, 12 Dec 2025 10:05:46 +0000
Received: from satlexmb10.amd.com (10.181.42.219) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Fri, 12 Dec
 2025 04:05:46 -0600
Received: from satlexmb07.amd.com (10.181.42.216) by satlexmb10.amd.com
 (10.181.42.219) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.17; Fri, 12 Dec
 2025 04:05:46 -0600
Received: from xsjarunbala52.xilinx.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server id 15.2.2562.17 via Frontend
 Transport; Fri, 12 Dec 2025 02:05:45 -0800
From: Ronak Jain <ronak.jain@amd.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<michal.simek@amd.com>, <nava.kishore.manne@amd.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Ronak Jain <ronak.jain@amd.com>
Subject: [PATCH v2 1/2] dt-bindings: firmware: xilinx: Add xlnx,zynqmp-firmware compatible
Date: Fri, 12 Dec 2025 02:05:41 -0800
Message-ID: <20251212100542.2756757-2-ronak.jain@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251212100542.2756757-1-ronak.jain@amd.com>
References: <20251212100542.2756757-1-ronak.jain@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF00020E64:EE_|DM6PR12MB4092:EE_
X-MS-Office365-Filtering-Correlation-Id: d8668fe2-d539-468c-77dd-08de3966051a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|376014|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?I2u9oISBSiCGcVRdeI0bsrt4H/26GnK6RtWeIy5cuQDhwodA0YpKb8jut/xj?=
 =?us-ascii?Q?ezRsWXcHrVpTZBnMmnngKS+cw+i2kbICwBYcmQUH3US9Ni5QQWe8clo3wKoC?=
 =?us-ascii?Q?giaiI84MA7tMJ6eP4MMyXbxvCLrxUKyrzTFdWnECVMuKA9cLqXdbTOFFGPV0?=
 =?us-ascii?Q?OvImKscIa8rL2wUX3CzpbEU3wZIkeDGhW/D1HxQ5E+M+sL9Xr/bC6+suHQvW?=
 =?us-ascii?Q?v23lMrnMrHDj8CERjiUR2dGVpDm1Zmxpy+LI3g06NFwhzDf20dk9tEIxWmkg?=
 =?us-ascii?Q?oKfYJtsTWaoicMDUIqNWS4pP3ic/sw2ALOMqCmqyezCN6z4ZLA0vC2QLiVyD?=
 =?us-ascii?Q?bZAPx79peIxpQv1iblG1xgICBjuyXJifL61NwXWEDrZeNU3HprAifxRKFZEX?=
 =?us-ascii?Q?ToOcMkmmK1ALtM+1xupyThnb3/3sDmOnkyh3i9Trv47hy1AM32L4+FjTyXgX?=
 =?us-ascii?Q?+A/CSWuRLnca5rLnkegCMOCEWUsznQQSlP8GyqivxmytYkpA77epzR48Fqoj?=
 =?us-ascii?Q?tIxv7OZ05CwGE3lykYh3QnuU5r2JJ9FIGUdiOlHOIlZXPdl5h9a7ar1VphND?=
 =?us-ascii?Q?02VmcVh6BSgu5y78egOppOhQhtNu4mkybPO4KETVoG72cPL+Yvq8xkwzSfO1?=
 =?us-ascii?Q?JCAu15yTElZ7giaIdFF3r+BXOrBLvZhWKQtYaE3JPX2krxdJd7BLyhrQFSjJ?=
 =?us-ascii?Q?5N0twqDCjwWWgVoLFl/H0DEWvkButggMLDNQXTvKspuo3jm6a4X6QM/8d9pq?=
 =?us-ascii?Q?60O0YRYmOKPl13eNC3a/CCMqa9yj6U9HkxMr+bLDgx5irYTco7lNE9CHdpg5?=
 =?us-ascii?Q?Ux23FtzRn8IYggiyZC3O8EAB0evRuAaArrDdXWOVnwXCyGncSl/h8kXLMi6R?=
 =?us-ascii?Q?E4nL8E2gdCeCLH6m+k0n6w8Ov/pBxiAlHHnEeA1tQgSxc4WaEccmpV0LV/bN?=
 =?us-ascii?Q?bR7gbcOS+vpF6qP2yb1/KbzgJ5D0OcX6RELuW+/ANLxBdPcDTt/J6bNSStmx?=
 =?us-ascii?Q?LNcpSKVSaD/BTHgIfKKqucOdubWPIbICpveO1XJjVJBhMdA1BI3btlpt+3Zi?=
 =?us-ascii?Q?7/K+5PHqK58tGr46d4OlI8n0OONEs8vs7dzUBW40him/jUMDlBpqF2yLzj+B?=
 =?us-ascii?Q?Vlo1I2etcKGR5urDixDmqbSeuxMs+GLYQc1OOY7dxMHavzpIB8VSJd7BSPaU?=
 =?us-ascii?Q?h40ec8bUAq9Q+s9TUjibiumBrTxusK/B2cY2a3hOltRVxPsGXioMzFe6qECs?=
 =?us-ascii?Q?iavAs6T4KJfqdfOuUZFp1CY6jzcraNOmPl+ce2zhRv7pJoDsg4cBRd2BPEem?=
 =?us-ascii?Q?WeKsiRCqeszD3UD7bVQ4T0jIpwHzKpKgtLJKac5fm6nZ7+tB8NoypNsCLgeR?=
 =?us-ascii?Q?9afO7J4ixXo5ut/OAM9bFfPEM5yIHKddk95oFAMIXaa0vqZOm+ci5oHrptiK?=
 =?us-ascii?Q?fWeJJyqIr4CBbMReUJnX7++zD3lcGWli6VuhMudtvv/3WaQDKd5gFYaQuVgG?=
 =?us-ascii?Q?XQidyA2TCN1qWudZPODkjanISgqhE+bj2weq+0vP+uQPq32LmrUQgKDImFpk?=
 =?us-ascii?Q?s5viLHmIHanNK9eXht0=3D?=
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb07.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(376014)(7053199007);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 10:05:46.7837
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d8668fe2-d539-468c-77dd-08de3966051a
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb07.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF00020E64.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4092

The absence of a compatible property caused dt_binding_check to skip
the zynqmp_firmware node.

To address this, add "xlnx,zynqmp-firmware" to the compatible property
in the example section for the zynqmp_firmware node.

Signed-off-by: Ronak Jain <ronak.jain@amd.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in v2:
- Added acked-by signature
- No functional changes
---
 .../bindings/firmware/xilinx/xlnx,zynqmp-firmware.yaml           | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.yaml b/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.yaml
index bd413b6aeaf4..7020eeeb4ec0 100644
--- a/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.yaml
+++ b/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.yaml
@@ -124,6 +124,7 @@ examples:
     #include <dt-bindings/power/xlnx-zynqmp-power.h>
     firmware {
       zynqmp_firmware: zynqmp-firmware {
+        compatible = "xlnx,zynqmp-firmware";
         #power-domain-cells = <1>;
         soc-nvmem {
           compatible = "xlnx,zynqmp-nvmem-fw";
-- 
2.34.1



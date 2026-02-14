Return-Path: <devicetree+bounces-265514-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id rEW8NzYxkGkYWwEAu9opvQ
	(envelope-from <devicetree+bounces-265514-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:24:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0342213B604
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:24:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 50239300691E
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 08:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A88F93033E5;
	Sat, 14 Feb 2026 08:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="INuRwKwn"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010010.outbound.protection.outlook.com [52.101.61.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611CA284672;
	Sat, 14 Feb 2026 08:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.10
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771057457; cv=fail; b=INy8YbiFZVE2ducNED62WDrR9mKOcmQ/Pfi19V3qL7PNhQ51gjelTzeG0lu04caUxIgxTk7lO9bi4W/Er1LTWfS3oF32ore24P5jqZkbVFmgpjh4cIG7arsgkKeK+AeUktq0lrOnoJXV7b6r4qeNLn4uZy+OeuFDimZvTzjTaoQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771057457; c=relaxed/simple;
	bh=jZycPRd2u/nLYqLzMCyh2Ju/mZVBBZAcFGh9+7kUH68=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sg2eu5Moj6a7sNZDzbidXvL7LkWBA35dWca3bAqqhcNkh8rQ3WDeQrndptkbuzOHDiF1Sb9EmO/l98y0f6WzHjoC9uxZKLAApNXzZ0qsJxc2E/xvd/HzQ3b8lRlPLMNMNT4toQU/TAB3NiMHAkqGZ2FQBEYa5wzUEkaqxjfchGE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=INuRwKwn; arc=fail smtp.client-ip=52.101.61.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iKTQaLYlbnYU8NmDpriiVHgoJsP9+VzBTFFxXv3muqCkyVeFHt2hMyeAMF/zNUTRC4Ga6Pc6+eh3OjV7A/kxLtw8hy14s+nI3F7SJPgHpDfSdhsBS+aHhkStZlMKkNvWf+okZyChbYP10sOUFwXWKJ4rQWHCWQJHsovEryE8Ds4TAb69Mys3xQee+3Wvb5KqmQY+cZDHnSoB27lVlM/am/UGe9Raz6H+VG8YiEXzqPpUEuhTLdbduKMWN2dNGgWzT16U3a+UyMdBy8ZQxQgRWOeb7oLncLOlQo2YQRB2y3yplvhDgIXIsmbfA2AM8koN4SiM93+uzGPt0Abi2LntEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dj3OWdeENCIuVX3rT5YkrxPfw/NujIXuD3SgDX3n85s=;
 b=fa42S3AmqZZyKMvEvEN9k1Y5C56C+lk04ozIp/fUn4IeBkjjChqiPualZ0opuhZBeWR/LXFPEjdjw9wEj/qBnNETm7GAn+rXMEiTOxVI6C8iBS3QM3hEOfNUnVtXovUIs9stgr6ATtDXcNj1kHf4nrmr/EoAW6vzx5oUcWuqgDBLRv6Zx53ohOhHPtc6sRraOk0/kDEelJNZ0ul7jka7Dlc+ckRgasSgXCfU8lx0UIZ6rIltKKwM7xNLHrT/n3HJ14tba+My7t8AucOiea8Kk3bCKqzW5fZw5lfjwgRO41rYPiYTkYGZ3dUYzK/AkNsuJKX3CUoRs7YEMzb5RYmdJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dj3OWdeENCIuVX3rT5YkrxPfw/NujIXuD3SgDX3n85s=;
 b=INuRwKwnycVwhSy6VaVUZBs8Z1BJEvrgdXTruVsWv5mKOppnfWn5K8ms1GVP536CRrIUKu1MB5IQbAKThX6l2e5sovynpoeG0Ktv+R1/wJoxogqoQ3E2Qp/7YrX6NtCAwArU317z9DqiwgHa3bUjtgy6t4p4Rhrl063665iD8oY=
Received: from BN9PR03CA0802.namprd03.prod.outlook.com (2603:10b6:408:13f::27)
 by MN6PR10MB8070.namprd10.prod.outlook.com (2603:10b6:208:4fd::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Sat, 14 Feb
 2026 08:24:14 +0000
Received: from BN2PEPF000055DC.namprd21.prod.outlook.com
 (2603:10b6:408:13f:cafe::72) by BN9PR03CA0802.outlook.office365.com
 (2603:10b6:408:13f::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.14 via Frontend Transport; Sat,
 14 Feb 2026 08:24:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BN2PEPF000055DC.mail.protection.outlook.com (10.167.245.6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.0 via Frontend Transport; Sat, 14 Feb 2026 08:24:13 +0000
Received: from DLEE206.ent.ti.com (157.170.170.90) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sat, 14 Feb
 2026 02:24:13 -0600
Received: from DLEE205.ent.ti.com (157.170.170.85) by DLEE206.ent.ti.com
 (157.170.170.90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sat, 14 Feb
 2026 02:24:13 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Sat, 14 Feb 2026 02:24:13 -0600
Received: from localhost (ula0502350.dhcp.ti.com [172.24.233.249])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61E8OBYp2164935;
	Sat, 14 Feb 2026 02:24:12 -0600
From: Paresh Bhagat <p-bhagat@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <praneeth@ti.com>, <khasim@ti.com>, <v-singh1@ti.com>, <devarsht@ti.com>,
	<sen@ti.com>
Subject: [PATCH 1/2] arm64: defconfig: Enable PCM6240 ADC driver as module
Date: Sat, 14 Feb 2026 13:53:42 +0530
Message-ID: <20260214082343.2109890-2-p-bhagat@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260214082343.2109890-1-p-bhagat@ti.com>
References: <20260214082343.2109890-1-p-bhagat@ti.com>
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
X-MS-TrafficTypeDiagnostic: BN2PEPF000055DC:EE_|MN6PR10MB8070:EE_
X-MS-Office365-Filtering-Correlation-Id: 579ae7be-4436-4d4a-594d-08de6ba26fe9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?IxlUV/lVKCO0WN4vzYncUtYFpfsod5GyAKuAiCzLPZPj1immeuQahFyND2/E?=
 =?us-ascii?Q?9czy4AZRaSh2kJoaaS3EAZOG5Q14aFsKvfVnFx5JdxYE54NeS9OuPfL7x6IB?=
 =?us-ascii?Q?ubHS3FUbFtDr+eOUZ0EdPHAJ2V7dHpy6q3PGlvwVm3p0UCcMTBJxpwX9Q/VD?=
 =?us-ascii?Q?1HN7L7FU538NBI7cDasAj+OTKLbu0efS36MCVGV5oL4n18l1n5vMWbCFHoF1?=
 =?us-ascii?Q?QYBcDoaRo0rBQSvce0K62pqHljYyvzAjX8JPc3ddIm6zyUf9267Y+lomnGZZ?=
 =?us-ascii?Q?N+8QEIENSCR0MRNcD5LwuMluREbxiLO01C0ylJKJsRXXpg+IHAviOdPoj/iY?=
 =?us-ascii?Q?QxzrIsYu2qzejc5GPxSq5Z55N9Pho+WJ5DVMtslW0xryu545FR3zBTeeBlGR?=
 =?us-ascii?Q?YuScrPul/tTl7sK/gHpMc4pfH2c5THFt7TjWpl45KgkxMGehP0uHILhcWV/e?=
 =?us-ascii?Q?zZEXHtWgPBLgRkh32ZKexuz9decMQSV6HUczhoxaoiUghbyp4U/lFBICdOx2?=
 =?us-ascii?Q?ysgDwoRTbXzI+gFuz817Uk10Ot6pZSTCIrUQ/tjIrF7Vb30fLOTdXkgf6Eeu?=
 =?us-ascii?Q?SExr0cREf9vDywa2F8mtjS7UMxcdZdMJRVfByLBbUT0XfqmqbML47b4HAZpa?=
 =?us-ascii?Q?+utN/N+NuMC2UUJSflKSLZiK68gA1GTFd26KrK/OQE5KpGIOezTnJn3Qsj8C?=
 =?us-ascii?Q?s9FT71MLzyUVaQRkdCVq1Y7VJsHS/2YUPwB8lnavRyjPC6UMtymFupe9R7B9?=
 =?us-ascii?Q?RRKmWVzaSwnz60wDBX2vf41OL2MeqfmCXk4gp11dFvefKtOp8tltUApQrl8o?=
 =?us-ascii?Q?fB/qfirqzsY7kKAkqp9RDv3wQRGlv0bfVdOPsu1JehBSVSl30aqcTU5sc9hd?=
 =?us-ascii?Q?RuXlLp1OehGti9V/jDB1SJRlVeNxPizQVWU+1Kxv3RdQEnVM/7pgyAvKczYm?=
 =?us-ascii?Q?2G1XTrh820XsrHu4T2cOQjr7M67cGpTVRX+kvWxMTe2J0H7NsFFBkLA1kwXk?=
 =?us-ascii?Q?PdAkXyh3cAKG+qDSAysvbflFDhbzP40WRrl1pqoVzuXCDk7aQm9hTfN0ywA9?=
 =?us-ascii?Q?fvBafpV5ttC2preQX9QurKHpiF4igNL1z/lGHEOPOusMOKzLZv6NtCJbgS+4?=
 =?us-ascii?Q?ArUYh09Y2hchXHObKLCXav/K9Ecnhg+NWtFPC+d43lrp39A6Bq5XG6sDhAXi?=
 =?us-ascii?Q?iCC355q+gaXgnSKaM34rkTX5MwqmDc629pa2kARUufwCZV8O6OsT5DTRIban?=
 =?us-ascii?Q?PCDvYWhJ65/LcinQnhHwNnt+YtB1AHVtz15EFXW19meGz4teuys+LLWzQVIO?=
 =?us-ascii?Q?8CiaJPCzOrmWwNNJueyQI4d9gRApE8YTp3Ho2bN2jj4a20/7Q2w0zGfCJ7NU?=
 =?us-ascii?Q?nrWQMzTUyiTYyjK7ne/idFsZmH1skmI+DutiKS59u11oc13+WKyRcZRMpqrP?=
 =?us-ascii?Q?jwd48N3AkkYOEMQhz/ZkBgT+OcFCe/ZegbxQcmqQJ9YkdN7eMZEDWWfUHzy+?=
 =?us-ascii?Q?O53Co+xpu1URPSApCe20LR5OYIt5ryn22XYklzlrAhuIQRwFWrbkNhK+e3dU?=
 =?us-ascii?Q?/BI8zy+NI2xj0lrfSbznY06e1rqUhs+YvVO2hrPz6oMAnXoU/kJh6PNjMkUv?=
 =?us-ascii?Q?LlZUdBnmMLhrNvcRU2MUuy0PSLiB/rnDWODhbO2NUG5eHg33fcWWx3bh6+E0?=
 =?us-ascii?Q?2g02zw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	WWn6BnTXjKKEvMkJTap+6GbH0Nc96k0EZWCJXC3IFHxTJYvfD9/JANVXWxnHW/xNcn8Nel8cyEZKDyiLpcrq58JIl5GuJthgv5l5ZXQTmY7gmi5Rif05DNoRh809YqgLGMwYBpl1CnfngVpXJJJ4h4IJ/GE3NJk3bFc/Wsp3EkLAoRCoVS15ApmitV0YCFKzPInFTFmlg91l5AqAueU4vigAs8//xvOB6kaD6T3mAs0x/VGsHrRrhpQ+csEXbpMqsnmpVI+DvVV2B5GXQkkqPHMTYnicyAm2SOMGTZ7YZ9AjN6g0A7cdIYj0FyiaIX7QCKr1TimIQTNu78K5zK0V/zH7vwvBuHNegKlYpkJP4VQkKo+R6Bz+7xLDHXpOmzfrxRyvtmUwhGtHDjLlJ7z9JKKKP+wc3+ptd3NTqyr1bErtG5J0Pru3xvav4DP1N33w
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2026 08:24:13.8414
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 579ae7be-4436-4d4a-594d-08de6ba26fe9
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN2PEPF000055DC.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR10MB8070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265514-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p-bhagat@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:mid,ti.com:dkim,ti.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 0342213B604
X-Rspamd-Action: no action

Enable the Texas Instruments PCM6240 4-channel audio ADC driver
as a loadable module. The PCM6240 provides multi-channel audio
recording capabilities and is used on the AM62D2-EVM for
professional audio input applications.

The driver supports up to 4-channel audio input with integrated
microphone bias, boost, and input diagnostics features through
I2C interface.

Signed-off-by: Paresh Bhagat <p-bhagat@ti.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b67d5b1fc45b..35a36496a603 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1147,6 +1147,7 @@ CONFIG_SND_SOC_GTM601=m
 CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
 CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
 CONFIG_SND_SOC_PCM3168A_I2C=m
+CONFIG_SND_SOC_PCM6240=m
 CONFIG_SND_SOC_RK3308=m
 CONFIG_SND_SOC_RK817=m
 CONFIG_SND_SOC_RT5640=m
-- 
2.34.1



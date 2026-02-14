Return-Path: <devicetree+bounces-265513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id VefPGDQxkGkTWwEAu9opvQ
	(envelope-from <devicetree+bounces-265513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:24:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0B813B5FC
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:24:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C04DA302415F
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 08:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E5D02D780E;
	Sat, 14 Feb 2026 08:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="WV/CGaFe"
X-Original-To: devicetree@vger.kernel.org
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013020.outbound.protection.outlook.com [40.107.201.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F9D1EA84;
	Sat, 14 Feb 2026 08:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.201.20
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771057457; cv=fail; b=mcomD+xJ2Kb4p2mcCy7so6w68Mwr9Cc9pUYJ79kLCno0eWTzZxZ6wpvQL5H5Y7xXTapXjFO3JRrqquB1mWuEuQLDaAnRCNnw0XlIgqoQh3/v6XOHdVMt1HPmX8PYrEg4ABRpBzyRmQkagpkpTNFUTxasW2zP84Tfot03ATpqe6M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771057457; c=relaxed/simple;
	bh=xuhqMRCwkHVStVUnWbESY/5i4uK+KnO0JrORi7xrz0I=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=XwKl2GheanN0B2b6bKwoSTraGm0xUyGZLCAolQiD3gJkL99BJsBUXgyKgT1j7scaiP6pUIQUXnsTRR0hYl97mBb7ZeMFMmrn5RwQHg888MKeaOa4wlR6dU176TYPBqFyjSRrFq8j3XBl+MtbuoRp27VggEqovKTxOZzD5JD+TGY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=WV/CGaFe; arc=fail smtp.client-ip=40.107.201.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gj/umLyW2ElZdZhOPQ/Xkj9n6zDgcxy/bPXyMfekl375qgxFOVrCydt40V4ePQv0asX0hyxoZhYN8Pzec0d9F7oVIjevi7g+dPor3Lm6ZGJPtkjcvK7cBF9HyoG5esgvPxMSwqlK3g58dAz2jqVrLnEQB1cuvFUxExTKaJ+VKzJ7/OMFsY1srALmxrHjWUXnxIjpyBdGQR8fcDOC3s4tGgs/u9iU1l6thMYiKVexBYBr4gBu6q+pK+i5Pt764V3NrnXhcD2B6iU3Zu3+3fcYNjFB5xs23cmNMGSBEtwOF/PBQHZsj19SwUdDsh2u4+UMMv48SR/6euhEkzf+TIC/Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a08x7aiD/FeWYagUYuXZV3kI050M7QlaiUd/xpyg2iM=;
 b=ZDqw6+Hgzw/8T6kjeGEp55YavBIA4d+6WCYRw2wSRHUPZl+e3AwDVQGaSuixKXWz5rz4I2vSGfcMPE89fN8eIR5L1aZtq3I2TnM9n7zciMp1MDo57/vJ6vjUklcBBg2vY5abUGNNs9vkZ3qAYBS6uIqqlAfLdN/mU5LWbq+/Ap51Qy/WS64y74Y5LZBqJAA5+XjRjz14M3fgI8M+d9tnzrUngc/mb1A80LKg3gfn5f+APTjcGA4d4jOkeQIsZPyJM3qEVtFqBaSodw8wXy2apAy0lHEV+GdTLKm88bbHTOnXPXRR08A/gDwMvbofaLcOFOvpw+RjWtYp86Kk+2EcVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a08x7aiD/FeWYagUYuXZV3kI050M7QlaiUd/xpyg2iM=;
 b=WV/CGaFe3DEBv3DkJ81l68s+ILOTKVB1AxlijYXXV+KaSS7iNZ2oXkU592h0xUcHMG16WgTtNrhSHU2LibICSKgdyvar/6YuoYuetdKmzAf18is7BGnqsOtOnT8HYzmtXguanbWNF2Oy/bjgTk8vtqijz4GtyG/uH2fjBcXhmW8=
Received: from SJ0PR03CA0139.namprd03.prod.outlook.com (2603:10b6:a03:33c::24)
 by LV3PR10MB7818.namprd10.prod.outlook.com (2603:10b6:408:1bb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.14; Sat, 14 Feb
 2026 08:24:12 +0000
Received: from MWH0EPF000C618B.namprd02.prod.outlook.com
 (2603:10b6:a03:33c:cafe::e) by SJ0PR03CA0139.outlook.office365.com
 (2603:10b6:a03:33c::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.13 via Frontend Transport; Sat,
 14 Feb 2026 08:24:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 MWH0EPF000C618B.mail.protection.outlook.com (10.167.249.123) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Sat, 14 Feb 2026 08:24:11 +0000
Received: from DFLE204.ent.ti.com (10.64.6.62) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sat, 14 Feb
 2026 02:24:10 -0600
Received: from DFLE212.ent.ti.com (10.64.6.70) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sat, 14 Feb
 2026 02:24:10 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Sat, 14 Feb 2026 02:24:10 -0600
Received: from localhost (ula0502350.dhcp.ti.com [172.24.233.249])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61E8O92R2623092;
	Sat, 14 Feb 2026 02:24:09 -0600
From: Paresh Bhagat <p-bhagat@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <praneeth@ti.com>, <khasim@ti.com>, <v-singh1@ti.com>, <devarsht@ti.com>,
	<sen@ti.com>
Subject: [PATCH 0/2] Add PCM6240 ADC support for AM62D2 EVM
Date: Sat, 14 Feb 2026 13:53:41 +0530
Message-ID: <20260214082343.2109890-1-p-bhagat@ti.com>
X-Mailer: git-send-email 2.34.1
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
X-MS-TrafficTypeDiagnostic: MWH0EPF000C618B:EE_|LV3PR10MB7818:EE_
X-MS-Office365-Filtering-Correlation-Id: a200c823-90d3-4cba-a522-08de6ba26e5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Qgt2dGL7pridYE3/0+8KMr9fY4C9rbsq48SOIjT9hSqPMhLmbxHfeHr+dNZr?=
 =?us-ascii?Q?qJGPWV7pPwER/f0DtqXRPqC6iA+ctslg7073eQ1bihyMKdwsocyy1BVYRxIM?=
 =?us-ascii?Q?W5wDdRpV2Tqfi0OSsJ9hHzxXeifjdSWmSEabsigzcmdjIVi8Lgz5YNaSbuXz?=
 =?us-ascii?Q?paFl3EorOsPzNKlzDiZt/c8mV8yYV8WKWxke+jQmY2CWKMkPIHsakTYyIx1q?=
 =?us-ascii?Q?zsr0Jo2LdMDPUnlfgjhg1OVU9uDx0bJB+5cSWFfru3R+Eec/RVveSUzCmKfO?=
 =?us-ascii?Q?xmyDhDA/pspWLtKn1etP5w7CE9T+ev4SRbXucrE6RwEC6ymjApRjDnpdpdr4?=
 =?us-ascii?Q?yrAVyBpyu/omb9fByIQikZcePcGPmWlor6gFrzdI+pLgFindwWnSLj3pvuX5?=
 =?us-ascii?Q?POmIhGUa/pyFn2Hp/7aw9Txu72xdjEE9ydMlfFyLUfjdlYCdF1tGJyBOv12i?=
 =?us-ascii?Q?6EtAqmybRVjsa+D6AV144NBBNjv6TUdEaj47HU0NHQszAqQjbB9pYjEUaa8c?=
 =?us-ascii?Q?xGX/2s3VTmII+ReNAnqZ6KeNYEe8z0GJ/opEwzsvYKY/XXo7E57C9a5k8c3C?=
 =?us-ascii?Q?ceRs+lOKY+HtOksf/DbAGE2KgCFIru3SX0MFe0mwSoQ+9XKxkLTql/3Si6jX?=
 =?us-ascii?Q?BQfhmoqirb/VuapgxHYZJfvV3KJ1KNjnH2wEUNvyBjHquKFtdxbi2fFahvcX?=
 =?us-ascii?Q?64NURjjtt+kULFpGqSDACbCH+kHapsq6BYjRkikTuzBa1GjnvHDK70LYRovA?=
 =?us-ascii?Q?TOUxrA+byPNN8h4nDsGWqSDYf0AyrrTz9nx1FvTnlZaS1My5GyhTuiSYT1BM?=
 =?us-ascii?Q?bLV2tVA85iOucI7ogoRvqGApJcfw1ePR7Wb8M43lX7Ee4u/ZC8i4AljO9Xd/?=
 =?us-ascii?Q?2UrQtO0rV3aAahsQggMnUQj1u6bPXx7MXriSCxBCnOBRqTbb9RhlkhKGdlf1?=
 =?us-ascii?Q?iKLyOxuAKN4VMIHfrVqbpHBHl72rP44FUwoiVjwtzR4DZny0b0lUKQMxi2pL?=
 =?us-ascii?Q?lqKntyoioLcLoKf5kFf4YCtkf7LUlJYkJ1/rXzMKJKJSZxFyx6HEEMdhkzwC?=
 =?us-ascii?Q?8NaNZwlfHoUUoutsbhpk9njwWl5B+8GgHqnVaAKq6tQxRymZZcA2ZBi76XOV?=
 =?us-ascii?Q?37MOFE756zxnBaAHhp50+Zu2eGiVUTp0pgBF9Yi3888+Q/9xgRAEfolfM2hh?=
 =?us-ascii?Q?PuXzkmAR/bmiGeQnwrOoX/kynB4v0+Cgh8xsMXmspDCb9PwAXNI8xr5iX0Gg?=
 =?us-ascii?Q?BT3EA5K6oeZL2W6lyC8JDT1T0KSyFYgzcLeWmKfrbw37+OndVHrBEzIjcrem?=
 =?us-ascii?Q?uZi3Z87b1Q7MyqMx6MfKbSj7iMczncQAvQ+DXEJ3QHW7f+9Jm00BNxrN3JfL?=
 =?us-ascii?Q?+I4YZu28rSLn7JkJfigKY2N/zk+BHaGojz/ZWUwMtYBVtuKXppAPEhLUzin3?=
 =?us-ascii?Q?5uv7+j3mUWtqnorvjOM+ylbbSREzq+1UmA0hOwBTGoQDg5itT6ucFYtfq11x?=
 =?us-ascii?Q?BZ7HSJXGLhrIh40p5naNObfvoUndB5FWKskNp3V9ZxOX3xoUj1Z++fclSt7B?=
 =?us-ascii?Q?J66nguTeL6cheTQhHb8GdoE7PHTrwKzXBm90WGRSXuFKEv2D502RB0Ivd0dO?=
 =?us-ascii?Q?EFeDdCXeoPRAaVla9OG/hfE=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	7+e/nj9hoHT5hGMHjV9pXEeyhNefcgmyT578bmSGCdHRyO6C4BvQVZkOCYXJwMMXFvaHBbWEMTNmYsD2LszapZYLJrDdEIJh6O+6AD6xdJwiqC7vYumRT26ks8qMMk7rUIjFdQSXQeMY7MMAOHDLSAgTGNEquBmuqEAUgSs0UY4D7HpDgdW1Yr/myCRPP3SgGuDPla6qpB28AWMDWnZbrj/i6otBcREtAB3GpLIwC1nRghBifptlbkhqsc7VqCpOFAP1jOJ65r7aBHYHAa/AIO1m00SBTk5bT3o8+2MoYokNiSIOr0Bc7zjl7wdni2KdM/WoxMm0zcI9D53bdxpO4zLTCAuCL3xJ1oxJr3NcIpqAJM9ymXNpWp1SMARI6Qt/Q0lnBst8C36r0RRLM6iD4J9tu4q4aO0tDyfJufO3UNM+pYEtJ3wwMrl2NO1OVMGz
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2026 08:24:11.2276
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a200c823-90d3-4cba-a522-08de6ba26e5b
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MWH0EPF000C618B.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB7818
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265513-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p-bhagat@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:mid,ti.com:url,ti.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 6C0B813B5FC
X-Rspamd-Action: no action

This patch series adds support for the PCM6240 audio ADC on the
AM62D2 EVM board, enabling multi-channel audio record functionality.

The series includes:
- Enabling the PCM6240 driver in the ARM64 defconfig.
- Adding device tree configuration for PCM6240 codec with McASP2
  interface setup and corresponding pin multiplexing.

This enables audio recording functionality on the AM62D2-EVM.

Boot log-https://gist.github.com/paresh-bhagat12/7cf20989320bf06a3e72dfe69fba071f

Tech Ref Manual-https://www.ti.com/lit/pdf/sprujd4
Schematics Link-https://www.ti.com/lit/zip/sprcal5

Paresh Bhagat (1):
  arm64: defconfig: Enable PCM6240 ADC driver as module

Vishnu Singh (1):
  arm64: dts: ti: k3-am62d2-evm: Add PCM6240 ADC support

 arch/arm64/boot/dts/ti/k3-am62d2-evm.dts | 63 ++++++++++++++++++++++++
 arch/arm64/configs/defconfig             |  1 +
 2 files changed, 64 insertions(+)

-- 
2.34.1



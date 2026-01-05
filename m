Return-Path: <devicetree+bounces-251520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A98ECF3C62
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:25:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5CDC8300C14B
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE66F33E371;
	Mon,  5 Jan 2026 13:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="O32vQTzN"
X-Original-To: devicetree@vger.kernel.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012009.outbound.protection.outlook.com [52.101.43.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6796D1519AC;
	Mon,  5 Jan 2026 13:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.43.9
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619516; cv=fail; b=bo/r2JkpPvoQ78WX9A2N6UivFx/UMpyyM9mldNpyTp+8Dhzg5TQQMfLeK0GO6dssWt+H3V81DzPhY4TngXrE5Hrz0DF0F4mTOU3YCMAcrAN6NIQ+lZfLA3LlQj0pK5xFjmindOaCeV/EgkbPXmSh2Qd2tC4ZyFStxlhw6/uC0D4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619516; c=relaxed/simple;
	bh=CTcmFv6nPxGR84EvmsLfBSsZzvNbtxnPxx5hh6XjQic=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h504BIYxRAxQhB6RK+pqUyfyVdFuJAODB0RGcxMFvE1bmd+tF7wnnhOpdxf6GQ7soQUjM3Js0WV3kYi3RC9u5SQI9N73gKsHcCO+Zs6mKqZEsx96ZHF03dokHRVokUdSqsCICGbR297Qp+SVtTFFJC8R/pNKRDsLdhsaTembWD0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=O32vQTzN; arc=fail smtp.client-ip=52.101.43.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GFzzLbhCBVnCWfPI6WUJjfIxuTSp6dOndEWM3IV9nCr1rqnwnahfK8+qW+kI1X3fEUDXmgn3NMJXmHB2heJCBqXcZUfA6Wn/k1/OWLPcwN//EUHbBda2LwZF8Ckhp/msIXba1WX5tyEc0RnX7Eih3rUVQ72OEFdHg4imiQfIYXB8DMV52B8YLLIXijzv8bhv50p2VGCmMIxTMKDEiXi6OxGVaEfIwdbfDr5pggOvEA1yXaRf5JcGeTL8y3aGyUNqE7iEloalVbBKRdpTD4td2sNeZ1lhb/8rbkJhPDHA5gbAvOu5Vgu2pDSlBsJ/IgRYfDV1qQWyr1NEwcmuV6PcRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9cVTIv6uCM+FdlwrOPmbcPZ2r4R1X7HxpYGTFNn4E5M=;
 b=Ou4lScsFXyobGKEzcvATjfaMNxfRdcU9SemsfrqEjWGnnSCgJOuqTP048inef3venGl2NC6/59zxrLAz6m54K0M3tPHdKjGdv0hiBkFlBRk8Wv1rcMKkW42la/R1ZMrjBoCqrCMo7xv4nBrCgsXRUvDePuQzpyMlfTy5v0XGfAeCMoXNMeFIs325K1QXrTM/lGmAoTJTH/sZGOLdf4QZvLWkFOBeta3gOKp8E7CYYT4GV+6Bdb1fSfm82z+1kOSh7LlRc2Hdbq5LceDCL+jNKLOdoYycsl/RHLOayO+OHSSjPyfYfiyFxWMGfCG7TDLefniMC5902OQjbKFrui7Lkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9cVTIv6uCM+FdlwrOPmbcPZ2r4R1X7HxpYGTFNn4E5M=;
 b=O32vQTzNcxKOQC3sm1PQL+ndgIXz8jx0FKBR9GdJcs0Z/kwJKvYASDAT9lOnHud0ocai2+n1zChlEk+JBBBpQhfFPJJ5HbqA3w5ep3b0Ca8SZu5ZkvbKbwA3V/BQ2TQIniH+4u7bbDrMm24y+6c4UQtlNtt3etDPHffByQev6p4=
Received: from BLAPR03CA0079.namprd03.prod.outlook.com (2603:10b6:208:329::24)
 by SA1PR10MB997655.namprd10.prod.outlook.com (2603:10b6:806:4b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 13:25:10 +0000
Received: from BL02EPF0001A0FA.namprd03.prod.outlook.com
 (2603:10b6:208:329:cafe::e2) by BLAPR03CA0079.outlook.office365.com
 (2603:10b6:208:329::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Mon, 5
 Jan 2026 13:25:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BL02EPF0001A0FA.mail.protection.outlook.com (10.167.242.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Mon, 5 Jan 2026 13:25:09 +0000
Received: from DLEE207.ent.ti.com (157.170.170.95) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 07:25:04 -0600
Received: from DLEE211.ent.ti.com (157.170.170.113) by DLEE207.ent.ti.com
 (157.170.170.95) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 07:25:03 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 5 Jan 2026 07:25:03 -0600
Received: from localhost (lcpd911.dhcp.ti.com [172.24.233.130])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 605DP2ug1210297;
	Mon, 5 Jan 2026 07:25:03 -0600
Date: Mon, 5 Jan 2026 18:55:02 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Kendall Willis <k-willis@ti.com>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Bryan
 Brattlof" <bb@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
	<msp@baylibre.com>, <khilman@baylibre.com>, <a-kaur@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 3/3] arm64: boot: dts: ti: k3-am62l3-evm: enable WKUP
 UART wakeup from LPM
Message-ID: <20260105132502.b5xlx5qbzgegxoa6@lcpd911>
References: <20251230-wkup-uart-wakeup-v1-0-cd6e15f8d956@ti.com>
 <20251230-wkup-uart-wakeup-v1-3-cd6e15f8d956@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251230-wkup-uart-wakeup-v1-3-cd6e15f8d956@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A0FA:EE_|SA1PR10MB997655:EE_
X-MS-Office365-Filtering-Correlation-Id: 95a8a8b9-9b98-4042-420f-08de4c5dd98e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700013|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?rnQV+qMsgme5lLewVPQNzfeNNlQFt2jnFbXbiUR30Ts56M+UxlyiClV5/o2M?=
 =?us-ascii?Q?nkw92Pubw0VigR9AGHLbdV4JcMzDvrdjYrQ0ZNFCAZMFeXkc2u2f4S8GbCrQ?=
 =?us-ascii?Q?RarXCtUMqbtfO0iPhxN/bQDaof9xJeFE/bVhzT0as1hLGGQ90KVkAaWc0jit?=
 =?us-ascii?Q?vvxVM1+tWb4oqBhYtSBUlzH5hUCmP7loBJFmtfz6RvFchMZjSwdhRuIpQN+M?=
 =?us-ascii?Q?hbjeOtf4yOoS1MzGkrFTjbIZa7W9hjrOdGeKU6LLZ2uWd1MV3ELmS5h+JasY?=
 =?us-ascii?Q?91foQeAAy52rK0O5XbckrmPwL/xz59JbNQhEqVpvcb0jqIXIw6tuPDv0p4AK?=
 =?us-ascii?Q?LjZcSOiFtLsxbTvIAGwnb07exEsl1lxlpejQsPeRHhzHroZW+TakJPXCcmNw?=
 =?us-ascii?Q?nv2ysDxEc9Rbc/cg0gdf+EclL3QHpqQfiWLgrQvU2Sx/EiECqFziTff8VJCU?=
 =?us-ascii?Q?e0Uqy+wIf1iOJQjOFiSxK/CceTye6qHqAlA/DzZCtXuONb/4iug2TZy1eDYp?=
 =?us-ascii?Q?T1tDFrCXKdDS2pkkuF9lFBeZMIwqwcDI+T/7AWg5exSM8o+9BJ0dPJhT4L+Y?=
 =?us-ascii?Q?9wczaWdKKv3Wi5zCGqMns85oBY/dCcYIPIxitaDujO99OFEcinC45U7QEvg6?=
 =?us-ascii?Q?z/LT7sV+a0nzDN4ho9t2WbDOOaCVhpMbA3ViEAMTqIY1D4rc5r9sF/IgB2jU?=
 =?us-ascii?Q?FPy+hpOltgoM59jjNAo9mgIpJQN+H/bt4oYmh9XQ/YDm9f4g8DEfKl7fto5a?=
 =?us-ascii?Q?8y2Xl9H72VvQCiBIZ/nUf2CH7GRSWcRXhuR55zHsm+7WRJIn2oJNpmKFjAT1?=
 =?us-ascii?Q?Afg3CRQka709dj1+w/GzxsQpq6Pc1Pg+JxdJT8lzz2XRPaEw4hhrvo12RHFi?=
 =?us-ascii?Q?pbwzrh9A6k3d/iAHcSWYg7KWtLZrFkptpYOHNWsD4S2mRwUX/QSYxdHdg0NK?=
 =?us-ascii?Q?6OYwAhT7fTlNEJdv/S1vNk5y+2HidDOz9vE1bvKMfmdo04RBR5tm8YG13d10?=
 =?us-ascii?Q?oHrQ8QbwYW4A6p0GfzBpMonBOzZSa0RI0YKoeaSZP4BzzliLfAqWns0J5GzZ?=
 =?us-ascii?Q?zPaqVhIMxIf8u5cqKA6MYq/ga2/tYdMEoGlFtFJQWyMYNWNpiSKPx/tKmIYv?=
 =?us-ascii?Q?xz89k02wmEbB3idrxxR1PTxFJT8MKlseNwAjwKIDxpRfIiPWtVDvjMAxLILD?=
 =?us-ascii?Q?6jDJt4KOhNOQHDks6qpq2/7xBHLlXANftT/N7owyatqhT4NXbV0xOg6JY3vd?=
 =?us-ascii?Q?Dnu04KmqetSZZidX7jLpiEP2pY1Nij6hyJXWfOWnFZ19ArGPQsA64SfUPnev?=
 =?us-ascii?Q?ht0FFwlcFmlJONQFN37qcWQ3OYLmGZP0k1lqL3pvfhiUyd0FKTf+PCU2xM4M?=
 =?us-ascii?Q?UTZJyqkdLbCpZBbg6b3bI2Yjc77r38ISkEuynB2aW4tKT04+j6EEtXchFftv?=
 =?us-ascii?Q?eWSjE0WjAMTk0xjzQejFqI/9LGN37M/VTy5MtnP8VD/j7ZOkmS1XoqBPUkpV?=
 =?us-ascii?Q?g1cjARJekUCBo7hl/DJlyYu1+ViJcrEubWgEbCFYstsoOaZLHKIqEX10GCfP?=
 =?us-ascii?Q?voRlnc0TkrfbBp6k5Rc=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(82310400026)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 13:25:09.7701
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 95a8a8b9-9b98-4042-420f-08de4c5dd98e
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A0FA.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB997655

On Dec 30, 2025 at 20:51:42 -0600, Kendall Willis wrote:
> Change the status of the wkup_uart0_interconnect node to enabled. The
> target-module node sets the UART SYSC and SYSS registers to allow wakeup
> from WKUP UART in DeepSleep low power mode.
> 
> Signed-off-by: Kendall Willis <k-willis@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
> index cae04cce337366b50928d39b0c888550b14e43d3..02b1a1c76b2ee05d49cd69d199a6aacdb1973fa0 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
> @@ -359,3 +359,7 @@ &usb1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&usb1_default_pins>;
>  };
> +
> +&wkup_uart0_interconnect {
> +	status = "okay";
> +};

Reviewed-by: Dhruva Gole <d-gole@ti.com>

> 
> -- 
> 2.34.1
> 

-- 
Best regards,
Dhruva Gole
Texas Instruments Incorporated


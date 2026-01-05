Return-Path: <devicetree+bounces-251519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7421BCF3C59
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 50D49300A3CE
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC13A33E367;
	Mon,  5 Jan 2026 13:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Te/iOEKk"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010021.outbound.protection.outlook.com [52.101.85.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4621333E369;
	Mon,  5 Jan 2026 13:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.21
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619484; cv=fail; b=jVEDDwp+269UHVMleOaIjiY+9lGst/sqrB6JUmQAly1spF+za9dRczwXB6Kng3eQW5ROCmofEyO9WFXzbS2NjQsCE4OjHdzHVcVrGIcezSRHfUZ0iuFnl/Iqus8TGjApmL5xEElKVrw2nWQRqFpGyTkQn7vioHBpiIhlTRVEky8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619484; c=relaxed/simple;
	bh=o0Pf0TcuvfMlDfQtQmQ8daVikAe3CI6vSsma9CecVHI=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ckHmbCgG34FnZJmQNjt4piMydNHxAyPW3SEz5iG5z0tNJJy3NQ5d6CccgM5fiGCcLTzvru7ULvWAXz9AZDtpv9tYOdxCR6/zVqXueA2sFc93nT+Q4Y+eIbYDih0Nohx9gOM32qCs0REk7mZPE7TBSiaqurkrJPpfdiCwMao4td8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Te/iOEKk; arc=fail smtp.client-ip=52.101.85.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d6wMOkrUz6OhVhmcx4O8mOk5U0H6rveFwUhmbf18/jAL7PkdB5xe5O/jxO8y5VPAdAPfk7z1oMpBjGf+Pvj6hkcmXUmG1FLB4isCFg9AMa9PPrAlJakpBtyZbn64B68eva5eoi4k6FfLaQHP4SzHAt26Q35Bzbr3mZ4K0804PRcv/najSZ5nqauW71YHvfcLA88y6ZJfSofCx6SA/1apAinmq4uLhU8CNGqZCeovH2GQDY+XNRI8FFg2kl7KRnt+VfrvUEeFb5wAccKQpw+aWjd9IhW60odxXk4mRG/+kNuhE1UYfou0+s4Fl8LLLaXHn90f0iIt/7gXLZI6hsh4PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8RMmk7pRMkAVg32AAChPnnG8+wtqvFKOTK7mkH1DbN8=;
 b=W46d+n9b8kg93Byuo0/jBlIBQ8iDOp5cl9Z43BqHUPDY0OBzbVSP3gGRAt+8LJzfJ9IgwrhsuZXlIT321Ju2DlsGvVQsETkeZTE8a7+isbwE5Inq9FetbsDLB4wdHZXEsrZ1Cv/sPn02PTIlw+gEmhn0D8sWty7vjLQ/BDzEi4wTr5hubHhYiR/OgbNltkkuwBdvYR3J6YOttW7607xwYafKMYS9sX1fH0mflcceTVh84PuPnTdvbz0/Ti+xY8luG/6E6cN7rkB6mU9VLjni+2Vh7ga6iXc0+XkK6aV0uHSUzf56brcj7i1SHDSzdEoiR28CCyImnLz/9NQUrfDwOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8RMmk7pRMkAVg32AAChPnnG8+wtqvFKOTK7mkH1DbN8=;
 b=Te/iOEKkJRcMJuhZUo3CedaGNKn62I9AIRyPas5bjJk8CLoAV6Iqj6qjJeze2ii+R5EhgOP/OfmV+0IWGXY7MkGelBnAejh9QzsbqCaOIUJTxDjsjBUf+FUoUUUQNuvuf2hZdDVduTSfRq32GCtFQKsSL0wyRH5dPz5BPy1iAbo=
Received: from BY5PR04CA0022.namprd04.prod.outlook.com (2603:10b6:a03:1d0::32)
 by SA2PR10MB4522.namprd10.prod.outlook.com (2603:10b6:806:11b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 13:24:40 +0000
Received: from MWH0EPF000989E7.namprd02.prod.outlook.com
 (2603:10b6:a03:1d0:cafe::91) by BY5PR04CA0022.outlook.office365.com
 (2603:10b6:a03:1d0::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Mon, 5
 Jan 2026 13:24:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 MWH0EPF000989E7.mail.protection.outlook.com (10.167.241.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Mon, 5 Jan 2026 13:24:39 +0000
Received: from DLEE204.ent.ti.com (157.170.170.84) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 07:24:36 -0600
Received: from DLEE203.ent.ti.com (157.170.170.78) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 07:24:35 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE203.ent.ti.com
 (157.170.170.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 5 Jan 2026 07:24:35 -0600
Received: from localhost (lcpd911.dhcp.ti.com [172.24.233.130])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 605DOYRk1328049;
	Mon, 5 Jan 2026 07:24:35 -0600
Date: Mon, 5 Jan 2026 18:54:34 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Kendall Willis <k-willis@ti.com>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Bryan
 Brattlof" <bb@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
	<msp@baylibre.com>, <khilman@baylibre.com>, <a-kaur@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] arm64: boot: dts: ti: k3-am62l-wakeup: create label
 for target-module
Message-ID: <20260105132434.jhq33ew732z4vcej@lcpd911>
References: <20251230-wkup-uart-wakeup-v1-0-cd6e15f8d956@ti.com>
 <20251230-wkup-uart-wakeup-v1-2-cd6e15f8d956@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251230-wkup-uart-wakeup-v1-2-cd6e15f8d956@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWH0EPF000989E7:EE_|SA2PR10MB4522:EE_
X-MS-Office365-Filtering-Correlation-Id: 991b0ed3-3542-4675-4be7-08de4c5dc775
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?izxhyuV3lU8FnuJI9fgj8juytf3Q1u/CiPdoNjpYpJDyNMgCwjARvP6EQ0Vu?=
 =?us-ascii?Q?M4V+SpYu+aKXCFz0KarbkRtWdjPIItTbtyCnTPvRz0KTg6HUQ667yYDgb4Z6?=
 =?us-ascii?Q?n6sRVviRpqK8zJud34RITvKRTWziB8RRwCpMmlP8FTDacLEsECxm2SR94K3T?=
 =?us-ascii?Q?bjr9vQYFonTnEY1D9jyZeAqjPhIsR2WygoNc/EYLhYUDv6jM7Iht9NXyedBT?=
 =?us-ascii?Q?0S/2YD/ULgguGZLRRZVy+lZ2Q6aQLLbAnN/9afaeIpr+06pqm2VpSrbSxx5t?=
 =?us-ascii?Q?PAtNfpIBLaOsmHm+z8Vg6d9Y4SEXSsyB5Yh34yJnuyycRr8TT5kPhh+83m0p?=
 =?us-ascii?Q?4KEZo5cJNLvAbmHI6rOSAgyTvWEUgsvNjSgP48EwtzwS+ck0WCM7G2VI2Ivs?=
 =?us-ascii?Q?j44dX++0iPSh+AXlAUkNvjBeHLS3I6NlVl1Y/uImYLHQn7/eIKEqX4wR1n9u?=
 =?us-ascii?Q?pNaWbP3tgz5iEOP7CsW5LtlEb1fZGbuACl0lwzPcHIZnN2V/WbyKnsaOo4FN?=
 =?us-ascii?Q?BCtzibF/5QOEj40GlCgk4vMzrlDaxPkAnxSpSxN8LJwKdtJ6/Y3AZ02CuAsU?=
 =?us-ascii?Q?z9gdPbIoTkOUoSfKjjbfQclDi6Auslsa9ieAqnwrhXZKxJ1GDowCQA9xQgq4?=
 =?us-ascii?Q?kO0T8VQG2+6dU36c142INLSUk6uA37b+4/tGm4iSO5g16dCme5cslXrp0Ppd?=
 =?us-ascii?Q?qAJ0qcTmPMSzT0RlyaAtcbAG9Chaz9nYU7GtzzhyHKDrnwTnfRahmFrPvTFz?=
 =?us-ascii?Q?RvhaTZfg3W+DQ371kA38twLCbhQdjoHlGPBT3IjtxXM9wnTsu610ktjvlKvC?=
 =?us-ascii?Q?mqDroiR+dQOMwM9dWzE8QT1t87IqEH1nyM1uuYoLG6nudoJ3t5CNTOjBO8kK?=
 =?us-ascii?Q?5KMeuwe3/v02lH/OTta6bc6I8lQi64UsZ1UIBjxT+SdmUZAXy7iXCfmpnMR0?=
 =?us-ascii?Q?aPgUqOwcGjATkxh7lQfJrGl3qiO23lpL1RXTbVKCvekHHs76szbalrak7TwP?=
 =?us-ascii?Q?AC+DZTRDl0E+ZZ+/hd+dNek9bqcfIpt3BaMutlgnniswdmWIlHzyPMcrgsyK?=
 =?us-ascii?Q?wDzEiMCgHeCVHjgz+zoTxWdPi5/SZINNejwmBTnxTpT+/Y0HbzqOqW+dbH4w?=
 =?us-ascii?Q?W967H4NIiGbRxklohgUUJZUEPE87vRQ8jH5kpP+caBMmwfaJbr1fTcihvQnH?=
 =?us-ascii?Q?lOp/IAFT33a7QouaMIu8ijMulgGUn5jQyxKA4Pk/H0rCSDimibu6xPHIrg1Z?=
 =?us-ascii?Q?qAGzTDC3eAi4QTnTmJGNnOP0VicdTyX9SQQgXYtONpunkBh1yy6NMbtA/07b?=
 =?us-ascii?Q?UGjLs5oMhv0Vjda/0ep0I00fdbDFauh7Nb4Tb0StuVvD6fSE9gQWyEir+uNt?=
 =?us-ascii?Q?YJoRmxb7AKO9PdE7VhmhM08F4nyqQe0CUVv0MMq2FCyNBNzBfxDVOtsVtjJc?=
 =?us-ascii?Q?XWkgwhQOG5RuAeLVNoP9qlqhp/bGFtaj+zKKzo2w1HzrwFHx5JnUVUKY8WxJ?=
 =?us-ascii?Q?VAjDYVlS17AjIDgP3MEHYsgnIkRh6k5O5EYySMB0aSGyaH9Jp8KqaDgMIEnj?=
 =?us-ascii?Q?HQl8TImXZOTfgwZM0rs=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 13:24:39.4548
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 991b0ed3-3542-4675-4be7-08de4c5dc775
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MWH0EPF000989E7.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4522

On Dec 30, 2025 at 20:51:41 -0600, Kendall Willis wrote:
> Add label to the target-module node so that it can easily be referenced.
> The node specifically configures the SYSCONFIG related registers for WKUP
> UART.
> 
> Signed-off-by: Kendall Willis <k-willis@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
> index 61bfcdcfc66ea8d802a36ed43cd01fbbf3decc70..e9d638d9ffd3a52aa6e0df70f6003879bc292358 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
> @@ -81,7 +81,7 @@ wkup_i2c0: i2c@2b200000 {
>  		status = "disabled";
>  	};
>  
> -	target-module@2b300050 {
> +	wkup_uart0_interconnect: target-module@2b300050 {

Reviewed-by: Dhruva Gole <d-gole@ti.com>

-- 
Best regards,
Dhruva Gole
Texas Instruments Incorporated


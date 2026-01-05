Return-Path: <devicetree+bounces-251541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F006CCF3F6E
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:55:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2EC53010E4B
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCCEB2512FF;
	Mon,  5 Jan 2026 13:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="hOJ/hdmB"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010053.outbound.protection.outlook.com [52.101.201.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C38C298CC0;
	Mon,  5 Jan 2026 13:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767621329; cv=fail; b=IqxqHxSAvGEJhH6YHlPveyltb1bQFp00SfLtnZnN4l/UFaddPLZb+ZhHFS+n1kdNtUeomt+iC/kU3FET32QfVmvqGz5z5AA04byN9rqf2pHj2xeX0QitEsR4cJ15ubKoYhhHxK9NhqBsOMDcj2RLSIVZKOf8/eDEkV5XE8Enak0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767621329; c=relaxed/simple;
	bh=Q34mkFRfgYDNunrXG47prjr6sjsmijW6GBFqAXY/p9Y=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mnVwpH+IDKvT0R6i2CoFe6FYOy/xj0qk1mTEPqmRoxawNr2AuAEOguJ/FUnnZCr0GiUedn7a8droQ65N5sytIwWtKnE5GkCNtqxgPCOYbqVlsYleSjYyeE/zpK8IRobtF5KmfxgsL+YNI6j9iozRdLW8rF38/cXyXCNaQuifu40=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=hOJ/hdmB; arc=fail smtp.client-ip=52.101.201.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aB0vDuuoHLFnxMMy03Lja3XqtxTQzw/AujwZjWrmIe9xDoE1PLs3dDmQI+WGi0Gy+QbdGOy5YM2zQ/alNDmeP+nJPpWsYjvN3zke+nln55UOi6IAGvBg/MQ/gK0ZYCY6Bca5aQryp89NndfK6VSpzNXKZJM6BiQKtYxPNMi9QRn97oFI+f8OSAXIWYvkBUtY46Fs4oKFckOTjxp52UmtCRTafLyFfAGPXSeBKqhh1CbDEmDcklnlA43dBTg3TeGfLTcarPcSOpi05QsKUJEmUrsXPlTPX1BfO/3NSxy0KJ4RY3asvVdAgutKygLh4VX9esKesM+WKc/vdXnKBMziuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V6osNmVbSnZ3NQApZvWiwfyOnjou2PjgU5Vs20IO0gE=;
 b=vXqCD2Zy6QxMUUjXNy0vhRQQkpHqXzGN40KBngDLayhpGrhNvR/wkbdcAisOsQ83GWIcDeXO6pF2DF4sIgGKe1V8rRvgaLGm6jlvz5i6IPYr8lYOQ/F+fF1GHBI5dhKqyK+vmepDwnMhVV0wbLVZrazM9Mz083XyY+FJATdnHrux0s6YQKmHs5uAf3UMPBj9Rd4sJdKCVdR0ky3vryBzd6Tr47MCR/2aO1IaVylAbjV76sDblp1fk20Qz6zRTySc213bghdIqHb18H3oykElUC3EROobF5Tka3h0/zhrfuSky8obU5CCfxqYnQpnAYXuMd5BTjTIi/6lMpQ6cM5u8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V6osNmVbSnZ3NQApZvWiwfyOnjou2PjgU5Vs20IO0gE=;
 b=hOJ/hdmBqlARVzd4NF7zSVtXtrHtW6rWgRxneNh/7sA5eT/zr5/mUY3rZ32QKV4B8P077TysmSZX9MzqCx1/NHSl+emC0JQTWIxtpXlPMWsxrpZXIn4LhXz+B7CH+uPmD8xjvy5ei1DBHZjE6SyKKD3Alf9BnY3/BrAW8fDcoCA=
Received: from BN0PR04CA0136.namprd04.prod.outlook.com (2603:10b6:408:ed::21)
 by IA1PR10MB6897.namprd10.prod.outlook.com (2603:10b6:208:423::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 13:55:24 +0000
Received: from BN1PEPF0000468B.namprd05.prod.outlook.com
 (2603:10b6:408:ed:cafe::b7) by BN0PR04CA0136.outlook.office365.com
 (2603:10b6:408:ed::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Mon, 5
 Jan 2026 13:55:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BN1PEPF0000468B.mail.protection.outlook.com (10.167.243.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Mon, 5 Jan 2026 13:55:24 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 07:55:20 -0600
Received: from DLEE215.ent.ti.com (157.170.170.118) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 07:55:20 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE215.ent.ti.com
 (157.170.170.118) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 5 Jan 2026 07:55:20 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 605DtK6Z1361760;
	Mon, 5 Jan 2026 07:55:20 -0600
Date: Mon, 5 Jan 2026 07:55:20 -0600
From: Nishanth Menon <nm@ti.com>
To: Kendall Willis <k-willis@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>, "Bryan
 Brattlof" <bb@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
	<msp@baylibre.com>, <khilman@baylibre.com>, <a-kaur@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 3/3] arm64: boot: dts: ti: k3-am62l3-evm: enable WKUP
 UART wakeup from LPM
Message-ID: <20260105135520.rqnysf77ou2kggfh@shakiness>
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
X-MS-TrafficTypeDiagnostic: BN1PEPF0000468B:EE_|IA1PR10MB6897:EE_
X-MS-Office365-Filtering-Correlation-Id: c584e19d-d2ab-4f47-5610-08de4c621337
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|376014|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?9EJ1sbbfUCxI4NK3a+M1I4IrNoxg1bL812LtnZe9V+PyF9aWoatbTAFMUaYk?=
 =?us-ascii?Q?B+6fIca5eXvbJmU8lktSpARQSiOUKLzIKi9Uszak56KGNM0yG4PJuQbGKQln?=
 =?us-ascii?Q?1qgeHzseVHA55cil9Bq/RyG893cbQNjjZMSWQg/2VVcpwEg8JMCbbQQbN5B4?=
 =?us-ascii?Q?sl7GCgjPVbG4cEzYMemSIpBOQbYwbOnH8GR1Wu8vFOmOaCk5Of3xwoCXySdy?=
 =?us-ascii?Q?bNOvz3jJ6X6/RUGbSS5CFrN5otfop793w5O7tJcnDGVBSL4mUlS6/PCWq13H?=
 =?us-ascii?Q?lYpnBKpgwBOoMWuRvSzt0/UFHyZuKTdY3C8Gi2XLkY5VLbSJ7zgPodTypQrT?=
 =?us-ascii?Q?pZdLNWMjlmagSC55sQjb4ndqWMho8+ZxZ0sEngSqD0Ay35HOUzG/M0doBvNa?=
 =?us-ascii?Q?gKOuDFd+SPHhFeBXXPbaQPvQiOa8xurPMGMH+4loSoWFY6Au7S9tdNuT4FUA?=
 =?us-ascii?Q?aeLcOIcjK86QW9BVZqTcA3gcMKToJgtDehnJubDzljXdkU0Ht+1m8OE6tDsU?=
 =?us-ascii?Q?rk/elA4+viKTl6xMEMRUSGe1juLfdX0kiuUkpOHfJETDq5LWmVx7tCk/dK7A?=
 =?us-ascii?Q?7AfWrDkBzHMdDIYbeyr5sPupJ2fMAxuKMNrKmM7jrVXXOzkdLLlr2HkxTF0p?=
 =?us-ascii?Q?Ix20WLwhFXENz9qJukdLNt2T5MDjrUwevoYm1oH3vwFddoxdDKrlu9yj4R/p?=
 =?us-ascii?Q?hQOFtZY1SGJlScXmBpQCMl2gFpAhdCAOSwZ04qAD4e8gUSvwdSkwYgDuF+qi?=
 =?us-ascii?Q?vQN5ugu3sj3XTVneB9J1bsJJbaC57InXjLbN/hZN3WSyHKXR1SuGu7tXJVUO?=
 =?us-ascii?Q?ZMy07r83TDPZ30VBWmCFSl2TSI0xFUeMQrZ80P3/NkG8Y0VS2tevVCASGXrm?=
 =?us-ascii?Q?FakWywsOT7eNZ2LlWBINkA3ut2oZOcOKQboGHabaQlkRwzSOPHZDMOQORNI7?=
 =?us-ascii?Q?UtCGzqmvJRgoIIHuR4pygdUznNuIiWwyZH5gbunQYw8upQwwnXQfrwHJBYLY?=
 =?us-ascii?Q?MI0vbl4VKK2PLu8TYBeHhRB/7/IHWUHihakaDLNjp6WGBaveHtJ4FQk79MU4?=
 =?us-ascii?Q?+fxOLBrJPs1YiDzaGLMTJRnistTEVD93cdqqqfti2F6lL0uv69mdsxKdnno4?=
 =?us-ascii?Q?UNp/hCJIY3nFPd2Q6mw1ToAVczs5VJW2t41J/MEkYQysY42NePDI1y4hhp/A?=
 =?us-ascii?Q?gxm0UFPJPqpnakx1GCUOJE14+bQynBcsbFU998fgjusaC2sLoADT3uSIfMhI?=
 =?us-ascii?Q?WAHqrtnS/XhOZM4a0/6QGmU5jBXLxt/VLJKOWKHYZitoHMqQANLyJog65Pwu?=
 =?us-ascii?Q?HJETddAAPTgiVCFzrWxMD7gAwEDp7RVD0IRvYyRsreloYl/tfU53dGQ31V58?=
 =?us-ascii?Q?ukd/Eej5aXjibNyRuIcqeLfa577LOYvs1PromB+wIoKi5P0CRWX9KK9rD+MP?=
 =?us-ascii?Q?qOZ+WAkE3Yg+R3wKwgCwe0Ecu4L9aqnBZeQJLFx1HofNXacaWjxObrg/v9vq?=
 =?us-ascii?Q?KDa9Pp28q9euSq+yJ/5uzH2e4mzF9o8oYWoZkQ0RHYtIrmid8W+rtxI8xv+F?=
 =?us-ascii?Q?km16mYWs4mkDdXbbq3Q=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 13:55:24.4866
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c584e19d-d2ab-4f47-5610-08de4c621337
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN1PEPF0000468B.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6897

On 20:51-20251230, Kendall Willis wrote:
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

don't we need to set status okay and provide pinmux for wkup_uart?

> 
> -- 
> 2.34.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource


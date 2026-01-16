Return-Path: <devicetree+bounces-256018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F191D2FE57
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:52:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1573030BB854
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:48:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F48D362149;
	Fri, 16 Jan 2026 10:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="CKuK8zfI"
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012060.outbound.protection.outlook.com [52.101.53.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2016E3559F8;
	Fri, 16 Jan 2026 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.53.60
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768560501; cv=fail; b=seVHKkz++TwSEqDxXIjauNGQwD4Tb5QxSU6rcMDYopu3Q9LEAF4JPsAbRje59M4H1EiFsMbGaiYG9PuX8oxOfa2rFFk7fDMm6lVQN7Sk5P0LntRIR1lhH/UPEgA4inbBwQlo5D+7MX9uswXq6NyZFdJ7QEPPPF4qJlxHgZM3wIc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768560501; c=relaxed/simple;
	bh=V9zkodBZwV4xz+mYGdSmboEfZELyvB3WtAyYbzwys8s=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OTxrA6ez06qLn7l17X7C3MvqMmgsy/k2qYLNj+jDLCdw5RYOFJbG1bQp28J0FKNNAm4+lFMXcXn3XLahekvAAK9kaSyyyPVyQdU4GdI5gWt+8KhC1z34R0z4Y0m6cc5GGFtHyBRmzJW1daufdwCELu6Xx8SPMzvK2a86yzecv1A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=CKuK8zfI; arc=fail smtp.client-ip=52.101.53.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sZ/DhXyZcxL3LJT5JT3KX8KtqpCPNgkRyLdlHInaiR+GWrpcqQ55fVThEL1X/raOAg6WZnpUk91zOhIt2zrztv3jymUU+KKKyn0srGofytG/uK+bibfpNxgYatvfs9nxfiMHI9eHslw3KBAV6u3yFL3I/6cg+/RE0/52e+BQ95yjL+Kqa2c/YSxluuqM07qoTLohTItIuk+YXEeka5b4VRH8bTloP91oQcZBVrk1qJRnQgwtA6tzDtCcsBkFtb9zRi91AfvUBfsEzKj/OdTzjGd4GnReji447hTqaQiXtUFK8R+GMBY+UU6mPsaNTX4HCcDmFS6DL+nwJ3O8zD8bmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lx9T3rdTLx5sJsiTtAj5QhwXilcFSJevlJYThN3UrWk=;
 b=FbwM7FfUq5v8hOjGAgNqDdhYrQG4mwcAFAG7Q6ylJhmCOywzLenSwBtkalTIlfaTaES4vhRnxMexTeA5hGL3gLR/h8ZJ7vcLIbGUozXIw1jRMDWZOhwNPmN2PJoJd3zLFKZ6tG5ae+wrcV+jJ0B7EWQeUiiAO1BM8lyeWWfmAS2L1j1mGJXvzQM6ZozKe0XuNyPCBVPAefK5GIzcdq0F/JniO43Kw6nY2XjKvx0A9cRqYklnc0MncGaXKSrWG/kWFq4GcTsTSef/MPDHkjYEWjgtJC/vgt3PBlE7JOoYTeWrv/ZkKr0F3BdxqOk88s3o6ajuzBbMdIgbZb3vNc2jkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lx9T3rdTLx5sJsiTtAj5QhwXilcFSJevlJYThN3UrWk=;
 b=CKuK8zfI8JJ65vTEJfBLb2HXpaMkJX1EjFtmYZRmBKybnasedTUTjAK42xcqMeNllYZWdXmMjF7TMV2XLUCMN3snBO7lv89CwkwSmAovNRH8tGvt9yB3NCnmO+ysrKQI8vlUtGRWog/KOUIkJP9ALWTNlB613PhyqZY8pOC4fAk=
Received: from CH0PR03CA0316.namprd03.prod.outlook.com (2603:10b6:610:118::23)
 by MW5PR10MB5714.namprd10.prod.outlook.com (2603:10b6:303:19b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.6; Fri, 16 Jan
 2026 10:48:12 +0000
Received: from CH1PEPF0000A347.namprd04.prod.outlook.com
 (2603:10b6:610:118:cafe::e) by CH0PR03CA0316.outlook.office365.com
 (2603:10b6:610:118::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.9 via Frontend Transport; Fri,
 16 Jan 2026 10:48:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CH1PEPF0000A347.mail.protection.outlook.com (10.167.244.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.4 via Frontend Transport; Fri, 16 Jan 2026 10:48:10 +0000
Received: from DFLE206.ent.ti.com (10.64.6.64) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 16 Jan
 2026 04:48:10 -0600
Received: from DFLE204.ent.ti.com (10.64.6.62) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 16 Jan
 2026 04:48:10 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 16 Jan 2026 04:48:10 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60GAmAOe3158640;
	Fri, 16 Jan 2026 04:48:10 -0600
Date: Fri, 16 Jan 2026 04:48:10 -0600
From: Nishanth Menon <nm@ti.com>
To: Anshul Dalal <anshuld@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
	"Dhruva Gole" <d-gole@ti.com>, Manorit Chawdhry <m-chawdhry@ti.com>
Subject: Re: [PATCH v9 2/2] arm64: dts: ti: update compatible to ti,am654-sci
Message-ID: <20260116104810.u2pd3qsieuumcuyn@manpower>
References: <20260116-k3_syscon_add_boot_mailboxes-v9-0-6358cd1f2b1f@ti.com>
 <20260116-k3_syscon_add_boot_mailboxes-v9-2-6358cd1f2b1f@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260116-k3_syscon_add_boot_mailboxes-v9-2-6358cd1f2b1f@ti.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A347:EE_|MW5PR10MB5714:EE_
X-MS-Office365-Filtering-Correlation-Id: 68d54616-3a0b-4ae8-50ad-08de54ecbdfa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|34020700016|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Wr2SIXVNc2ACbVfUE+A2w9d3WVNHV9QH8no8F51L9AM9i1r815siRPrbGdH2?=
 =?us-ascii?Q?B+nFY6up6bDHL839LKg31UwLfPt1BJjAtExpRWowi65xcS/BAX5nL5f5lzBW?=
 =?us-ascii?Q?XsqbSG123sF4zKYWq+sZ6Qkrycw/r6AGOlLXaRORuFXT8SN10/8T+b2MxuTE?=
 =?us-ascii?Q?OgfZPAxCJv5zqQefAcGo+GQ6VrCMIE82WKseGgf21Cl7G5WzCsk+JHzcEu1X?=
 =?us-ascii?Q?dH8PtYoB0IS8EuzkJ6YofbXnZQudnXgDucuRVi9U2cbhE18T1t8KLrb666L6?=
 =?us-ascii?Q?22WSNcFPu7DXg0faAJO4FyUtoeve7DGgvXt3ORfnAxrxxhXlGWPjZd8jLfH0?=
 =?us-ascii?Q?OdzMYirf4prkc1cdSk5scwUz+MADXvvSQlKuXY0Aj4JrEts3gbjWAlRPJ5Kl?=
 =?us-ascii?Q?hdc19czJMgTEmR704sJmTgAJwBxs808cPa0yqgz/07F3MayNWm3UNHF0r25K?=
 =?us-ascii?Q?K5qa5g7AGjPaGsgosTbpSxlNTSqfVNbRDXi+ZbJMVa2tgAR0L5L97DhLhVp1?=
 =?us-ascii?Q?AKcNiv8bb1FFU6CtRUXurCvmPU1PuqiC/tdZdTRsr2HiED9nHRTqnP8Uc3EQ?=
 =?us-ascii?Q?JgD9p5uxahSDaV2MA9lF1S2DrAughukoXb8m/SxLKCBcGzBp8NMhIWFb9Zws?=
 =?us-ascii?Q?Tkmb6317r6N7+9ngDvFe6D2km/0pfCr5rSmWh1tbv5qxR42ozG5YHK2++Xkj?=
 =?us-ascii?Q?4UjmeNhYrCDpuP5ugwUidb6faRSH9Fd7MymFquhBeRTReHIUjJoHuLFKDw60?=
 =?us-ascii?Q?jlxGFOkdCT9El3qbLb8iAJaEsigSGJ9zBZQ6HdNF1ihb/GagFujBTrVV9Q2z?=
 =?us-ascii?Q?20YMbRWdsVXrIujgMx5b7F1Y4EUuqzm6CF+A6cBFAC3E0F9iTMjs0bpKfLJQ?=
 =?us-ascii?Q?WCvPHNzkzTAbWNhjWEZrYB3o3QFBhmw/+vq6DzyW3XjNZQtN4959iIyAQn9g?=
 =?us-ascii?Q?bA2nsM1CSV0o3ShOfUYmBQ16Su7hcWKxKTdXtQyzv3zo3QRu//zHJAKcqqIq?=
 =?us-ascii?Q?5gqQdgkoSI4Yv1XyI7ZiPMonouQwuJHK8ytryNiPmw6Mk+Zin5cCKnvid/p5?=
 =?us-ascii?Q?AXaDyWcaFKwbG4hnBckTNDF4GnmtjaaLk0FYFJyuWZHF2v5oALKBjQ6W3P0t?=
 =?us-ascii?Q?G7hzy6o5It4TCLopAo/DjmLG8Ms3rwHn3QgfYrvvnwhjojd1Yk6fUEYrnIPl?=
 =?us-ascii?Q?zF+GCJi35pEh6iV/mXkUaYtMQspWpE6DZJW5ZhyEEIsEZ4gNeWupRpfdffYu?=
 =?us-ascii?Q?Uw5NlCv5ugMMzgjlZAxluNuqKbncNO0/d97ZEZGzexm5DfvcAX11VD4pk83A?=
 =?us-ascii?Q?ju+cRHWUGilbQ8jUwqhrE1e6yaup4hc3VUwZAa8cx8gZQnsOFJs+/KFRkRMU?=
 =?us-ascii?Q?3N9dQ2ihM60WDv/TCRcSH7U3arZAIcFgMv2BR81IH9rCcEnWmr/ynm7fM3ZK?=
 =?us-ascii?Q?Ea+xKM6rA/rNFJOwPIlWSi1j8Lru8/jCXK+c3PT2a14i9CdsKd8gpsxmYmAv?=
 =?us-ascii?Q?ihLrZCbmax+VVFW5mZ3caV3+2b8U0VFMbFJ3YguAYcL34qu45Bfgi3liO2Pd?=
 =?us-ascii?Q?QHH1vX1ybOnrwkDD07q1ASMruEGUKaB/o6mdLsu+ou1lFDIkNdvHJP7ehg5D?=
 =?us-ascii?Q?vXPUTeFLLW7WGkODeCh0JMuB/HJk8gFbIwrkTSOQsS4swxMC1FKAi0LMq60Y?=
 =?us-ascii?Q?eXrHuQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(376014)(34020700016)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2026 10:48:10.8554
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 68d54616-3a0b-4ae8-50ad-08de54ecbdfa
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH1PEPF0000A347.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR10MB5714

On 15:45-20260116, Anshul Dalal wrote:
> K3 SoC's use a different architecture to ti,k2g-sci so update the
> compatible to reflect the same while also adding the missing boot_*
> mailboxes.
> 
> Signed-off-by: Anshul Dalal <anshuld@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62-main.dtsi                       | 9 ++++++---
>  arch/arm64/boot/dts/ti/k3-am62a-main.dtsi                      | 9 ++++++---
>  arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi         | 8 +++++---
>  arch/arm64/boot/dts/ti/k3-am64-main.dtsi                       | 8 +++++---
>  arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi                     | 6 ++++--
>  arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi                | 8 +++++---
>  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi                | 9 +++++----
>  arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi               | 9 ++++++---
>  arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi | 9 ++++++---

Split this into two patches at least:
a) tda4 arch devices -> with notify
b) am62 class devices without notify

All should have boot_notify, no?

Will also be good to point to reference docs where these came from.

>  9 files changed, 48 insertions(+), 27 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> index c5ee263d34a6..c790fc643c4b 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> @@ -181,11 +181,14 @@ main_pktdma: dma-controller@485c0000 {
>  
>  	dmsc: system-controller@44043000 {
>  		bootph-all;
> -		compatible = "ti,k2g-sci";
> +		compatible = "ti,am654-sci";
>  		ti,host-id = <12>;
> -		mbox-names = "rx", "tx";
> +		mbox-names = "rx", "tx", "boot_rx", "boot_tx", "boot_notify";
>  		mboxes = <&secure_proxy_main 12>,
> -			 <&secure_proxy_main 13>;
> +			 <&secure_proxy_main 13>,
> +			 <&secure_proxy_main 0>,
> +			 <&secure_proxy_main 1>,
> +			 <&secure_proxy_sa3 0>;
>  		reg-names = "debug_messages";
>  		reg = <0x00 0x44043000 0x00 0xfe0>;
>  
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> index 9e5b75a4e88e..af459ed3d4ff 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> @@ -214,13 +214,16 @@ main_bcdma_csi: dma-controller@4e230000 {
>  	};
>  
>  	dmsc: system-controller@44043000 {
> -		compatible = "ti,k2g-sci";
> +		compatible = "ti,am654-sci";
>  		reg = <0x00 0x44043000 0x00 0xfe0>;
>  		reg-names = "debug_messages";
>  		ti,host-id = <12>;
> -		mbox-names = "rx", "tx";
> +		mbox-names = "rx", "tx", "boot_rx", "boot_tx", "boot_notify";
>  		mboxes = <&secure_proxy_main 12>,
> -			 <&secure_proxy_main 13>;
> +			 <&secure_proxy_main 13>,
> +			 <&secure_proxy_main 0>,
> +			 <&secure_proxy_main 1>,
> +			 <&secure_proxy_sa3 0>;
>  
>  		k3_pds: power-controller {
>  			compatible = "ti,sci-pm-domain";
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> index 3cf7c2b3ce2d..5037efd73d8b 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> @@ -212,11 +212,13 @@ main_bcdma_csi: dma-controller@4e230000 {
>  	};
>  
>  	dmsc: system-controller@44043000 {
> -		compatible = "ti,k2g-sci";
> +		compatible = "ti,am654-sci";
>  		ti,host-id = <12>;
> -		mbox-names = "rx", "tx";
> +		mbox-names = "rx", "tx", "boot_rx", "boot_tx";
>  		mboxes = <&secure_proxy_main 12>,
> -			 <&secure_proxy_main 13>;
> +			 <&secure_proxy_main 13>,
> +			 <&secure_proxy_main 0>,
> +			 <&secure_proxy_main 1>;
>  		reg-names = "debug_messages";
>  		reg = <0x00 0x44043000 0x00 0xfe0>;
>  		bootph-all;
> diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> index 1b1d3970888b..ab105fc1f718 100644
> --- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> @@ -209,11 +209,13 @@ main_pktdma: dma-controller@485c0000 {
>  
>  	dmsc: system-controller@44043000 {
>  		bootph-all;
> -		compatible = "ti,k2g-sci";
> +		compatible = "ti,am654-sci";
>  		ti,host-id = <12>;
> -		mbox-names = "rx", "tx";
> +		mbox-names = "rx", "tx", "boot_rx", "boot_tx";
>  		mboxes = <&secure_proxy_main 12>,
> -			<&secure_proxy_main 13>;
> +			<&secure_proxy_main 13>,
> +			<&secure_proxy_main 0>,
> +			<&secure_proxy_main 1>;
>  		reg-names = "debug_messages";
>  		reg = <0x00 0x44043000 0x00 0xfe0>;
>  
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> index d62a0be767c8..98608793fa22 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
> @@ -10,10 +10,12 @@ dmsc: system-controller@44083000 {
>  		compatible = "ti,am654-sci";
>  		ti,host-id = <12>;
>  
> -		mbox-names = "rx", "tx";
> +		mbox-names = "rx", "tx", "boot_rx", "boot_tx";
>  
>  		mboxes = <&secure_proxy_main 11>,
> -			 <&secure_proxy_main 13>;
> +			 <&secure_proxy_main 13>,
> +			 <&secure_proxy_mcu 5>,
> +			 <&secure_proxy_mcu 4>;
>  
>  		reg-names = "debug_messages";
>  		reg = <0x44083000 0x1000>;
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> index dc5c02a025f8..a185aeb0ae2e 100644
> --- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> @@ -7,13 +7,15 @@
>  
>  &cbass_mcu_wakeup {
>  	dmsc: system-controller@44083000 {
> -		compatible = "ti,k2g-sci";
> +		compatible = "ti,am654-sci";
>  		ti,host-id = <12>;
>  
> -		mbox-names = "rx", "tx";
> +		mbox-names = "rx", "tx", "boot_rx", "boot_tx";
>  
>  		mboxes = <&secure_proxy_main 11>,
> -			 <&secure_proxy_main 13>;
> +			 <&secure_proxy_main 13>,
> +			 <&secure_proxy_mcu 5>,
> +			 <&secure_proxy_mcu 4>;
>  
>  		reg-names = "debug_messages";
>  		reg = <0x00 0x44083000 0x00 0x1000>;
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> index d5e5e89be5e9..21cc01ab9dba 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> @@ -7,14 +7,15 @@
>  
>  &cbass_mcu_wakeup {
>  	dmsc: system-controller@44083000 {
> -		compatible = "ti,k2g-sci";
> +		compatible = "ti,am654-sci";
>  		ti,host-id = <12>;
>  
> -		mbox-names = "rx", "tx";
> +		mbox-names = "rx", "tx", "boot_rx", "boot_tx";
>  
>  		mboxes = <&secure_proxy_main 11>,
> -			 <&secure_proxy_main 13>;
> -
> +			 <&secure_proxy_main 13>,
> +			 <&secure_proxy_mcu 5>,
> +			 <&secure_proxy_mcu 4>;
>  		reg-names = "debug_messages";
>  		reg = <0x00 0x44083000 0x0 0x1000>;
>  
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> index fd01437726ab..81d352d7912d 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> @@ -7,13 +7,16 @@
>  
>  &cbass_mcu_wakeup {
>  	sms: system-controller@44083000 {
> -		compatible = "ti,k2g-sci";
> +		compatible = "ti,am654-sci";
>  		ti,host-id = <12>;
>  
> -		mbox-names = "rx", "tx";
> +		mbox-names = "rx", "tx", "boot_rx", "boot_tx", "boot_notify";
>  
>  		mboxes = <&secure_proxy_main 11>,
> -			 <&secure_proxy_main 13>;
> +			 <&secure_proxy_main 13>,
> +			 <&secure_proxy_mcu 5>,
> +			 <&secure_proxy_mcu 4>,
> +			 <&secure_proxy_sa3 5>;
>  
>  		reg-names = "debug_messages";
>  		reg = <0x00 0x44083000 0x00 0x1000>;
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
> index cc22bfb5f599..3f0cef544ca8 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-mcu-wakeup-common.dtsi
> @@ -7,13 +7,16 @@
>  
>  &cbass_mcu_wakeup {
>  	sms: system-controller@44083000 {
> -		compatible = "ti,k2g-sci";
> +		compatible = "ti,am654-sci";
>  		ti,host-id = <12>;
>  
> -		mbox-names = "rx", "tx";
> +		mbox-names = "rx", "tx", "boot_rx", "boot_tx", "boot_notify";
>  
>  		mboxes = <&secure_proxy_main 11>,
> -			 <&secure_proxy_main 13>;
> +			 <&secure_proxy_main 13>,
> +			 <&secure_proxy_mcu 5>,
> +			 <&secure_proxy_mcu 4>,
> +			 <&secure_proxy_sa3 5>;
>  
>  		reg-names = "debug_messages";
>  		reg = <0x00 0x44083000 0x00 0x1000>;
> 
> -- 
> 2.52.0
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource


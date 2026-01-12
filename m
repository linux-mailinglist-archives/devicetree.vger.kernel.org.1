Return-Path: <devicetree+bounces-253663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C80ABD103D9
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 02:16:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87443301E910
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 01:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B8C1DF271;
	Mon, 12 Jan 2026 01:15:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022119.outbound.protection.outlook.com [40.107.75.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE97B672;
	Mon, 12 Jan 2026 01:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.119
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768180559; cv=fail; b=lXdfjog8X7/XxpNUjO5kCQIkkACFW4AfwZbtdW9JA0kVl4+jepEhf0WIIv3ZzX85wmab5ZGait0wvr7iHkGZR9hRsnbBmz58muStduSURQjfytSr0oTNAAfzLHqIJBO2NVgDKGctTwGba5V1jzxQ3mkjI0GZRGrxUpwxdgd+1Ys=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768180559; c=relaxed/simple;
	bh=v7Llgve2QM97VVFV1kakslNyTUU+rVOIjqkWXCqVK5k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hX0nlZ2+uCvMqoXap4A4GGiGy7YMgz/1X+UtI6onFdUP1qutNqOoDHJVzESsTaNB2hz1GyA0kLMc51+RvC0ev/8Ah9I37J6BpV/R+fH3uPDOnF1UD6iAlQh8ZqYmczrRo2JRxDyDnMZom0Qs3vRa/9+bM5MHCCp9El5faFr9+Zk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gGAsm/DrKWiTEjmwF6kyV8Zksj+eOaVp05nGJxOpIhYv6hvuSpMVmk6AFvWrNYIG/5XjuyRVyPCdNUj35n0MhaaDileuvI6SfA3jBXSXB59kJEmtOQrlim4qpp+mjlz1883k5QdRljt5vI7HmktM4qDPzdrH6VxHZlhN/4nK3SqNlwGfI+ukshHawOqA7VWVvxwACOlMCtqay101eAiMXgy0+PgB+TXmRcxILltQBLyLYySy2RRxKHrbldWFYmhbZ+O+I1Eg1GO8WkhdorNY/gvyd0qb17at+WAzvZaZvEEDMhipTt9AedkgfKcjKaBpSgVjssSFa/fHD+iPEy4n6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gfq4qlFfEQWI3Ixjsaa1OGUlPoU7yknft4HxQtVU/+E=;
 b=XdVhew/J4uFO4LKnDQ4HJG3yjzL2/kY51NKhp1MDznFsmuaGanZdHhzqeaKFvcYdj5mtquBYj2xDIQzSwfGICJwEz51Z3cXHTikuM7/WnKFLctRkGLltcFFsr3JMMxje5+7NmTIXtXj36j3SEmWzL/46WBsiCv0kAarMDz5QEzEEOwAzph1xDPv2jS8IQliMDv4J5o6v4AbA2V+wNy1keOD7r39kw8+VH70nfSixj75SstvHgLl4oxGoRYNgZbHD6QeD7zSBhsByzjpxI6EyD/rRGVx9tjTIeXBiF4RNRRajkVFEX9BNa2B7+N1jTzCWZbClAG7X6qkH+oSmS3915Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR02CA0094.apcprd02.prod.outlook.com (2603:1096:300:5c::34)
 by TY0PR06MB5233.apcprd06.prod.outlook.com (2603:1096:400:21b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 01:15:54 +0000
Received: from OSA0EPF000000C6.apcprd02.prod.outlook.com
 (2603:1096:300:5c:cafe::80) by PS2PR02CA0094.outlook.office365.com
 (2603:1096:300:5c::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.7 via Frontend Transport; Mon,
 12 Jan 2026 01:15:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000C6.mail.protection.outlook.com (10.167.240.52) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Mon, 12 Jan 2026 01:15:54 +0000
Received: from nchen-desktop (unknown [172.16.64.25])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 3AF8E40A5A1E;
	Mon, 12 Jan 2026 09:15:53 +0800 (CST)
Date: Mon, 12 Jan 2026 09:15:52 +0800
From: Peter Chen <peter.chen@cixtech.com>
To: Gary Yang <gary.yang@cixtech.com>
Cc: <fugang.duan@cixtech.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <cix-kernel-upstream@cixtech.com>,
	<linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 2/2] arm64: dts: cix: Add OrangePi 6 Plus board support
Message-ID: <aWRLSNke_flVURY6@nchen-desktop>
References: <20260110093406.2700505-1-gary.yang@cixtech.com>
 <20260110093406.2700505-3-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260110093406.2700505-3-gary.yang@cixtech.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000C6:EE_|TY0PR06MB5233:EE_
X-MS-Office365-Filtering-Correlation-Id: 385c1085-209d-4a0b-6b21-08de5178223a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?GU8U6pp+6PFUPA14FfFIdh4I8hcYYkzlmCBMb8q/WMdvkr9GvwHkm+87Jdk+?=
 =?us-ascii?Q?4agN/bmOKM0bXY3yEDrYzzY2xVGWE/Ba9goQBHuvqZVTv70VeAfBlp5e25a3?=
 =?us-ascii?Q?vKOhIky2toFtJ0lRkzxprvo2+zDOwtlwELg/T037aED2/1G/ThCdUWGS/gsX?=
 =?us-ascii?Q?zi3yk/tKVoCjBRTbC6EbAhp7DmZJoJmBWku+i50aa+XBTHnV6cFNIeq+HNoz?=
 =?us-ascii?Q?2Q5EPt3QJBwUbQcEa5wz1mWqdxlJsly0cANaaazYUccIBIEyIkAwXSbXsvmY?=
 =?us-ascii?Q?RXheagE6SiE5BktSoC9F7ZUP3IldBRYtzxJ0ICNtqdJcjwQqMEncjqw6tHrY?=
 =?us-ascii?Q?KHc+6JoeekCvEv4MTPU8O677EO0jGVCG2iE5RhpBnPkjVRHaBz7rz7VsW6cN?=
 =?us-ascii?Q?mMV5umpkIC08Yb+uPVL3IcurLPhaipvDJH9Yi+bef8foibtHxGPGqDtviZAr?=
 =?us-ascii?Q?PE3uksvexeTaLnZN1qQPM+UajJ66XnPYyJ3Q02mgaZiztWugi/Ay0dq7Eva6?=
 =?us-ascii?Q?CeSuufysScMuMki5I36S4eyO+appc3F+Q+cy4O2qQhdl/SvktFG/3+aOovQX?=
 =?us-ascii?Q?TgWCCQ9L4mUG+8EfKWndPnI8FmLa+VHZ2lFs4B5JmmH0IoSWaxhe4phNxa22?=
 =?us-ascii?Q?Q7cE4i8O4y3MEIyRgBDyFjrMHCEASrfQuY3gkK3TsFAtJfmsKs+dpNqhTleF?=
 =?us-ascii?Q?x3dzTL0u0JyAv3K1vqiXI9VYcYEgLuW1hMgUwrJ+2019hAxGcjdPNOuo826S?=
 =?us-ascii?Q?GalQBKS45X8Ks14wiMRfVxnz7cT0fAb7srZP00n+7N4+KFZDvcfepKuPiDsB?=
 =?us-ascii?Q?C4mDbW9jRLTCXRETR0ogx1qTWsjiq+2BNEZ5HxxOVXW7gIeUon1fRKF/X8I9?=
 =?us-ascii?Q?kHylIErQE6mosotVew804ayoO7EK8V9MYoG5l0lOWRSBr7RhTAnVer/FY0B7?=
 =?us-ascii?Q?fxSEts9Ko2HGq9okjM3RrVRHFW2AObFi5+6Ro+DmmPyFeAKEMlcK6iNMMoEp?=
 =?us-ascii?Q?vl0g1kPXwbU9Et9vq58ELCTVaPHFqwhkfDI8ge/RSi7QltCp6P+Sd7hzjHjB?=
 =?us-ascii?Q?umf8vLDUUF5VXSpEYITO7AksOaHKX3EjhODjqRcxmTCDBIdSJxpnFLV7ci4X?=
 =?us-ascii?Q?KrOvF0U4khrwY8zKKZ83fuI1AAd323/obhMMbvh/fMvN85lrSDlRIGpEDUW5?=
 =?us-ascii?Q?w8oJ7ekjoR0R76FX4y3pdFd3S7EpBOIZAFLKEMclxwevNRXDu8CLFvibQmgw?=
 =?us-ascii?Q?5QNVtecU4WXDthPQqz54P79Mx6w7uf0MpiVb0scqBg/pxT5FYxhZzMjLDGqE?=
 =?us-ascii?Q?SgGwSBNdfYtJlJ0fxNYqM+mWI+iTkXb5hRHaXc61OBP8PeFJ+bmoBbAPzWIq?=
 =?us-ascii?Q?HxWZgEuPyLhIoHuKNhMKnCaVQGhjbY/sz4koG/ADz/LdtboP/EA2lY2kJAXU?=
 =?us-ascii?Q?6pr4DgTN6WaHgihMbVpVVJR3UnnV8R08zEo7X4Wm2PbTY/E4CNu3f4NjmIdU?=
 =?us-ascii?Q?+RccHEOINygKE6t0GoTZhRYh2SPAmt5M/azATBypURMUCseRok3Qm+h7TMyd?=
 =?us-ascii?Q?LYp/y6s21BY4NYSaMjg=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(376014);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 01:15:54.2704
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 385c1085-209d-4a0b-6b21-08de5178223a
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000C6.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5233

On 26-01-10 17:34:06, Gary Yang wrote:
> OrangePi 6 Plus adopts CIX CD8180/CD8160 SoC, built-in 12-core 64-bit
> processor + NPU processor,integrated graphics processor, equipped with
> 16GB/32GB/64GB LPDDR5, and provides two M.2 KEY-M interfaces 2280 for NVMe
> SSD,as well as SPI FLASH and TF slots to meet the needs of fast read/write
> and high-capacity storage
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>

Applied, Thanks.

Peter
> ---
>  arch/arm64/boot/dts/cix/Makefile     |  1 +
>  arch/arm64/boot/dts/cix/sky1-xcp.dts | 83 ++++++++++++++++++++++++++++
>  2 files changed, 84 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/cix/sky1-xcp.dts
> 
> diff --git a/arch/arm64/boot/dts/cix/Makefile b/arch/arm64/boot/dts/cix/Makefile
> index ed3713982012..8a6c6fdc4ec0 100644
> --- a/arch/arm64/boot/dts/cix/Makefile
> +++ b/arch/arm64/boot/dts/cix/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_CIX) += sky1-orion-o6.dtb
> +dtb-$(CONFIG_ARCH_CIX) += sky1-xcp.dtb
> diff --git a/arch/arm64/boot/dts/cix/sky1-xcp.dts b/arch/arm64/boot/dts/cix/sky1-xcp.dts
> new file mode 100644
> index 000000000000..1fae52dc9bb0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/cix/sky1-xcp.dts
> @@ -0,0 +1,83 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright 2025 Cix Technology Group Co., Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include "sky1.dtsi"
> +#include "sky1-pinfunc.h"
> +
> +/ {
> +	model = "Xunlong,OrangePi 6 Plus";
> +	compatible = "xunlong,orangepi-6-plus", "cix,sky1";
> +
> +	aliases {
> +		serial2 = &uart2;
> +	};
> +
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			reusable;
> +			size = <0x0 0x28000000>;
> +			linux,cma-default;
> +		};
> +	};
> +
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	pinctrl_hog: hog-cfg {
> +		pins {
> +			pinmux = <CIX_PAD_GPIO144_FUNC_GPIO144>,
> +				<CIX_PAD_GPIO145_FUNC_GPIO145>,
> +				<CIX_PAD_GPIO146_FUNC_GPIO146>,
> +				<CIX_PAD_GPIO147_FUNC_GPIO147>;
> +			bias-pull-down;
> +			drive-strength = <8>;
> +		};
> +	};
> +};
> +
> +&iomuxc_s5 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog_s5>;
> +
> +	pinctrl_hog_s5: hog-s5-cfg {
> +		pins {
> +			pinmux = <CIX_PAD_GPIO014_FUNC_GPIO014>;
> +			bias-pull-up;
> +			drive-strength = <8>;
> +
> +		};
> +	};
> +};
> +
> +&pcie_x8_rc {
> +	status = "okay";
> +};
> +
> +&pcie_x2_rc {
> +	status = "okay";
> +};
> +
> +&pcie_x1_1_rc {
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> -- 
> 2.49.0
> 

-- 

Best regards,
Peter


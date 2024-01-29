Return-Path: <devicetree+bounces-36402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D107840E65
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:16:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 950B11F270E6
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A03715F325;
	Mon, 29 Jan 2024 17:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="kG4CHf8D"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2048.outbound.protection.outlook.com [40.107.6.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6472D15B964
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.6.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706548277; cv=fail; b=UTacSqFgwnFY7npCA7zijCkQR4pTGX/4nnpPm/aTSauBCKet5N4672XZRuXUygGf9df9lOVqhALOkcgIlA+W1LFrO2ftE7cZNIVa1oy0kgvMsYZ/XEacnHUbhhPvjUZ2w3/OEjk9RXcGRi9wrMzmsAoTER4oNbzQPz2r2EXPGK0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706548277; c=relaxed/simple;
	bh=U5chcostB0KfGZEqUkF5sj+4SLUtAph6Rq9qzZsvfE0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=A/EbabzxO1ZGhQ+v5FSfjyp9z8CfIdDRkcoGrI11zq6zSOaWAYf/p0O8Tjh62NYMZn8kSpKXmnoJZGoYIa7NIraPghZH9V3SayYjISIDvo5u7ZOne2E3ltDrTY1DsBPXw1U7Q2cnEF4xrI8RNMon6ZqaGgpHPGD00iMdRljZaMU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b=kG4CHf8D; arc=fail smtp.client-ip=40.107.6.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0SncvBBxJCEJyq6sqbbGgc9HEVOJsH41IKUtTBP8DmF1NIGcrjEIdaRTCSoAb6mtBVYrS8AuHZllWz4t9T32f13ywvUSI1Q/5kT9oXDk8MObLBh4wamHQHn/I3G9sXNR8x+aDfae2do70a26xMO2UjODhil3lYBFlm+/RgjpkbeJYh8QK/qodpq1bjtenqvu01dzhMZcMzc05c9qMILpZmaMgFQ4YlejsC0ywWXkKzLWCYCG4ZTeJ1qqwOixxGs/4WUiI4sblBc1opmUKtEgLxXKOdCZNjDKM5dWePuL7h5XiEE+iYC1qvxhl29crdxDV6g4LF1BlpaAFAUNEStxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Cu9Z4jP3JsO/+2WLJfpL+wdrHEQTj06IfdatjLSfvQ=;
 b=Dx7xzvhteTCJrMmTDIjyA7nN9oehtuHFBmqFBROg1WLHsACIsB/n0OWt7XNi2gGg3TIttkPu/5fMvzF5YEgSFd1wH08q25Y5f8AyUmQ+O6Ys49AQJeO8tpRmxXQEYdPm9oyhY172g+SGiqSnR3l26yGMPVneiPbHYrhET/d+6HukLiFMD91hzue4bkDFT2tte65fs3Z36BkYWzCkQ+46MqwdTdjXbxmCbXVKRG1CytPopepDwyBOVfiWMgno2Hq8FINo1X3+0ztV67rJmg22c10P7qvbXEqbaq2q3KxauwGYh80rVjXsCT3tHQ5pVe3CZHIlwMd1NcLgBTes00KnzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Cu9Z4jP3JsO/+2WLJfpL+wdrHEQTj06IfdatjLSfvQ=;
 b=kG4CHf8DUSqaFNvAe753syvEW9LCtOiTAbbRN6vJn4lIOt2bSbLDpS2g+djRrsK+VC/1C0CWJ/gYZJRU1NFnEMxsEUzvQjGbWwesn5XENGy+1Dv9Cme+X08xHueUyD4loBj4Y6RaNIptu2dq+dekC5ax1n4A7E1dlNZmYu7yfbE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by AS8PR04MB8262.eurprd04.prod.outlook.com (2603:10a6:20b:3fa::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 17:11:12 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::c8b4:5648:8948:e85c]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::c8b4:5648:8948:e85c%3]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 17:11:12 +0000
Date: Mon, 29 Jan 2024 12:11:05 -0500
From: Frank Li <Frank.li@nxp.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8qxp: add GPU nodes
Message-ID: <ZbfcKexVB0ThCJEO@lizhi-Precision-Tower-5810>
References: <20231218142312.3175828-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231218142312.3175828-1-alexander.stein@ew.tq-group.com>
X-ClientProxiedBy: BY5PR17CA0070.namprd17.prod.outlook.com
 (2603:10b6:a03:167::47) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|AS8PR04MB8262:EE_
X-MS-Office365-Filtering-Correlation-Id: e700ca0d-8a7f-4fc3-20f3-08dc20ed4b28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	m9KDG6m/hKSQ12gOgBzvBhoSR3WB5mJegrTzO6bTpThmuROU75sBsh6og9OUqbF67AJTtwnzuDF4epgDUkBw0tv6BwEcSBygMGgvdm/5AoVpzunXGCTAS/TXTMdLEORVeFYJnI2VMMg+U6CumfiXHPd5w4ZYrTOeXV26Cuk2iDP1srMYwe9i/dSUNsxo1up8wOWrzqwFh3OhG8quaPd1ImV4luVFa2HIJ7Aj/PyMnenH1jibkpqnQ21mofet7P910udqEVvDMl33ztxMoVaAZR2AWuiVOPqe8qppSzYmVG5zxk/RiF/4zVPXi6YfgzbuaEx/Z2Kt3q5h9Ef04prNIJHJ+qVhavSf4S6xSNg/ECj7yW6zgC7FpQpR4oDNbiUgAjMr0evqeiD2XbWfSIoEIq7E1RKHDFMk+PITD7IRL5vyl0WVcJaIhAH965F/vB7bYN+DMUJIVdc6Z6sQT2Mob+o9L0CPChkqpnkiYpunoVAfcKl8x276S8axB2v/KmVHAdCgWpC1FOtmIn5EPNziX378XgULO7A4C3yZ4FepIfwaM+0FO4CDJqT4ofEGZPC0qIwAUn5NxQbkWAMYDgrOOnEpb1q7uGzL2U3j0vd04LE/BgY00bG4Xm/tip3/VXic
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(39860400002)(346002)(376002)(366004)(136003)(396003)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(33716001)(41300700001)(26005)(54906003)(316002)(38350700005)(6916009)(9686003)(6512007)(478600001)(52116002)(6506007)(6486002)(83380400001)(6666004)(66946007)(38100700002)(966005)(66476007)(66556008)(86362001)(7416002)(2906002)(4326008)(8936002)(8676002)(5660300002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?/py3plBSpEHrztMWUUsoM2BzhxXPbO+5XZFC4N52zXY3TtzQr9hAiV5i63/+?=
 =?us-ascii?Q?K8CbbgB5No9gqWLmn/U3foVbvmDnTAPuJ+AoZ8xCFz7MW6FVDfjY4Mm5yNYw?=
 =?us-ascii?Q?wSlwxnXE+EzV8JhwkyJRug1tySLdl/6KtJOwV8ATGulyv/b0imEgRZPH7Rg0?=
 =?us-ascii?Q?K9OvGDM5YmGKAhL123uVWRfv8MxTexBTVQJbL+36t7bEXVlolJYjh9OzT0yb?=
 =?us-ascii?Q?iIdbcnz26JIftmQ2VUHmxqlwXMMqm0/V/PJWlT7GIknqSOcG88I8UCIUQ+k2?=
 =?us-ascii?Q?8vKULZIgUQm1oExIjoMD/LlhH3qaSrzbM+AzqEFw4jGau06R6k8HqO8b0tDI?=
 =?us-ascii?Q?LEPZC/o4ZsLzxu6DeMVzTaLBNsFqUYgCSJMrFLyNwyHGhiyqrrN2tOCgH4Yn?=
 =?us-ascii?Q?0UAx8OvO1nNCv2FzAXUvfTzWgueJ/tZCGxYe5jRGUBwIHv0DGmLmeTyx3gkG?=
 =?us-ascii?Q?20FN6kR4IAjpMBsyYX8sRStzbZ1vFgoRfBVPnF5c49WXb/UNtR/jgdd3KK4N?=
 =?us-ascii?Q?YbqSBDj8r4M+7gSh3Ox3I0n0T5OpYT51ak/VnEU1oH6qJZSu6z0b50zWXdw5?=
 =?us-ascii?Q?jY26H24buqjR9kFfUDDKsP7FsrKLzqgFjwbKMfVZd/ZfdK7jJpmTR3mN1IAi?=
 =?us-ascii?Q?aQp+NvLb4b83G7kHzbaM5UWwjvjqWz9jk4zZ7Ti+e+OXhEX53IXTP2JwoK67?=
 =?us-ascii?Q?DznV0fA/L2+Y30GGVOsMaAH/H733AYT80S8B5ooc8XrM45fyTz+QdV+1YK93?=
 =?us-ascii?Q?D7RslRTkpD2KRTQxEpwe58L4AvLgTjbItSJBLR/4A/HWfJfhPqekupbQI0/D?=
 =?us-ascii?Q?wdnTkFvzOtV4IzzSwUL4OQbXdamDEn4w+nNN+69nqhLFXjjbsrJJdYCBAhsc?=
 =?us-ascii?Q?KHvuYy2RDcctm+s0uda/8obVXQXB5Hy9mTzbedDKe5Gcz95rZORjAb9/gF/4?=
 =?us-ascii?Q?mKDXHbrV4pBMKKMGXXeFgX5xu3iQQC/qXPqeUhqygdbxatA3iPZXjDf2OjPs?=
 =?us-ascii?Q?Dl6R3H63u7fPXH7zhRh+HJ0imJqLquXDPcnnlg5nAmudclDFUxzG44M751VG?=
 =?us-ascii?Q?bp22NPO/Gu1H6vXOVCDzm94gy0rWkDsgbyUlT8+1nNo/xTkY6jV7nq52JHkS?=
 =?us-ascii?Q?P5cBPBWCwGXi430UtHNS5dYqOsMuJ5XGWWHSRQVTNvUuihZqpN9yacZrkyUB?=
 =?us-ascii?Q?cbAvk0IZt9kLqZ62C+yQR7aIfs6K+OpCiohiQU9f8UeF3dm6CEQNlShSGoZ2?=
 =?us-ascii?Q?J5ULUHVruIPNSlr3COzne4eUFm9TYC/bQcJv1Clv5K5kiN8yIOI6b8V3JDeU?=
 =?us-ascii?Q?bVPtc6h74Y0g4qW/IgwsY3kw8sHxsTQC9qp25BlcjxGG+Y5LFDGXLuFLA68o?=
 =?us-ascii?Q?0m5Sxh+JmPudzSoXcmqfSI6Sw9WQhx26W3suz7oSA/3dIkOa65Odwg0YScbP?=
 =?us-ascii?Q?9PiJpv9h/1MPMW74V9x1GBDMdfSFYJDdDWTVtchUVqpLKy+JdZsQUfp8Eov/?=
 =?us-ascii?Q?8rAD3UTNs7kSXwVY+KtezdJ7VlGfPRBY3F5LYQz2wytn8zYbPBMChvItR0nm?=
 =?us-ascii?Q?XVO6HY1AUVj3j5loDlY=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e700ca0d-8a7f-4fc3-20f3-08dc20ed4b28
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 17:11:12.3976
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M2F/3AT+xrVeKRGYJrZQ4f/H657xZoixIncUXGBYb/WMghM+qnwAgLg0yUm41/ZYhKoZ4NKx9or4xmPj0A1wmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8262

On Mon, Dec 18, 2023 at 03:23:12PM +0100, Alexander Stein wrote:
> Add the DT node for the GPU core found on the i.MX8QXP.
> 
> etnaviv-gpu 53100000.gpu: model: GC7000, revision: 6214
> [drm] Initialized etnaviv 1.3.0 20151214 for etnaviv on minor 0
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Frank Li <Frank.Li@nxp.com>

> ---
> Based on downstream commit [1]. I am not aware if additional
> modifications are necessary in etnaviv driver though. The revision
> number is slightly different to the one from imx8mp:
> etnaviv-gpu 38000000.gpu: model: GC7000, revision: 6204
> 
> [1] https://github.com/Freescale/linux-fslc/commit/d0964b3f9afd8a75aca73921fdb0c128cc46c4fe
> 
>  .../boot/dts/freescale/imx8-ss-gpu0.dtsi      | 27 +++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi    |  1 +
>  2 files changed, 28 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-gpu0.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-gpu0.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-gpu0.dtsi
> new file mode 100644
> index 000000000000..9b8a44aa63d6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8-ss-gpu0.dtsi
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2019 NXP
> + *	Dong Aisheng <aisheng.dong@nxp.com>
> + */
> +
> +#include <dt-bindings/firmware/imx/rsrc.h>
> +
> +gpu0_subsys: bus@53000000 {
> +	compatible = "simple-bus";
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +	ranges = <0x53000000 0x0 0x53000000 0x1000000>;
> +
> +	gpu_3d0: gpu@53100000 {
> +		compatible = "vivante,gc";
> +		reg = <0x53100000 0x40000>;
> +		interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&clk IMX_SC_R_GPU_0_PID0 IMX_SC_PM_CLK_PER>,
> +			 <&clk IMX_SC_R_GPU_0_PID0 IMX_SC_PM_CLK_MISC>;
> +		clock-names = "core", "shader";
> +		assigned-clocks = <&clk IMX_SC_R_GPU_0_PID0 IMX_SC_PM_CLK_PER>,
> +				  <&clk IMX_SC_R_GPU_0_PID0 IMX_SC_PM_CLK_MISC>;
> +		assigned-clock-rates = <700000000>, <850000000>;
> +		power-domains = <&pd IMX_SC_R_GPU_0_PID0>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index fdbb4242b157..10e16d84c0c3 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -317,6 +317,7 @@ map0 {
>  	/* sorted in register address */
>  	#include "imx8-ss-img.dtsi"
>  	#include "imx8-ss-vpu.dtsi"
> +	#include "imx8-ss-gpu0.dtsi"
>  	#include "imx8-ss-adma.dtsi"
>  	#include "imx8-ss-conn.dtsi"
>  	#include "imx8-ss-ddr.dtsi"
> -- 
> 2.34.1
> 


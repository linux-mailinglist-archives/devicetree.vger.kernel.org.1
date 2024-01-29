Return-Path: <devicetree+bounces-36405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A170E8410A2
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:29:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 304C21F24B79
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04ED076C95;
	Mon, 29 Jan 2024 17:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="FU9wb88/"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2060.outbound.protection.outlook.com [40.107.104.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109E076C7E
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.104.60
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706548668; cv=fail; b=UxER0N43DPzpgWJHYzymt9/kKRyiibzlasLPO1I0aheg82BRnjLVV/9ShSgqLSOILGwoi2M5IXk5GAmGrS8sKy9isuev2G8Zkoc8Y6893A0/qK54qbHLuo1enGNlkk/2kKco8wdl4+EquFMdPFbAW7s71eEdoPOtANBOQwgIdgA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706548668; c=relaxed/simple;
	bh=2eufwSagD4LUHKl99aJOR4Vg6fm0qNtGBF0k50mAMWg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=M/WjBgxGLLCRqXQA33Q0pJ6zle/+yhpt2l7liRj9GS2Fu79BswoRnVOqt+InXy5gsRZCf9XMlGnIQvFudO2gOqczQ0IwQb+TZfDk8YQWr/+goIOEEtRyowr1RK7OdFP1t5+OZXWT6G3QZ46w5w657ZMfSouN7gzkPzpJAxeDLIM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b=FU9wb88/; arc=fail smtp.client-ip=40.107.104.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHR+XvXyUN61PuFrKGT5AMDDqZw/oIpn3Q7dLn37Vs/SrVyuDgnAVmx9y5wxCsn0yKqP3lv2IRRGsoDu4bWp5Uf5y+DUmUmksmXKk5pX0pKtv+FlWgzlU4Ko1npjbPHcDjLDHVJiCaWyonkMXfv2Xc4KMD91ALLruuYE6Teocd4mDw4V5f1AQ5krxiftlhXzRlqOSUdAXDQAlEKmOYwcsHNUjYFEswa+gw1zfQvOKSNaDLhKUB/QA1zBJdTW6QbLTi7d3/2Ql2/IGj2aD1/qPDmjP8J6fyBcAMbqhGJb4t807vBE5wSQjfJns8hbEiwNd3rEbncPuySPh5+Rkie61w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7FmUW69F4xhhSJJByuTPQ/pYYMLwMiFjWxWAubgfpbg=;
 b=It1QjOjIWJiiT1j6/J896h1l0YKpwfxafijBXK9p74JfdJTBgGNKyN9SjP9AT/Y42+Pa+C2nw7DqcZm/XBV0EGUjxNIV2cZ64AfsQ9o+eU7TBfwP1kMu1UHmONkEW9MzkCyLmBrlHZZbz+1KCMwPJHwB9tyN+jlO9fCHAvkhcwXwTA3J3ma+G/g2FG0Fxk+YEbSBfIHBRGfG9kf46onEdTW+RZDMPWrdiX3JU6Xw2hh10awIdUiUYiSqzLoUhvkx/yUPAAoOZpW4PxAc2W8mTt3zCUZ9cQJXPHeJKRbKb4qhVsNn8V4IsF1p4OcZ7pQ3VXCHUrumhFmt5MySXwaGRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7FmUW69F4xhhSJJByuTPQ/pYYMLwMiFjWxWAubgfpbg=;
 b=FU9wb88/3dwsav9FFYcemVoBq96ABbPcU5CirweShDJS/KME6D7BkquaH1uW5WYI8R289dlwjJJMV/0lRlBOd5Rh6LoBy+JuRQQNy4k2oxdrTLmULpkHTqkpdISboNfq+VHlK5ZMhnC/aXwgMSI2v+jon4mxRyf+AHD1M0mkl6g=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by AS8PR04MB8369.eurprd04.prod.outlook.com (2603:10a6:20b:3b0::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 17:17:44 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::c8b4:5648:8948:e85c]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::c8b4:5648:8948:e85c%3]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 17:17:44 +0000
Date: Mon, 29 Jan 2024 12:17:37 -0500
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
Subject: Re: [PATCH 2/2] arm64: dts: imx8: Fix lpuart DMA channel order
Message-ID: <ZbfdsY8MkQrIzOqG@lizhi-Precision-Tower-5810>
References: <20231219123439.3359318-1-alexander.stein@ew.tq-group.com>
 <20231219123439.3359318-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231219123439.3359318-2-alexander.stein@ew.tq-group.com>
X-ClientProxiedBy: BYAPR05CA0017.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::30) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|AS8PR04MB8369:EE_
X-MS-Office365-Filtering-Correlation-Id: 5eefcba6-6410-4666-0209-08dc20ee34e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	RIDWf6tAsncp731qHhiOiG6Yb4aoi87PauW8qHtTO0iRmcs72z4wagdsYPHhOzdk/8uJBDZL5wpuUDf4oCz2GPbOHZKCJpTSn9rx+iVjF11Lz+asgozWpdZGMMWPfESUHl+5TrEgYZcS3O6yDqUA1vKSChBdFTQD0Qnh8O3D8Ugf7WEMLO8rZAzrNvlLKnSXMCAeuL0JbklPx3aPTO4JcCACWeLRjNxMAsEZaQRmllb0KMgfUFdvzEev+hO+hUSMgwo7UvcHnEsQMmrdM7PnMCL9abyZzcYXQGBDHm3hHL45qDZxx7eDTiexn304VhC2HkoSrdrq5gV+f3Mv37n22Ta12MyFTsKJGG1ZDLVYpS5mNJd8s48DmC+dCeNFhQc0Yf5J0pOR73MKSbLAk/YhaYd7MQ9p4YGy+/6ZMw07Qc0DZgfTUaXqHW36PBbQrDuDScZDXMnMmVRKh+NPHUq7Vs/FsQYqSttM4SfPqjcpsdlzcluSvc7WCSLWxStzdBj5IvDdhL25tKzdIGbD5Pquwy46AtlQJQP9n4ur8KaRRDylHBAapZyVJ+/jlDJefZCLkzWyICJZl+hJjlS+Zah5vCAwyHgRZL2OCoEjHuD8jUo/VBqhFwMujW496z1EWVqp
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(396003)(376002)(366004)(39860400002)(346002)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(26005)(83380400001)(52116002)(6512007)(6666004)(6506007)(9686003)(38100700002)(66946007)(5660300002)(4326008)(8936002)(41300700001)(33716001)(8676002)(54906003)(316002)(478600001)(6486002)(6916009)(2906002)(7416002)(66476007)(66556008)(86362001)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?NOdeo/iGHutuneIysJFiuUM9cIFZVzd7ethXJ/76L64I38718JXsSktqmtjv?=
 =?us-ascii?Q?w0D+IdXMkMyrIhtMXKBPGFFuyvkYLgSHlf6zCvmcvAqFmwuGKSn08YXVzqlp?=
 =?us-ascii?Q?H5cHfszwEpWBHF0V6VwlUeTQRiT3UuYxPnzADLI1u7Yh3GIDcQKRaKaEJ3XM?=
 =?us-ascii?Q?E7c4zXH86gZp7/c4+lWPGzDYYkDRlUr06WRGyAnso/jAOVSkQ4PO7p1Qz90B?=
 =?us-ascii?Q?KGMrG60l0g0OEcDCRMmps+tkHEp3i7592zwuvQN3RRTZfeC0BGxG+Xv6qryn?=
 =?us-ascii?Q?ZgwB25qsRpZ/IOOZhNnzB+jARlX2VXRQlC5NOlrIHJ336fSlY2GTwhbH+4Yc?=
 =?us-ascii?Q?OfZdSRB3JVgN7010w1Oj4VkznY8JOlZ5eNULv6HOw5PPAia+1FPZSoFjZtrF?=
 =?us-ascii?Q?IuN7Q30dPtcLwSdVwaXdII6HDJryH//5wcd2ikOEhmqbsnukXrTD1/e2rfrx?=
 =?us-ascii?Q?6ZSeVv+A8/0U3U/+fs061vOEN7XjiBFCQC0MQOB7fEuQivk09yDkCr+WVH57?=
 =?us-ascii?Q?iR+OCN4Fr0WKT5NCnicAZmOE9Jlxv8q0c/MXaubcJUSNdWM11d6nRrYHFEJ6?=
 =?us-ascii?Q?Sj3l2WjY4ti3/ffsw8snH4fbDdZeMAbVwfYW2WlO0tIMo8SusCJtAQBau6x8?=
 =?us-ascii?Q?HSPjGmSJc+U9CGucwiQw0eDQl+Y70qv2jmktGgmrXPQCr0eqiL05Uo+7he0W?=
 =?us-ascii?Q?r+LeK0Ae7mydFKUOJ7AZKtdA4uK0Hf3HK7vJxydW5VBp1KeyBjvMixAZHIe7?=
 =?us-ascii?Q?GTmzO/u3wPo5ukFncUV7kXXirDstFfnmIFfbIWHsT12yi5Jhc2Bjap+G31DG?=
 =?us-ascii?Q?xJ3A/Bcbm9LpDGrfb1S5eodMvheEvatta0sUG8VQza+MWCf1WT6v2saVtnca?=
 =?us-ascii?Q?nORQ9IfADWu3trhNMtgh9ew/e5ctQP9Q4dbCxjGLT4TsLFj3uFaNU86TxE7f?=
 =?us-ascii?Q?KMRwluqIC9vn+gkXDUj34B5+OpxuxAu6KwzuvW5/c8EEZcKSynLXf00HZgvZ?=
 =?us-ascii?Q?0OwFvTFA583qcLfBA0p62koQdesEhmRymHnEhqMS7RugPUbvYHthQp3aHbAW?=
 =?us-ascii?Q?kgyAe1SNlRWsT7dEL65xNXuCk9+2AAzU9XVd/A9mJg/CtdCKHkRyGg24sVT/?=
 =?us-ascii?Q?C3RcEtD1CIge6/YNmU9nTuKcKfkD3u7ZywqjWVSvkSC1gnHDBCYYovbj2XLH?=
 =?us-ascii?Q?/Q1zx51zglXInDrGglNEH+fqGWUknLZDJ0VWEOzGB18515R2EXB49q4tIlCj?=
 =?us-ascii?Q?V+ddDnNWFHqFtjMWVSRvaxKqN31rEi5mtL+SwcWB1ZVnCMvrZmkX9FPMmel1?=
 =?us-ascii?Q?fKCQJ8hvKECMSmXWlIEUZDNxepEBKnu7ifefRP3fPAx5C6RUTLcWLOEvOr2v?=
 =?us-ascii?Q?jxnKg7BmOXIxpvp+Ej0LwIlIC48QRtlKojRvz1cOJVl8iLvVJkVAGDalg6Di?=
 =?us-ascii?Q?8kc4OV4hOvLjdA8kI7j19Vez01uTMzixq6exkLgVYiipi7VdamVSLw/qjquK?=
 =?us-ascii?Q?GSKf2KgyIW7jWmm5g68kW4lKtn1oQ4CPl+zvHT2xMnjmYV9k6xfofy5Y1dHl?=
 =?us-ascii?Q?FsDJpqAsaCA+yBs0/zs=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eefcba6-6410-4666-0209-08dc20ee34e7
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 17:17:44.2850
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: afjE4nPsoMQgRP1maeY165XIcU/rjJEIqKF6GanUV6plSDdBKfN49ojmSwr94Dp6T4kJ7tXASe3+rJVPgkNk1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8369

On Tue, Dec 19, 2023 at 01:34:39PM +0100, Alexander Stein wrote:
> Bindings say DMA channels are in order Rx, Tx. Adjust the DT nodes
> accordingly.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
> index a180893ac81e..0f48796e32b2 100644
> --- a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
> @@ -93,8 +93,8 @@ lpuart0: serial@5a060000 {
>  		assigned-clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>;
>  		assigned-clock-rates = <80000000>;
>  		power-domains = <&pd IMX_SC_R_UART_0>;
> -		dma-names = "tx","rx";
> -		dmas = <&edma2 9 0 0>, <&edma2 8 0 1>;
> +		dma-names = "rx", "tx";
> +		dmas = <&edma2 8 0 0>, <&edma2 9 0 1>;

edma device bind header file already merged. 
Please include <dt-binding/dma/fsl-edma.h>

Change "1" to "FSL_EDMA_RX".

Frank

>  		status = "disabled";
>  	};
>  
> @@ -107,8 +107,8 @@ lpuart1: serial@5a070000 {
>  		assigned-clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>;
>  		assigned-clock-rates = <80000000>;
>  		power-domains = <&pd IMX_SC_R_UART_1>;
> -		dma-names = "tx","rx";
> -		dmas = <&edma2 11 0 0>, <&edma2 10 0 1>;
> +		dma-names = "rx", "tx";
> +		dmas = <&edma2 10 0 0>, <&edma2 11 0 1>;
>  		status = "disabled";
>  	};
>  
> @@ -121,8 +121,8 @@ lpuart2: serial@5a080000 {
>  		assigned-clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>;
>  		assigned-clock-rates = <80000000>;
>  		power-domains = <&pd IMX_SC_R_UART_2>;
> -		dma-names = "tx","rx";
> -		dmas = <&edma2 13 0 0>, <&edma2 12 0 1>;
> +		dma-names = "rx", "tx";
> +		dmas = <&edma2 12 0 0>, <&edma2 13 0 1>;
>  		status = "disabled";
>  	};
>  
> @@ -135,8 +135,8 @@ lpuart3: serial@5a090000 {
>  		assigned-clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>;
>  		assigned-clock-rates = <80000000>;
>  		power-domains = <&pd IMX_SC_R_UART_3>;
> -		dma-names = "tx","rx";
> -		dmas = <&edma2 15 0 0>, <&edma2 14 0 1>;
> +		dma-names = "rx", "tx";
> +		dmas = <&edma2 14 0 0>, <&edma2 15 0 1>;
>  		status = "disabled";
>  	};
>  
> -- 
> 2.34.1
> 


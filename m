Return-Path: <devicetree+bounces-138173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36037A0BF96
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 19:10:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C994D1885762
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 667C01BBBF1;
	Mon, 13 Jan 2025 18:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="RsquW172"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011046.outbound.protection.outlook.com [52.101.70.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B0D189F20;
	Mon, 13 Jan 2025 18:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736791814; cv=fail; b=lCZNxmla1ZAAfbp/3Xlwcpk8Sm8yOFRTZ0Bf/LI6W/Qh2oqLBpfwJTnHT2xF7koLR1AqRDlhVrMFQuFDl5G1zNByiULlIsdPBx/igGmHbDXbPucTbhwFliVWkwJdziqibkxt1vW1MYG8Ss8LTV+AKOAsgp1evBbzQW8KJNe3QI8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736791814; c=relaxed/simple;
	bh=ZGrD809J5ML0EGsj9D+XRm2un+TbDgD3LnRp5Tnot+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=nbbnBWv+2waZpAKVsho77MWgiJ/+e0/F/ROBsjCh+A355rHkyVU8PSSwx5aH5Pd2gAyV33xiWFqrBExqok/ab8bBwwLrmVVB0HS+VWxr8rIlsgTiCHCIRGhz2bx+hgL1nvfXirVYoWiQoqnsEFbAbjU+lDGS+j6TpVJrt37wo0s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=RsquW172; arc=fail smtp.client-ip=52.101.70.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iQPg++BHmAbGSOurEIdTCSvDg5gG6/LNPlpAjLLdhAuZ4k2R6YABkyd6IV6PcJWspZ+fpmvgnqFcRG6HWleqKk7p6Z8RugkIwgbtI+TYyM3uRaa4T9oIgpvHrNlTTfSAPJzYo87nNdwKWGDUQopB33fDEHU02B3F6UwckCmBYSew7GG9h4vFVduJuxOCnnP4+0ZqjTK9Ldfd5c6mJO1Kz5uCkl8z3qIkl+u7ys88S/9NJgxrXBLxG7ziewJaf9AzAR6/2t7/wf+kTmdKJNfDUMiQ+nEHpBhmI2EDiOus8KoEcVYQsNbMaZFPRSiw2KErNsc9hA3qeEpgUyZEsVxKEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OyiIDOuud5OjJ0O5ct+K61OKCikJkkDKFWBTSWbz40I=;
 b=mKezvjMPUC2RU+3bNkMBmj/3ahY6/zky3/L8sHivylESchrjV3f2lOUk4MR8H41yAY3KsczYoEtGNyzM/bR+lLa8ippWK2yYFhx3GeE6OtCTkJ+vavcErWR7FO/VmqdhS0xLA13rp6MjmqgYYiKfuHd2Ym0I+HaV8ZtwIhW6XR9W4FZFnfcNLgJ7TJB/9VghGVf6fW83AiX/EOSM1ZWfv65QkrteBQI3TgFE/QULg1jKODKL7SZ8PkFL6i8EUyDF/7gQcsaGF4ifp/jFtC5ZfEoGHGu7fo3tmf2oiKzXdMtSUxfpYMw7EMpeARJRPWevsNmqQCEG2fx7XTaiwdYHFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OyiIDOuud5OjJ0O5ct+K61OKCikJkkDKFWBTSWbz40I=;
 b=RsquW172gKEHulhK/oddULUqQvyxyeK5VQQcmFrlmMyx9AIw6GxFrJUp+GQxsBHEzUOrcyvX8/waTCl0tz15EjvL0btRmZ2Q5VJ9YnQnorG0gUe1se0ddZWQM9pbZZeb5O5e9DyCxe5Mp/x6mi6mS8epCdrEOBjpSFCjE1ZzTmxf1yNV3t8ls/+0+9O+SJZPvbbtOkpP9b6wqbpTiFBVFF8flUFgDrrJLl8gq50LmkCg4PrFFAizwZz1ArvvF8dbpbclptRda9nuY9+/lwns6zAef57GYTJU3rSZ/bfFT9/nGCee8Piq2YD1EP0fhDES3EKAFfYmhchkX+/4SBcv3A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by DB8PR04MB7034.eurprd04.prod.outlook.com (2603:10a6:10:128::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 18:10:07 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06%5]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 18:10:07 +0000
Date: Mon, 13 Jan 2025 13:09:53 -0500
From: Frank Li <Frank.li@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/4] arm64: dts: imx95: Add imx95-15x15-evk support
Message-ID: <Z4VW8bIPKLtg32s0@lizhi-Precision-Tower-5810>
References: <20250113-imx95_15x15-v1-0-8c20cbaab9ed@nxp.com>
 <20250113-imx95_15x15-v1-4-8c20cbaab9ed@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-imx95_15x15-v1-4-8c20cbaab9ed@nxp.com>
X-ClientProxiedBy: SJ0PR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::9) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|DB8PR04MB7034:EE_
X-MS-Office365-Filtering-Correlation-Id: 34648fef-3aa7-4855-056b-08dd33fd82a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|7416014|52116014|1800799024|376014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?SbC79YEYGlWV2vOVh2DP2/V4Wjm7TjJw5s6bNayvTxshNLSpFloHPVD4mdHh?=
 =?us-ascii?Q?ZDzs9FFT8JwVRA1X+Sq9mnP/yUO16Vu3B+iY2pZ7POKG+zvMlyaeUkjOmvgL?=
 =?us-ascii?Q?MvRM2YO43dhwMy5jguK1/cbWHXzOhlQaA1y+sx7QaTgbms3TR9GUUb4YdwCS?=
 =?us-ascii?Q?dJEjRsQyBjW7nKM+oriEyKCnJfEBcybB/L4wwpETjwOhWTCEfVoJGoYQ75h+?=
 =?us-ascii?Q?aNkt8mIeR+3vi40p1gmDS543p+6wIR3gX6B4/oOZ+ei/jq3amNVqefoXNh0Y?=
 =?us-ascii?Q?ecjx9F6uoXlpaApWOjke+XudNLTTcG+x++t0t2rRzGgHqqWEX4RRdD7uVzAY?=
 =?us-ascii?Q?mja5p7CsXSLlt2XXleu+EWnnEN94/+8FvULvuWV4VNBtpYry6FXR56s2Zs1/?=
 =?us-ascii?Q?XOqKBpLNQ/uh5/zmJfYm9C7rIGDBI/mOHQOaCENzBIvAZNi0p5jBoPJiJZn5?=
 =?us-ascii?Q?9GXE+u/OMUlrGkJOaWgdQEDl4apeIiftHUPu0boDgO/lkYhh2Tr3zVfAq0cP?=
 =?us-ascii?Q?jX5QGIMVx7TDyl3ouLQZf0vqgpZIXTtwsodhEYhiGCAOBL3SK/hhdsSBOCao?=
 =?us-ascii?Q?gkOZ/sNjTCXhAWD3Sl6/BqZPiq4u6ND4RhWikBLXF5FErZnKZvO0cl0br9/B?=
 =?us-ascii?Q?WJcCFrbRSaEt0uQGowt/G11DCs2nhrcI9bC5vItNMu1hkks13W6OU9dDgTR2?=
 =?us-ascii?Q?ukOEGSeFqKnC3vwvFSZt15O5y48KzJe7TzR7Xzm/yWCi9US2JFGi0yQR6Kf/?=
 =?us-ascii?Q?KihnziTogbsyHkQWyy3wj18N+RqdCf9mad65o0Oqp0RVcoPjeoEs7+CYUgWY?=
 =?us-ascii?Q?mRQ9dT1VF/f3v22F0bCwqSsXXXYxGJpWWwrSZn40/Db926CI78XfZhwtoBof?=
 =?us-ascii?Q?YnfUvs2Fqx0sVTjxXGma1Lwb1GvztNf6XvXum5Qj/2g9GWbjv80o+UdHH8rv?=
 =?us-ascii?Q?eIdxnrGPbzH0H8hZFdvpzcc6q+j/WEsqAlVOAMXTle9Uxoz64k2/GQFn9w08?=
 =?us-ascii?Q?L4rcN/MVXOsL76eVCNpjJzb/oYuDMB7VbisLIS5gtUkNrLLy2DebZ7eHHuz9?=
 =?us-ascii?Q?/XojQn/dGG/RETpurvsdM6cpQ8Dw7E+OJj3907WZHGSDA/quz0QbAwVpPune?=
 =?us-ascii?Q?EpfYc46mlYqYQNRuTdTsoE6WiVNe5aOQ+MpP6PmusqiTNP7vjmA9LpSZt/vK?=
 =?us-ascii?Q?L9C+ptctvHF82axRy6iDifGh0o0s2hsEkgEQowdwR9rYL8oO7tNMvyy3CV5r?=
 =?us-ascii?Q?sqBtgLqhWDlQ6gPsUrSQMR8wYeQRxDeG7Tu8OIxBlAFIU1gX7zZBSBlKZEM4?=
 =?us-ascii?Q?mR/GgbSa7XvssVzs+iyQUbC2hxQQ7bD1/zlC38EHu4ugBy3eTPUX2rX0qiJV?=
 =?us-ascii?Q?r3Ag6iS6AYpPcHN4FgaUMHkjTDKbFmwpx0EXEyTL3thBOMnKWonu5Nm+NjoZ?=
 =?us-ascii?Q?bIRWYyGdbiQVQasfxSFmJWiKLw9TuHIY?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(52116014)(1800799024)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?fWSOaD9zhtyO5sKGGeKrd+ZTapicwZb7flOdn7rzWJ9abtdL/zZEepm4TilO?=
 =?us-ascii?Q?Ls22C97F5J/2DcopQ2tBveUvXSs8MH1zCl8IKvC+Rhvq9cyGbWVkDtToZzCR?=
 =?us-ascii?Q?WY+97+xnQ31DHrJBOHl2SL/9F2aioeC9YVtFY582fEd/mj6NDnKImGvw02ak?=
 =?us-ascii?Q?584j/XvjcVbZXWP3fQ2K6YxMBJuU2EezuAMdPa1Lo3Nk7PhzrcqdBv+Jr7i6?=
 =?us-ascii?Q?90bMvpg2xJxiaSCfsraAWjQgP3UaR/0/Ct/9GnnIRIg0qNHNdT85Z7U5jIX9?=
 =?us-ascii?Q?LJF3Z6lQnlwhn4dKCG2GvgfCU/c82zHhU5umGc4ecnvDTNNdkjNeNKwbmapQ?=
 =?us-ascii?Q?43hfdeNIjls39IX77gvoTy+fduziMH9wQkrPJlJ4u7DTViDivq9Lf8Z4AArH?=
 =?us-ascii?Q?fspKsVgkhf9afte5DtD1rIPVESuPH1eyCooptQ4onHK1Eum1lZFgGjNmuFMd?=
 =?us-ascii?Q?8Q5b1gGdNHaosFFbJAI54OUcS4j1pR7Xg2QU6G/QeII8cbKzpXLK6ejkS9hj?=
 =?us-ascii?Q?/wvT9WxW6u9opNRGVdOFkPGwZP0goPCXpiRTyFtPtB73wOo07nW4HVLIu/yC?=
 =?us-ascii?Q?3+dnd3ImdQA5jP/aqiAl87Z+cPfK4yywPiR4+kPqUsTNn+94wPQeijTrf0+5?=
 =?us-ascii?Q?sxrVMRyd/Kxs1X5iq8BzjjlIdpgbrCtm5uIAZSDBNTxyjKTMG5xieVPSmhkr?=
 =?us-ascii?Q?FmoqJTfP6C5xrNKQ46kWopSQNPR1vh2P3X2793NXuFeZ4SllLCtRRX2IvcpV?=
 =?us-ascii?Q?lCMbHZ8SwU+I+XFnn7nycSsCc0L6YmMu8TPReApGYnqArjxhkn3XNAn3Rxy/?=
 =?us-ascii?Q?vsPdOJ4F5Hu54Iv0TjXwnL6ilxsYc6tyz+EEqVzJnqU1nIu5IbuhWt63JNX5?=
 =?us-ascii?Q?UFrw1BnTxzy1Qm+1fSoz9q5NwuusaY4Ztdt1fo2/GScd6kc7YbQXWgRGleso?=
 =?us-ascii?Q?5BhGX78vgBMO2TuJOVBu84Y6qG3ClC/QBtGZS2DHwohpDT3DlhKSpFqvqKCN?=
 =?us-ascii?Q?r+RkWvjAwkjcOHt+H9B6KuqAIoCfHmbAAnuAS2qaTq8MwLaPPnoF3cWDSKyn?=
 =?us-ascii?Q?7//Mvbrl0mDmyNoXBCqSx8pxVbRw6KQjBEQQSgh58I4CRJkbG0t4ARV/ylkX?=
 =?us-ascii?Q?LM8yeRPDYL8cyf0/jOOryVRc7VWciJVt77PP+3GFQCC1H26pdFE7WD++ysRk?=
 =?us-ascii?Q?nM4ehUd3NiOZWY15dMbKFCpu3j96DwDC/xUDylVT3n4rHP7EsgOOU/vslaaN?=
 =?us-ascii?Q?QRxXN+xWugHojvA4LgfxcDpB7Q3YiXaiLKwUdBEo8vdTBNCQxKHNiIXuCuvW?=
 =?us-ascii?Q?KgwH7+MA/Va38LKrRExaod5/wspvRnjvQJ9mB5ev53Vf1ISZ/hei1J5HNEOR?=
 =?us-ascii?Q?YycLHmK/kJDIgQqhMFSvjs8igrDMXTKH2y8t8KPVWHgvSZIn3foNkpMD6CGQ?=
 =?us-ascii?Q?+RAslik7+DVPJWhqvP66edEI3aeP8s66+IpZt9iU+zmqZ34K9Rvfp2v+rgsu?=
 =?us-ascii?Q?IgXXvrIQet3WfUL32xW/z0MVHVb/ciWY5En5Zcf0R+/erJdBlgc5jJRFS6zl?=
 =?us-ascii?Q?AKI6A/ruERBwH11pupIhE7yOhjbSa6rKiR9AVJ9y?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34648fef-3aa7-4855-056b-08dd33fd82a7
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 18:10:07.0757
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oJ0spkHGz0Nx/HvHKh6d60QLJetfBFLR/JoZjuia4TIYoOwSFQbKCcDTKwmTRulqAVErsMhS2HUVErsWA5DyyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7034

On Mon, Jan 13, 2025 at 01:02:02PM -0500, Frank Li wrote:
> Add imx95-15x15-evk support.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile            |    1 +
>  arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts | 1064 +++++++++++++++++++++
>  2 files changed, 1065 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 839432153cc7a..a2fd3a32e351e 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -281,6 +281,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxca.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx93-var-som-symphony.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx95-19x19-evk.dtb
>
>  imx8mm-kontron-dl-dtbs			:= imx8mm-kontron-bl.dtb imx8mm-kontron-dl.dtbo
> diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
> new file mode 100644
> index 0000000000000..52fb755ce011d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
> @@ -0,0 +1,1064 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2025 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/i3c/i3c.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include <dt-bindings/usb/pd.h>
> +#include "imx95.dtsi"
> +
> +#define FALLING_EDGE		BIT(0)
> +#define RISING_EDGE		BIT(1)
> +
> +#define BRD_SM_CTRL_SD3_WAKE		0x8000
> +#define BRD_SM_CTRL_PCIE1_WAKE		0x8001
> +#define BRD_SM_CTRL_BT_WAKE		0x8002
> +#define BRD_SM_CTRL_PCIE2_WAKE		0x8003
> +#define BRD_SM_CTRL_BUTTON		0x8004
> +
> +/ {
> +	compatible = "fsl,imx95-15x15-evk", "fsl,imx95";
> +	model = "NXP i.MX95 15X15 board";
> +
> +	aliases {
> +		ethernet0 = &enetc_port0;
> +		ethernet1 = &enetc_port1;
> +		serial0 = &lpuart1;
> +	};
> +
> +	bt_sco_codec: bt-sco-codec {
> +		compatible = "linux,bt-sco";
> +		#sound-dai-cells = <1>;
> +	};
> +
> +	chosen {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		stdout-path = &lpuart1;
> +	};
> +
> +	fan0: pwm-fan {
> +		compatible = "pwm-fan";
> +		#cooling-cells = <2>;
> +		cooling-levels = <64 128 192 255>;
> +		pwms = <&tpm6 0 4000000 PWM_POLARITY_INVERTED>;
> +	};
> +
> +	reg_1p8v: regulator-1p8v {
> +		compatible = "regulator-fixed";
> +		regulator-max-microvolt = <1800000>;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-name = "+V1.8_SW";
> +	};
> +
> +	reg_3p3v: regulator-3p3v {
> +		compatible = "regulator-fixed";
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "+V3.3_SW";
> +	};
> +
> +	reg_vref_1v8: regulator-adc-vref {
> +		compatible = "regulator-fixed";
> +		regulator-max-microvolt = <1800000>;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-name = "vref_1v8";
> +	};
> +
> +	reg_audio_pwr: regulator-audio-pwr {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "audio-pwr";
> +		gpio = <&pcal6524 13 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_audio_switch1: regulator-audio-switch1 {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "audio-switch1";
> +		gpio = <&pcal6524 0 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	reg_can2_stby: regulator-can2-stby {
> +		compatible = "regulator-fixed";
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "can2-stby";
> +		gpio = <&pcal6524 14 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	reg_m2_pwr: regulator-m2-pwr {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "M.2-power";
> +		gpio = <&pcal6524 10 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		off-on-delay-us = <12000>;
> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> +		pinctrl-names = "default";
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "VDD_SD2_3V3";
> +		gpio = <&gpio3 7 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_usdhc3_vmmc: regulator-usdhc3 {
> +		compatible = "regulator-fixed";
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "WLAN_EN";
> +		vin-supply = <&reg_m2_pwr>;
> +		gpio = <&pcal6524 11 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		/*
> +		 * IW612 wifi chip needs more delay than other wifi chips to complete
> +		 * the host interface initialization after power up, otherwise the
> +		 * internal state of IW612 may be unstable, resulting in the failure of
> +		 * the SDIO3.0 switch voltage.
> +		 */
> +		startup-delay-us = <20000>;
> +	};
> +
> +	reg_usb_vbus: regulator-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-max-microvolt = <5000000>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-name = "USB_VBUS";
> +		gpio = <&pcal6524 3 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_vcc_12v: regulator-vcc-12v {
> +		compatible = "regulator-fixed";
> +		regulator-max-microvolt = <12000000>;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-name = "VCC_12V";
> +		gpio = <&pcal6524 1 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reserved-memory {
> +		ranges;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +
> +		linux_cma: linux,cma {
> +			compatible = "shared-dma-pool";
> +			alloc-ranges = <0 0x80000000 0 0x7F000000>;
> +			reusable;
> +			size = <0 0x3c000000>;
> +			linux,cma-default;
> +		};
> +
> +		vdev0vring0: vdev0vring0@88000000 {
> +			reg = <0 0x88000000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		vdev0vring1: vdev0vring1@88008000 {
> +			reg = <0 0x88008000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		vdev1vring0: vdev1vring0@88010000 {
> +			reg = <0 0x88010000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		vdev1vring1: vdev1vring1@88018000 {
> +			reg = <0 0x88018000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		vdevbuffer: vdevbuffer@88020000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0 0x88020000 0 0x100000>;
> +			no-map;
> +		};
> +
> +		rsc_table: rsc-table@88220000 {
> +			reg = <0 0x88220000 0 0x1000>;
> +			no-map;
> +		};
> +
> +		vpu_boot: vpu_boot@a0000000 {
> +			reg = <0 0xa0000000 0 0x100000>;
> +			no-map;
> +		};
> +	};
> +
> +	sound-bt-sco {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,bitclock-inversion;
> +		simple-audio-card,bitclock-master = <&btcpu>;
> +		simple-audio-card,format = "dsp_a";
> +		simple-audio-card,frame-master = <&btcpu>;
> +		simple-audio-card,name = "bt-sco-audio";
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&bt_sco_codec 1>;
> +		};
> +
> +		btcpu: simple-audio-card,cpu {
> +			dai-tdm-slot-num = <2>;
> +			dai-tdm-slot-width = <16>;
> +			sound-dai = <&sai1>;
> +		};
> +	};
> +
> +	sound-micfil {
> +		compatible = "fsl,imx-audio-card";
> +		model = "micfil-audio";
> +
> +		pri-dai-link {
> +			format = "i2s";
> +			link-name = "micfil hifi";
> +
> +			cpu {
> +				sound-dai = <&micfil>;
> +			};
> +		};
> +	};
> +
> +	sound-wm8962 {
> +		compatible = "fsl,imx-audio-wm8962";
> +		audio-codec = <&wm8962>;
> +		audio-cpu = <&sai3>;
> +		audio-routing = "Headphone Jack", "HPOUTL", "Headphone Jack", "HPOUTR",
> +				"Ext Spk", "SPKOUTL", "Ext Spk", "SPKOUTR", "AMIC", "MICBIAS",
> +				"IN3R", "AMIC", "IN1R", "AMIC";
> +		hp-det-gpio = <&gpio2 21 GPIO_ACTIVE_HIGH>;
> +		model = "wm8962-audio";
> +		pinctrl-0 = <&pinctrl_hp>;
> +		pinctrl-names = "default";
> +	};
> +
> +	sound-xcvr {
> +		compatible = "fsl,imx-audio-card";
> +		model = "imx-audio-xcvr";
> +
> +		pri-dai-link {
> +			link-name = "XCVR PCM";
> +
> +			cpu {
> +				sound-dai = <&xcvr>;
> +			};
> +		};
> +	};
> +
> +	usdhc3_pwrseq: usdhc3-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-0 = <&pinctrl_usdhc3_pwrseq>;
> +		pinctrl-names = "default";
> +		reset-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	memory@80000000 {
> +		reg = <0x0 0x80000000 0 0x80000000>;
> +		device_type = "memory";
> +	};
> +};
> +
> +&adc1 {
> +	vref-supply = <&reg_vref_1v8>;
> +	status = "okay";
> +};
> +
> +&enetc_port0 {
> +	phy-handle = <&ethphy0>;
> +	phy-mode = "rgmii-id";
> +	pinctrl-0 = <&pinctrl_enetc0>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&enetc_port1 {
> +	phy-handle = <&ethphy1>;
> +	phy-mode = "rgmii-id";
> +	pinctrl-0 = <&pinctrl_enetc1>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&flexcan2 {
> +	pinctrl-0 = <&pinctrl_flexcan2>;
> +	pinctrl-names = "default";
> +	xceiver-supply = <&reg_can2_stby>;
> +	status = "okay";
> +};
> +
> +&i3c2 {
> +	pinctrl-0 = <&pinctrl_i3c2>;
> +	inctrl-names = "default";

Just find typo here, missed 'p'. will send v2 to fix it.
Sorry for that.

Frank

> +	i2c-scl-hz = <400000>;
> +	status = "okay";
> +
> +	pca9570: gpio@24 {
> +		compatible = "nxp,pca9570";
> +		reg = <0x24 0 (I2C_FILTER)>;
> +
> +		#gpio-cells = <2>;
> +		gpio-controller;
> +		gpio-line-names = "OUT1", "OUT2", "OUT3", "OUT4";
> +	};
> +};
> +
> +&lpi2c2 {
> +	clock-frequency = <400000>;
> +	pinctrl-0 = <&pinctrl_lpi2c2>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	wm8962: codec@1a {
> +		compatible = "wlf,wm8962";
> +		reg = <0x1a>;
> +		clocks = <&scmi_clk IMX95_CLK_SAI3>;
> +		AVDD-supply = <&reg_audio_pwr>;
> +		CPVDD-supply = <&reg_audio_pwr>;
> +		DBVDD-supply = <&reg_audio_pwr>;
> +		DCVDD-supply = <&reg_audio_pwr>;
> +		gpio-cfg = <
> +			0x0000
> +			0x0000
> +			0x0000
> +			0x0000
> +			0x0000
> +			0x0000
> +		>;
> +		MICVDD-supply = <&reg_audio_pwr>;
> +		PLLVDD-supply = <&reg_audio_pwr>;
> +		SPKVDD1-supply = <&reg_audio_pwr>;
> +		SPKVDD2-supply = <&reg_audio_pwr>;
> +	};
> +
> +	pcal6524: gpio@22 {
> +		compatible = "nxp,pcal6524";
> +		reg = <0x22>;
> +		#interrupt-cells = <2>;
> +		interrupt-controller;
> +		interrupts = <14 IRQ_TYPE_LEVEL_LOW>;
> +		#gpio-cells = <2>;
> +		gpio-controller;
> +		interrupt-parent = <&gpio5>;
> +		pinctrl-0 = <&pinctrl_pcal6524>;
> +		pinctrl-names = "default";
> +	};
> +};
> +
> +&lpi2c3 {
> +	clock-frequency = <400000>;
> +	pinctrl-0 = <&pinctrl_lpi2c3>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	pca9632: led-controller@62 {
> +		compatible = "nxp,pca9632";
> +		reg = <0x62>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		nxp,inverted-out;
> +
> +		led_backlight0: led@0 {
> +			reg = <0>;
> +			color = <LED_COLOR_ID_WHITE>;
> +			function = LED_FUNCTION_BACKLIGHT;
> +			function-enumerator = <0>;
> +		};
> +
> +		led_backlight1: led@1 {
> +			reg = <1>;
> +			color = <LED_COLOR_ID_WHITE>;
> +			function = LED_FUNCTION_BACKLIGHT;
> +			function-enumerator = <1>;
> +		};
> +	};
> +};
> +
> +&lpi2c4 {
> +	clock-frequency = <400000>;
> +	pinctrl-0 = <&pinctrl_lpi2c4>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&lpi2c6 {
> +	clock-frequency = <100000>;
> +	pinctrl-0 = <&pinctrl_lpi2c6>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&lpuart1 {
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&lpuart5 {
> +	pinctrl-0 = <&pinctrl_uart5>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "nxp,88w8987-bt";
> +	};
> +};
> +
> +&micfil {
> +	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
> +			  <&scmi_clk IMX95_CLK_PDM>;
> +	assigned-clock-parents = <0>, <0>, <0>, <0>, <&scmi_clk IMX95_CLK_AUDIOPLL1>;
> +	assigned-clock-rates = <3932160000>, <3612672000>, <393216000>, <361267200>, <49152000>;
> +	#sound-dai-cells = <0>;
> +	pinctrl-0 = <&pinctrl_pdm>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&mu7 {
> +	status = "okay";
> +};
> +
> +&netc_blk_ctrl {
> +	status = "okay";
> +};
> +
> +&netc_emdio {
> +	pinctrl-0 = <&pinctrl_emdio>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	ethphy0: ethernet-phy@1 {
> +		reg = <1>;
> +		reset-assert-us = <10000>;
> +		reset-deassert-us = <80000>;
> +		reset-gpios = <&pcal6524 4 GPIO_ACTIVE_LOW>;
> +		realtek,clkout-disable;
> +	};
> +
> +	ethphy1: ethernet-phy@2 {
> +		reg = <2>;
> +		reset-assert-us = <10000>;
> +		reset-deassert-us = <80000>;
> +		reset-gpios = <&pcal6524 5 GPIO_ACTIVE_LOW>;
> +		realtek,clkout-disable;
> +	};
> +};
> +
> +&netc_timer {
> +	status = "okay";
> +};
> +
> +&netcmix_blk_ctrl {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	pinctrl-0 = <&pinctrl_pcie0>;
> +	pinctrl-names = "default";
> +	reset-gpio = <&gpio5 13 GPIO_ACTIVE_LOW>;
> +	vpcie-supply = <&reg_m2_pwr>;
> +	status = "okay";
> +};
> +
> +&netc_bus0 {
> +	msi-map = <0x00 &its 0x60 0x1>,	//ENETC0 PF
> +		  <0x10 &its 0x61 0x1>, //ENETC0 VF0
> +		  <0x20 &its 0x62 0x1>, //ENETC0 VF1
> +		  <0x40 &its 0x63 0x1>, //ENETC1 PF
> +		  <0x50 &its 0x65 0x1>, //ENETC1 VF0
> +		  <0x60 &its 0x66 0x1>, //ENETC1 VF1
> +		  <0x80 &its 0x64 0x1>, //ENETC2 PF
> +		  <0xc0 &its 0x67 0x1>;
> +};
> +
> +&sai1 {
> +	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
> +			  <&scmi_clk IMX95_CLK_SAI1>;
> +	assigned-clock-parents = <0>, <0>, <0>, <0>, <&scmi_clk IMX95_CLK_AUDIOPLL1>;
> +	assigned-clock-rates = <3932160000>, <3612672000>, <393216000>, <361267200>, <12288000>;
> +	#sound-dai-cells = <0>;
> +	pinctrl-0 = <&pinctrl_sai1>;
> +	pinctrl-names = "default";
> +	fsl,sai-mclk-direction-output;
> +	status = "okay";
> +};
> +
> +&sai3 {
> +	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
> +			  <&scmi_clk IMX95_CLK_SAI3>;
> +	assigned-clock-parents = <0>, <0>, <0>, <0>, <&scmi_clk IMX95_CLK_AUDIOPLL1>;
> +	assigned-clock-rates = <3932160000>, <3612672000>, <393216000>, <361267200>, <12288000>;
> +	#sound-dai-cells = <0>;
> +	pinctrl-0 = <&pinctrl_sai3>;
> +	pinctrl-names = "default";
> +	fsl,sai-mclk-direction-output;
> +	status = "okay";
> +};
> +
> +&scmi_iomuxc {
> +	pinctrl_emdio: emdiogrp {
> +		fsl,pins = <
> +			IMX95_PAD_ENET2_MDC__NETCMIX_TOP_NETC_MDC		0x57e
> +			IMX95_PAD_ENET2_MDIO__NETCMIX_TOP_NETC_MDIO		0x97e
> +		>;
> +	};
> +
> +	pinctrl_enetc0: enetc0grp {
> +		fsl,pins = <
> +			IMX95_PAD_ENET1_TD3__NETCMIX_TOP_ETH0_RGMII_TD3		0x57e
> +			IMX95_PAD_ENET1_TD2__NETCMIX_TOP_ETH0_RGMII_TD2		0x57e
> +			IMX95_PAD_ENET1_TD1__NETCMIX_TOP_ETH0_RGMII_TD1		0x57e
> +			IMX95_PAD_ENET1_TD0__NETCMIX_TOP_ETH0_RGMII_TD0		0x57e
> +			IMX95_PAD_ENET1_TX_CTL__NETCMIX_TOP_ETH0_RGMII_TX_CTL	0x57e
> +			IMX95_PAD_ENET1_TXC__NETCMIX_TOP_ETH0_RGMII_TX_CLK	0x58e
> +			IMX95_PAD_ENET1_RX_CTL__NETCMIX_TOP_ETH0_RGMII_RX_CTL	0x57e
> +			IMX95_PAD_ENET1_RXC__NETCMIX_TOP_ETH0_RGMII_RX_CLK	0x58e
> +			IMX95_PAD_ENET1_RD0__NETCMIX_TOP_ETH0_RGMII_RD0		0x57e
> +			IMX95_PAD_ENET1_RD1__NETCMIX_TOP_ETH0_RGMII_RD1		0x57e
> +			IMX95_PAD_ENET1_RD2__NETCMIX_TOP_ETH0_RGMII_RD2		0x57e
> +			IMX95_PAD_ENET1_RD3__NETCMIX_TOP_ETH0_RGMII_RD3		0x57e
> +		>;
> +	};
> +
> +	pinctrl_enetc1: enetc1grp {
> +		fsl,pins = <
> +			IMX95_PAD_ENET2_TD3__NETCMIX_TOP_ETH1_RGMII_TD3		0x57e
> +			IMX95_PAD_ENET2_TD2__NETCMIX_TOP_ETH1_RGMII_TD2		0x57e
> +			IMX95_PAD_ENET2_TD1__NETCMIX_TOP_ETH1_RGMII_TD1		0x57e
> +			IMX95_PAD_ENET2_TD0__NETCMIX_TOP_ETH1_RGMII_TD0		0x57e
> +			IMX95_PAD_ENET2_TX_CTL__NETCMIX_TOP_ETH1_RGMII_TX_CTL	0x57e
> +			IMX95_PAD_ENET2_TXC__NETCMIX_TOP_ETH1_RGMII_TX_CLK	0x58e
> +			IMX95_PAD_ENET2_RX_CTL__NETCMIX_TOP_ETH1_RGMII_RX_CTL	0x57e
> +			IMX95_PAD_ENET2_RXC__NETCMIX_TOP_ETH1_RGMII_RX_CLK	0x58e
> +			IMX95_PAD_ENET2_RD0__NETCMIX_TOP_ETH1_RGMII_RD0		0x57e
> +			IMX95_PAD_ENET2_RD1__NETCMIX_TOP_ETH1_RGMII_RD1		0x57e
> +			IMX95_PAD_ENET2_RD2__NETCMIX_TOP_ETH1_RGMII_RD2		0x57e
> +			IMX95_PAD_ENET2_RD3__NETCMIX_TOP_ETH1_RGMII_RD3		0x57e
> +		>;
> +	};
> +
> +	pinctrl_flexcan2: flexcan2grp {
> +		fsl,pins = <
> +			IMX95_PAD_GPIO_IO25__CAN2_TX				0x39e
> +			IMX95_PAD_GPIO_IO27__CAN2_RX				0x39e
> +		>;
> +	};
> +
> +	pinctrl_hp: hpgrp {
> +		fsl,pins = <
> +			IMX95_PAD_GPIO_IO21__GPIO2_IO_BIT21			0x31e
> +		>;
> +	};
> +
> +	pinctrl_i3c2: i3c2grp {
> +		fsl,pins = <
> +			IMX95_PAD_ENET1_MDC__I3C2_SCL				0x40000186
> +			IMX95_PAD_ENET1_MDIO__I3C2_SDA				0x40000186
> +		>;
> +	};
> +
> +	pinctrl_lpi2c1: lpi2c1grp {
> +		fsl,pins = <
> +			IMX95_PAD_I2C1_SCL__AONMIX_TOP_LPI2C1_SCL		0x40000b9e
> +			IMX95_PAD_I2C1_SDA__AONMIX_TOP_LPI2C1_SDA		0x40000b9e
> +		>;
> +	};
> +
> +	pinctrl_lpi2c2: lpi2c2grp {
> +		fsl,pins = <
> +			IMX95_PAD_I2C2_SCL__AONMIX_TOP_LPI2C2_SCL		0x40000b9e
> +			IMX95_PAD_I2C2_SDA__AONMIX_TOP_LPI2C2_SDA		0x40000b9e
> +		>;
> +	};
> +
> +	pinctrl_lpi2c3: lpi2c3grp {
> +		fsl,pins = <
> +			IMX95_PAD_GPIO_IO28__LPI2C3_SDA				0x40000b9e
> +			IMX95_PAD_GPIO_IO29__LPI2C3_SCL				0x40000b9e
> +		>;
> +	};
> +
> +	pinctrl_lpi2c4: lpi2c4grp {
> +		fsl,pins = <
> +			IMX95_PAD_GPIO_IO30__LPI2C4_SDA				0x40000b9e
> +			IMX95_PAD_GPIO_IO31__LPI2C4_SCL				0x40000b9e
> +		>;
> +	};
> +
> +	pinctrl_lpi2c6: lpi2c6grp {
> +		fsl,pins = <
> +			IMX95_PAD_GPIO_IO02__LPI2C6_SDA				0x40000b9e
> +			IMX95_PAD_GPIO_IO03__LPI2C6_SCL				0x40000b9e
> +		>;
> +	};
> +
> +	pinctrl_mipi_dsi_csi: mipidsigrp {
> +		fsl,pins = <
> +			IMX95_PAD_XSPI1_DATA6__GPIO5_IO_BIT6			0x31e
> +		>;
> +	};
> +
> +	pinctrl_pcal6524: pcal6524grp {
> +		fsl,pins = <
> +			IMX95_PAD_GPIO_IO34__GPIO5_IO_BIT14			0x31e
> +		>;
> +	};
> +
> +	pinctrl_pcie0: pcie0grp {
> +		fsl,pins = <
> +			IMX95_PAD_GPIO_IO32__HSIOMIX_TOP_PCIE1_CLKREQ_B		0x40000b1e
> +			IMX95_PAD_GPIO_IO33__GPIO5_IO_BIT13			0x31e
> +		>;
> +	};
> +
> +	pinctrl_pdm: pdmgrp {
> +		fsl,pins = <
> +			IMX95_PAD_PDM_CLK__AONMIX_TOP_PDM_CLK				0x31e
> +			IMX95_PAD_PDM_BIT_STREAM0__AONMIX_TOP_PDM_BIT_STREAM_BIT0	0x31e
> +		>;
> +	};
> +
> +	pinctrl_ptn5110: ptn5110grp {
> +		fsl,pins = <
> +			IMX95_PAD_XSPI1_SS1_B__GPIO5_IO_BIT11			0x31e
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
> +		fsl,pins = <
> +			IMX95_PAD_SD2_RESET_B__GPIO3_IO_BIT7			0x31e
> +		>;
> +	};
> +
> +	pinctrl_sai1: sai1grp {
> +		fsl,pins = <
> +			IMX95_PAD_SAI1_RXD0__AONMIX_TOP_SAI1_RX_DATA_BIT0	0x31e
> +			IMX95_PAD_SAI1_TXC__AONMIX_TOP_SAI1_TX_BCLK		0x31e
> +			IMX95_PAD_SAI1_TXFS__AONMIX_TOP_SAI1_TX_SYNC		0x31e
> +			IMX95_PAD_SAI1_TXD0__AONMIX_TOP_SAI1_TX_DATA_BIT0	0x31e
> +		>;
> +	};
> +
> +	pinctrl_sai2: sai2grp {
> +		fsl,pins = <
> +			IMX95_PAD_ENET2_MDIO__NETCMIX_TOP_SAI2_RX_BCLK		0x31e
> +			IMX95_PAD_ENET2_MDC__NETCMIX_TOP_SAI2_RX_SYNC		0x31e
> +			IMX95_PAD_ENET2_TD3__NETCMIX_TOP_SAI2_RX_DATA_BIT0	0x31e
> +			IMX95_PAD_ENET2_TD2__NETCMIX_TOP_SAI2_RX_DATA_BIT1	0x31e
> +			IMX95_PAD_ENET2_TXC__NETCMIX_TOP_SAI2_TX_BCLK		0x31e
> +			IMX95_PAD_ENET2_TX_CTL__NETCMIX_TOP_SAI2_TX_SYNC	0x31e
> +			IMX95_PAD_ENET2_RX_CTL__NETCMIX_TOP_SAI2_TX_DATA_BIT0	0x31e
> +			IMX95_PAD_ENET2_RXC__NETCMIX_TOP_SAI2_TX_DATA_BIT1	0x31e
> +			IMX95_PAD_ENET2_RD0__NETCMIX_TOP_SAI2_TX_DATA_BIT2	0x31e
> +			IMX95_PAD_ENET2_RD1__NETCMIX_TOP_SAI2_TX_DATA_BIT3	0x31e
> +			IMX95_PAD_ENET2_RD2__NETCMIX_TOP_SAI2_MCLK		0x31e
> +		>;
> +	};
> +
> +	pinctrl_sai3: sai3grp {
> +		fsl,pins = <
> +			IMX95_PAD_GPIO_IO17__SAI3_MCLK				0x31e
> +			IMX95_PAD_GPIO_IO16__SAI3_TX_BCLK			0x31e
> +			IMX95_PAD_GPIO_IO26__SAI3_TX_SYNC			0x31e
> +			IMX95_PAD_GPIO_IO20__SAI3_RX_DATA_BIT0			0x31e
> +			IMX95_PAD_GPIO_IO19__SAI3_TX_DATA_BIT0			0x31e
> +		>;
> +	};
> +
> +	pinctrl_spdif: spdifgrp {
> +		fsl,pins = <
> +			IMX95_PAD_GPIO_IO22__SPDIF_IN				0x3fe
> +			IMX95_PAD_GPIO_IO23__SPDIF_OUT				0x3fe
> +		>;
> +	};
> +
> +	pinctrl_tpm3: tpm3grp {
> +		fsl,pins = <
> +			IMX95_PAD_CCM_CLKO2__GPIO3_IO_BIT27			0x51e
> +		>;
> +	};
> +
> +	pinctrl_tpm6: tpm6grp {
> +		fsl,pins = <
> +			IMX95_PAD_GPIO_IO08__TPM6_CH0				0x51e
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			IMX95_PAD_UART1_RXD__AONMIX_TOP_LPUART1_RX		0x31e
> +			IMX95_PAD_UART1_TXD__AONMIX_TOP_LPUART1_TX		0x31e
> +		>;
> +	};
> +
> +	pinctrl_uart5: uart5grp {
> +		fsl,pins = <
> +			IMX95_PAD_DAP_TDO_TRACESWO__LPUART5_TX			0x31e
> +			IMX95_PAD_DAP_TDI__LPUART5_RX				0x31e
> +			IMX95_PAD_DAP_TMS_SWDIO__LPUART5_RTS_B			0x31e
> +			IMX95_PAD_DAP_TCLK_SWCLK__LPUART5_CTS_B			0x31e
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			IMX95_PAD_SD1_CLK__USDHC1_CLK				0x158e
> +			IMX95_PAD_SD1_CMD__USDHC1_CMD				0x138e
> +			IMX95_PAD_SD1_DATA0__USDHC1_DATA0			0x138e
> +			IMX95_PAD_SD1_DATA1__USDHC1_DATA1			0x138e
> +			IMX95_PAD_SD1_DATA2__USDHC1_DATA2			0x138e
> +			IMX95_PAD_SD1_DATA3__USDHC1_DATA3			0x138e
> +			IMX95_PAD_SD1_DATA4__USDHC1_DATA4			0x138e
> +			IMX95_PAD_SD1_DATA5__USDHC1_DATA5			0x138e
> +			IMX95_PAD_SD1_DATA6__USDHC1_DATA6			0x138e
> +			IMX95_PAD_SD1_DATA7__USDHC1_DATA7			0x138e
> +			IMX95_PAD_SD1_STROBE__USDHC1_STROBE			0x158e
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
> +		fsl,pins = <
> +			IMX95_PAD_SD1_CLK__USDHC1_CLK				0x158e
> +			IMX95_PAD_SD1_CMD__USDHC1_CMD				0x138e
> +			IMX95_PAD_SD1_DATA0__USDHC1_DATA0			0x138e
> +			IMX95_PAD_SD1_DATA1__USDHC1_DATA1			0x138e
> +			IMX95_PAD_SD1_DATA2__USDHC1_DATA2			0x138e
> +			IMX95_PAD_SD1_DATA3__USDHC1_DATA3			0x138e
> +			IMX95_PAD_SD1_DATA4__USDHC1_DATA4			0x138e
> +			IMX95_PAD_SD1_DATA5__USDHC1_DATA5			0x138e
> +			IMX95_PAD_SD1_DATA6__USDHC1_DATA6			0x138e
> +			IMX95_PAD_SD1_DATA7__USDHC1_DATA7			0x138e
> +			IMX95_PAD_SD1_STROBE__USDHC1_STROBE			0x158e
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
> +		fsl,pins = <
> +			IMX95_PAD_SD1_CLK__USDHC1_CLK				0x15fe
> +			IMX95_PAD_SD1_CMD__USDHC1_CMD				0x13fe
> +			IMX95_PAD_SD1_DATA0__USDHC1_DATA0			0x13fe
> +			IMX95_PAD_SD1_DATA1__USDHC1_DATA1			0x13fe
> +			IMX95_PAD_SD1_DATA2__USDHC1_DATA2			0x13fe
> +			IMX95_PAD_SD1_DATA3__USDHC1_DATA3			0x13fe
> +			IMX95_PAD_SD1_DATA4__USDHC1_DATA4			0x13fe
> +			IMX95_PAD_SD1_DATA5__USDHC1_DATA5			0x13fe
> +			IMX95_PAD_SD1_DATA6__USDHC1_DATA6			0x13fe
> +			IMX95_PAD_SD1_DATA7__USDHC1_DATA7			0x13fe
> +			IMX95_PAD_SD1_STROBE__USDHC1_STROBE			0x15fe
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
> +		fsl,pins = <
> +			IMX95_PAD_SD2_CD_B__GPIO3_IO_BIT0			0x31e
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			IMX95_PAD_SD2_CLK__USDHC2_CLK				0x158e
> +			IMX95_PAD_SD2_CMD__USDHC2_CMD				0x138e
> +			IMX95_PAD_SD2_DATA0__USDHC2_DATA0			0x138e
> +			IMX95_PAD_SD2_DATA1__USDHC2_DATA1			0x138e
> +			IMX95_PAD_SD2_DATA2__USDHC2_DATA2			0x138e
> +			IMX95_PAD_SD2_DATA3__USDHC2_DATA3			0x138e
> +			IMX95_PAD_SD2_VSELECT__USDHC2_VSELECT			0x51e
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
> +		fsl,pins = <
> +			IMX95_PAD_SD2_CLK__USDHC2_CLK				0x158e
> +			IMX95_PAD_SD2_CMD__USDHC2_CMD				0x138e
> +			IMX95_PAD_SD2_DATA0__USDHC2_DATA0			0x138e
> +			IMX95_PAD_SD2_DATA1__USDHC2_DATA1			0x138e
> +			IMX95_PAD_SD2_DATA2__USDHC2_DATA2			0x138e
> +			IMX95_PAD_SD2_DATA3__USDHC2_DATA3			0x138e
> +			IMX95_PAD_SD2_VSELECT__USDHC2_VSELECT			0x51e
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
> +		fsl,pins = <
> +			IMX95_PAD_SD2_CLK__USDHC2_CLK				0x15fe
> +			IMX95_PAD_SD2_CMD__USDHC2_CMD				0x13fe
> +			IMX95_PAD_SD2_DATA0__USDHC2_DATA0			0x13fe
> +			IMX95_PAD_SD2_DATA1__USDHC2_DATA1			0x13fe
> +			IMX95_PAD_SD2_DATA2__USDHC2_DATA2			0x13fe
> +			IMX95_PAD_SD2_DATA3__USDHC2_DATA3			0x13fe
> +			IMX95_PAD_SD2_VSELECT__USDHC2_VSELECT			0x51e
> +		>;
> +	};
> +
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			IMX95_PAD_SD3_CLK__USDHC3_CLK				0x158e
> +			IMX95_PAD_SD3_CMD__USDHC3_CMD				0x138e
> +			IMX95_PAD_SD3_DATA0__USDHC3_DATA0			0x138e
> +			IMX95_PAD_SD3_DATA1__USDHC3_DATA1			0x138e
> +			IMX95_PAD_SD3_DATA2__USDHC3_DATA2			0x138e
> +			IMX95_PAD_SD3_DATA3__USDHC3_DATA3			0x138e
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_pwrseq: usdhc3pwrseqgrp {
> +		fsl,pins = <
> +			IMX95_PAD_XSPI1_SCLK__GPIO5_IO_BIT9			0x31e
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
> +		fsl,pins = <
> +			IMX95_PAD_SD3_CLK__USDHC3_CLK				0x158e
> +			IMX95_PAD_SD3_CMD__USDHC3_CMD				0x138e
> +			IMX95_PAD_SD3_DATA0__USDHC3_DATA0			0x138e
> +			IMX95_PAD_SD3_DATA1__USDHC3_DATA1			0x138e
> +			IMX95_PAD_SD3_DATA2__USDHC3_DATA2			0x138e
> +			IMX95_PAD_SD3_DATA3__USDHC3_DATA3			0x138e
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
> +		fsl,pins = <
> +			IMX95_PAD_SD3_CLK__USDHC3_CLK				0x15fe
> +			IMX95_PAD_SD3_CMD__USDHC3_CMD				0x13fe
> +			IMX95_PAD_SD3_DATA0__USDHC3_DATA0			0x13fe
> +			IMX95_PAD_SD3_DATA1__USDHC3_DATA1			0x13fe
> +			IMX95_PAD_SD3_DATA2__USDHC3_DATA2			0x13fe
> +			IMX95_PAD_SD3_DATA3__USDHC3_DATA3			0x13fe
> +		>;
> +	};
> +};
> +
> +&scmi_misc {
> +	nxp,ctrl-ids = <BRD_SM_CTRL_SD3_WAKE		1>,
> +		       <BRD_SM_CTRL_PCIE1_WAKE		1>,
> +		       <BRD_SM_CTRL_BT_WAKE		1>,
> +		       <BRD_SM_CTRL_PCIE2_WAKE		1>,
> +		       <BRD_SM_CTRL_BUTTON		1>;
> +};
> +
> +&thermal_zones {
> +	a55-thermal {
> +		cooling-maps {
> +			map1 {
> +				cooling-device = <&fan0 0 1>;
> +				trip = <&atrip2>;
> +			};
> +
> +			map2 {
> +				cooling-device = <&fan0 1 2>;
> +				trip = <&atrip3>;
> +			};
> +
> +			map3 {
> +				cooling-device = <&fan0 2 3>;
> +				trip = <&atrip4>;
> +			};
> +		};
> +
> +		trips {
> +			atrip2: trip2 {
> +				hysteresis = <2000>;
> +				temperature = <55000>;
> +				type = "active";
> +			};
> +
> +			atrip3: trip3 {
> +				hysteresis = <2000>;
> +				temperature = <65000>;
> +				type = "active";
> +			};
> +
> +			atrip4: trip4 {
> +				hysteresis = <2000>;
> +				temperature = <75000>;
> +				type = "active";
> +			};
> +		};
> +	};
> +
> +	pf09-thermal {
> +		polling-delay = <2000>;
> +		polling-delay-passive = <250>;
> +		thermal-sensors = <&scmi_sensor 2>;
> +
> +		trips {
> +			pf09_alert: trip0 {
> +				hysteresis = <2000>;
> +				temperature = <140000>;
> +				type = "passive";
> +			};
> +
> +			pf09_crit: trip1 {
> +				hysteresis = <2000>;
> +				temperature = <155000>;
> +				type = "critical";
> +			};
> +		};
> +	};
> +
> +	pf53arm-thermal {
> +		polling-delay = <2000>;
> +		polling-delay-passive = <250>;
> +		thermal-sensors = <&scmi_sensor 4>;
> +
> +		cooling-maps {
> +			map0 {
> +				cooling-device = <&A55_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						 <&A55_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						 <&A55_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						 <&A55_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						 <&A55_4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						 <&A55_5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				trip = <&pf5301_alert>;
> +			};
> +		};
> +
> +		trips {
> +			pf5301_alert: trip0 {
> +				hysteresis = <2000>;
> +				temperature = <140000>;
> +				type = "passive";
> +			};
> +
> +			pf5301_crit: trip1 {
> +				hysteresis = <2000>;
> +				temperature = <155000>;
> +				type = "critical";
> +			};
> +		};
> +	};
> +
> +	pf53soc-thermal {
> +		polling-delay = <2000>;
> +		polling-delay-passive = <250>;
> +		thermal-sensors = <&scmi_sensor 3>;
> +
> +		trips {
> +			pf5302_alert: trip0 {
> +				hysteresis = <2000>;
> +				temperature = <140000>;
> +				type = "passive";
> +			};
> +
> +			pf5302_crit: trip1 {
> +				hysteresis = <2000>;
> +				temperature = <155000>;
> +				type = "critical";
> +			};
> +		};
> +	};
> +};
> +
> +&tpm3 {
> +	pinctrl-0 = <&pinctrl_tpm3>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&tpm6 {
> +	pinctrl-0 = <&pinctrl_tpm6>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	bus-width = <8>;
> +	non-removable;
> +	no-sd;
> +	no-sdio;
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
> +	pinctrl-3 = <&pinctrl_usdhc1>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
> +	fsl,tuning-step = <1>;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	bus-width = <4>;
> +	cd-gpios = <&gpio3 00 GPIO_ACTIVE_LOW>;
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-3 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	fsl,cd-gpio-wakeup-disable;
> +	fsl,tuning-step = <1>;
> +	status = "okay";
> +};
> +
> +&usdhc3 {
> +	bus-width = <4>;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&usdhc3_pwrseq>;
> +	non-removable;
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	pinctrl-3 = <&pinctrl_usdhc3>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
> +	vmmc-supply = <&reg_usdhc3_vmmc>;
> +	wakeup-source;
> +	status = "okay";
> +};
> +
> +&wdog3 {
> +	status = "okay";
> +};
> +
> +&xcvr {
> +	clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>,
> +		 <&scmi_clk IMX95_CLK_SPDIF>,
> +		 <&dummy>,
> +		 <&scmi_clk IMX95_CLK_AUDIOXCVR>,
> +		 <&scmi_clk IMX95_CLK_AUDIOPLL1>,
> +		 <&scmi_clk IMX95_CLK_AUDIOPLL2>;
> +	clock-names = "ipg", "phy", "spba", "pll_ipg", "pll8k", "pll11k";
> +	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
> +			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
> +			  <&scmi_clk IMX95_CLK_SPDIF>,
> +			  <&scmi_clk IMX95_CLK_AUDIOXCVR>;
> +	assigned-clock-parents = <0>, <0>, <0>, <0>,
> +				 <&scmi_clk IMX95_CLK_AUDIOPLL1>,
> +				 <&scmi_clk IMX95_CLK_SYSPLL1_PFD1_DIV2>;
> +	assigned-clock-rates = <3932160000>, <3612672000>,
> +			       <393216000>, <361267200>,
> +			       <12288000>, <0>;
> +	#sound-dai-cells = <0>;
> +	pinctrl-0 = <&pinctrl_spdif>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
>
> --
> 2.34.1
>


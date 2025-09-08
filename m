Return-Path: <devicetree+bounces-214578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D84DB49B37
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 22:48:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34A723A9F4F
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 20:48:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62BF22D5437;
	Mon,  8 Sep 2025 20:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="TSQxvLCH"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011071.outbound.protection.outlook.com [52.101.70.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066CB22A4EA
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 20:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.71
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757364504; cv=fail; b=ovqcbzwGF5yoR2aNzw17ls+9b+w4EOkENUAK+CPztG1xyID77D03BCvVJHo1iv+F/Qayl/7NU6M1NMba5C63J4bytD019nt75xCepotVny4TDYwFQrZYvoo8PkOLocDggS2Pf1w7zUHbMD1UDVDA+RIyH0G7thjJIdiV4/ihIDE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757364504; c=relaxed/simple;
	bh=kNefc1ma+Ciin2lT9GwXd7oX0rJukEE32oT7nDoFhwk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=gR2tYVmWFaX15ZaPxOS1ST4W/QAQ133/LAzbfDqnT0HnCs0XPbA8IP5iBQ6kYT1eS3xr0PxeBpbW1F5JJhtL8QXQd2lSRbRAhQ2/Bbe8Y1tnl30sfAhTokGcHT90rLrNa1iZfUPrOsu40D3Ijo9CsqDAKrzV4dkHJJc7Scic0iw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=TSQxvLCH; arc=fail smtp.client-ip=52.101.70.71
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ps8tefpsHLJHxqc+4CuFD2FZu8PvrP9eMTVuTFYdZDy+7tTxpb1dp4QkbgTY8I3K09MSgV6ELUdZiE6IJZYU0FRVK2ejiXuFVGamY/Vd29Ij+A3Wop5neWZ0zNYBmfTP1w+3aHMLSchDdSrkwEZNNP2CS3XMl5IW15xH8NeNZjdHty1v5lymB0iDA60pVeH/JZkXASGqhwaYV9lFLRYymYYHtAjEpYkIMPBF+fR56mD4Zw71CXmCur31clAfIJBEuxpDASiS2kq9Qo+l8WEPv1To73eRLsFiJEd4CLsGqjQcnBAMHArFQQn8GCYwL4D1jwMsPfAsYzIna7u+L2fRQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hh9b4BkagGKo9SWUNW25NkG9et+O3MOtcf8jrVG6F9w=;
 b=BuHs18+2rhVHRqJ/B+mjyA/IXhK/DYcmOJHEygm/fsPGAk5a5hiyKDdQIaHZ7C/F/hecndzdKMbZTaf0jnMy/r7qY6g1/DKaPBKrsf/5dI4NWgB88PDS7fRHAuk4MgMBpZ9ypgLOK1qoI9qNM1mFTsqPXBcMzq60YlVhspqNQ7Y43qtI1wVH45jeeYCdmNDPxy3wZJ/VagyrcmKJrVf5np3ZWF87nVWX/TSo8Bk04e79irQXzIGFbPCc/J5D8AEZWMC+rpN+cPOCrjFdL7/vZF/bGzs7RH0T7Xa+Do3n7MM3T/zBpny24vHNEBL03FwDSAYYA0uK55KtfvILVI5nTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hh9b4BkagGKo9SWUNW25NkG9et+O3MOtcf8jrVG6F9w=;
 b=TSQxvLCHB/5vXIOWTLPzBiNTvmSUqLpc5DBiNVBxOd9Eh3Z9vrEGjHCiUyrefKQGxzWTw1odrTzn2PSWISlwULTbznpc6qa3syYmJlFqPMQ1YFdE3eHVf9u/D3OHSmABOqHZ98yLKXD0TMbjOEQTTNjjinAD2k7f8FC/D4ZA2cAggEtRNXPUCwvVixgUh0qCGBXwZf3W8EJZiznDwbIBfp7QyFGkxwYOqGBeCIAw994Y9HzZnVyqf/eapOi9bfT9Kx5CnzjKx1xleqaRSYrq+Xmq6d1/xX7pVkqAlwMSmgoId05CpiBm6OzAZyEAqlM0L3rBnuMTgZa4yujnNelt8w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB9PR04MB9626.eurprd04.prod.outlook.com (2603:10a6:10:309::18)
 by AM7PR04MB7031.eurprd04.prod.outlook.com (2603:10a6:20b:116::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.12; Mon, 8 Sep
 2025 20:48:19 +0000
Received: from DB9PR04MB9626.eurprd04.prod.outlook.com
 ([fe80::55ef:fa41:b021:b5dd]) by DB9PR04MB9626.eurprd04.prod.outlook.com
 ([fe80::55ef:fa41:b021:b5dd%5]) with mapi id 15.20.9115.010; Mon, 8 Sep 2025
 20:48:18 +0000
Date: Mon, 8 Sep 2025 16:48:11 -0400
From: Frank Li <Frank.li@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: arm: cpus: Document pu-supply
Message-ID: <aL9BC9UC2kZ105Hy@lizhi-Precision-Tower-5810>
References: <20250907152513.590218-1-festevam@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250907152513.590218-1-festevam@gmail.com>
X-ClientProxiedBy: SJ0PR13CA0138.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::23) To DB9PR04MB9626.eurprd04.prod.outlook.com
 (2603:10a6:10:309::18)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR04MB9626:EE_|AM7PR04MB7031:EE_
X-MS-Office365-Filtering-Correlation-Id: e164e673-365f-4279-71ac-08ddef190a7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|1800799024|366016|376014|52116014|7053199007|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?fm9SYsArwfPghjtC1uKgIqlOTztvIf1kn8/KWZJlnbYeNuJdhH0V05jWkigx?=
 =?us-ascii?Q?x9Ev8xicdDZIkKRrnkvIaiSHixm/2MARNgkkCxPkMFzwVX6h87kVff3HfNZN?=
 =?us-ascii?Q?+S7fDR5WzbXHg+B6BSE2TcEuWFOImNEfcxu9RRMUxcddzx28ztc2fr7EcWcD?=
 =?us-ascii?Q?vDVODZBWAutLGTtmxRBgASu55GLWDJ4mCyDSUHnH3fy4LpV+VR0ZqfWnxcY+?=
 =?us-ascii?Q?6xQFUiEnfckDsiscuAgPYvXKcHJ1iHuMUQUPq5TDy56RNX3hQyRyzes89g2+?=
 =?us-ascii?Q?2kWJ1JKTYzyx588TkZyXd0Lw4F9TSGjwQh9PmuCUdnIaO1gd+YhOs1kwWZaZ?=
 =?us-ascii?Q?KHjEtE5+FF4Cm70ZzCXKlSgsDWiV81+Y/9GUCr+rvPgbMeW+59URnVAGAEFx?=
 =?us-ascii?Q?KusosQ2lADCSrJxeG74rLyqIV9NF5lQMfHyfV/s955CcNUIYd8HIaeTAJH7r?=
 =?us-ascii?Q?xngBJ4tzcVZ2mEEpxEXgTtKu36EO1CO+CkXsIBOD4u0/nDZqYP8v1B/im5Sp?=
 =?us-ascii?Q?2jAAz+tY882/336zIoqMmLvhBZF0tBS58wOiVR6epGBQasppBUXZC56K+wqa?=
 =?us-ascii?Q?bhL3U07mjmaWS2XoFQeosAlAKxI9xWACFyLYRoGAu7S3muHIbMxqw7rPfLWn?=
 =?us-ascii?Q?tBjrBSfSiwZhhV8/jZrHWesYJh9BL+goYxLni8CRdHADAbdu35bchH4kz+bA?=
 =?us-ascii?Q?EcruOhFuT6dsLmSimmCkUxGShMpJI2xWKjqWOn4Z2bySf3T+6c2eJRiJbLgR?=
 =?us-ascii?Q?X3sbgY2oQIJr4q36vOfzLt/3fK3INRsVXj0H419lJB/DO7bUoAjsa0QRIfyp?=
 =?us-ascii?Q?4wtxkHz1DZt37vA1u2LzbUQMSpnnNHGJqza8cJCtkYV5A+6FcFx7aq+fWfTF?=
 =?us-ascii?Q?x+tdcDZHLxclCcIcs9rppjMF3qIsJr5VgEMGtMkqrrD1gs9Hh+IaBMFTgcQx?=
 =?us-ascii?Q?q4L9FIUNFwGuKbAravb8FdmPg59QRNxnxdKBvwn3nPYpSGAo3ejupmALHXwn?=
 =?us-ascii?Q?zMGTpulSR4DlSK6dRqj6S6KS4Qsl3EiJLI1vO37B4bwwwqnG2gKP8BvwumxH?=
 =?us-ascii?Q?cDiaBPKa+dCm7+j6rmybcg4R67g/pxD8iiV/aOGe3Ft8l4GZw6MGgKk8OXcJ?=
 =?us-ascii?Q?MQ01hWeXJPrQKuOvGsnsaqwXi3/Y0joJkYuvA1IZLtuESdn1JHa1wAkc/8BU?=
 =?us-ascii?Q?I28rOHiOcuBJap12KKfQrn5xhfbSQr9ONZizY11ys02Yh8XvYxav0klN80S5?=
 =?us-ascii?Q?oih9UHhp1cJ/Zrbff5g6LLXM7SSVl6HUDhaDI5IFn1d4rYW7BWom1K6IzbiS?=
 =?us-ascii?Q?eM3igGIDTcfXS2Y//4Xu2bkOMaLl/fV9KHm8lkscFfI5XJbWsAGeMYTAz9UA?=
 =?us-ascii?Q?BJKHCil/lUM0GeVUT2GHelzdd1SP8NhtyKEHt6n7j7CRopaTto9960S52fxp?=
 =?us-ascii?Q?tuI75+5WpXMjjNlPTcZzCcJdbbkY6B16ijwfydCUtMxG7THEp60MGw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB9626.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(366016)(376014)(52116014)(7053199007)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?fZ64wk/uAQYD8CPB04jPTJRSTiddRmTU/Pb+DhVEX0a+hCkiAuy1xijqyEpZ?=
 =?us-ascii?Q?ZVF886sSvRxxAjZZfmlvn745/kkgO95//f5O/mZotWxMlPmyDKfwUO9bPOHB?=
 =?us-ascii?Q?fw/DGIVsa6Yurby5MsNq81rmw6afnWMD0yvvCSoVz3HodMxrotOowsCB8E2H?=
 =?us-ascii?Q?FFNL+AsuaAZ61ROInbwUQwddMrXbHt4tMDtLDPk+HkzNSH7x7p6IEaScYinb?=
 =?us-ascii?Q?m0a7w8sVCYL6Opm/6eqMn8Cq9+GYk0Xf13AQi2R1kmddIUHAjFebeby06p0g?=
 =?us-ascii?Q?+/2GNGMtC4fwf6aTsvvIfL3U2ng0fRw+jRWk6qy0hcck6M+ND/HvIP+Zbgz7?=
 =?us-ascii?Q?vUpASCYe6gVkEeaD2AK6+z8rafIl/+rdYVPfK+apndjFOrlNbB03YazC1eHO?=
 =?us-ascii?Q?pVNWfSPNMjoQMOrMdlQRnlMpRBNz0aw1Ik/vZXtoAKjUrIkAowFW8qrno5zv?=
 =?us-ascii?Q?EIwLBfqkIWOhh6s3To0kEhlV6Go35MgH500xv6SzMPfxoYT++jMNB0xRXIvI?=
 =?us-ascii?Q?3tom402/hxAerOfSGxaUVMFaIM1uU9XStSXhybnEMN/DujLqFPdtsAf8MQ41?=
 =?us-ascii?Q?qd9ChFlyFk9IoTYNcCUZPh6nSjSs2IdrZcz47ismH9UcyXqV51FBTcwAc9Xk?=
 =?us-ascii?Q?7HLgedw04Db1OyuJqQ9iUSDfWklCl9vtrHQxiF6xoBfrObGV/UBa31d2NXfi?=
 =?us-ascii?Q?7ynm3g3wo8JLBtAoxFA2SzNhy53cfjFnoI4PFlevgMjOldDt4QUHPhgibPTj?=
 =?us-ascii?Q?GEHS4LknBMF0o95YNW40CHthLEHLvmeLlk4Ya67T7rdCaN2s+YJXAnlE9cO7?=
 =?us-ascii?Q?L7jGBOSoJvnt04VwQo9RnTUKcp7+eiJAQ6qgioHMemUyPGP90tW8rCTaRuro?=
 =?us-ascii?Q?pd8zQaL2pFZl1B1CFb7nS655cZwPpG8KB3ULeSzNXCtDu8R7EwqB/ZHu7+01?=
 =?us-ascii?Q?G9k4l6oxpUIMCmw57TcONGoJ5FDoUVs3CZSX1ljO9/90FZsDQHjS+TOjQZkw?=
 =?us-ascii?Q?rramoz62IKyo15ptTQWNRxjPDc5ifLhkhrI4Pk2oeMFsmXrTEDi6COJb4J9g?=
 =?us-ascii?Q?jRfKPxW4L6p1Y2i+b06QryOIYRer95Jq1pVddaXEVCeRzhD3GQkdy7WwRSHu?=
 =?us-ascii?Q?bhwsCNciVaxKKhvPjsQZgrbEgsqWFFyfdIOtVGKXj4lcBYQbUH8ow3cr6wTN?=
 =?us-ascii?Q?WgJ0rGJsSpqXMKBSNrer5KgSU0tm6yukUOiKT+6H6RKhxfRYSMPVV/tBBd+g?=
 =?us-ascii?Q?vktrFmxja/ZKye6Jh2IxsHp9VXFVeOJn3mRB3OBNYHFtsJzYdbnroYBCH3xR?=
 =?us-ascii?Q?1wRMrJ5McqTyCBu1y6ORo/YUEp2ymGTR9FwgIIi9TX8BrsK6zqMyCtRceZ7M?=
 =?us-ascii?Q?vx6QlczDRGQp2RFgj0rWKz6P1No+uOiwI1+xujf23q0nGlOOK1aohEvWZ59v?=
 =?us-ascii?Q?tGKMNRRknbFnt4/8ZPQ1pUDD+qOdH5xmlRoKc4YaIhx0EqDOoqFY67WmAqSO?=
 =?us-ascii?Q?uATez3Uhcsmrt5luhiyk1F5H9OslHswVhovqjmdMu+UsFnhHC+H/lxumvdFW?=
 =?us-ascii?Q?FRRkq2p6psB6GmsO5Gj+45L0jeeWnIdEky/hbXkO?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e164e673-365f-4279-71ac-08ddef190a7d
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB9626.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 20:48:18.8949
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uYmMVe+NWFAJbpXzQwMTIOFKZnxhONkNV2TPUKW2QlRlILQMmWgxGLK/Ia3X/3STiZvZtgCgdppH9R4fkAIEag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7031

On Sun, Sep 07, 2025 at 12:25:13PM -0300, Fabio Estevam wrote:
> The i.MX6Q Reference Manual describes the three digital LDO regulators
> as follows:
>
> "10.4.1.1.1
> Digital LDO Regulators
> The integrated PMU includes three digital LDO regulators: LDO_ARM, LDO_PU, and
> LDO_SOC. These regulators provide power to the ARM_Core power domain, the
> combined VPU, IPU and GPU power domain, and the rest of the SoC logic (except
> always-ON SNVS domain)."
>
> imx6dl.dtsi uses the correct names to describe these supplies:
>
> arm-supply = <&reg_arm>;
> pu-supply = <&reg_pu>;
> soc-supply = <&reg_soc>;
>
> 'arm-supply' and 'soc-supply' are already documented, but 'pu-supply' is not.
>
> Document the 'pu-supply' property and set it to deprecated.
>
> This fixes the following dt-schema warning:
>
> cpu@1 (arm,cortex-a9): Unevaluated properties are not allowed ('pu-supply' was unexpected)
>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Reviewed-by: Frank Li <Frank.Li@nxp.com>

> ---
> Changes since v1:
> - Explain that PU is a valid name. (Krzysztof)
>
>  Documentation/devicetree/bindings/arm/cpus.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> index 4f1906d9fa68..c8a72fd02530 100644
> --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> @@ -350,6 +350,10 @@ properties:
>      deprecated: true
>      description: Use 'cpu-supply' instead
>
> +  pu-supply:
> +    deprecated: true
> +    description: Only for i.MX6Q/DL/SL SoCs.
> +
>    soc-supply:
>      deprecated: true
>      description: Only for i.MX6/7 Soc.
> --
> 2.34.1
>


Return-Path: <devicetree+bounces-242412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DDCC8A029
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 14:28:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0B02F4E3ECB
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7C32326D6A;
	Wed, 26 Nov 2025 13:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="tYkojSci"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012014.outbound.protection.outlook.com [40.107.200.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6475D325707;
	Wed, 26 Nov 2025 13:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764163717; cv=fail; b=DTcinUlUoJV8uv8dsKY89hywLVR6ZDyct2Zk3AqK62FV+fQpyGEeSQqW2CXMIZNcvKMNV6A8Bt2yh1jtOS4tz1GAc+wftxq25ZDPYg8QOTYoUoLYp5MkMPX3CLfK2TYCq0gKyx7HS5ASdY5l+aswgfsXhXcXk3006kqdEj0DKR8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764163717; c=relaxed/simple;
	bh=1VNYsVb/fpz1y4Zz/5emeD5IyzzujlNuq31+oUhwrWM=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mKV/bmv3BlcUnykI4A7vUjnP4gnRp/m4d1eVGy/PoB0VWXeeTxA/44WvDAIicLv9soM42B4Xahf+Jg6Qn4iHw9htQR04UTCBgRkkRxPXsNJkrzMvhJDtJHSDrKWUjGUbdKyiCfX1kEY9PnBgP+F4LiXY47ZtNScjFCA9KSt8kF4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=tYkojSci; arc=fail smtp.client-ip=40.107.200.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fQU8Ne9ycRi2kplNEuluhOUm8Jhz4Yrn7Bynzl3MWjxM44PB2QifcxCpf6uzPH/i72jyDcaGW6xnuu0aBmsjXoTTFOIGtQ2VokG/llakkXGlQpqjSNwOmuHhOrzZMAgQerxYez196Qr7w2wAGrWj5yQmfLU7ZlvUF45QvwhDa5+WeHYrbwx8VtNn8GLRjNuMeUJYC/i4ymOpmWu8TJAcPV+HQHW9ZnIFudSstPpAG67QssT4T5vtadfd/G6EmCyy/otgxdCY/oaFwP6vysTj2gfaWetFbgT4SRT9XB33bW0YdIDDFCHQTDsQ5aL/cbuDKhsifmWnO1CT+MROZGEFhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b99zApRkZ96XDygU+smoY9Yb0Iz5i9S3gppgISyvb3Q=;
 b=YHoI8/oB5vTN7ttCi7JBuewKnxe28aE+fv0rnwaECdvdYPokTbakXMGekt/NypbGdokAu1joNs98i1uQj4AaBCX1GiSnHYTyIA3WQ+k+16wZ+MWUHlQybZBvAQcWftU6AcIP3Yq3a1A3qxd5VCtPnIU98jm78+QMt2xfujTKugSDqdYOmfo3elhc16dHn6tuDQGCuNRSC/79OWyRYrL4ln9SapN0BBeqZr2wqa7rNO+FfYbgOMeWwqkY0fKOK8x7z8nezOKEOL4Yx/W4VydTDzU/Cor/XPOomeCWFOKR20WumzvVDvhzBUO1ksbs4u/KSkaYN+3OxnXxAyobIBlGlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=lists.phytec.de smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b99zApRkZ96XDygU+smoY9Yb0Iz5i9S3gppgISyvb3Q=;
 b=tYkojSci8JyrFl9kwSv6lbw6Eh1ruXYT2F7BqYoHPqL9GSEjjNtqNDsAbq5BbIO/yPnxDwoBXkVyakBjqnec/2F4kftKfFTijTWw2CEkLYRW+k1F1y0ihcpToborS4WoE1/gl8Yv172plE2wIBqsygfTL2AOzvQRq/+p12PilEk=
Received: from MN2PR05CA0003.namprd05.prod.outlook.com (2603:10b6:208:c0::16)
 by LV3PR10MB8204.namprd10.prod.outlook.com (2603:10b6:408:291::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 13:28:29 +0000
Received: from BL6PEPF00020E5F.namprd04.prod.outlook.com
 (2603:10b6:208:c0:cafe::ce) by MN2PR05CA0003.outlook.office365.com
 (2603:10b6:208:c0::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9388.4 via Frontend Transport; Wed,
 26 Nov 2025 13:28:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 BL6PEPF00020E5F.mail.protection.outlook.com (10.167.249.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.7 via Frontend Transport; Wed, 26 Nov 2025 13:28:28 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 26 Nov
 2025 07:28:25 -0600
Received: from DLEE213.ent.ti.com (157.170.170.116) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 26 Nov
 2025 07:28:25 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE213.ent.ti.com
 (157.170.170.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 26 Nov 2025 07:28:25 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5AQDSPY01280627;
	Wed, 26 Nov 2025 07:28:25 -0600
Date: Wed, 26 Nov 2025 07:28:25 -0600
From: Nishanth Menon <nm@ti.com>
To: Wadim Egorov <w.egorov@phytec.de>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <upstream@lists.phytec.de>
Subject: Re: [PATCH 2/3] arm64: dts: ti:
 k3-am642-phyboard-electra-x27-gpio1-spi1-uart3: Fix schema warnings
Message-ID: <20251126132825.axrkcjj7gsexn6br@lankiness>
References: <20251126084403.24146-1-w.egorov@phytec.de>
 <20251126084403.24146-2-w.egorov@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251126084403.24146-2-w.egorov@phytec.de>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF00020E5F:EE_|LV3PR10MB8204:EE_
X-MS-Office365-Filtering-Correlation-Id: 810da059-d912-4419-d651-08de2cefafb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?/XLMLwH+rq+gDsZ+p4GpEQwSe3X02MGkX8uLGbWzoGFJgOoLiPtz/WwfV9e2?=
 =?us-ascii?Q?LOGzzjf9W8Y+DANqr5bX7PpaoisO7rswx2dLulvtKrUKuzhfXtQf0+6ey3MA?=
 =?us-ascii?Q?t8IiamqL0HeXiJOhE4KmJO19yGCVgbruIesxP7c+8SO8yw7ChKm4Ci8Enxdv?=
 =?us-ascii?Q?gW0SGZb+uDy0oxkYXeINrI/M9CDttFcdA7GQtfGjeccKLrgASmer4CfsTa6C?=
 =?us-ascii?Q?gMvahiYoO7d+JmDmr28oLRZZymnL/TvTMVxhl2L8pGB9IfhuldnTstG6n6V4?=
 =?us-ascii?Q?oNBKaympKnKneLBYpShfhoj9MFcVnFaJRyo4u17lOeZhKDz+E4m9NcwokPDw?=
 =?us-ascii?Q?5bN885vm0TncGhiLuoRqYPTpU6kVkxJY8LifXB2qvXLOBqu6AVVQYWmFLlOu?=
 =?us-ascii?Q?kJjV6LAznqwG8569O+uRb8ons1/d4E5pBy2hkqyTnirh1TJjd//DSHhz8tyc?=
 =?us-ascii?Q?h8zOvGm7HGoDxDISLv5MW3zRzJwqa8eN1pOd70hS7UMdHCqcROzln+6X0iJa?=
 =?us-ascii?Q?9YSIv7sPfmaCZSw55mIEvH2llOAdCWpjGeDW+fC+3vm+tfptu4ekXk+hTDkq?=
 =?us-ascii?Q?XUJeTyEWUpbOv8M2UuNC6eYHT8kNDGwmgyC5TEH9hGf4A2kNxqS7pt684geS?=
 =?us-ascii?Q?W+UzS+Z04ToCCk9z13gta/D2GzXHDyrsTwdSE34wyROULfSqMfZVc6j6tXte?=
 =?us-ascii?Q?K60fxY5Pz4G2CHxKKSl9slCH8ejBV1KhbuXRXgnDmC5ck7zBreiej4eXa+d/?=
 =?us-ascii?Q?0XqWE2V9K3c0bFSB+EBVm1CVAwPgFLOT1dbNrs94qnj1hVBHhtDojy7mQoyh?=
 =?us-ascii?Q?jNUdb3zd716EKKJdq16y4ueXZQviX4Jl6Dr3teij3p0JvCqXtCSqfMGrxTbt?=
 =?us-ascii?Q?39UuLcmahd1GuhryPTjDcbede7D2avFrrjEW6gVTtybjsmrLivcEkpp6mrFV?=
 =?us-ascii?Q?nqs9hIaoHm3B7h4JQ0lQI8V0CrBrWRO180F0e6qOwEpeKrtO/toK9foMiUUj?=
 =?us-ascii?Q?l63LYowLkHcItQbPWOnTEPbQP8gLjGsTdXFUVE2eoFPAmOLARESl6kGXmLuH?=
 =?us-ascii?Q?JJBQIbcCjg7nojweQdNwW7YVkLUBEv1QL8Zuz2SRCMj8vgAXPpap3jM5X5hh?=
 =?us-ascii?Q?TVE7nN8ldabRq4Hax6vP+jw6RGBudK2t6eRkV3UJxhP8vD7KoAAB3SMFe7C3?=
 =?us-ascii?Q?znE6gZk8u/XD83JRURlNwnt7JbbBbN8HOqC1dIknQe91GehHrPofo4DOvJsB?=
 =?us-ascii?Q?YD/BOQ2VOk+a/OT6+DsQrMAU0gKOrIuxLgPkdy+JgqfXmAoBtRUjB06gPAxs?=
 =?us-ascii?Q?ERTeoTjammVo3qfhkPyv7h6A+kSgtbJ2JMnZX9YRYF5OzEggoirnhxEaDD+4?=
 =?us-ascii?Q?hvf/uLam270vcZbxqfv7yGkNl7GFxV/kGwJU4gK80FBEguNNJrwqOBdhlRgj?=
 =?us-ascii?Q?+XRlkFg6zPrY2VujeiZeVujBlX5foGJGmYmpuf/Q8G3P0GzbYYxQ+oWw0Wue?=
 =?us-ascii?Q?oMlr84Y24wAq/jMv9KtbzJNdf8wFuokklNVMSFr+ii8CHc5SKN8W75KjyO9R?=
 =?us-ascii?Q?2E8Ckn9rfyQDSc6bbnk=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 13:28:28.8994
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 810da059-d912-4419-d651-08de2cefafb8
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF00020E5F.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB8204

On 09:44-20251126, Wadim Egorov wrote:
> Rename pinctrl nodes to comply with naming conventions required by
> pinctrl-single schema. Also, replace invalid integer assignment in
> SPI node with a boolean to align with omap-spi schema.
> 
Fixes: 638ab30ce4c6 ("arm64: dts: ti: am64-phyboard-electra: Add DT overlay for X27 connector")

?

> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  .../k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso   | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso
> index 996c42ec4253..bea8efa3e909 100644
> --- a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso
> +++ b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-x27-gpio1-spi1-uart3.dtso
> @@ -20,13 +20,13 @@ aliases {
>  };
>  
>  &main_pmx0 {
> -	main_gpio1_exp_header_gpio_pins_default: main-gpio1-exp-header-gpio-pins-default {
> +	main_gpio1_exp_header_gpio_pins_default: main-gpio1-exp-header-gpio-default-pins {
>  		pinctrl-single,pins = <
>  			AM64X_IOPAD(0x0220, PIN_INPUT, 7)	/* (D14) SPI1_CS1.GPIO1_48 */
>  		>;
>  	};
>  
> -	main_spi1_pins_default: main-spi1-pins-default {
> +	main_spi1_pins_default: main-spi1-default-pins {
>  		pinctrl-single,pins = <
>  			AM64X_IOPAD(0x0224, PIN_INPUT, 0)	/* (C14) SPI1_CLK */
>  			AM64X_IOPAD(0x021C, PIN_OUTPUT, 0)	/* (B14) SPI1_CS0 */
> @@ -35,7 +35,7 @@ AM64X_IOPAD(0x022C, PIN_INPUT, 0)	/* (A15) SPI1_D1 */
>  		>;
>  	};
>  
> -	main_uart3_pins_default: main-uart3-pins-default {
> +	main_uart3_pins_default: main-uart3-default-pins {
>  		pinctrl-single,pins = <
>  			AM64X_IOPAD(0x0048, PIN_INPUT, 2)       /* (U20) GPMC0_AD3.UART3_RXD */
>  			AM64X_IOPAD(0x004c, PIN_OUTPUT, 2)      /* (U18) GPMC0_AD4.UART3_TXD */
> @@ -52,7 +52,7 @@ &main_gpio1 {
>  &main_spi1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&main_spi1_pins_default>;
> -	ti,pindir-d0-out-d1-in = <1>;
> +	ti,pindir-d0-out-d1-in;
>  	status = "okay";
>  };
>  
> -- 
> 2.48.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
https://ti.com/opensource


Return-Path: <devicetree+bounces-144010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A7BA2C848
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 17:05:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDC9B3A88DC
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 959E81EEA23;
	Fri,  7 Feb 2025 16:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="CuS4COOj"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013035.outbound.protection.outlook.com [40.107.159.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331C81EB1BA
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 16:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.35
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738944297; cv=fail; b=Jk7+PZIS3H539WZdMMC1OwO8FyztPYWQ4gVvQSg8sLT1ZUHzqbXYwMADSZhzdDHAxiomoh1tFzF7ZF2PCvlKLD2QJkLabo35wELjI4n2YY9JHQ1OzFuT4InDiN/baZLP8vKbJ0bAFGRVAN/WUKbmCdbhanPeozaRfLKjdIRddrU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738944297; c=relaxed/simple;
	bh=jc5pKuTOOX1M+3N3gBhHhfYB9wYLMxU2MbkItBPYrcw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=Q3dbcy8Ev4cWIAyTzcnNjqH/yzABjhSJ4Q5e5ocPLhhjX83ZxO6XzfKDAnUZc63p2jnsCUJNauhwEnzO3Ne5aHoJVlXO3VVhOard53cYNXCt/StmHazOgWpZqXT5proQvF9Z/4Z+VBUXobB63o8lsw948tpi8ZWp+LrFwF/9iCw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=CuS4COOj; arc=fail smtp.client-ip=40.107.159.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cF064I3pfa2T0dVSWmKSVgw1xN21ux40bYKvn0KA9pqpeXBDa1ZZd6WNUahSSrwJ2TsnrIH+xK2MN3wHGgDfr6NfkJotICOYumcQRgPDR1qWNDx1dRyPFbFRyUBCfHf2OKcqoCv6RbZO7yos5gB402XKymjmRnE2FrVyDRviQCk8WGWxv2KH7X0YL8O4ffn6qb/YcIlcCJ6x7SFklyBq9JAhYxvxoQZpRe03mlIx8L0MXALBeyYpygxc3LVi3z5ZWfgpfuMKsClxAy7NThkhasUGNnfnNEJzawL4Kpw09ZebGanOTzNaZy+WfGcaDWiMKt9ranpVw21sNs8HNAfEOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+oLQeMbJifdne4SBDc1v0kcVsA3kayRbQPRLmAZmH6g=;
 b=JTev3BWAg6FmTnwkOXP5m6WzbOhVstjB9NLJ7yKwJBMmKmG8f5JoOrz9laGye+qEXIpBlOJjZfQIoiyWsnidrNlYSnP5o8sTarOhGd5aMHNBt0e/zRAqBB0+69KSdJBuOgKolg7k19kQXDngdMKJCITPsSczR8hIhDTUxBnUiaOcywYGKS4LG9RwFRYVU6uu/3L/tAwFuo4x2eiTsUatQIPtd+cxZuEgdF1UIKaaY45kjsQ9t0GfLEKKR0VslxNggaQdykl8CgMYjETJ+9SvKrN+i5HYHshq3mpUcFhkic+Pnxi+qOUIB44AVuteHdvLN3EPd6N5HiUv26FVIl4fpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+oLQeMbJifdne4SBDc1v0kcVsA3kayRbQPRLmAZmH6g=;
 b=CuS4COOjFY9COKdLxfXb3gERXUdQtJ0wEpxW3sTUAgPAj1op8ahSoP4U6LABL9FD5IamZvHsOzks0ZmAwztiD2Gb8ZE1PpfdbkdNKZVrcJ4Qz0lurVki5yyGJQv/fAAz7WCdqVDZvWd4mA9RQ4z2ylFXdO6bX2dTAoxe9NR4QKqBG0so/P+W1BaT5qpnAf9SktqJp3idecb6Gd8AUfFcV9iGDwFNtwtH3s3vYoqdVJxgEI2j6ZNjpy8UJ0YaesfIgf8ZdbMLHWmNJYqQjkqu7PouJho46gOeQSSfFHpf9YhfzDRDaNfy8m3np/Wi1BRTHtcip/X4G+nPxTaj/u4fww==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by VI0PR04MB10173.eurprd04.prod.outlook.com (2603:10a6:800:245::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.11; Fri, 7 Feb
 2025 16:04:52 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06%6]) with mapi id 15.20.8422.012; Fri, 7 Feb 2025
 16:04:51 +0000
Date: Fri, 7 Feb 2025 11:04:44 -0500
From: Frank Li <Frank.li@nxp.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: disable IOMMU when running rk3588
 in PCIe endpoint mode
Message-ID: <Z6YvHCT51CQxlqkL@lizhi-Precision-Tower-5810>
References: <20250207143900.2047949-2-cassel@kernel.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250207143900.2047949-2-cassel@kernel.org>
X-ClientProxiedBy: SJ0PR13CA0209.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::34) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|VI0PR04MB10173:EE_
X-MS-Office365-Filtering-Correlation-Id: c8bafec7-72f6-48d0-a5e0-08dd47912798
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|52116014|376014|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?i3bMA8t3QQZsO22gc40yZWO/UPBSWW6kbkZNvDb7qMv3wSpWL5TLSe3bM6f0?=
 =?us-ascii?Q?xYeYmavmbdFmMmYadWXhNJQVDy04nno4OGP8ZU6WR2DtUpBxHWqZ/Ifvtnto?=
 =?us-ascii?Q?alGKAkXcAyu6WVhqoqhgdBtaAw2sgOp2JWKZ0I6rrpp5ISikYat0cU4ipS3t?=
 =?us-ascii?Q?k/s5zWkTvOy+b3iJ1J3ZNDdGZPBuqxKOO1ZIVeOQmUCzunB01uPCAVyT7CGM?=
 =?us-ascii?Q?i1deyzxbQ3Rw71ZI7lTppn4ik20/gFRL7Vo+VUUdEtTb0jk2qalf+570JAaP?=
 =?us-ascii?Q?F5GKP8nkNZwYF7E2UzWp8quOlIPO+Hqjx+5c5MWJsF19QA5pd1YWCgjG7did?=
 =?us-ascii?Q?Zy41xRABPxw41qyzI8FhFkytj8BrlgQ07X8t9ry0JNIYLHHtDhuAGMZJWs5x?=
 =?us-ascii?Q?4pSBEiBRjdwMcqXArr9Lj38U8y9eU7Ae6BBLMqhRiPdvZCKf72StlExpzWqR?=
 =?us-ascii?Q?2FULqnmeifYoSYdIfQQSwXsRbEcZI01oJyk82YcutZOiHw1VaytZDd2xAa7e?=
 =?us-ascii?Q?i8VoStvrHtBEKdxAztQkWjFx3QU1fRyYpkFTscUoVTXN8AaqgtWm2g0yAb0k?=
 =?us-ascii?Q?pswqnSKq/Fl0NxW31VGSTA7hv9XAyPYgTsN2pY/1esIwbUf3dhIeSEdNpdEz?=
 =?us-ascii?Q?gr04yQFwp9Nsbq7bBm1vAWbmxHQ2mMSkRovbqtIDa4TMZCg25DLlR+jvoulU?=
 =?us-ascii?Q?BITYWhBHAiMqFc7xHCE6nFFYpVcDEo1inP7iPArAm3xbeWymR9DzLqwnJ/6T?=
 =?us-ascii?Q?Uf8ARyayEiExFNOOKstb9XcFLGXTXeKlF6n8QZ/8hfflmKvouUMEr/2LWpWF?=
 =?us-ascii?Q?EX74TCsAV7SerklQB9CIoabNuylwUYg9OCMil0+czG/9H8pWMsVpOT86DKBS?=
 =?us-ascii?Q?tjHsM/jMlS3fJ7hFhksJZ8qES7qmR0fYkN9291hIcs3CdxhtjxnM1AId16tj?=
 =?us-ascii?Q?OCDv/AckaCG7V2aHn9QiwuuvRIm2zGpU+Z2xfw3LSpdMsd8ZCTWWyLcSWCv8?=
 =?us-ascii?Q?/akSGuJwjV537hZbW/DdstIUVfoRGxM9cbuX4lMlbQAZbXubyjZV6A4LTccS?=
 =?us-ascii?Q?tnaXWYphgSqhqL9UWKpKfVzFB7JwqXRHO/FLZunGosvEshcuIKlY8S5+5P67?=
 =?us-ascii?Q?48N8nnO7/bUuJFfq7h7sc1UlMsYtJxZWqy/Yl9XwWqet87rEkhjPlG4RjfUZ?=
 =?us-ascii?Q?O2eAGhoqkRBPIS3cB+W1ySSWAW9bke6JrwGSjfkdAyiYX1ByODy2LwpYCgIs?=
 =?us-ascii?Q?3G23LRkNQ8ZOF6CoEq6D3WnmhczC0NVavKK9FGJWWiyf22qWsz5KUL5e06nF?=
 =?us-ascii?Q?nr0FuBAgEN16HV9xkkMUr0VZY4lTqCyZ/47oUh5OX08sQ7w3cazQ7lZTPKxo?=
 =?us-ascii?Q?r0j5fiy1XgioaFLy6Sc83e8mCvRxfoLtXz+NxtYm8ObCeZEatHreD1k3qb4w?=
 =?us-ascii?Q?NH/XZ1S8m6nIjnbe91ASp230n0+82MKx?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?W5aRn0U81RIV1fIDOUnHWdjKWYTyTXQrXJPdFf2bey/stbnB991yUygmelbn?=
 =?us-ascii?Q?bZHa0h72djb42tlKsTpuBmD36nrj6MxNAQXhTHll6w59VCjh+30SJQh1c8WD?=
 =?us-ascii?Q?PYLDRrAZ5/nrglscRL/sP/SHQ/gXzabTNHEk9qeFmxtYlLX8AVYcoWRzviA3?=
 =?us-ascii?Q?zfzRoiwv+cP5DLzMInT1F+dbYBMWGJxQjm+62EYQVTJM5kKihEfO9ryaj+rh?=
 =?us-ascii?Q?SYvpQgg/K/OGjsz2OOLxyrNri5g41RME7oIBvFGTf83ozH6ygfE+Gvqczkw6?=
 =?us-ascii?Q?Ld9AzNvWtgJig1ydcFe3GLii6xUW/YtW5GHHNa+1kbjRQqm7zAe/N9Xrzpgj?=
 =?us-ascii?Q?TzvBhKYoJjr6FD4srMHoxVVvAHf84H3PRxqkGmZ8mNSg4WKzn9TfwnVlIEJY?=
 =?us-ascii?Q?RAA52aZQxHHR9/FBFudhJkyZTNFgBsMdN8MeZ5hvA1xcTQqcCN9bq0DW7HU/?=
 =?us-ascii?Q?lx2lmTddVW1WAjcAL6KmURoCpeFmK+/PNwz6ATDo8CmCp36V7+mP8PoxFNy2?=
 =?us-ascii?Q?RTFGyGP5B2Yy9/3H6qyJRlMCBx9oZheRuIRM245/4UQdvgKqkrmzC3qaiG3T?=
 =?us-ascii?Q?Zd1Z0T7AWQ9g/64YwGcz+6auetnzyQ2LtY4BPJuAFrPRjDtf+rkNEwQKU+RA?=
 =?us-ascii?Q?HoW7oISAYY9ixyk6MXAFuPyRcgHClOanHf6aEl95LsoBbUapEG8Yjdzhdy9t?=
 =?us-ascii?Q?hATRG5r9bjTWfIIBrDHINaTXsTmFX53y6PenVOBCzYFGfbM//rLWw8TnWls7?=
 =?us-ascii?Q?FhBjDDONe+GQMbSD/HEyuOWiBcYxuWtIS1cj7PpI0X6uvHxoCFu1/VAVOHtD?=
 =?us-ascii?Q?risPB0jl/P8xHwDVEB1Hjk7V9zFYQVI/ndzuW3tnwLVYX1mJRubzZ/F2oWeb?=
 =?us-ascii?Q?kh98HblOuooO+VekVNTOYkdwyZpLTFiiJlzn5+F2w32QvZjE+UYkU9va3aam?=
 =?us-ascii?Q?wJaQvgugnzOykEk7jkHY/xDVmLZ6X6ajVkhXflpO/LNH+ORQy8kU2U5ftq16?=
 =?us-ascii?Q?bwOyCEbUwNSlTdxZ+o20m4dfjW1oNBxUV7z1SihykyHSMN6ZnGkpFalaewIO?=
 =?us-ascii?Q?YnbRAEGlfr8XR8SWbwt+AKDQ5HPP/Nhmlh0U4IZLmFpVOrpkpZcFS4ao2sfV?=
 =?us-ascii?Q?JEBi+/lOmIHpFL5unxf2Jd/QPkfBNWmszhBxlRfqa69EXN59X32JJX5zwYBq?=
 =?us-ascii?Q?NCnMIQyusCbk3jsIXxhpvnUbxnaMLAEHq4Fr+dkyd27jyYbqoYkqjt56rNCd?=
 =?us-ascii?Q?7NLXb1gy+fL2StyPjFD/YDRwEYFEOZONPjqYIsntbMvbFYI5e+j9CiJf1fQK?=
 =?us-ascii?Q?tGBZJOS2nLCTpSj0+XQ9BsJavDrVNfCourAHfXNjf/S11e+ErFR+9n7vO0+B?=
 =?us-ascii?Q?/M5DGnenK0Z7h95uVGPxN/Z/ilC8Kyb9GQreMQFaLWzk05tshzioqGXaoJhG?=
 =?us-ascii?Q?wGdaDBkjeu48CEIbA5RFbjowsqnrE9624ZmQHotqNKBmQBL+7laNUIMEetMq?=
 =?us-ascii?Q?CVZdcEr7RgPXlPPHa1sUEwlmbXwNvHtt/Ylg3oqxS90rEsMItrr0RGRVcraq?=
 =?us-ascii?Q?XPRw2qUdlFnG5KxywtU=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8bafec7-72f6-48d0-a5e0-08dd47912798
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2025 16:04:51.7789
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UZRw3eqz98mjzKYlZyKvroVYr2nDEWhLFyZU9kvQtjCoE6gSislbuWnvCYMOuWjRww6Lsvdyf3RH34o9BTcpZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10173

On Fri, Feb 07, 2025 at 03:39:01PM +0100, Niklas Cassel wrote:
> Commit da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU
> on the rk3588 SoC") enabled the mmu600_pcie IOMMU, both in the normal case
> (when all PCIe controllers are running in Root Complex mode) and in the
> case when running the pcie3x4 PCIe controller in Endpoint mode.
>
> There have been no issues detected when running the PCIe controllers in
> Root Complex mode. During PCI probe time, we will add a SID to the IOMMU
> for each PCI device enumerated on the bus, including the root port itself.
>
> However, when running the pcie3x4 PCIe controller in Endpoint mode, we
> will only add a single SID to the IOMMU (the SID specified in the iommus
> DT property).
>
> The enablement of IOMMU in endpoint mode was verified on setup with two
> Rock 5b:s, where the BDF of the Root Complex has BDF (00:00.0).
>
> A Root Complex sending a TLP to the Endpoint will have Requester ID set
> to the BDF of the initiator. On the EP side, the Requester ID will then
> be used as the SID. This works fine if the Root Complex has a BDF that
> matches the iommus DT property, however, if the Root Complex has any other
> BDF, we will see something like:
> arm-smmu-v3 fc900000.iommu: event: C_BAD_STREAMID client: (unassigned sid) sid: 0x1600 ssid: 0x0
> on the endpoint side.
>
> For PCIe controllers running in endpoint mode that always uses the
> incoming Requester ID as the SID, the iommus DT property simply isn't
> a viable solution. (Neither is iommu-map a viable solution, as there is
> no enumeration done on the endpoint side.)
>
> Thus, partly revert commit da92d3dfc871 ("arm64: dts: rockchip: enable the
> mmu600_pcie IOMMU on the rk3588 SoC") by disabling the PCI IOMMU when
> running the pcie3x4 PCIe controller in Endpoint mode.
>
> Since the PCI IOMMU is working as expected in the normal case, keep it
> enabled when running all PCIe controllers in Root Complex mode.
>
> Fixes: da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC")
> Signed-off-by: Niklas Cassel <cassel@kernel.org>

I notify this problem when try to enable msi doorbell problem. Some system
(may most sysystem simple use PCIe Requester ID (BDF) as stream ID. BDF is
variances depend on host system's configuration.

Some platform supports mask BD. The key EP don't known request ID before
recieve a request from PCI RC.

May we need discuss at PCI mail list to figure out how to resolve this
problem.

Frank

> ---
>  arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi           | 1 -
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso | 4 ++++
>  2 files changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> index 42b57e27ee4c..b5feefda9d2d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> @@ -215,7 +215,6 @@ pcie3x4_ep: pcie-ep@fe150000 {
>  		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
>  				  "dma0", "dma1", "dma2", "dma3";
>  		max-link-speed = <3>;
> -		iommus = <&mmu600_pcie 0x0000>;
>  		num-lanes = <4>;
>  		phys = <&pcie30phy>;
>  		phy-names = "pcie-phy";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> index 672d748fcc67..f229cb49da68 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> @@ -23,3 +23,7 @@ &pcie3x4_ep {
>  	vpcie3v3-supply = <&vcc3v3_pcie30>;
>  	status = "okay";
>  };
> +
> +&mmu600_pcie {
> +	status = "disabled";
> +};
> --
> 2.48.1
>


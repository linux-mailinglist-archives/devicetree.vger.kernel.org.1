Return-Path: <devicetree+bounces-67155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 288F78C6C81
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 20:56:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E5E11C21AC8
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 18:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8250158DD1;
	Wed, 15 May 2024 18:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="gXuMwYRg"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2079.outbound.protection.outlook.com [40.107.249.79])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6193BBF6;
	Wed, 15 May 2024 18:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.249.79
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715799411; cv=fail; b=GkIq69PslXALnBgU/MaqMa4wsYWWV1Pf1SPrmpg12koiyonJ1aTtRxxsKBgz9YOpB4rU1ICe9Jq3QcezwzWZO1OwGR3/XcRr38tkQortcUZQ6yKNB8/QY+dopGLC9ya0YzTLtxhqbbTn70/c+ZcEaBPashLV0aHL8au3THMrDFg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715799411; c=relaxed/simple;
	bh=nvXyXJsB2/hJ1nCOmFS2k8aCezFLWmcZDskRiCdiSBo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=NyIZdwp7RRYMr1m5BM8MpI99VjfNHalUKCMxF/ZyJn26NaYrgc/zg1jrspOh/sCIg+Fv0urvkw77vHQx1HTbJb6lubtqegNzb4IGxRf5KCbp5VFwfNCzx8bj8vy8jqSkgjNkkjDYTbgRVukMXJ2eY4fkjNaCsvbaA7M5kaRsCCs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b=gXuMwYRg; arc=fail smtp.client-ip=40.107.249.79
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XnXbfHSpDlmmK2DasTHIe7bkb0YBzR8QOg3T1e3uNaQifSoQkMvh3RgagabVldZQAWv5OLR1jJughlgn9Dpqy01b7KwjPKADsAnHiRYpULtsFSuYK7QlmGaNS2Uunyv293+HptX6YRc7feEBrIVKFSawEkmYhEOgIFx7HIGWQRM/WOLbo6Z2yVohjly26p0WRobo8umK5kMoBY3iIKItkpEVWDhUijBJ4DB+RUe9l5YSnt0PZkOeIkb/XMpBunIjM60GmxGogwa3jKRLfJ095SU+na8i9rEiU3NSzsiI8+TzTVbsVDlQUO29JUG2phUlPcl1UH6RcA+IqKbVeL+cwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Am5cxRpk2cNfSMVthQ7B7GRd9udJyjCFPl4c2jj9x0=;
 b=Tz1VxPqA9ge6KNiKXLLaeitATwGasOuSYZ1sMRGvcqdPQcah7a8O+ieMC49zpJJkfgBISnxmAY6xzBwc3z8C6tZwp63kIpkvHosMBHRx6aIc2t2LdFg3+9GaGnoLhFC0DR80rZHG0JGebF/pOkeqsqilWl0Y9ow5RY2w+S9lRqr9OznJq93SF5x/bmsZx6MU7J74+nPrKg0rAaBG0x2Q7kGj9PDXf0KOjgAdum/dTI2vXyGCfq/hkuc6PJwCPL6z4zBnemnllz0ynUmIDp36CbThCRVJv2VdnT/pilclCMbN1A1tnmoOSOf5TjwfBdW4eGyczsg5mVXfTT5wEV7oog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Am5cxRpk2cNfSMVthQ7B7GRd9udJyjCFPl4c2jj9x0=;
 b=gXuMwYRgRcCAHXzGR/6q6dBXEQVBiHttxzOSZ+zfGeAccxPtL9r/F+TY5x52OWQVcso2kCoiGLOCTQWNL+fSBTblKBIm4uwjjpsmTaECNH781LQxP0u3pky2oj9Q2QgF1IjqHmFlEbin6ZR/Of8ICSQNL1gqcxsmVc+wRghAd3Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by GV1PR04MB10378.eurprd04.prod.outlook.com (2603:10a6:150:1d4::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.56; Wed, 15 May
 2024 18:56:43 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::1e67:dfc9:d0c1:fe58]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::1e67:dfc9:d0c1:fe58%7]) with mapi id 15.20.7587.026; Wed, 15 May 2024
 18:56:43 +0000
Date: Wed, 15 May 2024 14:56:34 -0400
From: Frank Li <Frank.li@nxp.com>
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 05/12] dmaengine: Add STM32 DMA3 support
Message-ID: <ZkUFYoRCOOpAoIus@lizhi-Precision-Tower-5810>
References: <20240423123302.1550592-1-amelie.delaunay@foss.st.com>
 <20240423123302.1550592-6-amelie.delaunay@foss.st.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240423123302.1550592-6-amelie.delaunay@foss.st.com>
X-ClientProxiedBy: BYAPR11CA0041.namprd11.prod.outlook.com
 (2603:10b6:a03:80::18) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|GV1PR04MB10378:EE_
X-MS-Office365-Filtering-Correlation-Id: a29b476d-4cfb-45eb-4744-08dc7510c32c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230031|366007|376005|7416005|52116005|1800799015|38350700005;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?KGQwc7d3Pb6m5nIXtRpf/lJg8eO4lSvpUd3hRU63cHS3j4NwmRp/eD+nUdsf?=
 =?us-ascii?Q?F881RN7U32d1p3ZBnI8vUQQ4zlQzJq/zjUU8VVDjLs7MYgCGX7BMBUaROIUb?=
 =?us-ascii?Q?gJ82rdeRrrqhkozTQ+N+RAgPPuOCChKB1jeR/Rlh3alyVymNteOf7uOMiME7?=
 =?us-ascii?Q?c4E58U0T6NQ1CHGxOQqBHCe4eGZbZl8A6sDK1ogBnOh/hHYFCaKpFpoLP3TT?=
 =?us-ascii?Q?Tt8dyDAYKvdD8OwfM9FPE0Byo5yCunV46bAnmVuF/4H0/vIxMnpUIIWG9ZX5?=
 =?us-ascii?Q?KaHbwzwZjAnZSjBYek7RMBNyusgWOb7EcDqPoYGN7EPLts4Depvh+xZNqyVV?=
 =?us-ascii?Q?RvIPs9hiYxEZyHNcIZh9z8+l/kL/5nn1lmWNYNDYOUZpVt8NsmI2yzVu9Rv/?=
 =?us-ascii?Q?6XNnqzOR1j7YySJyg6BYP9vFaEZx/dl+xfyW5joT9u9xPIzDpnvjw4s5G+yz?=
 =?us-ascii?Q?69GYGFBuPmJtEuGpaO38xa8HUSWfOlLAOIPHgzv46HiZNH93yoUnYFXXQup9?=
 =?us-ascii?Q?KCttM1aM9BA1S4DVaZQ0/Ep6VZd1qGGFtxr/k+RaOYuNFxfcGMeENw1qJ5ho?=
 =?us-ascii?Q?AC9xpfEZ41ZORefhK8YLbOqlIefV3aFWPNrcovIob4TAvJWXl5VwWNE13MPI?=
 =?us-ascii?Q?6d52KyUwDjrnSllnMoN3pVqiG/fl21npCt/jg3qfXSsbtrlgSqiAq18s9ndR?=
 =?us-ascii?Q?k+L7gaLsImxGky4Mfpa8YRvsi9RbH6KE5KSUkh+lhWXfwhr9mae3sZ0X03E1?=
 =?us-ascii?Q?0R+1pIEKRclZP+jeMPi7yl9Ym2QiB/vfYAEBsbIaCNFIS34tYA97FePajgj4?=
 =?us-ascii?Q?3+5xfeCjFeeCCh7w/eVovakLsu9XJlfpOKCCyE6js0n6RxuwON18ab44vyDW?=
 =?us-ascii?Q?Dykzw1ZQz6jzLfDARj9AAccxWi8f3+h8HqGnP9IR41LCaKfopti0gIDmIrHf?=
 =?us-ascii?Q?MumcDe//vNgnSFKa+5Ezy0f0hfgxC1cSN0ngAI5FBmoeKZCh4j7wHtMXguZ+?=
 =?us-ascii?Q?O66TBzmAPX2hpvbHM7WpzClAV1tzroXhdc8RIvb7JXa5pLuuxl2RAaAgPexy?=
 =?us-ascii?Q?nDZ3evYZAAxBE6qrNHHi+XOG0xB6HIqTMuuyKMfPtpkJ7ygDEYwbIHHbc1GQ?=
 =?us-ascii?Q?NsQuYTbB5lP8DTAkBT9kXGCNRN1TK5RClb0sk1vA4MIbUdoqMwOkXEdE6QZ+?=
 =?us-ascii?Q?R1KVaE0GliVbAZdn5fAn1CmGpshZE2WqWs8JxHgKk5XBiY2qtQgXqZipY0Bf?=
 =?us-ascii?Q?FA0n19L50GnJ9LxKG48RT4Ba8ItZWzDUcttTG6sFDhXxpUqAmhaXdHFyqIMi?=
 =?us-ascii?Q?ZiyIw+MOI6eUVLswxc6fBTiS2aBFPnXpZGPMRSEljw3/CQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(7416005)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?uAyt7+W4ANJYoxHYN6KxV9ryPCmZ3XmbV2E7tnmWJzNVBrbSESK5NFPy1X60?=
 =?us-ascii?Q?Gv8JPzZu8dgDcRf3LkzMpSKQPPJK6QSZUV9gTbwsU9IyOIYl5jZb5uuEUDXt?=
 =?us-ascii?Q?O75fRHirdkPG8Z4RMuHZU99lq4zmRIvDofsoEGTHR2zZGc/3XBKyZO2Q4afL?=
 =?us-ascii?Q?KetX41kEFxrT74kGz8kfvp5O4dg5WOeiCvQ8CmAZ1GpWhUysputV6smLkyGi?=
 =?us-ascii?Q?jg6AUjjBQ72/Ofj+ONkD4ofugs5P76KCw0xUtdyBpFvercXPSi+4hWqqA+G2?=
 =?us-ascii?Q?C0wVKHAZ7KS0mpELW40DH9cDPIiukScRGozCewTuiB+BUfOt7+9fQcL6mjoN?=
 =?us-ascii?Q?MPUvonCBmhJ6jgkhVexgraiRKb1hQDPQTG2F0CEyQrh51mqlq2aaf+4d471n?=
 =?us-ascii?Q?xX6WhmxV8QCnwUV1NbVp9V+TuuLUTjxHhFZV+ypMpgqASIhvdXTxxUmZRDdH?=
 =?us-ascii?Q?98mOiTdwswfYG2X9MnMbeUf1WpQ00dpw7NtBlupGh5QBCtAPCp7zwfG02QoM?=
 =?us-ascii?Q?jEUseXfTaU164S8hlMaaV7ybyJrxYn4mY3eN6ercSSVO/85lghVGHd08imzG?=
 =?us-ascii?Q?RsjO2hMs3oZZavtGbzYhlvcdczIa1XnUf+w2M4dSePvBwQKiyIIBWrqj+zNz?=
 =?us-ascii?Q?RHYRyiXdqN1vooj/9O60UaSPkIfY/+uGo9VGy5UvqkyR8cNZN0DRTde+NkVg?=
 =?us-ascii?Q?BfHYxCY6+D+EA6NXi15rfg7DdFYVDuckIxQdLLrj0XrHwoTxUgtCYUadum8y?=
 =?us-ascii?Q?dsPcLGR/rA+a66+00oudk1VSPx2CxNJNLflIDW8zIhw4EGcm0LK1qJ2pixj1?=
 =?us-ascii?Q?J5vHDaQaCpF4K+yXr4RSbGdlZFnD1ti2XakA3/p+ijUcAcSnMP0U5cxN4TuD?=
 =?us-ascii?Q?jZWtLwIMbPGvayiuAwiubPlT2QvjZFSP/EsHVXufqSOUNLX8XmbxiGpno4ZY?=
 =?us-ascii?Q?eTbZDVb6UOYFcdcAxIFOaYr03C4/DLxNcVa+DZIWR9xyhKuDVe5B1JS5yJyF?=
 =?us-ascii?Q?Wf1hwjHJRrhBUyZnmYw9aKrKwbpDiWmIuUQLwDEjH6sCYf/gv3qn+a/Zw5JU?=
 =?us-ascii?Q?xqAgIKVJ8xC0e1Hpj/VQa5/SG2luoRqr+mPrWiJ1oy8Ql3SaArwiMHLPYz5I?=
 =?us-ascii?Q?K0q63r8SftzB09BafsMhFe8g2pyaNCWo3zG1WH1U73rza6o+iRQ+n1MywNEC?=
 =?us-ascii?Q?bqqMDdq/7GL7SaPn1JUw+zt0RkMhFHcOMEmWSQLPd4KHnnmmulvjW9WgUN90?=
 =?us-ascii?Q?61xbWYPfIL2/ii79AEE/O/w0jLAcakisdhp2lKEzsktUFd+k70lL8sXicTCJ?=
 =?us-ascii?Q?1t5GtNbuMt6djc405ibGsaKlFCNTWYe8OCLP55CVz4vQ5EH67F9ChjnuMnNQ?=
 =?us-ascii?Q?UjFMXa+h1mQbp5+zW+U75rxooxXKmS/Pc/VlKYEASCS/AaEUW0W82l3/gyMf?=
 =?us-ascii?Q?f/sBzJ5Dge3m/BjLJFaJsvetG0u2SuOCT6RbLzvK0fj2YgK1YELg8skuSWQh?=
 =?us-ascii?Q?rUT0vo8EX/LSX1+KLhUXCVlBecmNVI1aR1KDOFPWnH/bE5PvmLdeBwuK4JaL?=
 =?us-ascii?Q?LCYfF3yETtaJSL6wACNz7BoFi8pzEjpRRhnw3cSk?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a29b476d-4cfb-45eb-4744-08dc7510c32c
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 18:56:43.7127
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yPQlG+Fr5rfm9AiYeusrF9XV2vMlAZZr5XkKzRp5w33P6GrkrlyWH3Jo4N4HLLASFhkE58YcV71FT4EAPcknXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10378

On Tue, Apr 23, 2024 at 02:32:55PM +0200, Amelie Delaunay wrote:
> STM32 DMA3 driver supports the 3 hardware configurations of the STM32 DMA3
> controller:
> - LPDMA (Low Power): 4 channels, no FIFO
> - GPDMA (General Purpose): 16 channels, FIFO from 8 to 32 bytes
> - HPDMA (High Performance): 16 channels, FIFO from 8 to 256 bytes
> Hardware configuration of the channels is retrieved from the hardware
> configuration registers.
> The client can specify its channel requirements through device tree.
> STM32 DMA3 channels can be individually reserved either because they are
> secure, or dedicated to another CPU.
> Indeed, channels availability depends on Resource Isolation Framework
> (RIF) configuration. RIF grants access to buses with Compartiment ID
> (CIF) filtering, secure and privilege level. It also assigns DMA channels
> to one or several processors.
> DMA channels used by Linux should be CID-filtered and statically assigned
> to CID1 or shared with other CPUs but using semaphore. In case CID
> filtering is not configured, dma-channel-mask property can be used to
> specify available DMA channels to the kernel, otherwise such channels
> will be marked as reserved and can't be used by Linux.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> ---
>  drivers/dma/stm32/Kconfig      |   10 +
>  drivers/dma/stm32/Makefile     |    1 +
>  drivers/dma/stm32/stm32-dma3.c | 1431 ++++++++++++++++++++++++++++++++
>  3 files changed, 1442 insertions(+)
>  create mode 100644 drivers/dma/stm32/stm32-dma3.c
> 
> diff --git a/drivers/dma/stm32/Kconfig b/drivers/dma/stm32/Kconfig
> index b72ae1a4502f..4d8d8063133b 100644
> --- a/drivers/dma/stm32/Kconfig
> +++ b/drivers/dma/stm32/Kconfig
> @@ -34,4 +34,14 @@ config STM32_MDMA
>  	  If you have a board based on STM32 SoC with such DMA controller
>  	  and want to use MDMA say Y here.
>  
> +config STM32_DMA3
> +	tristate "STMicroelectronics STM32 DMA3 support"
> +	select DMA_ENGINE
> +	select DMA_VIRTUAL_CHANNELS
> +	help
> +	  Enable support for the on-chip DMA3 controller on STMicroelectronics
> +	  STM32 platforms.
> +	  If you have a board based on STM32 SoC with such DMA3 controller
> +	  and want to use DMA3, say Y here.
> +
>  endif
> diff --git a/drivers/dma/stm32/Makefile b/drivers/dma/stm32/Makefile
> index 663a3896a881..5082db4b4c1c 100644
> --- a/drivers/dma/stm32/Makefile
> +++ b/drivers/dma/stm32/Makefile
> @@ -2,3 +2,4 @@
>  obj-$(CONFIG_STM32_DMA) += stm32-dma.o
>  obj-$(CONFIG_STM32_DMAMUX) += stm32-dmamux.o
>  obj-$(CONFIG_STM32_MDMA) += stm32-mdma.o
> +obj-$(CONFIG_STM32_DMA3) += stm32-dma3.o
> diff --git a/drivers/dma/stm32/stm32-dma3.c b/drivers/dma/stm32/stm32-dma3.c
> new file mode 100644
> index 000000000000..b5493f497d06
> --- /dev/null
> +++ b/drivers/dma/stm32/stm32-dma3.c
> @@ -0,0 +1,1431 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * STM32 DMA3 controller driver
> + *
> + * Copyright (C) STMicroelectronics 2024
> + * Author(s): Amelie Delaunay <amelie.delaunay@foss.st.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/dmaengine.h>
> +#include <linux/dmapool.h>
> +#include <linux/init.h>
> +#include <linux/iopoll.h>
> +#include <linux/list.h>
> +#include <linux/module.h>
> +#include <linux/of_dma.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +
> +#include "../virt-dma.h"
> +
> +#define STM32_DMA3_SECCFGR		0x00
> +#define STM32_DMA3_PRIVCFGR		0x04
> +#define STM32_DMA3_RCFGLOCKR		0x08
> +#define STM32_DMA3_MISR			0x0C
> +#define STM32_DMA3_SMISR		0x10
> +
> +#define STM32_DMA3_CLBAR(x)		(0x50 + 0x80 * (x))
> +#define STM32_DMA3_CCIDCFGR(x)		(0x54 + 0x80 * (x))
> +#define STM32_DMA3_CSEMCR(x)		(0x58 + 0x80 * (x))
> +#define STM32_DMA3_CFCR(x)		(0x5C + 0x80 * (x))
> +#define STM32_DMA3_CSR(x)		(0x60 + 0x80 * (x))
> +#define STM32_DMA3_CCR(x)		(0x64 + 0x80 * (x))
> +#define STM32_DMA3_CTR1(x)		(0x90 + 0x80 * (x))
> +#define STM32_DMA3_CTR2(x)		(0x94 + 0x80 * (x))
> +#define STM32_DMA3_CBR1(x)		(0x98 + 0x80 * (x))
> +#define STM32_DMA3_CSAR(x)		(0x9C + 0x80 * (x))
> +#define STM32_DMA3_CDAR(x)		(0xA0 + 0x80 * (x))
> +#define STM32_DMA3_CLLR(x)		(0xCC + 0x80 * (x))
> +
> +#define STM32_DMA3_HWCFGR13		0xFC0 /* G_PER_CTRL(X) x=8..15 */
> +#define STM32_DMA3_HWCFGR12		0xFC4 /* G_PER_CTRL(X) x=0..7 */
> +#define STM32_DMA3_HWCFGR4		0xFE4 /* G_FIFO_SIZE(X) x=8..15 */
> +#define STM32_DMA3_HWCFGR3		0xFE8 /* G_FIFO_SIZE(X) x=0..7 */
> +#define STM32_DMA3_HWCFGR2		0xFEC /* G_MAX_REQ_ID */
> +#define STM32_DMA3_HWCFGR1		0xFF0 /* G_MASTER_PORTS, G_NUM_CHANNELS, G_Mx_DATA_WIDTH */
> +#define STM32_DMA3_VERR			0xFF4
> +
> +/* SECCFGR DMA secure configuration register */
> +#define SECCFGR_SEC(x)			BIT(x)
> +
> +/* MISR DMA non-secure/secure masked interrupt status register */
> +#define MISR_MIS(x)			BIT(x)
> +
> +/* CxLBAR DMA channel x linked_list base address register */
> +#define CLBAR_LBA			GENMASK(31, 16)
> +
> +/* CxCIDCFGR DMA channel x CID register */
> +#define CCIDCFGR_CFEN			BIT(0)
> +#define CCIDCFGR_SEM_EN			BIT(1)
> +#define CCIDCFGR_SCID			GENMASK(5, 4)
> +#define CCIDCFGR_SEM_WLIST_CID0		BIT(16)
> +#define CCIDCFGR_SEM_WLIST_CID1		BIT(17)
> +#define CCIDCFGR_SEM_WLIST_CID2		BIT(18)
> +
> +enum ccidcfgr_cid {
> +	CCIDCFGR_CID0,
> +	CCIDCFGR_CID1,
> +	CCIDCFGR_CID2,
> +};
> +
> +/* CxSEMCR DMA channel x semaphore control register */
> +#define CSEMCR_SEM_MUTEX		BIT(0)
> +#define CSEMCR_SEM_CCID			GENMASK(5, 4)
> +
> +/* CxFCR DMA channel x flag clear register */
> +#define CFCR_TCF			BIT(8)
> +#define CFCR_HTF			BIT(9)
> +#define CFCR_DTEF			BIT(10)
> +#define CFCR_ULEF			BIT(11)
> +#define CFCR_USEF			BIT(12)
> +#define CFCR_SUSPF			BIT(13)
> +
> +/* CxSR DMA channel x status register */
> +#define CSR_IDLEF			BIT(0)
> +#define CSR_TCF				BIT(8)
> +#define CSR_HTF				BIT(9)
> +#define CSR_DTEF			BIT(10)
> +#define CSR_ULEF			BIT(11)
> +#define CSR_USEF			BIT(12)
> +#define CSR_SUSPF			BIT(13)
> +#define CSR_ALL_F			GENMASK(13, 8)
> +#define CSR_FIFOL			GENMASK(24, 16)
> +
> +/* CxCR DMA channel x control register */
> +#define CCR_EN				BIT(0)
> +#define CCR_RESET			BIT(1)
> +#define CCR_SUSP			BIT(2)
> +#define CCR_TCIE			BIT(8)
> +#define CCR_HTIE			BIT(9)
> +#define CCR_DTEIE			BIT(10)
> +#define CCR_ULEIE			BIT(11)
> +#define CCR_USEIE			BIT(12)
> +#define CCR_SUSPIE			BIT(13)
> +#define CCR_ALLIE			GENMASK(13, 8)
> +#define CCR_LSM				BIT(16)
> +#define CCR_LAP				BIT(17)
> +#define CCR_PRIO			GENMASK(23, 22)
> +
> +enum ccr_prio {
> +	CCR_PRIO_LOW,
> +	CCR_PRIO_MID,
> +	CCR_PRIO_HIGH,
> +	CCR_PRIO_VERY_HIGH,
> +};
> +
> +/* CxTR1 DMA channel x transfer register 1 */
> +#define CTR1_SINC			BIT(3)
> +#define CTR1_SBL_1			GENMASK(9, 4)
> +#define CTR1_DINC			BIT(19)
> +#define CTR1_DBL_1			GENMASK(25, 20)
> +#define CTR1_SDW_LOG2			GENMASK(1, 0)
> +#define CTR1_PAM			GENMASK(12, 11)
> +#define CTR1_SAP			BIT(14)
> +#define CTR1_DDW_LOG2			GENMASK(17, 16)
> +#define CTR1_DAP			BIT(30)
> +
> +enum ctr1_dw {
> +	CTR1_DW_BYTE,
> +	CTR1_DW_HWORD,
> +	CTR1_DW_WORD,
> +	CTR1_DW_DWORD, /* Depends on HWCFGR1.G_M0_DATA_WIDTH_ENC and .G_M1_DATA_WIDTH_ENC */
> +};
> +
> +enum ctr1_pam {
> +	CTR1_PAM_0S_LT, /* if DDW > SDW, padded with 0s else left-truncated */
> +	CTR1_PAM_SE_RT, /* if DDW > SDW, sign extended else right-truncated */
> +	CTR1_PAM_PACK_UNPACK, /* FIFO queued */
> +};
> +
> +/* CxTR2 DMA channel x transfer register 2 */
> +#define CTR2_REQSEL			GENMASK(7, 0)
> +#define CTR2_SWREQ			BIT(9)
> +#define CTR2_DREQ			BIT(10)
> +#define CTR2_BREQ			BIT(11)
> +#define CTR2_PFREQ			BIT(12)
> +#define CTR2_TCEM			GENMASK(31, 30)
> +
> +enum ctr2_tcem {
> +	CTR2_TCEM_BLOCK,
> +	CTR2_TCEM_REPEAT_BLOCK,
> +	CTR2_TCEM_LLI,
> +	CTR2_TCEM_CHANNEL,
> +};
> +
> +/* CxBR1 DMA channel x block register 1 */
> +#define CBR1_BNDT			GENMASK(15, 0)
> +
> +/* CxLLR DMA channel x linked-list address register */
> +#define CLLR_LA				GENMASK(15, 2)
> +#define CLLR_ULL			BIT(16)
> +#define CLLR_UDA			BIT(27)
> +#define CLLR_USA			BIT(28)
> +#define CLLR_UB1			BIT(29)
> +#define CLLR_UT2			BIT(30)
> +#define CLLR_UT1			BIT(31)
> +
> +/* HWCFGR13 DMA hardware configuration register 13 x=8..15 */
> +/* HWCFGR12 DMA hardware configuration register 12 x=0..7 */
> +#define G_PER_CTRL(x)			(ULL(0x1) << (4 * (x)))
> +
> +/* HWCFGR4 DMA hardware configuration register 4 x=8..15 */
> +/* HWCFGR3 DMA hardware configuration register 3 x=0..7 */
> +#define G_FIFO_SIZE(x)			(ULL(0x7) << (4 * (x)))
> +
> +#define get_chan_hwcfg(x, mask, reg)	(((reg) & (mask)) >> (4 * (x)))
> +
> +/* HWCFGR2 DMA hardware configuration register 2 */
> +#define G_MAX_REQ_ID			GENMASK(7, 0)
> +
> +/* HWCFGR1 DMA hardware configuration register 1 */
> +#define G_MASTER_PORTS			GENMASK(2, 0)
> +#define G_NUM_CHANNELS			GENMASK(12, 8)
> +#define G_M0_DATA_WIDTH_ENC		GENMASK(25, 24)
> +#define G_M1_DATA_WIDTH_ENC		GENMASK(29, 28)
> +
> +enum stm32_dma3_master_ports {
> +	AXI64, /* 1x AXI: 64-bit port 0 */
> +	AHB32, /* 1x AHB: 32-bit port 0 */
> +	AHB32_AHB32, /* 2x AHB: 32-bit port 0 and 32-bit port 1 */
> +	AXI64_AHB32, /* 1x AXI 64-bit port 0 and 1x AHB 32-bit port 1 */
> +	AXI64_AXI64, /* 2x AXI: 64-bit port 0 and 64-bit port 1 */
> +	AXI128_AHB32, /* 1x AXI 128-bit port 0 and 1x AHB 32-bit port 1 */
> +};
> +
> +enum stm32_dma3_port_data_width {
> +	DW_32, /* 32-bit, for AHB */
> +	DW_64, /* 64-bit, for AXI */
> +	DW_128, /* 128-bit, for AXI */
> +	DW_INVALID,
> +};
> +
> +/* VERR DMA version register */
> +#define VERR_MINREV			GENMASK(3, 0)
> +#define VERR_MAJREV			GENMASK(7, 4)
> +
> +/* Device tree */
> +/* struct stm32_dma3_dt_conf */
> +/* .ch_conf */
> +#define STM32_DMA3_DT_PRIO		GENMASK(1, 0) /* CCR_PRIO */
> +#define STM32_DMA3_DT_FIFO		GENMASK(7, 4)
> +/* .tr_conf */
> +#define STM32_DMA3_DT_SINC		BIT(0) /* CTR1_SINC */
> +#define STM32_DMA3_DT_SAP		BIT(1) /* CTR1_SAP */
> +#define STM32_DMA3_DT_DINC		BIT(4) /* CTR1_DINC */
> +#define STM32_DMA3_DT_DAP		BIT(5) /* CTR1_DAP */
> +#define STM32_DMA3_DT_BREQ		BIT(8) /* CTR2_BREQ */
> +#define STM32_DMA3_DT_PFREQ		BIT(9) /* CTR2_PFREQ */
> +#define STM32_DMA3_DT_TCEM		GENMASK(13, 12) /* CTR2_TCEM */
> +
> +#define STM32_DMA3_MAX_BLOCK_SIZE	ALIGN_DOWN(CBR1_BNDT, 64)
> +#define port_is_ahb(maxdw)		({ typeof(maxdw) (_maxdw) = (maxdw); \
> +					   ((_maxdw) != DW_INVALID) && ((_maxdw) == DW_32); })
> +#define port_is_axi(maxdw)		({ typeof(maxdw) (_maxdw) = (maxdw); \
> +					   ((_maxdw) != DW_INVALID) && ((_maxdw) != DW_32); })
> +#define get_chan_max_dw(maxdw, maxburst)((port_is_ahb(maxdw) ||			     \
> +					  (maxburst) < DMA_SLAVE_BUSWIDTH_8_BYTES) ? \
> +					 DMA_SLAVE_BUSWIDTH_4_BYTES : DMA_SLAVE_BUSWIDTH_8_BYTES)
> +
> +/* Static linked-list data structure (depends on update bits UT1/UT2/UB1/USA/UDA/ULL) */
> +struct stm32_dma3_hwdesc {
> +	u32 ctr1;
> +	u32 ctr2;
> +	u32 cbr1;
> +	u32 csar;
> +	u32 cdar;
> +	u32 cllr;
> +} __aligned(32);
> +
> +/*
> + * CLLR_LA / sizeof(struct stm32_dma3_hwdesc) represents the number of hdwdesc that can be addressed
> + * by the pointer to the next linked-list data structure. The __aligned forces the 32-byte
> + * alignment. So use hardcoded 32. Multiplied by the max block size of each item, it represents
> + * the sg size limitation.
> + */
> +#define STM32_DMA3_MAX_SEG_SIZE		((CLLR_LA / 32) * STM32_DMA3_MAX_BLOCK_SIZE)
> +
> +/*
> + * Linked-list items
> + */
> +struct stm32_dma3_lli {
> +	struct stm32_dma3_hwdesc *hwdesc;
> +	dma_addr_t hwdesc_addr;
> +};
> +
> +struct stm32_dma3_swdesc {
> +	struct virt_dma_desc vdesc;
> +	u32 ccr;
> +	bool cyclic;
> +	u32 lli_size;
> +	struct stm32_dma3_lli lli[] __counted_by(lli_size);
> +};
> +
> +struct stm32_dma3_dt_conf {
> +	u32 ch_id;
> +	u32 req_line;
> +	u32 ch_conf;
> +	u32 tr_conf;
> +};
> +
> +struct stm32_dma3_chan {
> +	struct virt_dma_chan vchan;
> +	u32 id;
> +	int irq;
> +	u32 fifo_size;
> +	u32 max_burst;
> +	bool semaphore_mode;
> +	struct stm32_dma3_dt_conf dt_config;
> +	struct dma_slave_config dma_config;
> +	struct dma_pool *lli_pool;
> +	struct stm32_dma3_swdesc *swdesc;
> +	enum ctr2_tcem tcem;
> +	u32 dma_status;
> +};
> +
> +struct stm32_dma3_ddata {
> +	struct dma_device dma_dev;
> +	void __iomem *base;
> +	struct clk *clk;
> +	struct stm32_dma3_chan *chans;
> +	u32 dma_channels;
> +	u32 dma_requests;
> +	enum stm32_dma3_port_data_width ports_max_dw[2];
> +};
> +
> +static inline struct stm32_dma3_ddata *to_stm32_dma3_ddata(struct stm32_dma3_chan *chan)
> +{
> +	return container_of(chan->vchan.chan.device, struct stm32_dma3_ddata, dma_dev);
> +}
> +
> +static inline struct stm32_dma3_chan *to_stm32_dma3_chan(struct dma_chan *c)
> +{
> +	return container_of(c, struct stm32_dma3_chan, vchan.chan);
> +}
> +
> +static inline struct stm32_dma3_swdesc *to_stm32_dma3_swdesc(struct virt_dma_desc *vdesc)
> +{
> +	return container_of(vdesc, struct stm32_dma3_swdesc, vdesc);
> +}
> +
> +static struct device *chan2dev(struct stm32_dma3_chan *chan)
> +{
> +	return &chan->vchan.chan.dev->device;
> +}
> +
> +static void stm32_dma3_chan_dump_reg(struct stm32_dma3_chan *chan)
> +{
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	struct device *dev = chan2dev(chan);
> +	u32 id = chan->id, offset;
> +
> +	offset = STM32_DMA3_SECCFGR;
> +	dev_dbg(dev, "SECCFGR(0x%03x): %08x\n", offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_PRIVCFGR;
> +	dev_dbg(dev, "PRIVCFGR(0x%03x): %08x\n", offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CCIDCFGR(id);
> +	dev_dbg(dev, "C%dCIDCFGR(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CSEMCR(id);
> +	dev_dbg(dev, "C%dSEMCR(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CSR(id);
> +	dev_dbg(dev, "C%dSR(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CCR(id);
> +	dev_dbg(dev, "C%dCR(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CTR1(id);
> +	dev_dbg(dev, "C%dTR1(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CTR2(id);
> +	dev_dbg(dev, "C%dTR2(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CBR1(id);
> +	dev_dbg(dev, "C%dBR1(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CSAR(id);
> +	dev_dbg(dev, "C%dSAR(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CDAR(id);
> +	dev_dbg(dev, "C%dDAR(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CLLR(id);
> +	dev_dbg(dev, "C%dLLR(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +	offset = STM32_DMA3_CLBAR(id);
> +	dev_dbg(dev, "C%dLBAR(0x%03x): %08x\n", id, offset, readl_relaxed(ddata->base + offset));
> +}
> +
> +static void stm32_dma3_chan_dump_hwdesc(struct stm32_dma3_chan *chan,
> +					struct stm32_dma3_swdesc *swdesc)
> +{
> +	struct stm32_dma3_hwdesc *hwdesc;
> +	int i;
> +
> +	for (i = 0; i < swdesc->lli_size; i++) {
> +		hwdesc = swdesc->lli[i].hwdesc;
> +		if (i)
> +			dev_dbg(chan2dev(chan), "V\n");
> +		dev_dbg(chan2dev(chan), "[%d]@%pad\n", i, &swdesc->lli[i].hwdesc_addr);
> +		dev_dbg(chan2dev(chan), "| C%dTR1: %08x\n", chan->id, hwdesc->ctr1);
> +		dev_dbg(chan2dev(chan), "| C%dTR2: %08x\n", chan->id, hwdesc->ctr2);
> +		dev_dbg(chan2dev(chan), "| C%dBR1: %08x\n", chan->id, hwdesc->cbr1);
> +		dev_dbg(chan2dev(chan), "| C%dSAR: %08x\n", chan->id, hwdesc->csar);
> +		dev_dbg(chan2dev(chan), "| C%dDAR: %08x\n", chan->id, hwdesc->cdar);
> +		dev_dbg(chan2dev(chan), "| C%dLLR: %08x\n", chan->id, hwdesc->cllr);
> +	}
> +
> +	if (swdesc->cyclic) {
> +		dev_dbg(chan2dev(chan), "|\n");
> +		dev_dbg(chan2dev(chan), "-->[0]@%pad\n", &swdesc->lli[0].hwdesc_addr);
> +	} else {
> +		dev_dbg(chan2dev(chan), "X\n");
> +	}
> +}
> +
> +static struct stm32_dma3_swdesc *stm32_dma3_chan_desc_alloc(struct stm32_dma3_chan *chan, u32 count)
> +{
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	struct stm32_dma3_swdesc *swdesc;
> +	int i;
> +
> +	/*
> +	 * If the memory to be allocated for the number of hwdesc (6 u32 members but 32-bytes
> +	 * aligned) is greater than the maximum address of CLLR_LA, then the last items can't be
> +	 * addressed, so abort the allocation.
> +	 */
> +	if ((count * 32) > CLLR_LA) {
> +		dev_err(chan2dev(chan), "Transfer is too big (> %luB)\n", STM32_DMA3_MAX_SEG_SIZE);
> +		return NULL;
> +	}
> +
> +	swdesc = kzalloc(struct_size(swdesc, lli, count), GFP_NOWAIT);
> +	if (!swdesc)
> +		return NULL;
> +
> +	for (i = 0; i < count; i++) {
> +		swdesc->lli[i].hwdesc = dma_pool_zalloc(chan->lli_pool, GFP_NOWAIT,
> +							&swdesc->lli[i].hwdesc_addr);
> +		if (!swdesc->lli[i].hwdesc)
> +			goto err_pool_free;
> +	}
> +	swdesc->lli_size = count;
> +	swdesc->ccr = 0;
> +
> +	/* Set LL base address */
> +	writel_relaxed(swdesc->lli[0].hwdesc_addr & CLBAR_LBA,
> +		       ddata->base + STM32_DMA3_CLBAR(chan->id));
> +
> +	/* Set LL allocated port */
> +	swdesc->ccr &= ~CCR_LAP;
> +
> +	return swdesc;
> +
> +err_pool_free:
> +	dev_err(chan2dev(chan), "Failed to alloc descriptors\n");
> +	while (--i >= 0)
> +		dma_pool_free(chan->lli_pool, swdesc->lli[i].hwdesc, swdesc->lli[i].hwdesc_addr);
> +	kfree(swdesc);
> +
> +	return NULL;
> +}
> +
> +static void stm32_dma3_chan_desc_free(struct stm32_dma3_chan *chan,
> +				      struct stm32_dma3_swdesc *swdesc)
> +{
> +	int i;
> +
> +	for (i = 0; i < swdesc->lli_size; i++)
> +		dma_pool_free(chan->lli_pool, swdesc->lli[i].hwdesc, swdesc->lli[i].hwdesc_addr);
> +
> +	kfree(swdesc);
> +}
> +
> +static void stm32_dma3_chan_vdesc_free(struct virt_dma_desc *vdesc)
> +{
> +	struct stm32_dma3_swdesc *swdesc = to_stm32_dma3_swdesc(vdesc);
> +	struct stm32_dma3_chan *chan = to_stm32_dma3_chan(vdesc->tx.chan);
> +
> +	stm32_dma3_chan_desc_free(chan, swdesc);
> +}
> +
> +static void stm32_dma3_check_user_setting(struct stm32_dma3_chan *chan)
> +{
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	struct device *dev = chan2dev(chan);
> +	u32 ctr1 = readl_relaxed(ddata->base + STM32_DMA3_CTR1(chan->id));
> +	u32 cbr1 = readl_relaxed(ddata->base + STM32_DMA3_CBR1(chan->id));
> +	u32 csar = readl_relaxed(ddata->base + STM32_DMA3_CSAR(chan->id));
> +	u32 cdar = readl_relaxed(ddata->base + STM32_DMA3_CDAR(chan->id));
> +	u32 cllr = readl_relaxed(ddata->base + STM32_DMA3_CLLR(chan->id));
> +	u32 bndt = FIELD_GET(CBR1_BNDT, cbr1);
> +	u32 sdw = 1 << FIELD_GET(CTR1_SDW_LOG2, ctr1);
> +	u32 ddw = 1 << FIELD_GET(CTR1_DDW_LOG2, ctr1);
> +	u32 sap = FIELD_GET(CTR1_SAP, ctr1);
> +	u32 dap = FIELD_GET(CTR1_DAP, ctr1);
> +
> +	if (!bndt && !FIELD_GET(CLLR_UB1, cllr))
> +		dev_err(dev, "null source block size and no update of this value\n");
> +	if (bndt % sdw)
> +		dev_err(dev, "source block size not multiple of src data width\n");
> +	if (FIELD_GET(CTR1_PAM, ctr1) == CTR1_PAM_PACK_UNPACK && bndt % ddw)
> +		dev_err(dev, "(un)packing mode w/ src block size not multiple of dst data width\n");
> +	if (csar % sdw)
> +		dev_err(dev, "unaligned source address not multiple of src data width\n");
> +	if (cdar % ddw)
> +		dev_err(dev, "unaligned destination address not multiple of dst data width\n");
> +	if (sdw == DMA_SLAVE_BUSWIDTH_8_BYTES && port_is_ahb(ddata->ports_max_dw[sap]))
> +		dev_err(dev, "double-word source data width not supported on port %u\n", sap);
> +	if (ddw == DMA_SLAVE_BUSWIDTH_8_BYTES && port_is_ahb(ddata->ports_max_dw[dap]))
> +		dev_err(dev, "double-word destination data width not supported on port %u\n", dap);
> +}
> +
> +static void stm32_dma3_chan_prep_hwdesc(struct stm32_dma3_chan *chan,
> +					struct stm32_dma3_swdesc *swdesc,
> +					u32 curr, dma_addr_t src, dma_addr_t dst, u32 len,
> +					u32 ctr1, u32 ctr2, bool is_last, bool is_cyclic)
> +{
> +	struct stm32_dma3_hwdesc *hwdesc;
> +	dma_addr_t next_lli;
> +	u32 next = curr + 1;
> +
> +	hwdesc = swdesc->lli[curr].hwdesc;
> +	hwdesc->ctr1 = ctr1;
> +	hwdesc->ctr2 = ctr2;
> +	hwdesc->cbr1 = FIELD_PREP(CBR1_BNDT, len);
> +	hwdesc->csar = src;
> +	hwdesc->cdar = dst;
> +
> +	if (is_last) {
> +		if (is_cyclic)
> +			next_lli = swdesc->lli[0].hwdesc_addr;
> +		else
> +			next_lli = 0;
> +	} else {
> +		next_lli = swdesc->lli[next].hwdesc_addr;
> +	}
> +
> +	hwdesc->cllr = 0;
> +	if (next_lli) {
> +		hwdesc->cllr |= CLLR_UT1 | CLLR_UT2 | CLLR_UB1;
> +		hwdesc->cllr |= CLLR_USA | CLLR_UDA | CLLR_ULL;
> +		hwdesc->cllr |= (next_lli & CLLR_LA);
> +	}
> +}
> +
> +static enum dma_slave_buswidth stm32_dma3_get_max_dw(u32 chan_max_burst,
> +						     enum stm32_dma3_port_data_width port_max_dw,
> +						     u32 len, dma_addr_t addr)
> +{
> +	enum dma_slave_buswidth max_dw = get_chan_max_dw(port_max_dw, chan_max_burst);
> +
> +	/* len and addr must be a multiple of dw */
> +	return 1 << __ffs(len | addr | max_dw);
> +}
> +
> +static u32 stm32_dma3_get_max_burst(u32 len, enum dma_slave_buswidth dw, u32 chan_max_burst)
> +{
> +	u32 max_burst = chan_max_burst ? chan_max_burst / dw : 1;
> +
> +	/* len is a multiple of dw, so if len is < chan_max_burst, shorten burst */
> +	if (len < chan_max_burst)
> +		max_burst = len / dw;
> +
> +	/*
> +	 * HW doesn't modify the burst if burst size <= half of the fifo size.
> +	 * If len is not a multiple of burst size, last burst is shortened by HW.
> +	 */
> +	return max_burst;
> +}
> +
> +static int stm32_dma3_chan_prep_hw(struct stm32_dma3_chan *chan, enum dma_transfer_direction dir,
> +				   u32 *ccr, u32 *ctr1, u32 *ctr2,
> +				   dma_addr_t src_addr, dma_addr_t dst_addr, u32 len)
> +{
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	struct dma_device dma_device = ddata->dma_dev;
> +	u32 sdw, ddw, sbl_max, dbl_max, tcem;
> +	u32 _ctr1 = 0, _ctr2 = 0;
> +	u32 ch_conf = chan->dt_config.ch_conf;
> +	u32 tr_conf = chan->dt_config.tr_conf;
> +	u32 sap = FIELD_GET(STM32_DMA3_DT_SAP, tr_conf), sap_max_dw;
> +	u32 dap = FIELD_GET(STM32_DMA3_DT_DAP, tr_conf), dap_max_dw;
> +
> +	dev_dbg(chan2dev(chan), "%s from %pad to %pad\n",
> +		dmaengine_get_direction_text(dir), &src_addr, &dst_addr);
> +
> +	sdw = chan->dma_config.src_addr_width ? : get_chan_max_dw(sap, chan->max_burst);
> +	ddw = chan->dma_config.dst_addr_width ? : get_chan_max_dw(dap, chan->max_burst);
> +	sbl_max = chan->dma_config.src_maxburst ? : 1;
> +	dbl_max = chan->dma_config.dst_maxburst ? : 1;
> +
> +	/* Following conditions would raise User Setting Error interrupt */
> +	if (!(dma_device.src_addr_widths & BIT(sdw)) || !(dma_device.dst_addr_widths & BIT(ddw))) {
> +		dev_err(chan2dev(chan), "Bus width (src=%u, dst=%u) not supported\n", sdw, ddw);
> +		return -EINVAL;
> +	}
> +
> +	if (ddata->ports_max_dw[1] == DW_INVALID && (sap || dap)) {
> +		dev_err(chan2dev(chan), "Only one master port, port 1 is not supported\n");
> +		return -EINVAL;
> +	}
> +
> +	sap_max_dw = ddata->ports_max_dw[sap];
> +	dap_max_dw = ddata->ports_max_dw[dap];
> +	if ((port_is_ahb(sap_max_dw) && sdw == DMA_SLAVE_BUSWIDTH_8_BYTES) ||
> +	    (port_is_ahb(dap_max_dw) && ddw == DMA_SLAVE_BUSWIDTH_8_BYTES)) {
> +		dev_err(chan2dev(chan),
> +			"8 bytes buswidth (src=%u, dst=%u) not supported on port (sap=%u, dap=%u\n",
> +			sdw, ddw, sap, dap);
> +		return -EINVAL;
> +	}
> +
> +	if (FIELD_GET(STM32_DMA3_DT_SINC, tr_conf))
> +		_ctr1 |= CTR1_SINC;
> +	if (sap)
> +		_ctr1 |= CTR1_SAP;
> +	if (FIELD_GET(STM32_DMA3_DT_DINC, tr_conf))
> +		_ctr1 |= CTR1_DINC;
> +	if (dap)
> +		_ctr1 |= CTR1_DAP;
> +
> +	_ctr2 |= FIELD_PREP(CTR2_REQSEL, chan->dt_config.req_line) & ~CTR2_SWREQ;
> +	if (FIELD_GET(STM32_DMA3_DT_BREQ, tr_conf))
> +		_ctr2 |= CTR2_BREQ;
> +	if (dir == DMA_DEV_TO_MEM && FIELD_GET(STM32_DMA3_DT_PFREQ, tr_conf))
> +		_ctr2 |= CTR2_PFREQ;
> +	tcem = FIELD_GET(STM32_DMA3_DT_TCEM, tr_conf);
> +	_ctr2 |= FIELD_PREP(CTR2_TCEM, tcem);
> +
> +	/* Store TCEM to know on which event TC flag occurred */
> +	chan->tcem = tcem;
> +	/* Store direction for residue computation */
> +	chan->dma_config.direction = dir;
> +
> +	switch (dir) {
> +	case DMA_MEM_TO_DEV:
> +		/* Set destination (device) data width and burst */
> +		ddw = min_t(u32, ddw, stm32_dma3_get_max_dw(chan->max_burst, dap_max_dw,
> +							    len, dst_addr));
> +		dbl_max = min_t(u32, dbl_max, stm32_dma3_get_max_burst(len, ddw, chan->max_burst));
> +
> +		/* Set source (memory) data width and burst */
> +		sdw = stm32_dma3_get_max_dw(chan->max_burst, sap_max_dw, len, src_addr);
> +		sbl_max = stm32_dma3_get_max_burst(len, sdw, chan->max_burst);
> +
> +		_ctr1 |= FIELD_PREP(CTR1_SDW_LOG2, ilog2(sdw));
> +		_ctr1 |= FIELD_PREP(CTR1_SBL_1, sbl_max - 1);
> +		_ctr1 |= FIELD_PREP(CTR1_DDW_LOG2, ilog2(ddw));
> +		_ctr1 |= FIELD_PREP(CTR1_DBL_1, dbl_max - 1);
> +
> +		if (ddw != sdw) {
> +			_ctr1 |= FIELD_PREP(CTR1_PAM, CTR1_PAM_PACK_UNPACK);
> +			/* Should never reach this case as ddw is clamped down */
> +			if (len & (ddw - 1)) {
> +				dev_err(chan2dev(chan),
> +					"Packing mode is enabled and len is not multiple of ddw");
> +				return -EINVAL;
> +			}
> +		}
> +
> +		/* dst = dev */
> +		_ctr2 |= CTR2_DREQ;
> +
> +		break;
> +
> +	case DMA_DEV_TO_MEM:
> +		/* Set source (device) data width and burst */
> +		sdw = min_t(u32, sdw, stm32_dma3_get_max_dw(chan->max_burst, sap_max_dw,
> +							    len, src_addr));
> +		sbl_max = min_t(u32, sbl_max, stm32_dma3_get_max_burst(len, sdw, chan->max_burst));
> +
> +		/* Set destination (memory) data width and burst */
> +		ddw = stm32_dma3_get_max_dw(chan->max_burst, dap_max_dw, len, dst_addr);
> +		dbl_max = stm32_dma3_get_max_burst(len, ddw, chan->max_burst);
> +
> +		_ctr1 |= FIELD_PREP(CTR1_SDW_LOG2, ilog2(sdw));
> +		_ctr1 |= FIELD_PREP(CTR1_SBL_1, sbl_max - 1);
> +		_ctr1 |= FIELD_PREP(CTR1_DDW_LOG2, ilog2(ddw));
> +		_ctr1 |= FIELD_PREP(CTR1_DBL_1, dbl_max - 1);
> +
> +		if (ddw != sdw) {
> +			_ctr1 |= FIELD_PREP(CTR1_PAM, CTR1_PAM_PACK_UNPACK);
> +			/* Should never reach this case as ddw is clamped down */
> +			if (len & (ddw - 1)) {
> +				dev_err(chan2dev(chan),
> +					"Packing mode is enabled and len is not multiple of ddw\n");
> +				return -EINVAL;
> +			}
> +		}
> +
> +		/* dst = mem */
> +		_ctr2 &= ~CTR2_DREQ;
> +
> +		break;
> +
> +	default:
> +		dev_err(chan2dev(chan), "Direction %s not supported\n",
> +			dmaengine_get_direction_text(dir));
> +		return -EINVAL;
> +	}
> +
> +	*ccr |= FIELD_PREP(CCR_PRIO, FIELD_GET(STM32_DMA3_DT_PRIO, ch_conf));
> +	*ctr1 = _ctr1;
> +	*ctr2 = _ctr2;
> +
> +	dev_dbg(chan2dev(chan), "%s: sdw=%u bytes sbl=%u beats ddw=%u bytes dbl=%u beats\n",
> +		__func__, sdw, sbl_max, ddw, dbl_max);
> +
> +	return 0;
> +}
> +
> +static void stm32_dma3_chan_start(struct stm32_dma3_chan *chan)
> +{
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	struct virt_dma_desc *vdesc;
> +	struct stm32_dma3_hwdesc *hwdesc;
> +	u32 id = chan->id;
> +	u32 csr, ccr;
> +
> +	vdesc = vchan_next_desc(&chan->vchan);
> +	if (!vdesc) {
> +		chan->swdesc = NULL;
> +		return;
> +	}
> +	list_del(&vdesc->node);
> +
> +	chan->swdesc = to_stm32_dma3_swdesc(vdesc);
> +	hwdesc = chan->swdesc->lli[0].hwdesc;
> +
> +	stm32_dma3_chan_dump_hwdesc(chan, chan->swdesc);
> +
> +	writel_relaxed(chan->swdesc->ccr, ddata->base + STM32_DMA3_CCR(id));
> +	writel_relaxed(hwdesc->ctr1, ddata->base + STM32_DMA3_CTR1(id));
> +	writel_relaxed(hwdesc->ctr2, ddata->base + STM32_DMA3_CTR2(id));
> +	writel_relaxed(hwdesc->cbr1, ddata->base + STM32_DMA3_CBR1(id));
> +	writel_relaxed(hwdesc->csar, ddata->base + STM32_DMA3_CSAR(id));
> +	writel_relaxed(hwdesc->cdar, ddata->base + STM32_DMA3_CDAR(id));
> +	writel_relaxed(hwdesc->cllr, ddata->base + STM32_DMA3_CLLR(id));
> +
> +	/* Clear any pending interrupts */
> +	csr = readl_relaxed(ddata->base + STM32_DMA3_CSR(id));
> +	if (csr & CSR_ALL_F)
> +		writel_relaxed(csr, ddata->base + STM32_DMA3_CFCR(id));
> +
> +	stm32_dma3_chan_dump_reg(chan);
> +
> +	ccr = readl_relaxed(ddata->base + STM32_DMA3_CCR(id));
> +	writel_relaxed(ccr | CCR_EN, ddata->base + STM32_DMA3_CCR(id));

This one should use writel instead of writel_relaxed because it need
dma_wmb() as barrier for preious write complete.

Frank

> +
> +	chan->dma_status = DMA_IN_PROGRESS;
> +
> +	dev_dbg(chan2dev(chan), "vchan %pK: started\n", &chan->vchan);
> +}
> +
> +static int stm32_dma3_chan_suspend(struct stm32_dma3_chan *chan, bool susp)
> +{
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	u32 csr, ccr = readl_relaxed(ddata->base + STM32_DMA3_CCR(chan->id)) & ~CCR_EN;
> +	int ret = 0;
> +
> +	if (susp)
> +		ccr |= CCR_SUSP;
> +	else
> +		ccr &= ~CCR_SUSP;
> +
> +	writel_relaxed(ccr, ddata->base + STM32_DMA3_CCR(chan->id));
> +
> +	if (susp) {
> +		ret = readl_relaxed_poll_timeout_atomic(ddata->base + STM32_DMA3_CSR(chan->id), csr,
> +							csr & CSR_SUSPF, 1, 10);
> +		if (!ret)
> +			writel_relaxed(CFCR_SUSPF, ddata->base + STM32_DMA3_CFCR(chan->id));
> +
> +		stm32_dma3_chan_dump_reg(chan);
> +	}
> +
> +	return ret;
> +}
> +
> +static void stm32_dma3_chan_reset(struct stm32_dma3_chan *chan)
> +{
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	u32 ccr = readl_relaxed(ddata->base + STM32_DMA3_CCR(chan->id)) & ~CCR_EN;
> +
> +	writel_relaxed(ccr |= CCR_RESET, ddata->base + STM32_DMA3_CCR(chan->id));
> +}
> +
> +static int stm32_dma3_chan_stop(struct stm32_dma3_chan *chan)
> +{
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	u32 ccr;
> +	int ret = 0;
> +
> +	chan->dma_status = DMA_COMPLETE;
> +
> +	/* Disable interrupts */
> +	ccr = readl_relaxed(ddata->base + STM32_DMA3_CCR(chan->id));
> +	writel_relaxed(ccr & ~(CCR_ALLIE | CCR_EN), ddata->base + STM32_DMA3_CCR(chan->id));
> +
> +	if (!(ccr & CCR_SUSP) && (ccr & CCR_EN)) {
> +		/* Suspend the channel */
> +		ret = stm32_dma3_chan_suspend(chan, true);
> +		if (ret)
> +			dev_warn(chan2dev(chan), "%s: timeout, data might be lost\n", __func__);
> +	}
> +
> +	/*
> +	 * Reset the channel: this causes the reset of the FIFO and the reset of the channel
> +	 * internal state, the reset of CCR_EN and CCR_SUSP bits.
> +	 */
> +	stm32_dma3_chan_reset(chan);
> +
> +	return ret;
> +}
> +
> +static void stm32_dma3_chan_complete(struct stm32_dma3_chan *chan)
> +{
> +	if (!chan->swdesc)
> +		return;
> +
> +	vchan_cookie_complete(&chan->swdesc->vdesc);
> +	chan->swdesc = NULL;
> +	stm32_dma3_chan_start(chan);
> +}
> +
> +static irqreturn_t stm32_dma3_chan_irq(int irq, void *devid)
> +{
> +	struct stm32_dma3_chan *chan = devid;
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	u32 misr, csr, ccr;
> +
> +	spin_lock(&chan->vchan.lock);
> +
> +	misr = readl_relaxed(ddata->base + STM32_DMA3_MISR);
> +	if (!(misr & MISR_MIS(chan->id))) {
> +		spin_unlock(&chan->vchan.lock);
> +		return IRQ_NONE;
> +	}
> +
> +	csr = readl_relaxed(ddata->base + STM32_DMA3_CSR(chan->id));
> +	ccr = readl_relaxed(ddata->base + STM32_DMA3_CCR(chan->id)) & CCR_ALLIE;
> +
> +	if (csr & CSR_TCF && ccr & CCR_TCIE) {
> +		if (chan->swdesc->cyclic)
> +			vchan_cyclic_callback(&chan->swdesc->vdesc);
> +		else
> +			stm32_dma3_chan_complete(chan);
> +	}
> +
> +	if (csr & CSR_USEF && ccr & CCR_USEIE) {
> +		dev_err(chan2dev(chan), "User setting error\n");
> +		chan->dma_status = DMA_ERROR;
> +		/* CCR.EN automatically cleared by HW */
> +		stm32_dma3_check_user_setting(chan);
> +		stm32_dma3_chan_reset(chan);
> +	}
> +
> +	if (csr & CSR_ULEF && ccr & CCR_ULEIE) {
> +		dev_err(chan2dev(chan), "Update link transfer error\n");
> +		chan->dma_status = DMA_ERROR;
> +		/* CCR.EN automatically cleared by HW */
> +		stm32_dma3_chan_reset(chan);
> +	}
> +
> +	if (csr & CSR_DTEF && ccr & CCR_DTEIE) {
> +		dev_err(chan2dev(chan), "Data transfer error\n");
> +		chan->dma_status = DMA_ERROR;
> +		/* CCR.EN automatically cleared by HW */
> +		stm32_dma3_chan_reset(chan);
> +	}
> +
> +	/*
> +	 * Half Transfer Interrupt may be disabled but Half Transfer Flag can be set,
> +	 * ensure HTF flag to be cleared, with other flags.
> +	 */
> +	csr &= (ccr | CCR_HTIE);
> +
> +	if (csr)
> +		writel_relaxed(csr, ddata->base + STM32_DMA3_CFCR(chan->id));
> +
> +	spin_unlock(&chan->vchan.lock);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int stm32_dma3_alloc_chan_resources(struct dma_chan *c)
> +{
> +	struct stm32_dma3_chan *chan = to_stm32_dma3_chan(c);
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	u32 id = chan->id, csemcr, ccid;
> +	int ret;
> +
> +	ret = pm_runtime_resume_and_get(ddata->dma_dev.dev);
> +	if (ret < 0)
> +		return ret;

It doesn't prefer runtime pm get at alloc dma chan, many client driver
doesn't actual user dma when allocate dma chan.

Ideally, resume get when issue_pending. Please refer pl330.c. 

You may add runtime pm later after enablement patch.

Frank

> +
> +	/* Ensure the channel is free */
> +	if (chan->semaphore_mode &&
> +	    readl_relaxed(ddata->base + STM32_DMA3_CSEMCR(chan->id)) & CSEMCR_SEM_MUTEX) {
> +		ret = -EBUSY;
> +		goto err_put_sync;
> +	}
> +
> +	chan->lli_pool = dmam_pool_create(dev_name(&c->dev->device), c->device->dev,
> +					  sizeof(struct stm32_dma3_hwdesc),
> +					  __alignof__(struct stm32_dma3_hwdesc), 0);
> +	if (!chan->lli_pool) {
> +		dev_err(chan2dev(chan), "Failed to create LLI pool\n");
> +		ret = -ENOMEM;
> +		goto err_put_sync;
> +	}
> +
> +	/* Take the channel semaphore */
> +	if (chan->semaphore_mode) {
> +		writel_relaxed(CSEMCR_SEM_MUTEX, ddata->base + STM32_DMA3_CSEMCR(id));
> +		csemcr = readl_relaxed(ddata->base + STM32_DMA3_CSEMCR(id));
> +		ccid = FIELD_GET(CSEMCR_SEM_CCID, csemcr);
> +		/* Check that the channel is well taken */
> +		if (ccid != CCIDCFGR_CID1) {
> +			dev_err(chan2dev(chan), "Not under CID1 control (in-use by CID%d)\n", ccid);
> +			ret = -EPERM;
> +			goto err_pool_destroy;
> +		}
> +		dev_dbg(chan2dev(chan), "Under CID1 control (semcr=0x%08x)\n", csemcr);
> +	}
> +
> +	return 0;
> +
> +err_pool_destroy:
> +	dmam_pool_destroy(chan->lli_pool);
> +	chan->lli_pool = NULL;
> +
> +err_put_sync:
> +	pm_runtime_put_sync(ddata->dma_dev.dev);
> +
> +	return ret;
> +}
> +
> +static void stm32_dma3_free_chan_resources(struct dma_chan *c)
> +{
> +	struct stm32_dma3_chan *chan = to_stm32_dma3_chan(c);
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	unsigned long flags;
> +
> +	/* Ensure channel is in idle state */
> +	spin_lock_irqsave(&chan->vchan.lock, flags);
> +	stm32_dma3_chan_stop(chan);
> +	chan->swdesc = NULL;
> +	spin_unlock_irqrestore(&chan->vchan.lock, flags);
> +
> +	vchan_free_chan_resources(to_virt_chan(c));
> +
> +	dmam_pool_destroy(chan->lli_pool);
> +	chan->lli_pool = NULL;
> +
> +	/* Release the channel semaphore */
> +	if (chan->semaphore_mode)
> +		writel_relaxed(0, ddata->base + STM32_DMA3_CSEMCR(chan->id));
> +
> +	pm_runtime_put_sync(ddata->dma_dev.dev);
> +
> +	/* Reset configuration */
> +	memset(&chan->dt_config, 0, sizeof(chan->dt_config));
> +	memset(&chan->dma_config, 0, sizeof(chan->dma_config));
> +}
> +
> +static struct dma_async_tx_descriptor *stm32_dma3_prep_slave_sg(struct dma_chan *c,
> +								struct scatterlist *sgl,
> +								unsigned int sg_len,
> +								enum dma_transfer_direction dir,
> +								unsigned long flags, void *context)
> +{
> +	struct stm32_dma3_chan *chan = to_stm32_dma3_chan(c);
> +	struct stm32_dma3_swdesc *swdesc;
> +	struct scatterlist *sg;
> +	size_t len;
> +	dma_addr_t sg_addr, dev_addr, src, dst;
> +	u32 i, j, count, ctr1, ctr2;
> +	int ret;
> +
> +	count = sg_len;
> +	for_each_sg(sgl, sg, sg_len, i) {
> +		len = sg_dma_len(sg);
> +		if (len > STM32_DMA3_MAX_BLOCK_SIZE)
> +			count += DIV_ROUND_UP(len, STM32_DMA3_MAX_BLOCK_SIZE) - 1;
> +	}
> +
> +	swdesc = stm32_dma3_chan_desc_alloc(chan, count);
> +	if (!swdesc)
> +		return NULL;
> +
> +	/* sg_len and i correspond to the initial sgl; count and j correspond to the hwdesc LL */
> +	j = 0;
> +	for_each_sg(sgl, sg, sg_len, i) {
> +		sg_addr = sg_dma_address(sg);
> +		dev_addr = (dir == DMA_MEM_TO_DEV) ? chan->dma_config.dst_addr :
> +						     chan->dma_config.src_addr;
> +		len = sg_dma_len(sg);
> +
> +		do {
> +			size_t chunk = min_t(size_t, len, STM32_DMA3_MAX_BLOCK_SIZE);
> +
> +			if (dir == DMA_MEM_TO_DEV) {
> +				src = sg_addr;
> +				dst = dev_addr;
> +
> +				ret = stm32_dma3_chan_prep_hw(chan, dir, &swdesc->ccr, &ctr1, &ctr2,
> +							      src, dst, chunk);
> +
> +				if (FIELD_GET(CTR1_DINC, ctr1))
> +					dev_addr += chunk;
> +			} else { /* (dir == DMA_DEV_TO_MEM || dir == DMA_MEM_TO_MEM) */
> +				src = dev_addr;
> +				dst = sg_addr;
> +
> +				ret = stm32_dma3_chan_prep_hw(chan, dir, &swdesc->ccr, &ctr1, &ctr2,
> +							      src, dst, chunk);
> +
> +				if (FIELD_GET(CTR1_SINC, ctr1))
> +					dev_addr += chunk;
> +			}
> +
> +			if (ret)
> +				goto err_desc_free;
> +
> +			stm32_dma3_chan_prep_hwdesc(chan, swdesc, j, src, dst, chunk,
> +						    ctr1, ctr2, j == (count - 1), false);
> +
> +			sg_addr += chunk;
> +			len -= chunk;
> +			j++;
> +		} while (len);
> +	}
> +
> +	/* Enable Error interrupts */
> +	swdesc->ccr |= CCR_USEIE | CCR_ULEIE | CCR_DTEIE;
> +	/* Enable Transfer state interrupts */
> +	swdesc->ccr |= CCR_TCIE;
> +
> +	swdesc->cyclic = false;
> +
> +	return vchan_tx_prep(&chan->vchan, &swdesc->vdesc, flags);
> +
> +err_desc_free:
> +	stm32_dma3_chan_desc_free(chan, swdesc);
> +
> +	return NULL;
> +}
> +
> +static void stm32_dma3_caps(struct dma_chan *c, struct dma_slave_caps *caps)
> +{
> +	struct stm32_dma3_chan *chan = to_stm32_dma3_chan(c);
> +
> +	if (!chan->fifo_size) {
> +		caps->max_burst = 0;
> +		caps->src_addr_widths &= ~BIT(DMA_SLAVE_BUSWIDTH_8_BYTES);
> +		caps->dst_addr_widths &= ~BIT(DMA_SLAVE_BUSWIDTH_8_BYTES);
> +	} else {
> +		/* Burst transfer should not exceed half of the fifo size */
> +		caps->max_burst = chan->max_burst;
> +		if (caps->max_burst < DMA_SLAVE_BUSWIDTH_8_BYTES) {
> +			caps->src_addr_widths &= ~BIT(DMA_SLAVE_BUSWIDTH_8_BYTES);
> +			caps->dst_addr_widths &= ~BIT(DMA_SLAVE_BUSWIDTH_8_BYTES);
> +		}
> +	}
> +}
> +
> +static int stm32_dma3_config(struct dma_chan *c, struct dma_slave_config *config)
> +{
> +	struct stm32_dma3_chan *chan = to_stm32_dma3_chan(c);
> +
> +	memcpy(&chan->dma_config, config, sizeof(*config));
> +
> +	return 0;
> +}
> +
> +static int stm32_dma3_terminate_all(struct dma_chan *c)
> +{
> +	struct stm32_dma3_chan *chan = to_stm32_dma3_chan(c);
> +	unsigned long flags;
> +	LIST_HEAD(head);
> +
> +	spin_lock_irqsave(&chan->vchan.lock, flags);
> +
> +	if (chan->swdesc) {
> +		vchan_terminate_vdesc(&chan->swdesc->vdesc);
> +		chan->swdesc = NULL;
> +	}
> +
> +	stm32_dma3_chan_stop(chan);
> +
> +	vchan_get_all_descriptors(&chan->vchan, &head);
> +
> +	spin_unlock_irqrestore(&chan->vchan.lock, flags);
> +	vchan_dma_desc_free_list(&chan->vchan, &head);
> +
> +	dev_dbg(chan2dev(chan), "vchan %pK: terminated\n", &chan->vchan);
> +
> +	return 0;
> +}
> +
> +static void stm32_dma3_synchronize(struct dma_chan *c)
> +{
> +	struct stm32_dma3_chan *chan = to_stm32_dma3_chan(c);
> +
> +	vchan_synchronize(&chan->vchan);
> +}
> +
> +static void stm32_dma3_issue_pending(struct dma_chan *c)
> +{
> +	struct stm32_dma3_chan *chan = to_stm32_dma3_chan(c);
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&chan->vchan.lock, flags);
> +
> +	if (vchan_issue_pending(&chan->vchan) && !chan->swdesc) {
> +		dev_dbg(chan2dev(chan), "vchan %pK: issued\n", &chan->vchan);
> +		stm32_dma3_chan_start(chan);
> +	}
> +
> +	spin_unlock_irqrestore(&chan->vchan.lock, flags);
> +}
> +
> +static bool stm32_dma3_filter_fn(struct dma_chan *c, void *fn_param)
> +{
> +	struct stm32_dma3_chan *chan = to_stm32_dma3_chan(c);
> +	struct stm32_dma3_ddata *ddata = to_stm32_dma3_ddata(chan);
> +	struct stm32_dma3_dt_conf *conf = fn_param;
> +	u32 mask, semcr;
> +	int ret;
> +
> +	dev_dbg(c->device->dev, "%s(%s): req_line=%d ch_conf=%08x tr_conf=%08x\n",
> +		__func__, dma_chan_name(c), conf->req_line, conf->ch_conf, conf->tr_conf);
> +
> +	if (!of_property_read_u32(c->device->dev->of_node, "dma-channel-mask", &mask))
> +		if (!(mask & BIT(chan->id)))
> +			return false;
> +
> +	ret = pm_runtime_resume_and_get(ddata->dma_dev.dev);
> +	if (ret < 0)
> +		return false;
> +	semcr = readl_relaxed(ddata->base + STM32_DMA3_CSEMCR(chan->id));
> +	pm_runtime_put_sync(ddata->dma_dev.dev);
> +
> +	/* Check if chan is free */
> +	if (semcr & CSEMCR_SEM_MUTEX)
> +		return false;
> +
> +	/* Check if chan fifo fits well */
> +	if (FIELD_GET(STM32_DMA3_DT_FIFO, conf->ch_conf) != chan->fifo_size)
> +		return false;
> +
> +	return true;
> +}
> +
> +static struct dma_chan *stm32_dma3_of_xlate(struct of_phandle_args *dma_spec, struct of_dma *ofdma)
> +{
> +	struct stm32_dma3_ddata *ddata = ofdma->of_dma_data;
> +	dma_cap_mask_t mask = ddata->dma_dev.cap_mask;
> +	struct stm32_dma3_dt_conf conf;
> +	struct stm32_dma3_chan *chan;
> +	struct dma_chan *c;
> +
> +	if (dma_spec->args_count < 3) {
> +		dev_err(ddata->dma_dev.dev, "Invalid args count\n");
> +		return NULL;
> +	}
> +
> +	conf.req_line = dma_spec->args[0];
> +	conf.ch_conf = dma_spec->args[1];
> +	conf.tr_conf = dma_spec->args[2];
> +
> +	if (conf.req_line >= ddata->dma_requests) {
> +		dev_err(ddata->dma_dev.dev, "Invalid request line\n");
> +		return NULL;
> +	}
> +
> +	/* Request dma channel among the generic dma controller list */
> +	c = dma_request_channel(mask, stm32_dma3_filter_fn, &conf);
> +	if (!c) {
> +		dev_err(ddata->dma_dev.dev, "No suitable channel found\n");
> +		return NULL;
> +	}
> +
> +	chan = to_stm32_dma3_chan(c);
> +	chan->dt_config = conf;
> +
> +	return c;
> +}
> +
> +static u32 stm32_dma3_check_rif(struct stm32_dma3_ddata *ddata)
> +{
> +	u32 chan_reserved, mask = 0, i, ccidcfgr, invalid_cid = 0;
> +
> +	/* Reserve Secure channels */
> +	chan_reserved = readl_relaxed(ddata->base + STM32_DMA3_SECCFGR);
> +
> +	/*
> +	 * CID filtering must be configured to ensure that the DMA3 channel will inherit the CID of
> +	 * the processor which is configuring and using the given channel.
> +	 * In case CID filtering is not configured, dma-channel-mask property can be used to
> +	 * specify available DMA channels to the kernel.
> +	 */
> +	of_property_read_u32(ddata->dma_dev.dev->of_node, "dma-channel-mask", &mask);
> +
> +	/* Reserve !CID-filtered not in dma-channel-mask, static CID != CID1, CID1 not allowed */
> +	for (i = 0; i < ddata->dma_channels; i++) {
> +		ccidcfgr = readl_relaxed(ddata->base + STM32_DMA3_CCIDCFGR(i));
> +
> +		if (!(ccidcfgr & CCIDCFGR_CFEN)) { /* !CID-filtered */
> +			invalid_cid |= BIT(i);
> +			if (!(mask & BIT(i))) /* Not in dma-channel-mask */
> +				chan_reserved |= BIT(i);
> +		} else { /* CID-filtered */
> +			if (!(ccidcfgr & CCIDCFGR_SEM_EN)) { /* Static CID mode */
> +				if (FIELD_GET(CCIDCFGR_SCID, ccidcfgr) != CCIDCFGR_CID1)
> +					chan_reserved |= BIT(i);
> +			} else { /* Semaphore mode */
> +				if (!FIELD_GET(CCIDCFGR_SEM_WLIST_CID1, ccidcfgr))
> +					chan_reserved |= BIT(i);
> +				ddata->chans[i].semaphore_mode = true;
> +			}
> +		}
> +		dev_dbg(ddata->dma_dev.dev, "chan%d: %s mode, %s\n", i,
> +			!(ccidcfgr & CCIDCFGR_CFEN) ? "!CID-filtered" :
> +			ddata->chans[i].semaphore_mode ? "Semaphore" : "Static CID",
> +			(chan_reserved & BIT(i)) ? "denied" :
> +			mask & BIT(i) ? "force allowed" : "allowed");
> +	}
> +
> +	if (invalid_cid)
> +		dev_warn(ddata->dma_dev.dev, "chan%*pbl have invalid CID configuration\n",
> +			 ddata->dma_channels, &invalid_cid);
> +
> +	return chan_reserved;
> +}
> +
> +static const struct of_device_id stm32_dma3_of_match[] = {
> +	{ .compatible = "st,stm32-dma3", },
> +	{ /* sentinel */},
> +};
> +MODULE_DEVICE_TABLE(of, stm32_dma3_of_match);
> +
> +static int stm32_dma3_probe(struct platform_device *pdev)
> +{
> +	struct device_node *np = pdev->dev.of_node;
> +	struct stm32_dma3_ddata *ddata;
> +	struct reset_control *reset;
> +	struct stm32_dma3_chan *chan;
> +	struct dma_device *dma_dev;
> +	u32 master_ports, chan_reserved, i, verr;
> +	u64 hwcfgr;
> +	int ret;
> +
> +	ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
> +	if (!ddata)
> +		return -ENOMEM;
> +	platform_set_drvdata(pdev, ddata);
> +
> +	dma_dev = &ddata->dma_dev;
> +
> +	ddata->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(ddata->base))
> +		return PTR_ERR(ddata->base);
> +
> +	ddata->clk = devm_clk_get(&pdev->dev, NULL);
> +	if (IS_ERR(ddata->clk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(ddata->clk), "Failed to get clk\n");
> +
> +	reset = devm_reset_control_get_optional(&pdev->dev, NULL);
> +	if (IS_ERR(reset))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(reset), "Failed to get reset\n");
> +
> +	ret = clk_prepare_enable(ddata->clk);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "Failed to enable clk\n");
> +
> +	reset_control_reset(reset);
> +
> +	INIT_LIST_HEAD(&dma_dev->channels);
> +
> +	dma_cap_set(DMA_SLAVE, dma_dev->cap_mask);
> +	dma_cap_set(DMA_PRIVATE, dma_dev->cap_mask);
> +	dma_dev->dev = &pdev->dev;
> +	/*
> +	 * This controller supports up to 8-byte buswidth depending on the port used and the
> +	 * channel, and can only access address at even boundaries, multiple of the buswidth.
> +	 */
> +	dma_dev->copy_align = DMAENGINE_ALIGN_8_BYTES;
> +	dma_dev->src_addr_widths = BIT(DMA_SLAVE_BUSWIDTH_1_BYTE) |
> +				   BIT(DMA_SLAVE_BUSWIDTH_2_BYTES) |
> +				   BIT(DMA_SLAVE_BUSWIDTH_4_BYTES) |
> +				   BIT(DMA_SLAVE_BUSWIDTH_8_BYTES);
> +	dma_dev->dst_addr_widths = BIT(DMA_SLAVE_BUSWIDTH_1_BYTE) |
> +				   BIT(DMA_SLAVE_BUSWIDTH_2_BYTES) |
> +				   BIT(DMA_SLAVE_BUSWIDTH_4_BYTES) |
> +				   BIT(DMA_SLAVE_BUSWIDTH_8_BYTES);
> +	dma_dev->directions = BIT(DMA_DEV_TO_MEM) | BIT(DMA_MEM_TO_DEV) | BIT(DMA_MEM_TO_MEM);
> +
> +	dma_dev->descriptor_reuse = true;
> +	dma_dev->max_sg_burst = STM32_DMA3_MAX_SEG_SIZE;
> +	dma_dev->residue_granularity = DMA_RESIDUE_GRANULARITY_DESCRIPTOR;
> +	dma_dev->device_alloc_chan_resources = stm32_dma3_alloc_chan_resources;
> +	dma_dev->device_free_chan_resources = stm32_dma3_free_chan_resources;
> +	dma_dev->device_prep_slave_sg = stm32_dma3_prep_slave_sg;
> +	dma_dev->device_caps = stm32_dma3_caps;
> +	dma_dev->device_config = stm32_dma3_config;
> +	dma_dev->device_terminate_all = stm32_dma3_terminate_all;
> +	dma_dev->device_synchronize = stm32_dma3_synchronize;
> +	dma_dev->device_tx_status = dma_cookie_status;
> +	dma_dev->device_issue_pending = stm32_dma3_issue_pending;
> +
> +	/* if dma_channels is not modified, get it from hwcfgr1 */
> +	if (of_property_read_u32(np, "dma-channels", &ddata->dma_channels)) {
> +		hwcfgr = readl_relaxed(ddata->base + STM32_DMA3_HWCFGR1);
> +		ddata->dma_channels = FIELD_GET(G_NUM_CHANNELS, hwcfgr);
> +	}
> +
> +	/* if dma_requests is not modified, get it from hwcfgr2 */
> +	if (of_property_read_u32(np, "dma-requests", &ddata->dma_requests)) {
> +		hwcfgr = readl_relaxed(ddata->base + STM32_DMA3_HWCFGR2);
> +		ddata->dma_requests = FIELD_GET(G_MAX_REQ_ID, hwcfgr) + 1;
> +	}
> +
> +	/* G_MASTER_PORTS, G_M0_DATA_WIDTH_ENC, G_M1_DATA_WIDTH_ENC in HWCFGR1 */
> +	hwcfgr = readl_relaxed(ddata->base + STM32_DMA3_HWCFGR1);
> +	master_ports = FIELD_GET(G_MASTER_PORTS, hwcfgr);
> +
> +	ddata->ports_max_dw[0] = FIELD_GET(G_M0_DATA_WIDTH_ENC, hwcfgr);
> +	if (master_ports == AXI64 || master_ports == AHB32) /* Single master port */
> +		ddata->ports_max_dw[1] = DW_INVALID;
> +	else /* Dual master ports */
> +		ddata->ports_max_dw[1] = FIELD_GET(G_M1_DATA_WIDTH_ENC, hwcfgr);
> +
> +	ddata->chans = devm_kcalloc(&pdev->dev, ddata->dma_channels, sizeof(*ddata->chans),
> +				    GFP_KERNEL);
> +	if (!ddata->chans) {
> +		ret = -ENOMEM;
> +		goto err_clk_disable;
> +	}
> +
> +	chan_reserved = stm32_dma3_check_rif(ddata);
> +
> +	if (chan_reserved == GENMASK(ddata->dma_channels - 1, 0)) {
> +		ret = -ENODEV;
> +		dev_err_probe(&pdev->dev, ret, "No channel available, abort registration\n");
> +		goto err_clk_disable;
> +	}
> +
> +	/* G_FIFO_SIZE x=0..7 in HWCFGR3 and G_FIFO_SIZE x=8..15 in HWCFGR4 */
> +	hwcfgr = readl_relaxed(ddata->base + STM32_DMA3_HWCFGR3);
> +	hwcfgr |= ((u64)readl_relaxed(ddata->base + STM32_DMA3_HWCFGR4)) << 32;
> +
> +	for (i = 0; i < ddata->dma_channels; i++) {
> +		if (chan_reserved & BIT(i))
> +			continue;
> +
> +		chan = &ddata->chans[i];
> +		chan->id = i;
> +		chan->fifo_size = get_chan_hwcfg(i, G_FIFO_SIZE(i), hwcfgr);
> +		/* If chan->fifo_size > 0 then half of the fifo size, else no burst when no FIFO */
> +		chan->max_burst = (chan->fifo_size) ? (1 << (chan->fifo_size + 1)) / 2 : 0;
> +		chan->vchan.desc_free = stm32_dma3_chan_vdesc_free;
> +
> +		vchan_init(&chan->vchan, dma_dev);
> +	}
> +
> +	ret = dmaenginem_async_device_register(dma_dev);
> +	if (ret)
> +		goto err_clk_disable;
> +
> +	for (i = 0; i < ddata->dma_channels; i++) {
> +		if (chan_reserved & BIT(i))
> +			continue;
> +
> +		ret = platform_get_irq(pdev, i);
> +		if (ret < 0)
> +			goto err_clk_disable;
> +
> +		chan = &ddata->chans[i];
> +		chan->irq = ret;
> +
> +		ret = devm_request_irq(&pdev->dev, chan->irq, stm32_dma3_chan_irq, 0,
> +				       dev_name(chan2dev(chan)), chan);
> +		if (ret) {
> +			dev_err_probe(&pdev->dev, ret, "Failed to request channel %s IRQ\n",
> +				      dev_name(chan2dev(chan)));
> +			goto err_clk_disable;
> +		}
> +	}
> +
> +	ret = of_dma_controller_register(np, stm32_dma3_of_xlate, ddata);
> +	if (ret) {
> +		dev_err_probe(&pdev->dev, ret, "Failed to register controller\n");
> +		goto err_clk_disable;
> +	}
> +
> +	verr = readl_relaxed(ddata->base + STM32_DMA3_VERR);
> +
> +	pm_runtime_set_active(&pdev->dev);
> +	pm_runtime_enable(&pdev->dev);
> +	pm_runtime_get_noresume(&pdev->dev);
> +	pm_runtime_put(&pdev->dev);
> +
> +	dev_info(&pdev->dev, "STM32 DMA3 registered rev:%lu.%lu\n",
> +		 FIELD_GET(VERR_MAJREV, verr), FIELD_GET(VERR_MINREV, verr));
> +
> +	return 0;
> +
> +err_clk_disable:
> +	clk_disable_unprepare(ddata->clk);
> +
> +	return ret;
> +}
> +
> +static void stm32_dma3_remove(struct platform_device *pdev)
> +{
> +	pm_runtime_disable(&pdev->dev);
> +}
> +
> +static int stm32_dma3_runtime_suspend(struct device *dev)
> +{
> +	struct stm32_dma3_ddata *ddata = dev_get_drvdata(dev);
> +
> +	clk_disable_unprepare(ddata->clk);
> +
> +	return 0;
> +}
> +
> +static int stm32_dma3_runtime_resume(struct device *dev)
> +{
> +	struct stm32_dma3_ddata *ddata = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = clk_prepare_enable(ddata->clk);
> +	if (ret)
> +		dev_err(dev, "Failed to enable clk: %d\n", ret);
> +
> +	return ret;
> +}
> +
> +static const struct dev_pm_ops stm32_dma3_pm_ops = {
> +	SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
> +	RUNTIME_PM_OPS(stm32_dma3_runtime_suspend, stm32_dma3_runtime_resume, NULL)
> +};
> +
> +static struct platform_driver stm32_dma3_driver = {
> +	.probe = stm32_dma3_probe,
> +	.remove_new = stm32_dma3_remove,
> +	.driver = {
> +		.name = "stm32-dma3",
> +		.of_match_table = stm32_dma3_of_match,
> +		.pm = pm_ptr(&stm32_dma3_pm_ops),
> +	},
> +};
> +
> +static int __init stm32_dma3_init(void)
> +{
> +	return platform_driver_register(&stm32_dma3_driver);
> +}
> +
> +subsys_initcall(stm32_dma3_init);
> +
> +MODULE_DESCRIPTION("STM32 DMA3 controller driver");
> +MODULE_AUTHOR("Amelie Delaunay <amelie.delaunay@foss.st.com>");
> +MODULE_LICENSE("GPL");
> -- 
> 2.25.1
> 


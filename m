Return-Path: <devicetree+bounces-83095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 667DB927248
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 10:56:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A24ACB20F13
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 08:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B351AAE27;
	Thu,  4 Jul 2024 08:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="lO3eyWsA"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8571A255A
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 08:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=198.175.65.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720083389; cv=fail; b=YjKERMAh1e5zC1eTaRCYKnu5tX6ksblxhUXz7/nV7lWss4mP/UQf8sNUubM9536OatkvV+6M+r7Re05xT8yZ9NWUmwmk7bVfoNXctbuz3N97l1HZbTRQcuA9nnm2BRfz/E44zkpulyNDd/8XoW4ikZDAiMQW0rERLbUhkO6gxkE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720083389; c=relaxed/simple;
	bh=24zr/k3q2sF3Eh8KVPUAMcU7lFHmUtGcDeyKpRylWjU=;
	h=Date:From:To:CC:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=lVuho4A2U/vm4tPm36Maz32FntTz2lMVN+pu+YnCPa/uoeS8uEbbWpMKcOxxm7thLBdGWqeyjrx0cxhKiri8mIvhiLrZa2uX/AJak9gSC5Ko0kPsg1o+HJhCttL2MPFu0RBUOvfkzmDtOBJLxf/XzNsDnzyi0NiH25GyTBOVhgk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=lO3eyWsA; arc=fail smtp.client-ip=198.175.65.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1720083387; x=1751619387;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=24zr/k3q2sF3Eh8KVPUAMcU7lFHmUtGcDeyKpRylWjU=;
  b=lO3eyWsAK55CX07ewTNs4/gSjCbao95crqEjlH/EEMWjZAESbNsgU66B
   tkKg1ybF6Lma3GPpMO5Lhn6dbba+Dy7wYchBy2EL4y0jgeuvAOGf/ahLr
   NY3Nr/HAaTYrO38DN9aofd43LqykxULNB7JgGiD12uftlEgNfaTmmAuG5
   QZ30vvqfQacyj1ui78peVF5k0Uu0YqgC8AAL8mAWTz3GRoscHgLXDhmZB
   oth3/XeRpoWct8x7T3hgWhsl6hTfOB27SewTpRTnZBb54fIVZ3GNAK5WS
   bvhpGowxS35Zs1d02UP1T5v/dbe053du9kIEJiUzWn90kr8nEtWfceafQ
   A==;
X-CSE-ConnectionGUID: Rq8iifAcRYq0bWRlrSa43w==
X-CSE-MsgGUID: /38t/kzcTpCudyFwwgj1ng==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="21114818"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; 
   d="scan'208";a="21114818"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2024 01:56:23 -0700
X-CSE-ConnectionGUID: nt4vp92SQtyGwlRvBVg4+g==
X-CSE-MsgGUID: XwY17HLTQxCpXh5pXljY0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; 
   d="scan'208";a="47186729"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 04 Jul 2024 01:56:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 4 Jul 2024 01:56:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 4 Jul 2024 01:56:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 4 Jul 2024 01:56:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eb1+AwcBxq44/5V23nEUW9SWYjGjkv3tT0CwWK8mJH0nLR5yHbjFRj4SViG99rVwLy6O3By/K/UNomz4KkZ0rhYjcXa/qLtMIL2KMPK6uH3MB9xdG7UEiS0AbsSNHE+LBjklg6rJnfKIlHVnM9Ux85JCr7PIboq3yjJ4K9ePNjxd0PZ0gsSijJEN9c1mjJ6oJTR1gkafM1QC+uJr/Ki2EsQbbqkia1g3iyq+gERNU1kkcahl9KNYVRijG0paSzU0UgkTzfQWJeOtxNwjxbDBc+4NRrXULmnuUj5zlDLZGZZh01KPDa3Yuf4ajqlUBwXwpmJwBzGdWj5l0C0/tL9XuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bUp+jEBisafVPMrc9ahxWwhAHi45qNjRXudBpFuH6jI=;
 b=nYzZGewjMMYBsd8Ld5MWPayLBCtPVqnKhQHsCayxVah++94urNFi6q5IecLevaXUaN9N80p+DQHv/cu++d80wNcaX34+iBIvyw08In9fzMjUplkgp5pvpIx1KscIrjFospggdnebumXMLqbDOA3GxD28TG944srPFapbmTl9MYCXe+xBsNEHO/SGjn9603EyTvCZb4FUhIGlqfhM6+U0lJ03HDmZ1W4D/H7LhPVJEtXDWYp51mpdWjh/1HAigbfBzhY+qmwXx87a935CcOwC/rQXwcAPbRFo8kPBZ48UctBx6v70AwIuBs9vEIQqSnZTWEBm2pHmbkQoVvXKm34orw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB6039.namprd11.prod.outlook.com (2603:10b6:8:76::6) by
 LV3PR11MB8744.namprd11.prod.outlook.com (2603:10b6:408:215::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.30; Thu, 4 Jul 2024 08:56:19 +0000
Received: from DS7PR11MB6039.namprd11.prod.outlook.com
 ([fe80::3f0c:a44c:f6a2:d3a9]) by DS7PR11MB6039.namprd11.prod.outlook.com
 ([fe80::3f0c:a44c:f6a2:d3a9%3]) with mapi id 15.20.7741.017; Thu, 4 Jul 2024
 08:56:19 +0000
Date: Thu, 4 Jul 2024 16:56:06 +0800
From: Philip Li <philip.li@intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: kernel test robot <lkp@intel.com>, Leith Bade <leith@bade.nz>,
	<matthias.bgg@gmail.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
	<angelogioacchino.delregno@collabora.com>, <oe-kbuild-all@lists.linux.dev>,
	<frank-w@public-files.de>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <robh@kernel.org>,
	<linux-mediatek@lists.infradead.org>, <didi.debian@cknow.org>
Subject: Re: [PATCH 2/4] arm64: dts: mediatek: mt7986: add gpio-hog for boot
 mode switch on BPI-R3
Message-ID: <ZoZjpuU9UCTMQPJG@rli9-mobl>
References: <20240627075856.2314804-3-leith@bade.nz>
 <202407031954.bBLv9YRp-lkp@intel.com>
 <daa403c5-77f7-48f7-838a-5fbab2d1a4f4@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <daa403c5-77f7-48f7-838a-5fbab2d1a4f4@kernel.org>
X-ClientProxiedBy: SG2PR04CA0163.apcprd04.prod.outlook.com (2603:1096:4::25)
 To DS7PR11MB6039.namprd11.prod.outlook.com (2603:10b6:8:76::6)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB6039:EE_|LV3PR11MB8744:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c0981a1-a79f-4864-1229-08dc9c072bcd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ia8UitBgjUq7Fml8V0mnFjopmy6YIk1Dhn6wZgrhXAM23zmBsuG/WHOyzXFn?=
 =?us-ascii?Q?x9Chki70ugu5v7dr0FYzxE6isWEm1RbHyyNCPCoHS/2Tm7giyDR+yiT2f7ZC?=
 =?us-ascii?Q?ygS318hF3dp7VaHq9GMq1iC0vgxdTjNceiMoHzaylX/TdoNLz5qYPbv1/B0X?=
 =?us-ascii?Q?5ktQRvMfstA2BOZSOoQNilGJL3v1DrlfnfLstAhc534CMTcC+1vrHkIVC+q9?=
 =?us-ascii?Q?sD+qUbANzvvmsds1qTmlxf4Is8XRJJZ/9EbSopYC/bKnMhspYsuXXg+eOv47?=
 =?us-ascii?Q?l5Io5ojJpd8Gxv1d5187E6fRj/SknwfXSmiUYCVREvHlHE/fr4PN/fq2OeuI?=
 =?us-ascii?Q?M8BqSPotU9GcnAsXF4o+jl/96iKVNr3GVvSSPKPZg74M3FCNEFzoMGDswkLV?=
 =?us-ascii?Q?b7OkF5XjhpBlp7ibBSpQuni5FasQK3a684EgHqzmrh/DLHfEXuN2lxPwufor?=
 =?us-ascii?Q?qScSpBzAwp/86twIjRTUj108fJ9A5p4Zcw4IcMc5/BDyqNzEnFuydnz+ZwAx?=
 =?us-ascii?Q?iL7M+LBJV8DZa6s0bkMiWCUZ0gYnKHrmen3b5wUYIPyg0ofgO0ROKtXgnefz?=
 =?us-ascii?Q?zpo5Wa/r1E6ZP0Ac6tp0J3nN6sMnHBcBPqA2pfZT9qeUy7Nok0M55/fhPw4j?=
 =?us-ascii?Q?Ast4Y9A1oKiY9G7xgYwQyLlxJj5W9JKZ1HIJhEnkwNuVWJKrxw6SRuwJziVE?=
 =?us-ascii?Q?qCVN0nsjAi9jeRmrluRkDRK406rB4N3kVjh6QQ8N8nxoZohL99gbtyWZ5B/k?=
 =?us-ascii?Q?o4zhF2PlgKNhmpjFlE3e1HsVs4/K5aa4OAAaZhTSjxcAaRWr+MaurjeGHiVE?=
 =?us-ascii?Q?D2jz5y8VaZgYoMu0mBn+3gZMgU8Rcvw4VpHbKNC83vUEwqjO1DwD+Kex4vzO?=
 =?us-ascii?Q?kuzcGo2rNw2o9VoL6gSYC9tOu8JQodmQLPz4rcehs48+bAtG7t5zWzOkzn1I?=
 =?us-ascii?Q?mGxt0OJzbRuyzj0Ei4NLliakmbl4z3oC0lxucvcYN2iPXRFXldehpBeGyi9f?=
 =?us-ascii?Q?Hhzs01v8sGBZGhbsorD+Ar6EedkMLhVSACtgL09D+Y2QyDumwmLNtZ3hg+S3?=
 =?us-ascii?Q?knNCXbm+g2wE9SG61NSRg+KxnWUhKfRwwGDuMHNhYVlTcEoiLPMxfBJjSVgX?=
 =?us-ascii?Q?JjoMe+O3YO97KlIxwGVRxvtwppA2XUjiAz1gdUZuSiSRGXnjN57n58YHB/5A?=
 =?us-ascii?Q?6A+u6qF3hdbjjsatpMDiZ5DZXSP7GJJsqYGElGigTqLWGAPQ056eUIGjCd2T?=
 =?us-ascii?Q?q1JMsaJp0Ba72l2ABlfzg7sCaxp+v/1hA+heXc/zfH3fnSI7bw59Uy3fifZg?=
 =?us-ascii?Q?E8A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR11MB6039.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yUyTsd03lnDI7NshsKRbCyLyxG9WXytxSd5w9LG9T2c/65soyqgk/ObVc0i+?=
 =?us-ascii?Q?u+Lzwbyq1j2XtAccohfIREDeoY8k5ggCCMrb9Q4pu10rjGIjWYRvhT8eHI24?=
 =?us-ascii?Q?WUqOTimAoyW4VYifzr4MUaiLzbzg8tvxewQWsIJkSdt+PxwaFcuvDwPoO1D1?=
 =?us-ascii?Q?xAVBvrXsnfqvfZQ2HEAPRj7qmd0j+2eHhYEUQBTl+l1Y7BECT5tMVBj7gF8M?=
 =?us-ascii?Q?/fb0ejHAzIu/znRF+1qv8U5oKtjSHOk19Q1wVEJrggTU+pEk+5eWywDr4ttW?=
 =?us-ascii?Q?ZJk6EShHM3FaMJFgi9+VBQCR+LR57PBnRvgf/LRIwZEm3154njCke5JvWQBe?=
 =?us-ascii?Q?PN5RuRNjX3OUVnqXSL0Ww1qziUgs7XHtyp/uSVHx0l2SUstEPZwZCF5CYLW3?=
 =?us-ascii?Q?Pgf5Jv3yfjsAfUZoyOXFesEXcmjY5XkwwKOmdX9flLbNnhHgzxsGnPBaUrXj?=
 =?us-ascii?Q?TGwM0FFD6TYqET7Tys+LVteUsVpIluPU7nH4ySI1qC+MDJgPV4X3qfeCTU49?=
 =?us-ascii?Q?ln8aKufBZ72wFOO3qhXo899OAd+PkqTzDj0HzreZ2lAe4ycEqRcMc/i+tBZj?=
 =?us-ascii?Q?sT/zLHM8sw0lNbtANxT3Ekf6NTCvQAXp739Qagm8knFxDI30zXnMYPr2/sA+?=
 =?us-ascii?Q?iK6di/vCYtrvxucs9PivIflVadR5mIS5tNMXaHX5Kh4JJSXM8f9pswzHOsuK?=
 =?us-ascii?Q?fNVbN6pVB6A4xfPipDQvwq2pU338ikuunjT7oYQQ8fPPNFXkuYgzqwmCdyGB?=
 =?us-ascii?Q?JL5AELf+f6ricCJ+J+3Xjhq522beS5X5OqSRfGKQLIUu8Tg8+to/j+3EEw7J?=
 =?us-ascii?Q?t+mVj/VHWDMCODWxOBRcG+1f3gmwqjQV++8bEC4mguTl1sIG+VqwmOMwGWAI?=
 =?us-ascii?Q?1zy5J9SmToKkuzpckQZEkwj7yyOJ595DHgRjJYwvpYAge6bY3A3su/TQi1UE?=
 =?us-ascii?Q?/JBAp56mVlJ9j32u7OTWRn4QRyPqRFZ7yePI2N58f9oQbXmQbuPz+wCq4OHb?=
 =?us-ascii?Q?VM65KQ28nUbgEKywYgou5l5D2R0ao5CQW1NgsEVf/85m1LYXG4QNfAc+8+MN?=
 =?us-ascii?Q?X8uqynm25N75vvEU2TiB7PtYevgEuO6hlcLGChDE9dabdDmarZIU3I6AgkuY?=
 =?us-ascii?Q?1LF0My8Eb6XzHOByuvrtRlb8IlzMXT0p9MQhBWvxkyuPFWk9n06KNsy3+9Qn?=
 =?us-ascii?Q?JMQ2K+tCrk6fevdK3pX/5zZv1Fc+5kZwq6t5SyddRlx6MR3K7KGnB8wMuOY8?=
 =?us-ascii?Q?hPMmYMOs3ZoY3kRusxYnyrwf5nYcxwYRlWlauDKOX/HbgxmULY8wr/WODEJP?=
 =?us-ascii?Q?DlAZ8vLd6a3NgEVicJO0KKKyeV37sl7MS4jSlEi9h90TMrDCG89SyFX+Wyj0?=
 =?us-ascii?Q?7V6a6V2E6NrrkeGkVEd93ISKjMWQrSteR8zhpl+leZ89N5e+9lpcCcINuMnO?=
 =?us-ascii?Q?X5Hjfugqi2igzQwyyliRtYG9mfPr5Qh+Eqv9O1uVVJCmBi/s1jOq2IrhOVnw?=
 =?us-ascii?Q?6Rduzr7sMW8mj2TcN/FSovBvdVcvj09qHzonvK2ocvDb8dFZT4k7waCjAcvm?=
 =?us-ascii?Q?gCsMsdCnDyezaGJ5aE71YE4wo+EC6KxRxLS6l64Z?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c0981a1-a79f-4864-1229-08dc9c072bcd
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB6039.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2024 08:56:19.6024
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4yobnogujbFY0XHvnORoatdugn/ksB5u1vxCv8CQ7iO9/36afC6+J0X+aPmqpvuMOZk0BDulcGVSAz4hndlPcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8744
X-OriginatorOrg: intel.com

On Thu, Jul 04, 2024 at 09:41:13AM +0200, Krzysztof Kozlowski wrote:
> On 03/07/2024 13:39, kernel test robot wrote:
> > Hi Leith,
> > 
> > kernel test robot noticed the following build warnings:
> > 
> > [auto build test WARNING on robh/for-next]
> > [also build test WARNING on linus/master v6.10-rc6 next-20240703]
> 
> > dtcheck warnings: (new ones prefixed by >>)
> >    arch/arm64/boot/dts/mediatek/mt7986a.dtsi:431.19-445.5: Warning (simple_bus_reg): /soc/t-phy: missing or empty reg/ranges property
> >>> arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: pinctrl@1001f000: 'boot-mode-hog' does not match any of the regexes: '-pins$', 'pinctrl-[0-9]+'
> >    	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7986-pinctrl.yaml#
> >    arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: crypto@10320000: interrupts: [[0, 116, 4], [0, 117, 4], [0, 118, 4], [0, 119, 4]] is too short
> >    	from schema $id: http://devicetree.org/schemas/crypto/inside-secure,safexcel.yaml#
> >    arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: crypto@10320000: interrupt-names: ['ring0', 'ring1', 'ring2', 'ring3'] is too short
> >    	from schema $id: http://devicetree.org/schemas/crypto/inside-secure,safexcel.yaml#
> >    arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: switch@31: 'interrupts' is a dependency of 'interrupt-controller'
> >    	from schema $id: http://devicetree.org/schemas/net/dsa/mediatek,mt7530.yaml#
> 
> 
> Is this one more noise / false positive report?
> 
> Intel, please filter your emails only to relevant reports. I am really
> getting tired of them.

Got it, sorry for the noise. We will configure the bot to avoid sending
false reports in future.

> 
> Best regards,
> Krzysztof
> 
> 


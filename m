Return-Path: <devicetree+bounces-111110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF6099D4A5
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 18:29:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2B041F23444
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 16:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF6B1AE850;
	Mon, 14 Oct 2024 16:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="YHvHzwsT"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2073.outbound.protection.outlook.com [40.107.22.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CA428FC
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 16:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.22.73
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728923350; cv=fail; b=oaWIyyc01u5LgbDr2mGXbhfprtLGjkR2LGoYexvpqPydU3QcK4NPlIuudAE04U0yNLjt8tbO6vrer0urxFojz2eL9HjI57S6b2Hxz9uBfgTIplWfxDuYc1NDTgMAfAdzD0xTUKX641zmZi00jsK2DtsaCRNAdoWlOdvQJyGTeQ8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728923350; c=relaxed/simple;
	bh=cRYWUc2Gihe/CYugd2anYxNpeKsketqjl7nqepuFrrQ=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=V6EIqLQDxvLmy8fRwNS3UdV6Y76jKD4D4uwaybcAWmzAI68UcaTbdu/+9e6vk9JfoNaF6o1DaC300+/9oaKd5gmTmPeSN+Az4LR8ZX+/q7GotiUBrm2vow7Wl69UBMVHZFM1qc2KfvktBdVi/WBGG9zBUdggm+QnFLK/589HKk0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=YHvHzwsT; arc=fail smtp.client-ip=40.107.22.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZZzdBtSIwAt/qQQDiQpjiWdYq9m/AvpBdzkqjtCIazaiQoDY/lxMD7yyZZYnZN67HJyuZSNlZPF0cR+iFKU2C9JYwZNu2D2nS2jD1HVo+AV7rqOVitcD63C3aXl0x/Gis6p20kX9o6veivuu9gIuAz0OAxgSjtLnpNYJ3hHdba0eRNYTiDUIv8DksZNqFXj9yYmXnKtpvmbAOxJNZxYrOfnKds2KBxN4FK/6h0Gin7UcZ4LAEUGLrxLr7OF/Q5r7/dPkMq/TNeUqosuNp72I7L06fOBTjB5CepeBIX4jtT2EcpNDhl7Baw5qlrcEGzTcgLi9qG1o4oqoMBww7vMjYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EF6m/5TcyKZKuX90E/j9n450Fnkj2a1QBuRdbCyElvs=;
 b=TZX5XEG4XDbcPsG421bgXsym8L0OKzSkkF/ScPm/Ngd4yjkbLSb/fIa6MEzREpr2ak15jfOVikNvFcTB/viL8RxMmUql5IlyNKDkT5MWOs1pGFzrAkwP9sZY21b/fGJy7623OMMKvUV9eYGBos6XgibSgl/MfD3NGLDJHuj3ByLyS+DtXGaPXxLSYaHjpj0TcM5EyD32RbOe/6Wb/YP+x4lSmfAi4y6IWkasU3Ltvu8NNOBw1vIZUOSxakrGrtoK0EneR26XUVGxHK4xFxV0Nfuz8aaXjQdxCe/P0lj5CzvzXHH2odchmcLa76UKf4YGYsdSf5culU3xOh3G/WMCAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EF6m/5TcyKZKuX90E/j9n450Fnkj2a1QBuRdbCyElvs=;
 b=YHvHzwsTpWP8eTWJcl4WV6ghZcv0WrvMk4kMvt7eJdjcgh7tBuewg5m/HAWhLBohqn/+1h1ZNh0ElzktAIyb9FSdWeoHS+vVJU83iWYGFvG/CEbGNL/Uvqs/7wlTI2eznJd3bEfxJ6GwzjcR84En1RjoDkJTv1sn91UNZ1iSPPY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DU2PR04MB8727.eurprd04.prod.outlook.com (2603:10a6:10:2de::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 16:29:04 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 16:29:04 +0000
Message-ID: <64ad124d-ac39-4d44-8117-9467f1e7472e@cherry.de>
Date: Mon, 14 Oct 2024 18:29:02 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from
 fan on Theobroma boards
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-7-heiko@sntech.de>
 <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
 <4f8a87da-76b1-4fa6-8755-5dbf10bfd74e@cherry.de>
 <ff20557655d689571590d5b908b705c1@manjaro.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <ff20557655d689571590d5b908b705c1@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0277.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::9) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DU2PR04MB8727:EE_
X-MS-Office365-Filtering-Correlation-Id: 593c941e-6988-419e-4509-08dcec6d50fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UDVqQXZUaDZzQ09veC9BSFJTQWI2MDhaUXFIMEVuUTY5Y3ZtWnNzU3BvUDJ2?=
 =?utf-8?B?SlUxdnZTd2lQektLTUlmVGczYWUvbEpVWjJEYmxLSVlhNzBwT0hCTWY1amlO?=
 =?utf-8?B?RWFSamxvN21iMHZwUzBISXIwTEFjMmVwZTBzWTZiTm1lWlFib2pTN0ZtQWpm?=
 =?utf-8?B?bVFVVTBzK2srZFliSEdPVTVqTWhiVFZNQjJOQ2FpQ0FIQ0tnK3lUeG9vM3FV?=
 =?utf-8?B?RFpwZG8yeDNHSFo2YllXT3E0QlRTZUwzMml3S2ZWbEdwZVBZSmNPNzR1enBh?=
 =?utf-8?B?UU94L3VEZ2NUOWw3MUpYNUxxOG9YRmVqR3hNQW02WjgxZlg5Zm8yNWNMQURX?=
 =?utf-8?B?ZVcxKzJWbGhaeXRwMlZBOTVqM21KREY1a3RKUm8xd24yWXdlUGM5VmVXVzVZ?=
 =?utf-8?B?OWpLaTNuTjh0OE91UzFlVWMwVXN2WlQyR1VnRUxlaTlSMEQwd29hSFBzbm5R?=
 =?utf-8?B?Q2EyNXM5cXk1QlVIcWdZejRxdEJYOC9sU01tejc5K3hlZHhtYmdHTmx1ZXdF?=
 =?utf-8?B?UkxEKzJhQVV3dE16RmFzUGRiRThwWnZndi9BV2hyRHhQSGU5dldjVGVzSDlY?=
 =?utf-8?B?NWwzdTB0SFpxTURaRmpLTGV3WmIrelgwMWZ3VE1ET20yclFKcDgrQlZOVEJn?=
 =?utf-8?B?dWlCWjZIVW8vY0ZGMjVTMlZXU3RlYlJUMDhHSEdISFRaMEtKOFBTbUs0NVZa?=
 =?utf-8?B?WHQ0T1FBUER3TDhCcXRVZFBvdk5aTDBmL1JMMTFheW1yTXYrcXZ6czFEWVVL?=
 =?utf-8?B?VVVvNnFMMURhUyt5eUZmNGZ6UGlUZlUycVdFOGkzZGpxaXVEUnprZzhOU0Rt?=
 =?utf-8?B?WmVWdnhMb2UrSndIYUE4RHU1MGRjOU9RZVpEcVczeEZOdC9YRG8rZlF3enh2?=
 =?utf-8?B?UFc0ODRpOXhzRjR3L0ttaytuSThXUGo0eHNJZmtqRTA3aDZraTNVd1IzbGFm?=
 =?utf-8?B?VXZ5L1N6SWN3Sy9HSFNmU0p3R09nRkZGV0pGSG5MeDZUMFVTVWhFUWk0ZEZp?=
 =?utf-8?B?QzduSGNnSlZLdGdUUkhtUnZOSEZkR213NE9udU5QT0hqbWEzT20zRklxUmFo?=
 =?utf-8?B?K3ROM3BRR2FQcjlqMkM5ZzloRFYrOVVHQ0MyVXNJK3ZnaERQbXJvLzJZdWRZ?=
 =?utf-8?B?ZDlmNlQyUmExLzZtVm9vWWtCV2dCc2kyZm5zV1NnNlFNY3FJbEprU3lDWHA3?=
 =?utf-8?B?QXJjakFwbUQxU2hHWU1SQmNBQ0NSYlBDRWhGOVBMZ29KQ29rSGc0cllRZFV4?=
 =?utf-8?B?LzA1OFJIV1dCekNlRW1NNlVkR2htR2YwUndjVlQ3bkFsd2tWTXVHNENxeWx6?=
 =?utf-8?B?cUM2UzdlNk1YNkpaUkxkSXlHenQxcjBtUEUxWXFyeXg4RjBzZjgvd2c4SkRt?=
 =?utf-8?B?Y2s2TDJNVjViTnRqODNiVG1zdVlGTGxVMi9VQ01RUXplS2pDR25CZkJLb25t?=
 =?utf-8?B?ZWxoaUpYNUpRSW5HQzllZCtrc0x3L1dWN3lpTU4wK3VDZHBnSFlJUWxLbThL?=
 =?utf-8?B?WjVEanliQ3dsd0I2eEltamNDemd5NWJJRnpKWlpXQWhXZTNaa2dhTTRtTHJh?=
 =?utf-8?B?b1hwMWpsaElNR3ZZbXlBcmcxK0dOZERLdXBybzdBbGVha3JFdVpUS09GZFg2?=
 =?utf-8?Q?bOuJ9bQngd0WZd6MDScSAnhNRdcNYgAn2dehXaSVg8gY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MzlwenVzSHY4VHdWWGtRby9VMUhHd0FyTDBzdXBJRlYrL1JrT01PdHVhZDFv?=
 =?utf-8?B?NC81MWxMaDZCL3hFVGtmNVBoakpGWFVEVDNmMGNRelRnYzBmcE1tRTJRaC9N?=
 =?utf-8?B?WjlleGNyTGEzM0NpN1NDc1lIZzNmQjlrZ1BUdVhsdmFWVFRxYSs3cHdPMXpu?=
 =?utf-8?B?RHZ2ZnNqVjJPdW9CSUhtSmsyV3gyWTVhKzFIeEdjMTBDUXlCLzZNcTZnd0JD?=
 =?utf-8?B?MmtzWGx0NnoxeEFzWWovYUpSUlVsWTJKYk1aRFN1eVJwbXNmeTFxWFM5TnQr?=
 =?utf-8?B?MlQ5K29vT0JzaktDa1BmQkRUZHE3Kyt6ZEw2Rks3VWxrNDROK3QyYmI0SHVh?=
 =?utf-8?B?UnhRRkgwV3BnRFJtUnlYVWdPWWdZVlZiMkJUUkR2aHFuRmxtK0Q0Qm9VNU9n?=
 =?utf-8?B?Q0hlb0NDOStOU2gvdzlNNE54Mk9jQlpFWFArbXVLNmdOYzBRS3FaSmpZZmNC?=
 =?utf-8?B?QWhEdzZQMGZaMmNWNXd5TFJESnFsMWdjM3VFc0ozL24vTkt0NFBCdi9BL1Z3?=
 =?utf-8?B?b1NZbVBVbUlCMHJVWk5tbHJJViswYytMM0ZuOVF2QUtiNVhLS0sxdC91YkIy?=
 =?utf-8?B?Y0NmazdTaktlSHlLTWMrTkhEVTk0U1laRjk4UXNOOTRjcG9JaHRGNURjcEV5?=
 =?utf-8?B?YS9FWVBUU3dSSDduY2QzSkFROVZOamNLQ3h1NEVxeW9LS1VkeHV1KzN1VEtz?=
 =?utf-8?B?WVFzUXJWbVltbGM4b1Y3aE1xT0V3dVZJRGNEeDFETWNrTXYyeTZtY3hzUVdV?=
 =?utf-8?B?TERjV0FLd054a2g1SVhkUjE5QkNWMlVYYlZNS2NOUmwzWXRibmUyRXhTa3cv?=
 =?utf-8?B?dStXZXc0aElIekFBc2Q2SzhBTENHNktyS0RMdzlBSkZrTUFMYjVQVTFMYmd6?=
 =?utf-8?B?OFJTbGJhWHc5ZlRCUzNZSXQxV1FMRERIWGdpYjQ5UzJLMytleGpVbkdEaVFh?=
 =?utf-8?B?RDc2UFBWWENyazdubFc3S3l2akU2WWVPTG9mQTlkdFRyK0EyNHNIZ05sRk42?=
 =?utf-8?B?Q3QvQXRuSm5WQUd0MmlRSC9wbWZvc1BLaHZiZitvYXVtMGJ3Z2VOSEFYTld4?=
 =?utf-8?B?eHcvSTJ0V251b0MyRkV5TnBrMmYvc012cXYzbHg5b3l0SnNmeEh6bllOd2Nr?=
 =?utf-8?B?alRaS05rc0pJUW9sVlZscCsvOG55RkpmcGd3MlExaDNPMjNzNk9SMDBWa25Y?=
 =?utf-8?B?TUZveEU4N1VpZzdVSU4vKzROU3k4b0pNQVV1TUxhTzhxTm9GaUVza3Z4blB4?=
 =?utf-8?B?RUhZTy9LMHlIckVpZnplQ2FDbTNRQWo1WXo5REgvSURSeTRZaW1sZ3FESWJJ?=
 =?utf-8?B?SnIxbE56ckVLTmdwRmczWjJ1MXdNd0doSkE5bnBvUkd0WkxISGZ4VGxCVjRm?=
 =?utf-8?B?NmNGT3Vsei9QdDlNeUhWQmUwRlFOOGNESE1rWk5ERkg1R284VFpqV3owdFRq?=
 =?utf-8?B?T0M3SDYwWDRraDJMN0ZHdXV5TkhpajRGYUV3RlAzYWl6UU1tTlpRU0gwVzBZ?=
 =?utf-8?B?L1ZTZHg5TTMvUXVKdU4zc1VqeGcrN1FEWTZOd3BmMXljYUVjd01jRExLckZl?=
 =?utf-8?B?c0xWelArcklOM2tiSllqdGRobGw2MDRaa1VQMVZudEhHQ2JsWDV1R2RZc1JG?=
 =?utf-8?B?Y3hwOFJ5eHEwMktPTEhETmFCUmFMWFFFUHMwNGcwWVp3YmUxblFPNnlQeFZT?=
 =?utf-8?B?RWdYUk95aHZFT1g4UkloVDZ1ZktMZEFvc0JMcVhWRlhRTFEwbEpMOVYyTEtj?=
 =?utf-8?B?UlA1RFlJVy9OTU9tc05pcFprQXMrYWRyV1NkazFLOUdIUHJkRTZ1cy9KcUJO?=
 =?utf-8?B?RDhnYXFqMUJGNlEreHVZekpDdUxPY0RyZEV5YitOcnFuV0s3aHptMy9TQUlR?=
 =?utf-8?B?NEZFSzNYUjZjUXM3OXVXVkZyNXRyTkw1a0JQckY0dyswdU9HVlhTOXEwRjll?=
 =?utf-8?B?NSs3UnJ1a3NwWXZ4R3FRVk5xb1FzRnNQcmRYMmE4Wm14T1Q4L212d1FMSzJK?=
 =?utf-8?B?OCtQWUpEZXAzQnlDUGgyVWE2Nmo1d3dnOVFMZUsvUUpCdjJNbjBoNkZqd2R6?=
 =?utf-8?B?NkpZUll2RlUwa2NEaEM3aDc5eFVBRkJybEM4TVUvbFlyWXJpUzA5ZHd0Z1RO?=
 =?utf-8?B?ejlDTmpZaHNzVkpSeFBVQW9qUVRUakptQ3dXcFltQWhWYjBJNnRidDAyaCt4?=
 =?utf-8?B?dXc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 593c941e-6988-419e-4509-08dcec6d50fd
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 16:29:04.3951
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i1TCW3CfFeghim4v+n2hx7krLEB+z1C6urowGE215BsumaKS5L/2GN/613+b+G7Gbq/mSB3GrYP/sBiPN1VLtwZR4m+e1xOsHBzt7p66Ekc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8727

Hi Dragan,

On 10/14/24 5:49 PM, Dragan Simic wrote:
> Hello Quentin,
> 
> On 2024-10-14 17:39, Quentin Schulz wrote:
>> On 10/9/24 9:16 AM, Dragan Simic wrote:
>>> On 2024-10-08 22:39, Heiko Stuebner wrote:
>>>> All Theobroma boards use a ti,amc6821 as fan controller.
>>>> It normally runs in an automatically controlled way and while it may be
>>>> possible to use it as part of a dt-based thermal management, this is
>>>> not yet specified in the binding, nor implemented in any kernel.
>>>>
>>>> Newer boards already don't contain that #cooling-cells property, but
>>>> older ones do. So remove them for now, they can be re-added if thermal
>>>> integration gets implemented in the future.
>>>>
>>>> Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck)
>>>> SoM with Haikou baseboard")
>>>> Fixes: d99a02bcfa81 ("arm64: dts: rockchip: add RK3368-uQ7 (Lion) SoM")
>>>> Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
>>>> Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>>>> Cc: Klaus Goger <klaus.goger@theobroma-systems.com>
>>>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>>>> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
>>>
>>> Looking good to me, thanks for the patch.  In addition to the amc6821
>>> driver currently not supporting full integration into the thermal
>>> framework, the "fan" DT node also isn't referenced in any cooling map,
>>> so having it define the "cooling-cells" property is of no use.
>>>
>>> By the way, it would be nice to see the amc6821 driver supporting fan
>>> speed regulation, and test it to check who does a better job when it
>>> comes to cooling and fan speed regulation, the thermal framework or
>>> the chip's built-in logic. :)
>>
>> Wasn't this feature added this summer by Guenter?
>>
>> c.f. https://eur02.safelinks.protection.outlook.com/? 
>> url=https%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ftorvalds%2Flinux.git%2Fcommit%2Fdrivers%2Fhwmon%2Famc6821.c%3Fid%3Dbecbd16ed2f8f427239ffda66b5d894008bc56af&data=05%7C02%7Cquentin.schulz%40cherry.de%7C6df77e4e73434d36a6fd08dcec67c21c%7C5e0e1b5221b54e7b83bb514ec460677e%7C0%7C0%7C638645177611948235%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=4VaZrAKxDUTdEf7avUM1ewHLl9PIgBple841dE55o4w%3D&reserved=0
>>
>> Mode 4 is
>> https://eur02.safelinks.protection.outlook.com/? 
>> url=https%3A%2F%2Felixir.bootlin.com%2Flinux%2Fv6.11.3%2Fsource%2Fdrivers%2Fhwmon%2Famc6821.c%23L367&data=05%7C02%7Cquentin.schulz%40cherry.de%7C6df77e4e73434d36a6fd08dcec67c21c%7C5e0e1b5221b54e7b83bb514ec460677e%7C0%7C0%7C638645177611979168%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C0%7C%7C%7C&sdata=uNnWR0Oux0BlNhpe20Xj4%2FEtGQJv%2FsU1hapm4fGn7Qk%3D&reserved=0
>> ([FDRC1:FDRC0] = [01] -> Software-RPM Control Mode (Fan Speed
>> Regulator) according to the datasheet).
> 
> Ah, SENSOR_DEVICE_ATTR_RW(fan1_target, fan, IDX_FAN1_TARGET)...
> How did I miss that?  Hmm...  Maybe I was looking at some older
> local branch, which happened not to include that commit.
> 
> Anywyay, good to know, thanks.
> 
>> In any case, we cannot compare those for our products as we do not
>> have a genuine AMC6821 but a handmade simulation of the IP we run in
>> an MCU.
> 
> I seem to remember your MCU that performs a few tasks, back from
> some related discussions.  I wonder what was the reason to implement
> it in software, instead of using actual fan controller chip?
> 

This predates my joining the company, so... I don't know.

What I can say is, we have the following emulated in the MCU:
- custom CAN over USB (UCAN; upstreamed already)
- ISL1208 RTC
- AMC6821 FAN controller
- custom PWM controller (upstreaming pending)
- a few bytes of NVRAM (AT24-based; upstreaming pending)
- uncontrollable (from SoC PoV) watchdog, allows another MCU/system to 
trigger a full system reset
- possibly, custom HW watchdog controllable over I2C (required to fix a 
very odd corner case in HW on PX30 Ringneck)

Possibly more if we have the need for it and it fits into the MCU flash :)

I assume this was born out of necessity to add support for CAN on RK3399 
Puma since there's no CAN controller inside the SoC?

I also think ISL1208 and AMC6821 aren't that easy to source anymore 
(RK3399 Puma has that MCU and its support started in ~2018 I seem to 
recall?). Considering the quantities and prices we get for the two MCUs 
flavors we have and how space constrained we are on some products, 
especially the uQ7 (PX30 Ringneck), it was probably I wise decision. The 
second MCU flavor came because STM32 was impossible to source at 
reasonable prices during the shortage 2-4 years ago.

This also means we can expand the set of features over time (which we 
are for example, with the custom PWM controller, NVRAM and I2C watchdog) 
since the MCU can be flashed once in the field too.

Obviously, you replace component cost and footprint with MCU FW 
development, so it's not necessarily cost-efficient but I'm not the one 
running the numbers so wouldn't be able to tell you ;)

Cheers,
Quentin


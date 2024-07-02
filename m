Return-Path: <devicetree+bounces-82385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5973F92420A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 17:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D952A1F2577C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 15:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 895ED1BA869;
	Tue,  2 Jul 2024 15:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pironexGmbH.onmicrosoft.com header.i=@pironexGmbH.onmicrosoft.com header.b="R5WNweK/"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2135.outbound.protection.outlook.com [40.107.20.135])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8F471B51
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 15:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.135
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719933260; cv=fail; b=BEWO6cSHe1ms7AYk5wWQfNwl31Q4Q0R8OxlKOEC2W3YfuvcgCPRKmMh67udx+4jm9QfvosyiKuhx76JeEsWisjlkFgZnXfnehluANGcoIOB8oWv8NTvyj93cYxQPqBSAUut4InKiCAd7B8Sj/Ok9T+qvFj5n/1ic/EoHgcf2Sn8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719933260; c=relaxed/simple;
	bh=KhLcXgIGMeB0pMpGnFGCPQ2FvJJJYr4ILICL6vBMycA=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=oeRySO46sMZskhq1MzQu8CT1pat5fDNkGECYy8j4LEwZiwrYclcjJSrliP24BKWuwUb3aDaxYW7dNkayXQ7gX0Rj0viBa+IDO8cWiBtQPfrMcPgWY/P/rrJZ65zT7Z4nIgLTozyg0A/ZeIshnh9sWrKU6eApaLL5I7sETOgqYbc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com; spf=pass smtp.mailfrom=pironex.com; dkim=pass (1024-bit key) header.d=pironexGmbH.onmicrosoft.com header.i=@pironexGmbH.onmicrosoft.com header.b=R5WNweK/; arc=fail smtp.client-ip=40.107.20.135
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pironex.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IWCQiUxtC8A0xQ6pUMwliHkrmpOYSfNvEa9kGAziCnZHpfIkp2iyioLIHg4JJ7ZmSKTEc1l2a/hNxqTqSZVlJlzcOviyJ/3BMQ9GRlSug0mSpxq/Wo4PEC02YVh23Sh86CVXUkNhrTenzijwSW8XAmvUQJ4ITB1um9Up+2QkGbkldzgHKX/oN2UXW6N9Zlcse4N3ouFuhmaSON43TCtuih7TbCu0UX5Yb1rYstrdzfl0Jaf8zkyy5PqtLu1f/gAfTZ7fHdRWtxnUhgXgs57aTyeEr64bhfPBYMcZbONCXXj+Pv5IcdtoR3ZgZAqWo8gzoULoY4VCR0VGp1KQcjSIgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C0AuSAsOOKiOv/jVIDRFKuCv+YgPeuzOSBbFiQuNUMY=;
 b=DfpzJwQxPsH7OKMQ6xWU/ewOIGBg8AoNpoo5uBjRV3W5I6atuBw50Xz9SpghhTrY7fvcqNcR9/CkNiYtHAdGMMbGi2cGMfmFqD9+NKro7Xgu+rKoPxAnbBXcHiQ0OWXM3mmwS62DabqQkPtPe6c5BuJpjHe+5nv8QFGpB1Sbdut/oIoOnwZJJJhE3ZOn1HQsocmJFoVu1V3Zk8oCV52zq99H39WTCNeao8A3AMEkdL4Kn/jw2gCyFUojFj16baWS7qfG/jeczifOtj7c5TIFeVv3Ktuznyh76PORmaTUdYYOWFaDLXqdM5oRG/3mFwFLN7//GfdyrXC3oN4yUM0nfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pironex.com; dmarc=pass action=none header.from=pironex.com;
 dkim=pass header.d=pironex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pironexGmbH.onmicrosoft.com; s=selector2-pironexGmbH-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C0AuSAsOOKiOv/jVIDRFKuCv+YgPeuzOSBbFiQuNUMY=;
 b=R5WNweK/xsP3qdrCfVGCDe1fnv8JgWcTioVQkol9lQkcqIK4do2N2KG6q8cCYuUJXc0bRoQUVLEobBgljR6NPF4fmatCGoXBJYJnCIjxCAe4EXjw3QCco8uNLgYcEtxyS5BYG2FMZnB3MW7bQow2r020Krql+LU7NrBsDi/4iUc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pironex.com;
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:158::19)
 by DU0PR10MB6728.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:400::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.29; Tue, 2 Jul
 2024 15:14:14 +0000
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd]) by AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd%5]) with mapi id 15.20.7719.029; Tue, 2 Jul 2024
 15:14:14 +0000
Message-ID: <43fa9511-fe25-4326-b398-0361cf75094c@pironex.com>
Date: Tue, 2 Jul 2024 17:14:13 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org
References: <20240702124626.116290-1-p.puschmann@pironex.com>
 <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
 <f2c7cdb2-b27d-40cc-b103-68043714f13c@pironex.com>
 <14db27e78c9e1183568b4c99ec487092@manjaro.org>
Content-Language: de-DE, en-US
From: Philipp Puschmann <p.puschmann@pironex.com>
In-Reply-To: <14db27e78c9e1183568b4c99ec487092@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR3P281CA0192.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::16) To AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:158::19)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR10MB3601:EE_|DU0PR10MB6728:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e7812f2-3ef8-43c4-bf5c-08dc9aa9a256
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?YTN5WDRDd0lrNSt2V1F2L0p2bHFVeWlmU0lJc2hOUXFJZW1ibTVESUNiSUFM?=
 =?utf-8?B?RmhJRXBYQ0haU2FTM1dwMVVDYUREbGRyczVnRENsQjk1LzB2VlpmY0FhM1Q1?=
 =?utf-8?B?KzBGU1p5YXE1b083dC9yekJLQjRUdmlOUENXOFljaytxN0djMytZTy9yaUYx?=
 =?utf-8?B?Q2ZQa3VNYUhtQnIrSU1iazdXNzJkZUVOdVQ1MThJbGVzQ05JbDdOcWZyWm9E?=
 =?utf-8?B?RFlvMjU5T0d4TEcvc3NxK3Y3R2RzblpVK0xFcW9lZHBxSFpkdyttK3RoV2RH?=
 =?utf-8?B?ZENWWW4yMG9hRXZWckZzZkFhSDRFRU5MMU1zbjVjQmVRWXRuLzJLdHdrNlBY?=
 =?utf-8?B?TUIwMEE5cUV0V3I4QVFRWFpDWFVZL3czOXQ5eS90YnpDQ1pzRW5YTXZLMXNk?=
 =?utf-8?B?Sy9mMDRBNVpNVnNxNmkxcTRGbE9lRHRpWmk4ZW1JaTd4a0lwc3pYYmJZalhE?=
 =?utf-8?B?UnZ1dk9NL3pNS1ZGT3hKS1l5MHMrYmUxczlRNTBGSjJGTUtGVjdxMGM5Z1NT?=
 =?utf-8?B?MWYvcGZIeTdLUlFYVmVaMGdFSnJpOEN2SHFYdmxYbTN5UUVmZS9lT0x5dDVo?=
 =?utf-8?B?SUs2QXBjV3Y3RjN4UHRjR1lLdDFzMjJRTVpyTXQ2YU9DWlQ5WWVqZUJ4Z2x5?=
 =?utf-8?B?aVhsdU9uSWhnclJSOVZNV3ZkYkw4N1FZaTZCYmlmM1o5MGd0aUdyTkdpWU5l?=
 =?utf-8?B?eGQrVWJaQlFDZnJlb2VGN1lyRS9CSzFaeFRFRklKcDFwMjkxcnpFRGpudzJx?=
 =?utf-8?B?WUhKUk52c1IyQW4zeHBBYXRCN2s1VXhxODd3RTJlbHJuNTR3cG9sVmxZZzkz?=
 =?utf-8?B?cUpHWHJXUnEwMC9uRG14TmE1Rzg2VFJocjlSYVovYnhhVXpNcmZIeERVc1k1?=
 =?utf-8?B?QzRjcjZuSU54YUkvZk5aRmcwV01JVHRlTXpOc3lmN1ltR0M3QUpBVlpSM2pa?=
 =?utf-8?B?ZVNjcmpYSWdCc25uUDFXWUZkQ01ia3haeWVrcUhyNXNrMHpMWXAwYmhRM05X?=
 =?utf-8?B?cmZXSTV3c2VkU3oxKzNsbE55VFlkNmpvT2Y5NDlYYURacTdBdXVQOGI2am9Q?=
 =?utf-8?B?cWhFS3pnZmQ2bVk0MFZNMkQyN3ZoMExBWmdDcXU2N1NlazVaODBydmVhT3ZD?=
 =?utf-8?B?SWdneXdrcEd5aDVBd0VnQ1B0NzFuUWcwUGlSQmRCYXpRYUg3NFNMQ3FqVUk3?=
 =?utf-8?B?WUZld3RGelo2NjBGZXVHejhZV09TK1duMXNzTEx3dUZBZE1zVmI2RklxMGZY?=
 =?utf-8?B?YXdCVFpZemtOVUlYTmsvTTQvVTJEQjNLQkJXRUFBSktHRHpuNkl2b1RVS21x?=
 =?utf-8?B?R0ZwaXRHYkFsR2NGQ1NhcDRtZDFNMUduejJLZzFwYzA3b3ZrWHBzK2tXaWR5?=
 =?utf-8?B?VXhxNG5yNXRHcGw4cnZ0a0VSRmlSemk1VVNHQldIYy96NDVaT2lHcWx2WWx1?=
 =?utf-8?B?Yi9tS2x1dEViUWFMU1RDMjFRZXBaWFhZT3lWQm51VEVsWFc4SUFUU3dqSVVj?=
 =?utf-8?B?dGJibGR0Ri9rUlE3a0pMWTVSREh1V2FFYXlTQnZ4ODNYUGtRalp2dUJ4Tmt6?=
 =?utf-8?B?N3lxZDVESFJIWlpoSENtZUdvbW5VVkhRZVFCeG4yWWVkcEVqaEt5enlPR3VN?=
 =?utf-8?B?cFBYVVNDSHhjdU9SQlA5aFlPb0dqTFJPemV2R3JTUk5SaUNKTVA4V2Jaek9o?=
 =?utf-8?B?TkZuM3IzVVY1L3RBc0VyV21ITVRBdjh2T2JmbnN1NHQyNnVzdi9WV0ZmVFFj?=
 =?utf-8?B?cmR3Sm5hamJSRmZzdjlUeXdsYlhKZVViYmFuaC9YMWpJbzlyQng1TVVPV2kr?=
 =?utf-8?B?alloa1ptdFhUWlBhRHRxUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?YXV3c2gxYmhGWnJHVFRoTFNGc0xTOHBIYUdhM21MSTk3U2lFdVFkVkg0MXp0?=
 =?utf-8?B?c1gvTk9pM1c5ajQ2U1dZYU40RElnOEpPWFo4dTZnS2EvQzlENC82WjVKR3J4?=
 =?utf-8?B?STVTUjdGM09iY2FLRnVBc2pKZ256Qm9WM09Gblk3UStDenFsZXhQOVRUbzhH?=
 =?utf-8?B?QTA4OG52US83KzBFQXB5bGR3MzNNZXkzVkkrU0l3N3BIbVBQcGRwanV6cENN?=
 =?utf-8?B?VG1mR3pWTkRndGRXRjNqdWgwOUFtNGdDQW91Q09YelFKZnJna0lXZkZHWVpQ?=
 =?utf-8?B?TzBpTkozT0ZDTjJuNGhCLzVTeHhoTGY5WE9lYytQZFQwaktQVlZmT25xUHQ5?=
 =?utf-8?B?N28rQWdUbjdqcmU3RGI4cEFPdEU1VG9tM2VYTW9SYUFKV09kRVlyY1llY0hR?=
 =?utf-8?B?VHJuZElJeDJEZy8ya1poNnV2TG92RzBFRmg5a2E2WHlKeDNPMUNQZnZFZFVR?=
 =?utf-8?B?cEdqMWlmWXB5RGxUNlhFelF2TTA1WTJwQ3lTWFduWnJJSXI2aFdHK0FNTTlv?=
 =?utf-8?B?L1FvcXdlYXNCN1F4YVNwMkxjdDVwOEFhdUYrb0c2Ly90MmFRRFVwdnA1MXp4?=
 =?utf-8?B?Q2RnZThhbTlNa1ZlMmFBUHFwUGFPbGJ0aWhLRmdJeFFPbmFYU2ZKbUE0Z2c0?=
 =?utf-8?B?TER2bG5waWdDK0lzWENMQ3ZDdk14bHpJS2lGNzN2anVMNmg2c0ZSUFVNV0Rx?=
 =?utf-8?B?QS9mZ2l1cWlNQU1MU1poRkRhM2xsaXB1TkxoVnliNmpxWEFLNHhzc2JBc09h?=
 =?utf-8?B?OXpNK29WVnhhSnRTU056SFprbjRBRzNEczJYTngxTDExUzZCRUZPS0dTTDA5?=
 =?utf-8?B?TXF5K0p2MWFxdkFCeFA0VDlFN2dGMXFPaUxaQmFxY0N6Z1NJNmVnYTdqNWlt?=
 =?utf-8?B?MmdqZ2MxMGRxSmJUU2E2ay84OU5lV0E3VFJqMVRPY1pjdDBhTm9lV1Y5Z0dW?=
 =?utf-8?B?TGZLek55WTJLN0ZZblBBVk04c3ZaeHcrRXllVlBxOWVOZ1BmTk5OMmFVOVlh?=
 =?utf-8?B?ZlNXczBwZldtNHE5dHRxMEFnWE5qZkNhUUt6VjRkM1RlbHYrUGdvN09qcWEv?=
 =?utf-8?B?VjFnV3k5b2NIekszNmQ2eFAycG1iempOOG5ydVp6Tkt3YVJpWERaRnphY3A3?=
 =?utf-8?B?T3NZc1lYeExrM2krTHNDTWNBeStxVjM0a044U1RVQkUveU5iRXFzanhVT3hC?=
 =?utf-8?B?QldDOElDNnZMRittaG1EM3V2ZmJKR2JOM0o5REpKUmhITEJRY2FnN04yR3BV?=
 =?utf-8?B?SEJXaXBCamdIdTd0Q2ZUQ0VOS3dxeVhmQ0k4aDVsTEFMMG9OR0gyZE5uWWhj?=
 =?utf-8?B?dlFFUkd5ZU4rdjFyT1dQRmM2Q05FNVdRUUF4b0w2blMyRVBKQ0ZxOHcwTnRu?=
 =?utf-8?B?eEM4NGd6T1BTUnJhTTRkMndSMCtwSGRrSjJ0WUtFOWVBN1FWMXZpZDExV09v?=
 =?utf-8?B?emRybHhYNE15eFBHZ1NhNmpRZTd3eTVEUFU1eVZjSEIvUkg2RmRyMXBRcEtp?=
 =?utf-8?B?UXJjMTRiUk1MZzdFODBzZDN1OGU5NFZ6SmNjK2ZDMEtnUGtWcEY2VHljN1dn?=
 =?utf-8?B?T2M1ZzNIcHpvOEhnUEo5ZHBCN1pWUEF6VGZYWjIvMkx2MTRtTVJOZmZxcjJR?=
 =?utf-8?B?empMblRNU0lhK085dDFzcXZscWNmSlhvc2NCYkYxSWNQLzdTNjVRM0ZZMjVx?=
 =?utf-8?B?azdnOXFOemg2ZmVscjNCai9nWjc1NUE5OHJHYjBoVTV6N0x5NnNXSEtQc051?=
 =?utf-8?B?OFhsNmhSWTRLNnFKclRIV0tWcVBBTVJ2U09TMnF2ZWJMVHE3ZHFIdXQ2M3ZM?=
 =?utf-8?B?WExXNUJhcEhoek5hZS9tRUtMcnhXNEpDeDNpd1Z5SkRwWm4xcFNNMFFlNUZs?=
 =?utf-8?B?N25aQnJCOHFGa1JkTE9mckIycS9YZFJPT1E4TFNaaThvT3ZZQXByd1ZDa1Bp?=
 =?utf-8?B?WUxQall1ZGlSUi9FZmhUU0pLMkdwZTBZUUhVNUJTM0ZCMVlwTkFsTmpEN2lR?=
 =?utf-8?B?T2xMZEI2WWROL2tSRGNVRTZwYXhsYU8rZjRnRFM1WUZlUW5QN0xmRmx3ZnVk?=
 =?utf-8?B?MWk4ZGJINmZobjhCaHdQUmVaWDh0M0I3RTEzV0c0NEdKZFIwT1grWXFucGdG?=
 =?utf-8?B?bEVvUC9SWEM5WlRCYm1oaWFxeEFwbXNSNjdmZ1AzS01Sd1crSi9PZWV3eTdB?=
 =?utf-8?Q?gjvtkqd9qi9IQic6u84hriX6vBsKQw1Zmr93kXnw+PP6?=
X-OriginatorOrg: pironex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e7812f2-3ef8-43c4-bf5c-08dc9aa9a256
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2024 15:14:14.4765
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00aa8e52-eebe-489a-8263-3195e0a468ca
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /ITmois7d13MNBBhWycD+0SXlUc1sOqBT4h3PTD5nTwdK7OQkCqFw9pD7yeyqraaNelKzZ2I/jvIP0Id8cSJpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6728

Am 02.07.24 um 16:41 schrieb Dragan Simic:
> On 2024-07-02 16:25, Philipp Puschmann wrote:
>>> On 2024-07-02 14:46, Philipp Puschmann wrote:
>>>> Providing ethernet aliases solves a subtle problem for the rk3568. The
>>>> bus_id used for the sysfs directory name of the mdio. Without ethernet
>>>> alias the bus_id is always 0 and so creating the sysfs directory for the
>>>> second mdio fails with a duplicate filename error and by this the setup
>>>> of the second ethernet port fails too.
>>>>
>>>> Note: The alias numbering is inverted as gmac1 comes from more generic
>>>> rk356x.dtsi but gmac0 comes from specialised rk3568.
>>>
>>> Please see the following commits and the discussions on the rockchip-linux
>>> mailing list that are linked in them:
>>>
>>> - b0140a1b3b1d ("arm64: dts: rockchip: Add ethernet0 alias to the dts
>>>   for RK3588(S) boards")
>>> - 36d9b3ae708e ("arm64: dts: rockchip: Add ethernet0 alias to the dts
>>>   for RK3566 boards")
>>> - 5d90cb1edcf7 ("arm64: dts: rockchip: Remove ethernet0 alias from the
>>>   SoC dtsi for RK3399")
>>> - c900fef5deff ("arm64: dts: rockchip: Remove ethernet0 alias from the
>>>   SoC dtsi for RK3368")
>>>> To sum it up, ethernetX aliases are considered board-level features,
>>> because not all boards/devices actually expose the Ethernet interfaces
>>> built into the SoCs.  Thus, adding ethernetX aliases to the SoC dtsi
>>> files, unfortunately, isn't an acceptable option.
>>
>> Are ethernet aliases are handled differently than i2c, serial and spi aliases?
>> There are aliases for each of them, without doing any harm. And even if the gmac
>> nodes are disabled with status property?
> 
> In a word, yes; they are handled a bit differently, which I already tried
> to sum up.  As Krzysztof already noted, please read the discussions linked
> in the patches listed above.
> 
>> On my rk3568-based custom board i had no ethernet aliases and networking was
>> enabled normally with the status properties of the gmac nodes. Either one or
>> the other or both network devices were initialized. Would be strange if an
>> alias would be used without regard to initializing a device driver.
> 
> It's also about following the TRMs and the aliases (or common names) defined
> in them, as described in the above-mentioned discussions.
Ok. I understand the point why the ethernet alias belongs to the board dts instead
of the SoC dtis.
But on the quick i found no reference in Documentation/ or in drivers/net or the
mentioned
that and why ethernet aliases aren't optional (and it appears in many cases they
are). From my years of board bring-up my understanding of aliases was, that they
are in general are optional and for some subsystems they are used to hard-code
sysfs paths and device names in /dev to solve the problem of randomness in
initialization order.
> 
>>> The sysfs issue that you've discovered should be instead solved in some
>>> other, more systemic way.
>>
>> The bus_id value comes from stmmac_platform.c and of_alias_get_id() with
>> "ethernet" as parameter is used, what is a common way in the kernel. It
>> delivers unique ints starting with 0. stmmac_mdio then uses the bus_id to
>> create a mdio bus id string stmmac-${bus_id} to register a mdio_bus.
>> From my understanding this kind of bus id is commonly used to name devices
>> and paths in the sysfs. Viewed only this problem it would be possible
>> to use other information like the node address or some unique
>> information to use it as unique part of the mdio bus id. But doesn't break
>> things too, at least some kind of convention?
>>
>> Another hack i tried first, was to use a static increasing int to get
>> the bus_id. This would keep the resulting sysfs tree probably unchanged
>> but would drop the connection between dts and bus numbering in sysfs.
> 
> Wouldn't those issues be solved by simply defining the needed ethernetX
> aliases in the dts file for your board?

Yes. But for me it wasn't obviously that and why i would need that aliases
to make a mdio work that is not even mentioned in the dts file (in my case).
So in a perfect would would like to have a solution that comes without some
hidden magic or the need to dig through the code.

Regards,
Philipp


Return-Path: <devicetree+bounces-111103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC79B99D3B0
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B30A1C23ABA
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 15:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC5419E7ED;
	Mon, 14 Oct 2024 15:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="Iq2rxQCx"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2064.outbound.protection.outlook.com [40.107.21.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231441AC426
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 15:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.64
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728920392; cv=fail; b=EK42yrGlxsZ0k+BbfX8NPvB47li+0g+Jnsodt+NXoCqh6vMsNJhLBd/C9skeMhFNrU8XDOuzv8YCQZBTG88WuVf6OD9VDfmf7TzarVJV74fECpnZT8OjVq4mFhOTtAQW5FQmS6b5RYh+BF7dHX+p5vu8hP+T+3b8Q8OFNXTeXmw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728920392; c=relaxed/simple;
	bh=s8Ogp6PblckA0MOHlEjBDT+sDrP6rFYTdbyvhym7WWY=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=Pb0R+nKYhUcAoVh8+CkMuI26sDMjAEww+FSsZWEumfiLXqpJtHLTcKwlZWw7pZq00E/XOL1Hyxcfrodr51+6KPbHa7qoa3advtFvo0IOUBHTA34OG49Lez450pGa+Dv6bbMFfzpHQnOAQI4aKHtUsF38eAb7iZaZ1a46lMBOJj0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=Iq2rxQCx; arc=fail smtp.client-ip=40.107.21.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sQB2N1OjLR756MOVwq7ehPHIiz6mwWm39mCkew33kTmIgS3VsBi0wR4sAJ1H1oML1R3J6PWI7qC+iMc3GaWGYz4+JwNtnfIQWMn48IN+QAQka3/yzXkF9Oa3QPoV9oKpJC5kXxY003Opmz9rwD3zlTyZraU4Dqqe6JBc7raAQg3unglfDbMHJz4ugc9Q78TFBQ+1Hnwcqt2tAVWiYoYBod4ZkBktJAhK2kKwpmyqw5fIRVwsEX5jUaf8HFCvQiPvQoBS0KRcfNbxr2lzQQCXZDt/RCJTONTsvio1LQC2bXUq3vsINvBaSrS9bwxueqm+xzgeWTI9Rr42bDaPNIbX+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2sDGEO31Ah5eFN14mdB0dGPba8Dic8/jkks8Gz2lxeQ=;
 b=iEai7eG3gAoEgMzaIOsrGE5gm3W09t8lRqk1RPonFpqo71OLAJIviyLAgt3hAoQ1PlQMXWPVTCY5BZu7k5EMcMCyP/RCQWNR7K1ISb3pzBSTUwt5UjPojkr+hsA7AkcjkPX0rTgOBOYOXAzhmLPScxYFgMPXwFNQxYA8Xhx73IqxIH4lYzww+9eEQEBHpPzs2AkBnMKECt6gEiNf2MEebYEsj4tbLRwIlYL858dyoX44lZO5vfRFfslfadMafHb6Mm3bJY5AWnzqMO7k8vw/5GQtGMstjBgm62NJHrHcxnNcVR0aAMDOlnYsLh1Vlow6T/nTruY6BZV1T3t54gy1rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2sDGEO31Ah5eFN14mdB0dGPba8Dic8/jkks8Gz2lxeQ=;
 b=Iq2rxQCxKF32eQkST0D7zgOZmKvhruajbqkTU21aQ1mFe+nVVU2H0zOHp1zgZ+U6Lq9xDBN3UoUg0Tback7n6dZ6aqGZL6oQAWVlgq/zPfNf4Ey/Y5HN0gC9wK0Vh9aFj+A0VsA73OEBSFmqAh6f6YQWg0SwWFXdwd+Zjhqn+ts=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM7PR04MB7141.eurprd04.prod.outlook.com (2603:10a6:20b:11d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 15:39:45 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 15:39:45 +0000
Message-ID: <4f8a87da-76b1-4fa6-8755-5dbf10bfd74e@cherry.de>
Date: Mon, 14 Oct 2024 17:39:44 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from
 fan on Theobroma boards
To: Dragan Simic <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-7-heiko@sntech.de>
 <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0064.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::8) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM7PR04MB7141:EE_
X-MS-Office365-Filtering-Correlation-Id: 0df19fb6-5b8e-46b0-2107-08dcec666dfe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bHNRamVEZDdQaDRqcGhFR2R3NG4rMTBlaHVpYzhvYkVXbmxPYkI1OVhQZ29m?=
 =?utf-8?B?RHRvaXZvc3JQeHJUL0VqTG5YQ0d4cWE0NkdzNjJqYi92RG1UNyszdTJ6a2wz?=
 =?utf-8?B?MElxS3lhU2ZZOGExQ09HQVdCeUVnUUpLNndObGJFdHJEWUhkMDJzZ0xmVkFZ?=
 =?utf-8?B?Z1YrdXpjdEdINy96QmFXcWswK3ZOd0FDWlFOR3ExSTFJVFJoSEJNYzBCRWhN?=
 =?utf-8?B?TUZVWDVIZEswS0Rja2JnUmtRbnc2Q1dSRGcyUXQ1MVg3aDVuM3hBVzNrSGNH?=
 =?utf-8?B?bGhWN2krbWxZTU84U2xSLzRNOFV5cDI5T3p0UlRJRkpCTlRVMGpjaGVnYnl0?=
 =?utf-8?B?aGJrT1BQREhOL1RoR1ZxaVd1c3pVTVhycCtXemtrWndYb1NITE1yb3Vwbmhk?=
 =?utf-8?B?TElMWmdVWnkrdGd2eXNqM1ArS0dLWVhaeWtJT2RhUG5pemFFeWRoeHhZMkc0?=
 =?utf-8?B?cEVPVzFhaS9xeUNqT3Q4NVJ5UDZVL25UdC81L0ZrSzNodG4xaHFyM1BON29k?=
 =?utf-8?B?azhyVjV6ZlFFUUlIYkNuQThXR202VXhtRkxvSERjTFhBRGJ1UEdZM0xVMG5G?=
 =?utf-8?B?K2FZeWNzWUE4ZC9sd3JpbVFTcGZmbTJRcjlGTkRMNGt5L3AxSXgzS2dNNVZl?=
 =?utf-8?B?RnFyMjR0YnBOWDE2NTJxR014RzVFazNVRnJjVGl3dnd0V1Y5SHpjY1dvenc0?=
 =?utf-8?B?c3creFk5cHZiNFpUWVVMUDkxQ1VTdHRnMUQ2c0NtMXFwT3lhUmxzOSswNVNS?=
 =?utf-8?B?S1lOQWkvTklBUFM5NHpSWnhGRUdJcUtHbERnS3VRY29ZZHNGNTRSc1ZYdGNh?=
 =?utf-8?B?T001eWhRa1l2MUxTblM1d2h5WWEyWGRKTFRhaThzU213cnBpaUpBVzV1TEJ2?=
 =?utf-8?B?Rzh5M0I1TXExZVM4Z1diN0wyZHJXd3RMMEJxRHVMR0xmMW9weVpqQ2tXOFNm?=
 =?utf-8?B?RUJpN0xzVER0Mlg0VXl4STROYS9BelgzbnhNVkpaMWIwMEV3VWRUSTZ6enJE?=
 =?utf-8?B?Z1BqWVNUZjNiWlcvbTZvQ09ZRzhpeWtUSWk3OFNUYjJMQzhaV1VHK0dqL0JR?=
 =?utf-8?B?TG82N1U1VkxqZkpnd0NJQWkrbXNROGtONjhkVmk3RHFaVVdaYWRUNGthVElt?=
 =?utf-8?B?MXRrUG02ZStUSHJ2OFNnbDR6czZHVVM5RzhzTVNYN2lRS252cGc4T3VHdHZv?=
 =?utf-8?B?Ry9nNXBoYjBnOVhhNi9yQlJMc1F4VUtLR3hlc2V1S0x4NEM1V3lyZFg5NlA0?=
 =?utf-8?B?czg0OUhkL3NYU2kxQUY4QUt2MDIrejJwV2ZGK2VjV2V3RE9WUFhFelNJa1pm?=
 =?utf-8?B?TnNYeElJdXBTSmdPeXoxc3RnaUpQR2g0S3A1UXNUTjhjM3RiTjVuOEpHU05X?=
 =?utf-8?B?MlNCTlpSSVJLTkYvT3p5V3VRQ0VsR1p2MWtwZFp0TjdWNFlaeGhQUGNnbkc2?=
 =?utf-8?B?V0sxNzJwbEpVVnVNaXZlZjBlRkVZcXRqcG9XVzhmb1hVMVlDREVMeXZCMHFN?=
 =?utf-8?B?SmFKaG42bkZRUmROYUUrSERtdkYyMmppRjRhUzk3bDRsZUZmUUNHQVQ3QnpU?=
 =?utf-8?B?RE02azBmQ0J1MFNyMDU2ZTYzY0RDaEdQZVJpT0UrUUJjbHpSUGNSa0ZOc0g0?=
 =?utf-8?Q?cAs5R9fA3Kw0XkpgA7MbXum6XyTywY89JOGz48YobaRs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SGo2cHcxc2JYVmp4N1dndGhpZENiNnYrLzJiTUxoMlZqak1tQUVkcmJrYlZi?=
 =?utf-8?B?RHRrUklQOHg5M3R1Z1dEc2o3UGlUdFVobEdLeEVZWkExNHQ2WVRPeDg4bmNa?=
 =?utf-8?B?TWZwSEJLNVd4NDBiQWZSZ1F3UVRRMVZLODQ3NTFCVWJvcHBmZ0FMT2d2a0NH?=
 =?utf-8?B?QXd2ZmFJRGZwY2V2Zkhvcmo2UDNxd29adC9XeDEzN1pNWHVxSW45MlRvbDJB?=
 =?utf-8?B?L3VhaXBwUURKdE5sK2hBcktGWVpSWCtNVmJPM3JUaFEyRzJqeHpvL2tWUUFo?=
 =?utf-8?B?VlU4MklJc2hmV3V2RVhpOGJVNUlCMUFoaHUwTE5SRWU1eHBaL3hNeFpTNmtS?=
 =?utf-8?B?MW9OY3I5YjAzcDA4L3E5dXN1K2trTVpMWjJSeVh0TmU1YjgvT0V6dTF1ZzNy?=
 =?utf-8?B?eUU0NStCN3pOUi9jMVdkY3gybGhpWVpMcEkwcUxDVkhsTU5uVmNiQmYzZm9N?=
 =?utf-8?B?VXJhQlpXWVRFMmNLZTFkNUdiWnZhckZ4V3gyRlhxS09CVVkycGRtWmZIaXll?=
 =?utf-8?B?WlJXRXErWWNoRnZGNVF2c3ZiQlNjdUZLSm5nblN3RDJNWkFJUkl1VTZFVUFm?=
 =?utf-8?B?STY3VTlUNk4yVFVyL1VKaE9jSFpVWlNBTWIvNm9iVkhEcTkwU3ZtWHUybGZx?=
 =?utf-8?B?ZlphbFV3bVpKQ1pPM1l6NVlRUFNxbDdoT3FRcXdYVG1Pa3o0WE5xVEhMNGV6?=
 =?utf-8?B?SDFpajJZbWRzMW9CV0ZnVS92aGJLd0FYNklMUnA1QThveVQwcytDMzhQckZu?=
 =?utf-8?B?UEt1b0lWY0dnNThvS09tWmUrYlRSQ2F0MG5MTE9DL1lQY0d3MlQ2ZExIWTN3?=
 =?utf-8?B?VTZRQnVyYVAwL1lPYmovYWJwYjV4alo0N1dtVmw3Q1ZiQk1JOWw4dVNqZENs?=
 =?utf-8?B?T1ptWGNRTUEvZWJkYThSR05WZzgzM0NRdE1DQnNVejlLajRTOWVkS09ZdDIr?=
 =?utf-8?B?YnovSDBZbzJUblNDNFR6blBCOWV0MFZpcVYrM2l3cGhZY3kvdW9GZWFtY3F4?=
 =?utf-8?B?NXZLMUh3UDFoY21hcXI0ODRUMTE1bjU3SEtGeUVFY1BZRWpKL3pNY1FRM2JI?=
 =?utf-8?B?MVVSZEhOVzQ1Z1lpY0xKenVMZGRxK3cwRkxQS2tRZi9kUGNZU2RwM0x6M3Nm?=
 =?utf-8?B?bDhiL3pXS3BYVHcxazBoMW05T3FhUTZMUkk0RGQxekErTi9YdGFObjkzajdO?=
 =?utf-8?B?ZEpPWVFuZmxSeDZuRzJRRnhkOFlHVFdzVUpNL2xaa2ZtL0krc2hrdWpGa2I3?=
 =?utf-8?B?aHBWc01USm1yQWdtVnRLcG8xRnNITHhRODdEZFJoTGtGWkVFZWtSZTJNQjN0?=
 =?utf-8?B?a01SZDIrUTdzdDYrcGs3ZFg2WnhjWVFSMGhaNm9qak9WK3BUYUwvMjh6dzF2?=
 =?utf-8?B?dFlYc3I5ayt3Snh2akZ4N01LVzNDbS9HRGpHNXhRNHJ4cWxrQ2ZTc0VHaEZl?=
 =?utf-8?B?V0ErSnIvUnJjWmM1N3VMRGR5YjFGT3ZKTFVYUmRoVXJZVU5uN0tKSGg5M2lY?=
 =?utf-8?B?UkwwandLblFaekhFMU8yZEZaY3JKN29FNzI4UHJaS0VINk9kOE1NYlZma2t2?=
 =?utf-8?B?UEJza1Q0ZHlvc1RVYUlmTGJBVkRPOHJVWElNcU5GblloeEJpcVM1RTc0ajB2?=
 =?utf-8?B?aEhvYkE5TmJPcVp0SU1oMytWaktaUDAvWmZETktTbm8wL2kvK1lHYml3T1NO?=
 =?utf-8?B?TXNtNmtPYjU1a0V0RXBRbGJWL2E3NlJqZUc3U0Zpc1l5RTlJdndKNDBIczR0?=
 =?utf-8?B?OW12bHJjRlNLR0Y2dEk4blI4SkhHOWMralFpaUdoZ2Uyd0pwd2JYOVhhUXda?=
 =?utf-8?B?Mmk0NWt5SWNBaHUwTks0SnZzOHM0MXphNlpaa2VYZnN0ZTFHejlUc2pZOVIz?=
 =?utf-8?B?ZnptSUZxS2FrWmY0WUVZVEhwby9QR0liOFpQaFNFdEdsZ1lhZklhdUR1byt1?=
 =?utf-8?B?UXBHS2gyYXVjQmZXamZpbi9QKzgzRENvb2VudTJQK2hmU0pZVUs4cVM2SFZ2?=
 =?utf-8?B?RWxVMkNNbjhvenp1RkgyYnpXS1EzTHNFZ2xVR3B6aWJDdWIremVmRVlMTXhJ?=
 =?utf-8?B?eWpjeTRwOWIrRkNsMi9INHk3QUVUdlRMRU1OZ3RNTlNNMXREelV3RVJyZmtL?=
 =?utf-8?B?UThTUGF4OWVLaVV6MjNZc1ZvWkw4WUgyajEvVGhmQW41bml1M09jQW9HN0tJ?=
 =?utf-8?B?NkE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0df19fb6-5b8e-46b0-2107-08dcec666dfe
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 15:39:45.6802
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PAvNbdcdvIX1/gVGC1FdNCJ9Rajd4DCRy+Atl/JkemnRe27KtLlOYVvBVM7FRQvQnGIPciV66dk+d00uNzjJppmbqRQ4HiT0D33NfGibZ7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7141

Hi Dragan,

On 10/9/24 9:16 AM, Dragan Simic wrote:
> Hello Heiko,
> 
> On 2024-10-08 22:39, Heiko Stuebner wrote:
>> All Theobroma boards use a ti,amc6821 as fan controller.
>> It normally runs in an automatically controlled way and while it may be
>> possible to use it as part of a dt-based thermal management, this is
>> not yet specified in the binding, nor implemented in any kernel.
>>
>> Newer boards already don't contain that #cooling-cells property, but
>> older ones do. So remove them for now, they can be re-added if thermal
>> integration gets implemented in the future.
>>
>> Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck)
>> SoM with Haikou baseboard")
>> Fixes: d99a02bcfa81 ("arm64: dts: rockchip: add RK3368-uQ7 (Lion) SoM")
>> Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
>> Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>> Cc: Klaus Goger <klaus.goger@theobroma-systems.com>
>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
> 
> Looking good to me, thanks for the patch.  In addition to the amc6821
> driver currently not supporting full integration into the thermal
> framework, the "fan" DT node also isn't referenced in any cooling map,
> so having it define the "cooling-cells" property is of no use.
> 
> By the way, it would be nice to see the amc6821 driver supporting fan
> speed regulation, and test it to check who does a better job when it
> comes to cooling and fan speed regulation, the thermal framework or
> the chip's built-in logic. :)
> 

Wasn't this feature added this summer by Guenter?

c.f. 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/hwmon/amc6821.c?id=becbd16ed2f8f427239ffda66b5d894008bc56af

Mode 4 is 
https://elixir.bootlin.com/linux/v6.11.3/source/drivers/hwmon/amc6821.c#L367 
([FDRC1:FDRC0] = [01] -> Software-RPM Control Mode (Fan Speed Regulator) 
according to the datasheet).

In any case, we cannot compare those for our products as we do not have 
a genuine AMC6821 but a handmade simulation of the IP we run in an MCU.

But that'd be an interesting data point indeed :)

Cheers,
Quentin


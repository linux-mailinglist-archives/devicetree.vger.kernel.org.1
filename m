Return-Path: <devicetree+bounces-265165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDB4AdUNjmmS+wAAu9opvQ
	(envelope-from <devicetree+bounces-265165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:28:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 987D012FE8B
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:28:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 803DF30A7958
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABCB325B2F4;
	Thu, 12 Feb 2026 17:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="YW96FBtR"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010027.outbound.protection.outlook.com [52.101.85.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C140263899;
	Thu, 12 Feb 2026 17:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.27
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770917257; cv=fail; b=tGgaFh//AkM5VAd1ufIzgtkQlZSedY7c4t4qPwlTAHPaFzlV9Li1GONssz1W/c+4MmfYVxH3Fi+1T3NVUI214r7Az42cW66cPRfOzd5CfHKMwBY2I0JUZVReZUsYyfdErYCE88e9qUkI8hNBp1kE0t3X3Sx5vSj4wJe4NPMi82Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770917257; c=relaxed/simple;
	bh=Bw3d2QGzMeHrLjfHDxb4CtLd01SYeoXA/RR2XPSUZE0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=p1TlbBLoahLtvYzmOgxZYyTxN8qrY2GSiQtzcUPmnDjO4VqEnAk7FXXU5Q7PypF387s2zC+W311ylZgRwhyURYGnfAhKAJQ43YAGq3IYHKkkkkyNH/aYaWW88OwTd+jcPYpy1fJqGYuyg1jszT5ehoWf9X7VNf2BvceIXLp40HA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=YW96FBtR; arc=fail smtp.client-ip=52.101.85.27
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ibE2TGhnTuJXh5BHlGGg1BwLNIr3BCrMlLdkCOkxP9Yq6eN1MEQIqghS/YzV876pObyc9YSjx4Z+3k2CTzU05G6ILgzqm+1nHE67h07y0prrPJA3ewOZWe2EPPaUa+4b5r8FsnvVa4zIBsYGrLNWFqJWCJCgNwNwAlNZKDimLdFhUkMtsFyRMkXK7LneHVXuRparKuCM9WiFmk4c+oa81ZGMi0p125A+4jUQv2P5TNUBzoraRd+kdo7RvqJfNyOsBwVmCRew0aVE1x0km62TuOgO4E5kOqrSnvSoQ5f17UxBaHUcWhl/YlsOTQ45Hq5PpLUDGr8E55I1o4u/7cBpMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LtIQ0lZd+2lujlxju2d+tTsuDeO66s79cffwaccQdag=;
 b=cfvZKiDrNqdBbgZqX0s9rIPCtPFGXxfA9pFBD17jttqEDvJvrnrY0dXZWmOozQUUFBgdk7luYG3pOVUUBmcjaDc6n7ydImrCth8sSAiM6w/zDjQD7x8V2i1M+UEpGiinhbSK12Bpl49GN/eIPFZ/Mt6UBoDJWRgHqxZb36WsgAfhJ7OKwzo5FzpBKnQlu+gqRkYa95jr5Ub6QXPXbF/otuG5eteL1u3qxvTjy3k/WC6PsGXmoBTOa6KUMN1xwP7o6P2PvCiUMRpJ3YOTNnpgmKjf9enE3meRGiHrYatY2RfqvB1hCCmJiZ9bJZzup8+XmZGsKg8k71zEmdEnrd4FrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=baylibre.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LtIQ0lZd+2lujlxju2d+tTsuDeO66s79cffwaccQdag=;
 b=YW96FBtRJf0mh9hPRYokslUz4wSg6CdfTYHB9n+GrSwiuOH/Fd+8CjC555TBQYT8sCuKX8eYiSc6yyPIF0I1bOgEeWNlRXDcMBf5AQ9lee6Tg/UnBIEjMPmLj4uLGa0a8c9e94N6hXS8gSAYPfns50p//DLh6puFn0Sf3LPrN9U=
Received: from SA0PR11CA0110.namprd11.prod.outlook.com (2603:10b6:806:d1::25)
 by PH0PR10MB5660.namprd10.prod.outlook.com (2603:10b6:510:ff::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 17:27:31 +0000
Received: from SN1PEPF0002636C.namprd02.prod.outlook.com
 (2603:10b6:806:d1:cafe::3e) by SA0PR11CA0110.outlook.office365.com
 (2603:10b6:806:d1::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.10 via Frontend Transport; Thu,
 12 Feb 2026 17:27:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SN1PEPF0002636C.mail.protection.outlook.com (10.167.241.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Thu, 12 Feb 2026 17:27:30 +0000
Received: from DFLE205.ent.ti.com (10.64.6.63) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 11:27:29 -0600
Received: from DFLE211.ent.ti.com (10.64.6.69) by DFLE205.ent.ti.com
 (10.64.6.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 11:27:28 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE211.ent.ti.com
 (10.64.6.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 12 Feb 2026 11:27:28 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61CHRSI23458792;
	Thu, 12 Feb 2026 11:27:28 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Thu, 12 Feb 2026 11:27:20 -0600
Subject: [PATCH v5 1/5] arm64: dts: ti: k3-am62x-sk-common: Enable Main
 UART wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260212-b4-uart-daisy-chain-dts-v5-1-26c7f534e567@ti.com>
References: <20260212-b4-uart-daisy-chain-dts-v5-0-26c7f534e567@ti.com>
In-Reply-To: <20260212-b4-uart-daisy-chain-dts-v5-0-26c7f534e567@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <k-willis@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
	<khilman@baylibre.com>, <d-gole@ti.com>, <msp@baylibre.com>, <a-kaur@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770917248; l=1938;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=Bw3d2QGzMeHrLjfHDxb4CtLd01SYeoXA/RR2XPSUZE0=;
 b=41Mzdd8dsEtnfnHX3y9/Ix3aZLzcHgjOGEjC6P1iBW42CSGkupcwAF6lxLOePjAFADGJbw9+o
 ieca1Th+WlyAW2+vSoa+bka/sOLxg7p5wNEm7T6B1YnXz6zQ01Mx1/b
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN1PEPF0002636C:EE_|PH0PR10MB5660:EE_
X-MS-Office365-Filtering-Correlation-Id: ac5728a5-2131-4d38-4928-08de6a5c002d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|82310400026|36860700013|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dDd0Q0FQU0hKNzgwNGhKdE5IQlkxQ0xLbTBlLzZRM3dFeC94Y2R4aUwreFB4?=
 =?utf-8?B?a3o5ZUtNelR2ZjNOaHVKODhjQWpKZG5rLzBKZU92RmN6OUJBMDNFQUdsQU1h?=
 =?utf-8?B?U0d2Z2hwN1lqbU8rVkVhQmNCeUJxMXVvaDl1aElyQkdQWkRlMWZoUHpnQ1Nw?=
 =?utf-8?B?T1YwOXEwVXJ3Tm1YdzQxbC84MnZxR2RYMkdJVUU1dENZaW01eHdmeWhTdm1S?=
 =?utf-8?B?M3U2NGlGVG00N2trVThhYkVIcVByQ0RnZXY4aWNjc2xpMWRWOGFmRmFUR213?=
 =?utf-8?B?cUtpNldzOCswelNwajRqS1R6NDRTY3F6Ukx5ZEZNblFXaWx0TWRudUJ3Qy9X?=
 =?utf-8?B?QXRBVldhaTVndkIvUzZhd2pIZjFmcjVLdHRMTFVCZHprSFYrcytMOGlRaTRZ?=
 =?utf-8?B?SGhJaW0vZGxOTlEwbldaZGdCS3pIN2JWZkUwb0Izc3YvY1JueDVYTUZySjlm?=
 =?utf-8?B?enNRY0FVWnFQYzZLTnB6NHl4TElsdTQwTndkUnFPUXlGUi93d1B6TkhiTlAz?=
 =?utf-8?B?V0Qremw5bTZWWjNsdEpIWUZEbVkyOUZWVVEwRTNTWWMvQnA0UWJFZ01LRncy?=
 =?utf-8?B?OFdvYnJyb3ZiZ1htcFFjUURGYzN1Y1FYaFFwM1cwYUxsa0lqQTB2YUxYU0FV?=
 =?utf-8?B?Y2hLYjcrS0ErOEJoV1o2N3RSbEJIRlI0NTZGUmdHMklLRGVpVzBjWit4bDJy?=
 =?utf-8?B?bTdBRTFKSlpWNmdpTE9hVE1hSS9GckJzYmdSYTM2WjBxa1BneEJFOVdCMTA1?=
 =?utf-8?B?QldDRW5RaUJNaVE0M3lUcFVxQVhkR1lCU1B2RGVXR2VYL29DMGw2WDE0OFF5?=
 =?utf-8?B?MEN6dlRnL3RaR0kxRTlIMGg0aWRBcHZwU3didU5qY2lMYXA3aHZkMXNxQ2Nl?=
 =?utf-8?B?dW11TGRXSnRMLzZGM1IzVk9oQm1tenYyS1g2VXZyc3h6cE9iYzRCT1p5eW5J?=
 =?utf-8?B?Mmk2Y1dTdUtFOTkzcXNEYVlIZ2hDTnpXUHRwOGpRS0tCV0RZZ2pVM0g4YkFt?=
 =?utf-8?B?bmZZL2luTWh3MGVZQWQwMjUzbzhXR2Nzc0Nhdkc5UjlvNm1qTmtOMHZpZlpt?=
 =?utf-8?B?cndaakZCOTFqb2NwM0NRRGp6Q0hza0I4RmNKLzZLMFB0cGNsb2ltMnViL2xk?=
 =?utf-8?B?VVRWclB4RmVjdkxBckJ1aHZVeVlYZGlMYTVrRFNNVG5yUzB0RHcxSmdhT3dx?=
 =?utf-8?B?amdYREVvWlpaMENKSWcwWGlwVTJSSUZSd3p1ZE5HTUZDOFRiZ1IxTXl5S2dL?=
 =?utf-8?B?MTIrOWlsZ3pyQkQ1MkRVNmRBbUxxUUVjWEFKWHRwQnVDNlVGaEdDSlBCd3ox?=
 =?utf-8?B?Ulk4N3NhSlludmdkellsNVhxdnIxd3ZFaDBLRWdoMGlVdUwrd2w2dDQwVlNy?=
 =?utf-8?B?Z2M5ckV1aXdETTZ0cEZnWVNadmV4YldiMEFHaCtqcnVZZlZ2ZW9admgvVVd5?=
 =?utf-8?B?ZjBGS3Rva2VqbW5FU0xLNEdwMlNMQTFVd29SNWdJbysvaC9KeW1QbnFCL09z?=
 =?utf-8?B?UmJYMXNTUiszaUE1TG1RRVoveXlrbVhhcmNKN0M5NFhqQXVVSkoyaHV3NFJQ?=
 =?utf-8?B?STVxaHBVR2l6R08za2lSa0FRQU5ZSVFNdlJmcGtpdFJqRFR3aUZBU2lsUHdH?=
 =?utf-8?B?RVgxcmc1TlBLaWI3WHFjVjlqenpKVzhDL1RZbHZrQXljdnZnMFhQMDZ2bU42?=
 =?utf-8?B?Y0VRcmtCcnlXYzIzWVhKUFp3SFRWcGdyZG4za2x3SnlCc2xxSVJPcG5KVDVl?=
 =?utf-8?B?Q2h3RVNjMHc2QUJYSnhzeS9TQlFXNVBINTRuYUhMQm9LOGVyQ3paMmZKY0VG?=
 =?utf-8?B?OWtoQ0NOamhuR21pa2pNeUlNamo3WkVFMmF2M0dXMzNROGQwWUxpRnB0YWVn?=
 =?utf-8?B?Vk82aGNscXd1dGl6bWRJZzdkMGVUUnpZbDdvb2krM05YcFFHRG1tbHRYcDE1?=
 =?utf-8?B?VDUyc1J2ZlkvWlY3N0lZQk1BMjc2bGFzNTVLOVJzcG1raDB2OXp1NGcxWXJR?=
 =?utf-8?B?KytCOG9kUW9zZHBuQTRLZGpZeHZFb3d3clg5SlM1VkJnTEdRWTdYT0g0T0lQ?=
 =?utf-8?B?NG5wbXNwTEZZZmJWVXIxVlZIMTlaMFpYV2g1d3VuT08vbzl4SlBLc1Q3N0tF?=
 =?utf-8?B?UGlmVkhYYzhhUDZxVm1aemlaVGxpc1JwTm4xTXNQa2JSNWM2SGNSVFZhVjc0?=
 =?utf-8?B?WmFnNjZCQ3RxQUlOdzJJZWxWOW1ybGlhdHNHUHp2VzJuTTRCOU90QkwzQ0Jn?=
 =?utf-8?B?a2dlVUZDcCswdlJ5WE9QSjBmMTV3PT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(376014)(82310400026)(36860700013)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	bL6S05kFJQnkoaUc9ZSjPA1qAlu9nzBkRIckKX6imLoB3yqfGtKHrLW6NqBFhhCzov3/OfIJS+F0tB+BPQqGwh8uCE+p1U7g9WpPc6Bvq4Agvrsbjl7PKHX4Mo1nebJUIaTvU+SVBOl5W7goeizrZdjAYLPuOA2Ko8dmDDoJzfPGZlulqlgtcwd4QHyur66D19g9AVDTjbNMrMlD8DmTeoyApYnktc+J5odCkJRrmLXGqurk9KaJvlxLoAJjDrZnHTYx7sd0sQfhpdHjpCZyvFBPASCio8ZDJxXC9deubLwmdsvi4XSJSZMB+/0zhfacwG3CAOg8WG+Xoz6whTWJn1xGeX6JTeM9kL9x2zvUPv9OntdGkU9QXJHfiVMvvB78hH3eyg4+K1jlaneyvrqJNM34MPym41/dRlfsi3rzgYK6x1hG7N7V+rdlAJpQdf0k
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 17:27:30.4952
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ac5728a5-2131-4d38-4928-08de6a5c002d
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SN1PEPF0002636C.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5660
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:mid,ti.com:dkim,ti.com:email,baylibre.com:email];
	PRECEDENCE_BULK(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265165-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Queue-Id: 987D012FE8B
X-Rspamd-Action: no action

The Main UART can resume from suspend to RAM states when PIN_WKUP_EN
is enabled. Add the necessary pins needed to wakeup the system. Add the
system idle states that the Main UART can wakeup the system from.

The UART driver uses the "default" pinctrl state when the system is
active. In the suspend hook, if the UART is wakeup enabled, the "wakeup"
pinctrl state is selected by the UART driver in order to allow wakeup.
Upon resume, the default pinctrl state is selected again.

Reviewed-by: Markus Schneider-Pargmann <msp@baylibre.com>
Reviewed-by: Dhruva Gole <d-gole@ti.com>
Reviewed-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
index 50ed859ae06c47af38b11753d909a91485d438e5..ab9e58c2d225eb44c054d984aad8f0bed92bf7e9 100644
--- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
@@ -151,6 +151,13 @@ AM62X_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (E14/E11) UART0_TXD */
 		>;
 	};
 
+	main_uart0_pins_wakeup: main-uart0-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62X_IOPAD(0x1c8, PIN_INPUT | PIN_WKUP_EN, 0) /* (D14/A13) UART0_RXD */
+			AM62X_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (E14/E11) UART0_TXD */
+		>;
+	};
+
 	main_uart1_pins_default: main-uart1-default-pins {
 		bootph-pre-ram;
 		pinctrl-single,pins = <
@@ -322,8 +329,12 @@ &wkup_uart0 {
 &main_uart0 {
 	bootph-all;
 	status = "okay";
-	pinctrl-names = "default";
+	pinctrl-names = "default", "wakeup";
 	pinctrl-0 = <&main_uart0_pins_default>;
+	pinctrl-1 = <&main_uart0_pins_wakeup>;
+	wakeup-source = <&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 };
 
 &main_uart1 {

-- 
2.34.1



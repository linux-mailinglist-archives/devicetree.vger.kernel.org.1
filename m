Return-Path: <devicetree+bounces-308130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +OIpF8SGJmqIYAIAu9opvQ
	(envelope-from <devicetree+bounces-308130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:09:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFA465468A
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:09:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nxp.com header.s=selector1 header.b=WYPxyAWw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308130-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308130-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=nxp.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7C11A3030520
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 09:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C3413B47D2;
	Mon,  8 Jun 2026 09:03:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012037.outbound.protection.outlook.com [52.101.66.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08D03B42C1;
	Mon,  8 Jun 2026 09:03:21 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780909403; cv=fail; b=ZhZCOFWgElOeyxTDZp7WCZqFVkGVrKzGp9R9L81yzcUgOr8FnDWq1MI09ffI3vHf/u/q6KBZ/IveNhjmxaMy49f6UydluPQt3fR9f2ioJo0gtkVtLZjpChQIMqzV0josimI+xGQgpVuanEeEKSzKdBc9Rm/T6SeK9qgrI3ruTBI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780909403; c=relaxed/simple;
	bh=8xJnbGsEIJuZEvyEFkJQ84Hdtwi4WZNfGdaEBfMTQeQ=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=OU1qh3NR3xY0lZmU2mO+zJQqIlwE1fViAKsZWkmOEGw1VbFV51/MHboD6k25i0aNNMaeU+W/75RZ5xGmIxYdJDOIEurvvBH50vRCiEPldQcfojLhw5wuISNgvsE0Zo78VnkZ/RHYwSJ4w19/yjB9Ffvu+L6OxE+1MgzO8GAAo+o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=WYPxyAWw; arc=fail smtp.client-ip=52.101.66.37
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z2oD9Di2vlFLxjJ66x+Tj53P2OCsBSpEJVAsM68G6j3fLK6rOBrlrWZRunoYxvQ04DHmG0s+FHT1iL0RN7yaToQdEp/q1qRkeZCHIZ/S9GK6tolrXPmHX5VdviIdGoSUkGfxzP5ttDnn/EGDOjmy2m2o8ZOGreEQNUcPfBLb7lGhHPaaTrEireIk1nLnbntO/pgPW5XM6jB0CtNsWCGHjzOXbyarxxKOwAJt6jC2NshpEGg6F5hkyj5FLOefjRw/09MrEtqshiKSHf0G1vudyHr/i0O2mYtzXpwVUEB0TOHB26DogdqPDW2hcJ0VVJPE5GR3ZZ/CGujV7vpz2y6FMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YaB9xj1MvxQDYjyA5zyT+jOopAc8FY7shUuMjpNMZdk=;
 b=U1jXfi7UpzSrI/nmQbUxHj+q2wvjled6U8QYoGhX+BXCMf77SyBPmX0XYww3jODvhFfZuoTbPd9mjW5Bts4TlGEuQlqz437+dGlPG9x/bybckHT1P2N3i1xcS4VwHCZw1EfGL3U34NoH2EdO49KHn0iJxAvz4D+KxTtO6uqG8V9cFSUjm8ZBXBmkEg3vIDr4ID9fpTjVyo6x0w+t/+Krsq+1c0PnWKi8Ic6wGoY0Y7s/E5h5iN1HoY6Yx1OdON9C3OjYeaFm89WVvRIwXFEHOtTubAXK4S/aDKmh5x/aTS791jK0dyvhWvaPnOinY70J37xN1x5SSrT14D/CNDV1fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YaB9xj1MvxQDYjyA5zyT+jOopAc8FY7shUuMjpNMZdk=;
 b=WYPxyAWwRnE6oW7T+zwyHKDl2vCeiWHRUgfTZXqtS1OqYYAyc5oCkFxgwWqPa76HLCzg6ENcuAswWNdVfr9SKB0hAOngNwik1Hlgr5l1A8B1pXrQIEikyxUZ1YjH5VtuuBrIc5XHcWhmQrqX5bZUQ/UJ/ln6ovyhmY90L3kdy1kGb6ru5OCf7EKVA/dxIxgDVEk6uXObyRo0Ju6QP83oIoS6RSQOOipNhWufxRnCnr0gzBqvjIxfIQkjUfJh7DrzkAi0iCwm8SkJa8m18GPf/UfcohPRoHdDoQsm18naWtz9+eAOhObQsvAlnQjEIQTgyLumezw9OfuerFbrcOWe1g==
Received: from AS1PR04MB9287.eurprd04.prod.outlook.com (2603:10a6:20b:4dd::8)
 by AMBPR04MB11786.eurprd04.prod.outlook.com (2603:10a6:20b:6ef::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 09:03:18 +0000
Received: from AS1PR04MB9287.eurprd04.prod.outlook.com
 ([fe80::6f30:763d:17d2:b79c]) by AS1PR04MB9287.eurprd04.prod.outlook.com
 ([fe80::6f30:763d:17d2:b79c%3]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 09:03:18 +0000
From: Liu Ying <victor.liu@nxp.com>
Date: Mon, 08 Jun 2026 17:04:23 +0800
Subject: [PATCH v2 2/3] arm64: dts: imx93: Add LVDS Display Bridge support
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-imx93-ldb-v2-2-1b1fe621bfda@nxp.com>
References: <20260608-imx93-ldb-v2-0-1b1fe621bfda@nxp.com>
In-Reply-To: <20260608-imx93-ldb-v2-0-1b1fe621bfda@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Marco Felsch <m.felsch@pengutronix.de>, Liu Ying <victor.liu@nxp.com>
X-Mailer: b4 0.15.2
X-ClientProxiedBy: MA5P287CA0221.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b4::9) To AS1PR04MB9287.eurprd04.prod.outlook.com
 (2603:10a6:20b:4dd::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS1PR04MB9287:EE_|AMBPR04MB11786:EE_
X-MS-Office365-Filtering-Correlation-Id: e44b181b-ef3d-4dac-6ddb-08dec53cc874
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|1800799024|7416014|376014|366016|22082099003|18002099003|3023799007|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info:
	Pl2j+sypLCFm02V6QE7AMQT8xiUE9L8jG9r7oE3NcUzBSpwOOVekhbWD46R6BA9EUSBVuYxPLCuvP6tnWqcl6QbVxi47utYlvvsP17k1e96lG+MnO/mxyM8itSB5UqLCzyj8WYQvBELTVYzvw/YpqS6A91sz9NTEiyZiFgBnQwh2oerZ7rhTCx3KN4ACoziz7Wi+sHmHRqnvsf++MqPOVhWcxIsdYs5EVTdwXhnJMLXdTMBu4fVKOP0VALdXr7AxjBidMfcypmQG7ubdm8A3AuvasGvibeO8dRCxyy0w6zwzmKOhkLvrZhPhbAPQO7p3/C4wsUf4rD+ztYvjCbcixHwWLLMOnAUCkKcmZ+U2FcVUsHPMauyjq9GA37GyJwWbU0aRWeo79UfzGIddGoIf+R1+4Uv5wJrY9oNENKUZ4X05p6ZPuTNV0KtXT8sHmcVA9JgL11cMRIj2CIAcf/tatlE5UiKODSgg2zRuimibYlA/i0fZZl+yM53kCEm6KyTlGEuksDAR8A8mEE3CB+dk4Hkh8kP5dcB1pcMOuW+Qetedib6TaCVckM6dgxBlATcrIj3fm487izkXyujVEcR7blaEdomQWc09fj9ni3212i9SyZ59ogSjEnz96X6M3dqGQyVp5I1idu7P/pLOxYfo5LuzaRj+thJxHqDIUUIZNvWXJ0VwetmfiYYBT/BNYrmD
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR04MB9287.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(3023799007)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dkNVRnRUWXl0VXZmUWQ3bG01b2lDRmJPMENwcFNtdDdSQmxPWURtZlN3UmRN?=
 =?utf-8?B?UDNxOEd2RFFiaGJiRWk5b254T2xtMzVyMCtkSzY0QnVRc1poQS85U2RwL05N?=
 =?utf-8?B?MkZHTCtCZGdKUnV0Q2Q3TjBpY0FLMmNZRUUydTRzL3FHZnJibkhab1dvRFo0?=
 =?utf-8?B?d1Y4QldabHo4VDEzSUpBU3lndGdCbmZYUzZhWCtRallhNVg2aHFhUDU0RjBM?=
 =?utf-8?B?YURmR1FOdVBKVUdiaHpoMS9mWVFSNCtQYy9aa1FrODY4Q3JHQXdOU3dwc25w?=
 =?utf-8?B?RTFsTXFmTUFwVjdqWmZUOVNhclBmUkt0N2t3MlQ5L3ZrZ2RkRWZLMWpiVVhN?=
 =?utf-8?B?SXBCaGJ3czZLY0JCU1pRVWNMajF6RzZmVWFBL1BvNzBvd2JOWFR1NGYwMm9Z?=
 =?utf-8?B?MHRIQmdCckg5OXdiUnc3VGtDM1RhanE4T3U5ZE1FTmNFSzlTUm1DNGQ5MDRU?=
 =?utf-8?B?VDlpMEM1VUc4d09UdEFMR3F2L3FGOHRMWmMzWmo3dzd2MXlnRXI3Ni91bUoz?=
 =?utf-8?B?akl5MHpNdUhBeWRsV3VhaWpWTVZYZjVVa2pSM1paaS9oR3laQ2IxUit5S0lZ?=
 =?utf-8?B?VjBxU1Z4WjFENHVTKzkvZmNFc2VUTHJVUndyMFc5Z3FGditrdmVWL1lpR080?=
 =?utf-8?B?VFpzdWplK3pxQUVXQy8wUEZ3aEFMMmhuS3JGeDdSSmZFR2ZBeVh3MlJoSzJ4?=
 =?utf-8?B?bmZ2bklmR0JRMHkwMHlSYjNTWjhlcENZTkJjc0pIVDJCMVluNXdRelovN0kz?=
 =?utf-8?B?WElXUENibDd1ZTlkUHhSdFRMWEdhSTB0eFRvdmdtTHpNMndRWlZhUVRHcEts?=
 =?utf-8?B?dHJQcTQrZVNyVldFWGhBTkRhSGZKZjRCRWo0ME41bU95YW1wd0laZkV2RHpH?=
 =?utf-8?B?NENnQURXM0oyNjhwSGxnK0NSUjloT0JNemhxZG9BMStGWGxmMkdsMzVJQXFz?=
 =?utf-8?B?czErS1p0a1E4cVo3T1FFUVU0YUs2em43V3JwMEJhaVhHSXBuL0V6VytYWlpM?=
 =?utf-8?B?K3dybXRabCs1dm54MHI4aXBnQTFQZFA3QUk4RVJnL0U5NTFmYUp1YXNwL1ZC?=
 =?utf-8?B?N3BENFAxY0poZDdZK3N5cjd4TDdueVFQMGxzM0NyS1YzWUlDQmRUUURTSHls?=
 =?utf-8?B?SVNpaVcyOW53Ry9TQ1hmakQ4MDVGckhtMnF6UUlwMTk5VCtDRnEwWGprNjVR?=
 =?utf-8?B?enlEUWc0M29KWHhVSUdWbzFESzQ2YWRWUHNEbWJBQk94a000VkRHSnl1YTVt?=
 =?utf-8?B?TXo2YnFXM0dUY05jRlMyUTNBeElrVEhjS2cyS0VJUXR2aWxMU3o4ZlZtSWpa?=
 =?utf-8?B?VU82Z25xVzlqWjRSaUllV3RyZE5qNGFlZ2FHVjQ3K1RkVXp6cW1yR0tzUHg1?=
 =?utf-8?B?Tlg3Yy9qMVdEdmhWTFQrbGZFT2JVcWtWdzBPZW1RQkdNb2VmZS85ZmVLR3VH?=
 =?utf-8?B?ZG56V0IvV1g0dVlBTFpjTVFSNVFVMmhKTzhJQlEzRytWK25raVFnQkVSVXpY?=
 =?utf-8?B?ZjBwemZPSHN0cE5BY2E4dWxLQUtNbVlIc1BReHlTd3FBTlk2bmFJK1FycTVz?=
 =?utf-8?B?RmZWcXU4d2x4b3B5bC9ObWtkQ0R2QjFwUW1MYUUySnhFemk3eks2R0syT0hj?=
 =?utf-8?B?MU55TmlGVmQ4WGdSclFZWmZxVWJlck1yMEdzY0pkVkdOSVFhUUpOU0tRT0hz?=
 =?utf-8?B?aTA3YldUSzE0b2MyTy82QXdxSVpPSG5OcWFJVEFwT21wNzdQb3U1MmV6S0JN?=
 =?utf-8?B?dTJHNytaZjFkRWtqbHJNM2tWTTJmblAzS2IveUNyQVdpR0NDbWliTkUrV29w?=
 =?utf-8?B?OTUzS2djVmppUU9kNXRqNGxxTTFaQm9aYjBQMEJ1US8wNzRVTDFTY0crMlNz?=
 =?utf-8?B?TVBzaVFXTFNUWVlWQ3luRHdTd3hHdmtramlYL1NTaGY0UGxRcGF0b2x6bDcz?=
 =?utf-8?B?NzJ6cUJPMEh1MkQ1R0oyaDZLckxEVkcydS9UWm40SnJIZVo3YWRpSk45aGRI?=
 =?utf-8?B?VkpYSGl1UmtJUW5ESUowZXhUT05UK0JqNjRBQSsyT0o2VUg2Vm1lTWFpWFkv?=
 =?utf-8?B?R2xLR3ZpUzRHSUl6UHlNdm5DNnR6cXdUV3h5aEZPOVNLOHY5d0Z6WGQveHRx?=
 =?utf-8?B?T2R5aGVVNW1aSG9ZZURselZMc1VMb3JVQlVXTXlZeHorQXR0NU9OdFB3S1RP?=
 =?utf-8?B?R2huQ3grVGduTm9iMDNrb2QxN2EwOE8zS1JFN1hHVkVuVEdRWXYwbGU2Nzlk?=
 =?utf-8?B?UGswczZzZ0RuUW0xVHduOTRLOHhzOWoxNnk4L0pxODI4TEs1ckFCTURmeEJq?=
 =?utf-8?B?Nk9HZ2thdmphNGhaNDYveWN3cnluenA4ZVRmZWtCbVNTTnkwS1JGUT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e44b181b-ef3d-4dac-6ddb-08dec53cc874
X-MS-Exchange-CrossTenant-AuthSource: AS1PR04MB9287.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 09:03:18.6929
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HIqfiLivAKldURIkcL1Jdg/TRJSKdwMmtVnuD4b3InYYXqFRmQFxUwPKzgqc/KsZSMyi/iGPCVBtT8hBc0G2MA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMBPR04MB11786
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308130-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:peng.fan@nxp.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:m.felsch@pengutronix.de,m:victor.liu@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[victor.liu@nxp.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[victor.liu@nxp.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,nxp.com:mid,nxp.com:dkim,nxp.com:from_mime,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EFFA465468A

Add LVDS Display Bridge(LDB) child node to mediamix blk-ctrl node
so that video could be output through a LVDS interface.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 37 ++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index b9abe143cb56..79fb4a15b733 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -178,6 +178,7 @@ &lcdif {
 	port {
 		lcdif_to_ldb: endpoint@1 {
 			reg = <1>;
+			remote-endpoint = <&ldb_from_lcdif>;
 		};
 
 		lcdif_to_dsi: endpoint@2 {
@@ -186,6 +187,42 @@ lcdif_to_dsi: endpoint@2 {
 	};
 };
 
+&media_blk_ctrl {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	lvds_bridge: bridge@20 {
+		compatible = "fsl,imx93-ldb";
+		reg = <0x20 0x4>, <0x24 0x4>;
+		reg-names = "ldb", "lvds";
+		clocks = <&clk IMX93_CLK_LVDS_GATE>;
+		clock-names = "ldb";
+		assigned-clocks = <&clk IMX93_CLK_MEDIA_LDB>;
+		assigned-clock-parents = <&clk IMX93_CLK_VIDEO_PLL>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				ldb_from_lcdif: endpoint {
+					remote-endpoint = <&lcdif_to_ldb>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				ldb_lvds_ch0: endpoint {
+				};
+			};
+		};
+	};
+};
+
 &src {
 	mlmix: power-domain@44461800 {
 		compatible = "fsl,imx93-src-slice";

-- 
2.43.0



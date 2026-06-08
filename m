Return-Path: <devicetree+bounces-308129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id miQTBrKGJmqEYAIAu9opvQ
	(envelope-from <devicetree+bounces-308129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:09:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C50D9654677
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:09:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nxp.com header.s=selector1 header.b=CeeaN6gF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308129-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-308129-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=nxp.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 341CA302930A
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 09:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D8243B42F9;
	Mon,  8 Jun 2026 09:03:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013053.outbound.protection.outlook.com [40.107.162.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C8C3B14C2;
	Mon,  8 Jun 2026 09:03:15 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780909397; cv=fail; b=YPoBlzxIzJNcTjb70VlDhGCw6hHOxPXBYLFRuM+7/3/RYMtzVSl+X0FrCBdFWpUbsJ6PPtK7VReOy2S+3F7LoR1FmHcOmRo0E70wiev+kyzk+2LApaWjQU5Nw/YPawkDWncJVy4pEUDKLZbdVXXSuBF2pREUkyMQgo1OCBeO52A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780909397; c=relaxed/simple;
	bh=4oGNIAwI8NhvfySAXqeT7BnKKJZf4CBRAQf9iPC5s4U=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=tVPp71rASQxiklOj666ngG+2Is5HraSNv+8rVkjhaFaZbPnV0vBjsoSdPSLifppREHpewmXHR1/Em//0HywoOUN/hs0iw2hufWtFvv6L9DGX8QxLiLWggqrSZxDHOa1jy2MhfVhbj+5KwUxyG+kVTZKchBcS9AJtv6InneIVLVs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=CeeaN6gF; arc=fail smtp.client-ip=40.107.162.53
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lx8dpamAyvJRA4KLSAkreg/qCLldBWmDZIm4qxZLLApASm6h5VlTDUdtRo5T8y5Ufks1g7xtmqy/G88gRBNNuZSa7l54Hp+xFq9vAobBzu2YdUecu52EbfkjeqlgKGxYH/oM0q+6delemV+lqXi0vgQXUXesbg9hHVTn77r+NFeUKdhwEzlT6d0g2lOZ61YvoHU64rMxPxdCiTcCEWkC7M09sBQKUa7pNZ31L7F763JGDjB6HxFxOk8SiTNF+bwCk0nI6NtdUavdfuume4y0yiRdJSvVzos+CrBHn1XDWhaWYKZg1de3mj0K8oiGQcGSxGjKj+1EGuOHnirD56angw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p9idflpZLa75g4PFYLYkM+rdVnjnQPKHVPE2osSPXB0=;
 b=FcAijy9jFM3HM2bh0CDNsafOAusVwjSKZDLhSuu7eaDWDEIMuh1sdex+OJvMyCWPT1inUyEKSIpI182JzdMTsywxVn0l98o2wWwU9TjxjsGTn4oQq3hW5bjVS3GmU4S5jCHHDtGwRlFHoC+0yyaZsrT2ch+dsvVJ4scx3DjPpWpXDW2I8yORnQmfXW7aozeU0UZ5P2559aaTYDdmMWjEnqpSL4lQi4CkJ3lcXJ84+LBLSuwgkpXwbButQo/wYyr6HiJ0upPfrWpD13DM2YoIDSLuo50FYYgzIsFGbvJUMn+7v122FrrQvB/JjaAT8dJZ9H34hBBUiYsZTkzk5ML58Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p9idflpZLa75g4PFYLYkM+rdVnjnQPKHVPE2osSPXB0=;
 b=CeeaN6gFY/Jq6ftO/6pZ/Xj6PfiL3YAXFo3jfN6vnYOXibtfKKbhbA7fOBqrlepwJHBJU9QElDx0shke76pEla8mr/jEitAdrRO1XMqT4pspBMwSmCRF7HGjYIgXxxa5Aqi1Lw6WnFMG70QEYpCcf+kFW/7f9L0y9OZZCZ5D6Aq5aAvkytkJhylvydqt07rmHA5HgOUYTDZK+M7iAiUgD+IqjdWUsx7t9oRAdm5LI/ocNYnLrBrxyNp5xyAAxCeebya9UUkruoCvG9SMPm2U+7qklkfQZStRmc07SGcU1dhWi69ApRBPvyDMsbw4raDyEzJc165LsQzXW5PFvQ2LsA==
Received: from AS1PR04MB9287.eurprd04.prod.outlook.com (2603:10a6:20b:4dd::8)
 by AMBPR04MB11786.eurprd04.prod.outlook.com (2603:10a6:20b:6ef::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 09:03:12 +0000
Received: from AS1PR04MB9287.eurprd04.prod.outlook.com
 ([fe80::6f30:763d:17d2:b79c]) by AS1PR04MB9287.eurprd04.prod.outlook.com
 ([fe80::6f30:763d:17d2:b79c%3]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 09:03:12 +0000
From: Liu Ying <victor.liu@nxp.com>
Date: Mon, 08 Jun 2026 17:04:22 +0800
Subject: [PATCH v2 1/3] dt-bindings: soc: imx: fsl,imx93-media-blk-ctrl:
 Allow LVDS Display Bridge child node
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-imx93-ldb-v2-1-1b1fe621bfda@nxp.com>
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
X-ClientProxiedBy: MAXP287CA0022.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::29) To AS1PR04MB9287.eurprd04.prod.outlook.com
 (2603:10a6:20b:4dd::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS1PR04MB9287:EE_|AMBPR04MB11786:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e9a020f-c2a8-4a18-2c00-08dec53cc473
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|1800799024|7416014|376014|366016|22082099003|18002099003|3023799007|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info:
	RZ5UxvsyqDvRvZxK2eFFdgdDoa0TQEWhQBK6K/v/j6CssgncDmA+GODKdeEmWpMKTbgd1oGyD8Uy+n3/Eue3W9hFZFwTP8f1GNMlIjIqTlYQlXGv1hO3tZ2zMtt3J25DLkkt1P3S8ZV4Ff1mPg65P8Xgzbwq7oTWZkOIdbFmQgC5NF6x+mEoi5K5nXr1j8rfcVdBTsPpBqrhZQuLMbQkiEknLY2a8RqW0NE9JBfO1T7zPlvB4UzLI/ngUrZYfbPOe++9s+7KrVI6KTMSXhk61qtMVT2UgUD7lnIWk8ihaX6pnv7Rz03AgnQIo5xEc7IZwD3T5CsYtVPraOMPJNTLRIQgiJEXX+soQLh2GYAsG7ME+DhAYMJGAnaNegVxb35QF9cvpNiyFmYmq2GKzKCgTSxnbRYpQ8UEc5pc1xN+wbfiKq/rqmwP415wc85TJiHuz7zyOg6OHdkuQt1uLIV6SyUzEQm2acApFnFnKHXDc0O6BIL9y5yAZjf0TIJVMv0Df6aJKUfPOFh85Eg1QhB6C3kZfMdVSqB2Q5MNTZIhQmQSKCkxWuNF7jXrTfKpwg4QCNmwoicrs6955NsTU3uiMBejRFElTvN1GXVTDVKEjAPkf2cWr/0wi9dRY33Pq4jB51aZYvFA4mEyqTyMfZ5YNroaFDf2vk8WLoUC5ev/J7SRMAYuDIV9f7t45U5g7vri
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR04MB9287.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(7416014)(376014)(366016)(22082099003)(18002099003)(3023799007)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QTNkelZKRlFBMmdPSUFUTjU1aGRWMUVzSVA3T1lrODRCRTVSWmZMMVRJMnl4?=
 =?utf-8?B?aGprSkdjUlRqRE50YWVmdmJSaDUraU1xVmhhT0JUNWo2bERWWnR6cmN0VnJr?=
 =?utf-8?B?NnU2N281TXZEcjF6VHFuc2d4QVdybFVaR2p6VFd2N0ZLL216YVBqTU9jQ25Z?=
 =?utf-8?B?bWtrRjF3cmdmWEFLZDYzQ1AzeGZZKzE1cnJTUHlLaU5GbWlqMTRQWE5qQ3lF?=
 =?utf-8?B?M3VvQklTN1ZGZnpkeGV1VmlqQjJPQWc4N2NEL0lJeW4yWks1aVdiY3B3Nmxk?=
 =?utf-8?B?aXZBcWVhelVIQXBuMUg3N3JMYzdpaWVGd0ZpMWk2d3E0TUZWVXN4QllsZ2cy?=
 =?utf-8?B?K3Uxd2FwNTNENG11NUVxMGpibzhjVnAvbk1zWEFDdzV3T2o2MjBRK1RUSXJO?=
 =?utf-8?B?MENqVDBOazJDWStiaWVyMzBKZ1gvQzNRbEc1SEQ5Q29JZ09kcjd0MGlYMEJK?=
 =?utf-8?B?cTVienVic1JDSUxycVVsWmxZUlpEZlAyWTlkR3dPc2VGallsYTYzcjBUZ2t5?=
 =?utf-8?B?YkZVRUlYM2podjBoZTlzVE5TRTYzeDJYaU1uUU44NHlaTExPd2wxVnhvdVRU?=
 =?utf-8?B?SDdBRVROQ08rL2hpeTNMOWxxMlBHdVlnSTJGZVFoMDJzOWFzVjdpcXJkdW5q?=
 =?utf-8?B?NGpKSzVSbU5TL2xRQWZaMXNwa0lIS3I4WGV4N2VrZktiVzBEd1JNSDFEQ1po?=
 =?utf-8?B?My8yZkRKZzM1dUx0QWdUWVZxa0RLdUFyWWJEUVZsK2dsOERIYTFXUWNVRFZX?=
 =?utf-8?B?M1BsU0o0Z1owc0RkcmFoV1JRY2JLVXRxWFd5MWlqaXBuQy9ZMW5mNVo3U1Nn?=
 =?utf-8?B?S3R1RndNTkYrNTBZUVlvYW1XM0taMnRIVkFGU2d3RnJTQTlncXhNZ2Q0OStC?=
 =?utf-8?B?emlIK2pQT01zaitLb3dzbjU0ZjdBcDhRZTR5cVRUcGtGRS9lUXlkU0Nxekkr?=
 =?utf-8?B?WkpBYXlESU1XNjFQM3JsRlJPbzdKb3pwRHd5Z1VpQ09nRm1xRE5xVXFaTGxP?=
 =?utf-8?B?ZjVaRFpUdjFERDFlMk50Vm1LclFaNmxXRHdxN2ZUR081cXkzdDZaNHR4UXFE?=
 =?utf-8?B?M0xmQXViNE1hb2d4TG1jU0J3eGpYTlh4OEkrVDByblhFeHIvNldEMkRpKzVT?=
 =?utf-8?B?QiswWm9CdzBaK0hYUHpLOVBqenlxYkJpeWRBcllBVDVydXEyd2dTVnpqcTZl?=
 =?utf-8?B?NG9lOTdpSDNtTHRYY05yMVlodG85VFBLeWs2WkUxdytEaDRXaStITlcvM05m?=
 =?utf-8?B?eWo3OFdNU2EzeklaN1lMaDkyOVE2VFZ5TUhjZEYvYS8vcG5zNmRMajlrcnlN?=
 =?utf-8?B?MzIvODdKYndaZWV6blhMSEZwVVlEY2hsckpHbHVyODFsMUJ6ZlU5NDFsWWZ2?=
 =?utf-8?B?NTdzYzFOTlVxZ3VnMGJnR0E1SnBuZWZVdGZKZ3NwNUdJTHpLZmpIamtQN2xs?=
 =?utf-8?B?cDNtUVJLMzFNbGM5SGZIUDJ2cHlienUzUzBHT2g1UjBoT2c2V3JlTkxudGpr?=
 =?utf-8?B?UE9abTdMdys5VDRSTHJ2dGlLWXgzVDRHNXFCUm1UTllFM1FrYlBDbVh0R2hn?=
 =?utf-8?B?U25RcjQ5TWNManZJdXNzSFJTUHFMWFZVc04vZ2Ivd0JVMmlTTXVkdm8wbjVZ?=
 =?utf-8?B?WmhpRzRpUkJBaEFvdEsyNTIxbVJNaVN4WHFEbSsyZEtDbmtWbUswdVVqcTJN?=
 =?utf-8?B?M21hOEEvdTVLTjhzekRXVms4R2ZJN3NBeU02eTJLQTdzVUtzREh3S3Z4SGZi?=
 =?utf-8?B?a0FzbFF1S1YrQk15a1dwVzVuK3NCRmhYUCtlbUQ3azZkRDZmc0txOWV2RVh1?=
 =?utf-8?B?WGpQem5FOUt3TWhkR0pLMzJhb2JWTFJKWlkxSDdWQ1BaMUFuRlhXUTUwalIy?=
 =?utf-8?B?VDRYMVJXSVd4MkpqTjZaTDlUelFrU2tZVXBRVDAvaklzc1dVTTJSTUtOTlN0?=
 =?utf-8?B?ZDBXOUFDTlJZbzh4L2MwSzA0QThFN3pQdVRESjJvSHRkSlk1V01INDBkWHov?=
 =?utf-8?B?S3Y3MGZFV0RhR0VJN25PdFc3eVYwVlVmNWNMK0FtdUdFSWxaQ3BBTEZhZVRW?=
 =?utf-8?B?VFBMdDBNUXdtbllTd0tNa1U3QTRCOGhBYkd1aFBWM3kvbFFaSmVXL2Q3eWNw?=
 =?utf-8?B?djBicldzdURpYjJlbllqV3R2WW9zc2FqclhibEJGS0FUNk5sTGQrMzhNVzVG?=
 =?utf-8?B?Y2xKSVVyUk9Qei9oZi8wNGJVSC9wdm9DWCtFS0xnRDJ1amlpRTZtM1I3MFFm?=
 =?utf-8?B?aDdEZytJOTcrSjNoVFlRVER0S3pDMmhCQnhyY0p4ZTE2Znp3NVIxR0ZxNzcr?=
 =?utf-8?B?SVp5WmUyUWxnZTdGZFFvQm9KN1FqZzB3ZmU1ZnAxc1N5N2ZpNms4QT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e9a020f-c2a8-4a18-2c00-08dec53cc473
X-MS-Exchange-CrossTenant-AuthSource: AS1PR04MB9287.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 09:03:11.9992
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iHN/JOkW6UKGO3+h8OTEQ/y/qCY4Ku8bV0yBGB2DTNZIsh+MPke4ltHPK0HChR7t4JjY7FJul2rNKBRIYGSSlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMBPR04MB11786
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308129-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C50D9654677

i.MX93 SoC mediamix blk-ctrl contains one LDB_CTRL register and one LVDS
register which control video output through a LVDS interface.  Allow the
LVDS Display Bridge(LDB) child node and add the child node to example.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
 .../bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
index d828c2e82965..124f5c206ee3 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
@@ -26,6 +26,12 @@ properties:
   reg:
     maxItems: 1
 
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
   '#power-domain-cells':
     const: 1
 
@@ -92,6 +98,11 @@ properties:
       - compatible
       - ports
 
+  bridge@20:
+    type: object
+    $ref: /schemas/display/bridge/fsl,ldb.yaml#
+    unevaluatedProperties: false
+
 allOf:
   - if:
       properties:
@@ -112,6 +123,7 @@ allOf:
             - const: lcdif
             - const: isi
             - const: csi
+        bridge@20: false
   - if:
       properties:
         compatible:
@@ -163,6 +175,8 @@ examples:
                <&clk IMX93_CLK_MIPI_DSI_GATE>;
                clock-names = "apb", "axi", "nic", "disp", "cam",
                              "pxp", "lcdif", "isi", "csi", "dsi";
+      #address-cells = <1>;
+      #size-cells = <1>;
       #power-domain-cells = <1>;
 
       dpi-bridge {
@@ -190,4 +204,29 @@ examples:
           };
         };
       };
+
+      bridge@20 {
+        compatible = "fsl,imx93-ldb";
+        reg = <0x20 0x4>, <0x24 0x4>;
+        reg-names = "ldb", "lvds";
+        clocks = <&clk IMX93_CLK_LVDS_GATE>;
+        clock-names = "ldb";
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+            reg = <0>;
+
+            endpoint {
+              remote-endpoint = <&lcdif_to_ldb>;
+            };
+          };
+
+          port@1 {
+            reg = <1>;
+          };
+        };
+      };
     };

-- 
2.43.0



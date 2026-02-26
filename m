Return-Path: <devicetree+bounces-268771-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFTrNekooGlIfwQAu9opvQ
	(envelope-from <devicetree+bounces-268771-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:05:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B4B1A4C9A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:05:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A85B230A7808
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C8D4335547;
	Thu, 26 Feb 2026 11:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="qFKg7tLq"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011052.outbound.protection.outlook.com [52.101.70.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB9E335099;
	Thu, 26 Feb 2026 11:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772103783; cv=fail; b=IgLIv9C//4CzGTyw0XyqCd7a/YaD8UZ5GCxSNcQDe+UqdJ8X+gnEkJhWHO+th8dOmgUHGE8ddOYvaNiQ6phFYmoVMky9IQBgzGOhFf1Ohe5Y3A7MCiG0Ilxc1iD1f0lkuULVtPHp+x8LTVOB5aJ8fKxT/+ObtgzngCt6Bj3Q6kU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772103783; c=relaxed/simple;
	bh=s1gAtU06weceHFlv4eR/aHiBZYsXZRLgwZXwxLL2ALQ=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=nMX4Rf9fFRdy3BAVpPvR8WUWuo+hBTNVAVVgIhciBCfwk5yUzKDxsD5jTiK/JUc6S6ElZT+wGxJ5qahj3MbvpnR+9+rU1JXdxkUPoqfNihphh0/OsnMJXPxBQpZ2Yv1NTry1fd6LcDt6HrV+9HY4IfUq+LR40cHyKtAahqOoaO0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=qFKg7tLq; arc=fail smtp.client-ip=52.101.70.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ryxlqi7qwI48UDvRSOJu+aylWSOxQii+bdiC+gDx2HgbcaVUVxg9ZtZKAiwiHiNZBsAACsOTzlXlsy5fKh+7QPKs0CdVZgFlaPNeq8JPgd5XDIf24tNdCd9ZY7FR4aRwbDPK84/9wI5766Zp36WKhZvZsds+Snkt+OxzfHGo/y9B3/yGKSltOovyoxy/6ODuSbXKVxtdSK/b8ScyBLMHDPCn1miBmXwb44mP5CAVuxIDnZJouxtgjrqVHI81tR25UkfqNnsRguhjhW+3Vfvu0vBbsip6BZqxOrba9s55hk8GRJfattvr/uTTHk5Y7NLBQBEjWAmgUh8TUmYey6kntA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wadq2m+FmgXvrzGESbTc/1jxM8gXxmwbUbtOvbfuNBk=;
 b=JWlH1LocuJPIB3radzFOM895wGSBaPAo5FyvxPahC4Rwgc287nt8EgDHYq5t9Z8Y7xRlMjho1aS73z9P9rIhK2YRfRdxetpsot3SmxKkvtWDmwI+5Xe9jesNN/mKlsAjEkasPbtG1EHjVHxdl3DSdy7h6N6Q+rrAyg4GZH3wJeBrTQ1W4ylwJd9ejzn/2AgvlMcQl2deuGxwRuXSpElwxPeeLH+a2a4W4NIBeNJ5lvDN1ANWRtpt70I4FbXPBBBc+FhuvBw21c34fh7qOHz2qBhBEjWjIZbjiQyFA5+Ji4i7WAfp60m/PzYjTOgcK2qOgKwVfVkL6hPAkvcrLXeVQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wadq2m+FmgXvrzGESbTc/1jxM8gXxmwbUbtOvbfuNBk=;
 b=qFKg7tLq5+0BE6kpAcUqwy+1HgSgrXMZObiM8+8cP96pZj882dl5lhFt4MndAFr1ZdxDrMo/ONdoLb/K3YqjbMC/11v0G0dhlLH3sRt81tI/eLFooE3koKHdl4xT6+WmvZTFj1D3FHcIW6qnXwP5yRhm48bqVyVH3gS4iGzaCkvwijGqLjQPGJe4tlHNtiTlvSnCT4RWwmLJHfMLQ8u8lvUtUdiCdBLjNfub7PBV3WMEEiSn2jL8oGwFTAIqhral5kQ7VJOHuCz9gRbzgpf0T4YElScdLHphixd0fvCu1XXw/8n9JW5n2UmBSNKXCHgLOZrb9fbjQaLm3BLf5dBgnA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by PA6PR04MB11830.eurprd04.prod.outlook.com (2603:10a6:102:521::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.13; Thu, 26 Feb
 2026 11:02:59 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%7]) with mapi id 15.20.9632.017; Thu, 26 Feb 2026
 11:02:59 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Thu, 26 Feb 2026 19:04:16 +0800
Subject: [PATCH 2/2] ARM: dts: imx7ulp: Add CPU clock and OPP table support
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-imx7ulp-v1-2-3fd611ceb346@nxp.com>
References: <20260226-imx7ulp-v1-0-3fd611ceb346@nxp.com>
In-Reply-To: <20260226-imx7ulp-v1-0-3fd611ceb346@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, "A.s. Dong" <aisheng.dong@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: SI1PR02CA0002.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::16) To PAXPR04MB8459.eurprd04.prod.outlook.com
 (2603:10a6:102:1da::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8459:EE_|PA6PR04MB11830:EE_
X-MS-Office365-Filtering-Correlation-Id: c4c0c001-348e-4148-2145-08de75269a3c
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	dFbtixcTrcR0uKS9FJDc/+3D0lciGr6rvDe6jAWgggzUmBxd8XXxXqAsuvM4IvQBgquAgAqLSn/9YjOqNMGYzH8argrJFRlMIzdiQzpg9Cn7US9XpE009cdtj5F0I49qlG0lQOPv76ELGT6uplOmQk3AkIf9/EC5mrSkdbe33TZUi0+zL7MCfd6PKbnwk5w3CrJ2XE3Z54s6iRVD5272oZUwGLSSkTO6D8vf+vsQ9O8feRy2fmvYVcQ0s3tKwa5YAG2WEKdmnXhCC+092f2I6xtt2SF1ZUbmJ4vCJLMR9lhnigF2ZEdSlYRQqaHrUqk4ZmyUDxTvW1BQWBpuwRtqSTxaOLOPB9pJ+fG8pJRCZlI5uqbJS8GW39kr8XSxcEFbLkQhIX/RvqtMr6sfPTWnp8r0BVX/YSGSlGqwlG4GpaeN7M1NFQGAuGQPgEsK4AWIzqhBG3SGA/vOrtzf59njCGQWMpkGXvTCIrES6/ybO41vPwrrKOm5QSMNXwKoqt7tYV0kKM7xEKaOVLcY8ACwuRAzK05Nfyfnees31B/KIqTUtH/7LGeJw8tTPPEE08oZ+IF3mCEBwgvDQMyt3tw6oJJFw59+WgXd48X6KB0PozgPLhno/Gt7fzM0Zy0fBsSB2UyzS4GmCbIGHKo1CuTbcFlcvas/DJ1/89w4DdVU6JqnZfbeQjyDmN0/RBDIU1gsfXZ8fmpKOP3HHgP7D3z2gDJBHWUdHTjxVXqVrlgU0PFzrwYQQj4dMPRTZexdsNi3ZAXBvdrLTKSA0n496CEw1yxGgXXeBghFow+I4jmANeo=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VUI2My9WbjZZMVJYUVJMdUFWcCtFdEtJcXlOditydGhxOFh5Rml3aVMwMCtY?=
 =?utf-8?B?WmRoS3V2RWV5ZmhPbDNxOE1pV2srdDJFWXR2M2tnTmtkM3l2TkN2WklYR3Js?=
 =?utf-8?B?eUxDUVlDT3I5VUlURVNma2E4ZFpyYis2S01jWGVxUnJpcllxTTUzR0U3M1Bp?=
 =?utf-8?B?SlBvdC9mQWdMdExIYkN3N3JxR0dROC95a3pSd01BMTc3aHlyNFAwbVdmVVRh?=
 =?utf-8?B?K2dCMzdXeWtGQy9HLzV0b2I4SEdRd3loOWdkMFd6cFMxSWtmdXF5OFJHc3hk?=
 =?utf-8?B?NmhORTRSSzlnNWpzRDZzYkZ5dGQwTFNJaThJSzBIWk5QeDlJUjZoQ0ZVbHMy?=
 =?utf-8?B?M29MNkg3dXVJMVdvQXhoRjduNXhJMFE5THcrRVR4cmtJOGkzNlExSDIzano1?=
 =?utf-8?B?UngwOHlqaG96SXpCa0I0QWxoQVcyYkFBTUxwUFd4bXkzeDI5Y09OWitrMmVN?=
 =?utf-8?B?U21NVTNmL1pldlBBa2hhblFVVzVtUndCSUNaZENkSDJHbzY3ZllRY1JNQlo2?=
 =?utf-8?B?NXJ1NEFKM29jb0ZpTVRQRDZWcmdETXNUTk9tTGtzQmN3aEVBR0ZSdm1BdWw0?=
 =?utf-8?B?NnNlNHoraUQvblc0S05KZTB4YzRwOERvSXNnT0UvempzbmVCWW5yYU5IemtW?=
 =?utf-8?B?YlRvenowSTBqdUI2cTBjMS8vU0NOTU9hTVVYeWxsdFdwTEhxeFhUWmFGTkRE?=
 =?utf-8?B?eHlEVjhicG5sUE9Ud1VyQmNGZ09CRVlrQndJRUtCaG9rSnQ1VjNkQkYvdTgy?=
 =?utf-8?B?bzhtWndaQWdLR2pmSU80eEx6MS9abkNLN1FMdFRka0RCSGNZNjBzNTJlYzIr?=
 =?utf-8?B?ckVzTGw3bDNtTkR6NlppYTBnS0w3TjhERlZJVXp6M0NKeUJtZndXTDJsOGdM?=
 =?utf-8?B?ZWNGK3pLdUNwNVdUUFFrVmFRMXdZTU9QZ3Ryd1Y1MngzTFpPd29DR2N2YXQ2?=
 =?utf-8?B?djhZdXFwZWJFZGhUT0xTOERLcVBuQVpGQjNoeHJHN3NjZTVsOWdUcW5yMjZE?=
 =?utf-8?B?SktqQjhBR2tTMHhOakNqNCtMVGFlcmt6VXhUYmppM3Z4RVJUME5vZHFEb2hC?=
 =?utf-8?B?N0hlbE9LRXRVVmZEeWEyVW1mV3ZrTnJhUjQ1R3VoN3BPczlvc2ZhdjlsME1D?=
 =?utf-8?B?Y2JMWDdRaWQxckZKcStlTGsvQ0VsYVdqZXFZQTJZVm1SMDVDYUxPWnBFajZh?=
 =?utf-8?B?R3MxQzF4TXE3N2JTQ3R2c2lYOGFZOXBHMnNYUzFEK0tUQWlDWHNObk1acmRa?=
 =?utf-8?B?ZDVqZTR5OENVL3ZaOVE5dzBUY3l4TzZMY3NUMmwzb0VFdUYybG5HSEcrNzlP?=
 =?utf-8?B?RjljOWxIa0lBdnd1eDB0NGYrU1V3Nm40Y0Y0RlI0cGJjVlZ6ZG9FdEZNVDUr?=
 =?utf-8?B?MTAzVS9kZHYveGcwV2xCOWlBZ2x1THZlQ2VkVW1OaWdUcG5ZRHgvanF0MjJL?=
 =?utf-8?B?YXF6MGUwd1FUNTN0ZVVZb0tnbi8wVkVMZ1ZObVdOS2hxVjhTdVc2UkZvMkl4?=
 =?utf-8?B?cUh2UFV4Wm9XSlZjSTlLNlJvM2c2Z3R4TUdBUVJ3MEZublE2SzZuUkZMbkZI?=
 =?utf-8?B?MVRkTVZGTzcrNVRyL1pKTlhzSUpUOXdoVHc2c0ZIbithVmJOU2oxek1HVUxw?=
 =?utf-8?B?aWZ0OXo3Z29FaTgzR2g1bFlPcnVDQlVPNlZ0ck9SVklGTEpTU0U5OEdaY3R0?=
 =?utf-8?B?b25rWDhGN0ZwUnNGOGZaNGFuUlNZa0JRWlAzYXVQV1BpUlBSbTBmSEZZdzBw?=
 =?utf-8?B?dkloQkZQVzNLcFBOQ0R0VmJTUFdCeUpValJJR1BHZitjRHlZOFRpcXRkNUVv?=
 =?utf-8?B?UldzVFZlSnovYmFtUUpWY0dwWGw0NFlHeFlnZHp3d21jTFBVWmVLK2xDV1RV?=
 =?utf-8?B?MlFQRWZpNW5HNkRlTHJocUoxRnRyeElUVkp2V3NGNHRFZXQzL0NQZCs4bEp6?=
 =?utf-8?B?VjFOa292eUNOVm0wZ1R5VDBEcXgxTzVGNDBRYllFbU0vL2hLMGhFcEJDNnE5?=
 =?utf-8?B?ZE9HRzhIS1VKSG9nNjBqTXNHVUVYdHhLRWIvdkhZdXFqVlBGcVBCT25uK01i?=
 =?utf-8?B?dkEyY2xESys3eG1DcTA1R0NFUEcvdmgvbmo4YzlWdDR2blF2UzNSQVhhVTJR?=
 =?utf-8?B?SGt4eVNDUVRUajdkVmR2OWw2a3JFb0xhTndiVnNPL2NUK1VRejBLQ293VVlz?=
 =?utf-8?B?VVJXbDR3VVh5dVlGclc3dFB5c0FtZGE5ZzF4bjRraEVVWmw0ZlE2UWsyS3Mz?=
 =?utf-8?B?NFIvNWg1ejNxOVhhaFBjYkFJZ2ZHTnB2ai8rT09Uc3R4RWZucEwxR1lWdTFr?=
 =?utf-8?B?NzEyRjkxcXFaMVdaVk9JT3dkc2txWVkxU2N2ZUVOYzM3NkJScXZ4Zz09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4c0c001-348e-4148-2145-08de75269a3c
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 11:02:59.1735
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vwwXiO8IhtDtl8JLi1PCRt982bbW2MdBgqtRl8x9eOWDDjKTsG4yP2xjkhseO75t9s0B0SFsZdjs8wUV2OBUSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR04MB11830
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268771-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peng.fan@oss.nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NXP1.onmicrosoft.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: 59B4B1A4C9A
X-Rspamd-Action: no action

From: Peng Fan <peng.fan@nxp.com>

Add missing CPU clock definitions and operating-points-v2 table for the
Cortex-A7 on i.MX7ULP to enable proper CPU frequency scaling and
integration with the cpufreq/OPP frameworks.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi b/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
index 880b9a4f32b0846a773dbf9ad30715c84ac2fda6..1355feda1aa72d88dcf56033dfdeaae631c108f8 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7ulp.dtsi
@@ -41,6 +41,34 @@ cpu0: cpu@f00 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			reg = <0xf00>;
+			clocks = <&smc1 IMX7ULP_CLK_ARM>,
+				 <&scg1 IMX7ULP_CLK_CORE>,
+				 <&scg1 IMX7ULP_CLK_SYS_SEL>,
+				 <&scg1 IMX7ULP_CLK_HSRUN_CORE>,
+				 <&scg1 IMX7ULP_CLK_HSRUN_SYS_SEL>,
+				 <&scg1 IMX7ULP_CLK_FIRC>;
+			clock-names = "arm", "core", "scs_sel",
+				      "hsrun_core", "hsrun_scs_sel",
+				      "firc";
+			operating-points-v2 = <&cpu0_opp_table>;
+		};
+	};
+
+	cpu0_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-500210000 {
+			opp-hz = /bits/ 64 <500210000>;
+			opp-microvolt = <1025000>;
+			clock-latency-ns = <150000>;
+			opp-suspend;
+		};
+
+		opp-720000000 {
+			opp-hz = /bits/ 64 <720000000>;
+			opp-microvolt = <1125000>;
+			clock-latency-ns = <150000>;
 		};
 	};
 

-- 
2.37.1



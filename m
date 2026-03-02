Return-Path: <devicetree+bounces-270126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPR+JSO7pWnNFQAAu9opvQ
	(envelope-from <devicetree+bounces-270126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:30:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 373721DCD2F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:30:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A3BA30C4404
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B7C7308F3B;
	Mon,  2 Mar 2026 16:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="k9ev6Q5E"
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11011046.outbound.protection.outlook.com [40.107.130.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332D53033DE;
	Mon,  2 Mar 2026 16:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.130.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772468422; cv=fail; b=NK7B80GF8IZzzm8G/B43eI5GbVoYSGU58k6CfOnemdsuJjoy3aUyDVZnD0+d99vTxSaodPl7IxH7a7rr5KlXWjz1rCjvzOrTH65D0QUoayXS5mms5/SOKkAcyJp7dl53+tn5RD/6NDezELw+t4mJ4PV1fftjwVvnOvtIYbGVJWI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772468422; c=relaxed/simple;
	bh=oN4JJRJ+Y/Ca7mu4CxiF+rgPU//lT5vB0+NOCCVSTfA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kouijvBcg5ZCIdOaI5ISpyIrGFI9dbd6TMIpJkPuKaV3sioBGTiQD7UAATGx6Q06xV9D3+nllyhLUDF5SPHrF81k3jLq6w3rl3l33ORGhdUOBE9SrjHPczzYD24Dnzf0+u+aZSiJaDckeXnQaWrPTg9qerA3FbFB+4KWeU9/KoA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=k9ev6Q5E; arc=fail smtp.client-ip=40.107.130.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P2rFIMrpOy2JCd+lTEgI/tXF5vKfOYilnGt1IXr9IOVgL8PfgMQ9R8L8G04jET8bSmvMmm4yMpsXbBuacXV4LXxR/O5fWR/J76B3tgJ3DA7mCafCs2HtqqRDtw28Iq+pdLt81b3vA08foSyWxO06ChdYI+2UDFyltBnemeQKVHXnPgxgf7QcW7wGcjpVtTUEk1Vj5jZUB7MVAzwhG9KhBYN2wke4BQVIZEo5hnfineIN4UwZm5T/+y4IRvkORqHiPvXQODzSBN6o5gXXFGY+GZqLNQk/Km+J/3PqNm1OALkFt+3uOQr7Jt+fjyvEfy2YJFDICPUHm74xwmg3vSLoSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8JCJa0yEeoLvyP+X9+bEDXoBSqs7ffrjKi8kwS2rflA=;
 b=K/U4mrccG1xV4iyKloahY3jaEDTFYDnej10d94VwAPgy3dFxLEnKkqJY1yUxWtljhRKPb/Oo/JQA9caoSk2LNDKi8OECUhHSfePW3bIyvf8hY8NRG/9xai8G9huC5ukwMbM2d7vYwYffKJNMw27zZgbOg4QmDQNVLaO+lZKrFIgwvHCvYIkElhEn3Sz6wwobpg+cKX5ZzBBcZiMBeJNJMBPiQC5q95tK/BOW5NnZ5I4kTBadeUOfzAYqZfTvD64NYmILhSgprdJ9ubiigd++snOUxr67lHpAO+wf1lbnRKlGJBZ3GIWVdz4OELJXwYTmy8X+XEU1eo7EfgvmMA28KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8JCJa0yEeoLvyP+X9+bEDXoBSqs7ffrjKi8kwS2rflA=;
 b=k9ev6Q5EAikKSAzQwYAfNvsPgV0uBdeEu3BZzmU8G1kXb7HhytNHtAfPh/Tu3NrBTdSQTmCvH/KNdXCOKp6kyQXIKMs7/P4blkTdXWW5IeoX1jkLENrQTJqbKGYavJ21qaPxsLOdsS0BSKsN+TbiTjPClJF47UF7i/eod/wWbJz9JG7nufslDnPrzXq9AL629NBu2UF9gFgDkF9eqeCVTvDBIAapGoIihN72IaK6eTKDFLh8466BPS1TxE0l5i5VP+6oNh/E64ZpgFRHyAEGMblXKKw7hyLYan1t8Wrlpx9L0a7Nmeay/Gx6jNItzbOPb4dx4KwSKzlVPiCxZsAzZg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by DB9PR04MB9449.eurprd04.prod.outlook.com (2603:10a6:10:36a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.21; Mon, 2 Mar
 2026 16:20:14 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 16:20:14 +0000
From: Frank Li <Frank.Li@nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	Sherry Sun <sherry.sun@nxp.com>
Cc: Frank Li <Frank.Li@nxp.com>,
	imx@lists.linux.dev,
	kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: imx91-11x11-evk: Add usdhc3 for SDIO WiFi support
Date: Mon,  2 Mar 2026 11:19:58 -0500
Message-ID: <177246839437.2067388.4237977998427001261.b4-ty@nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260205100647.3745669-1-sherry.sun@nxp.com>
References: <20260205100647.3745669-1-sherry.sun@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR05CA0048.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::23) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|DB9PR04MB9449:EE_
X-MS-Office365-Filtering-Correlation-Id: c7ce0772-d5bb-4f07-c65c-08de787795a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|19092799006|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	nexvE8ueUqp0VBnzqlojcDzMZTaGxlKGvJH16qpoAKnZPjnuLaZGBWpNaGUEdMCFJyhEjaoHp8/aD3Q83k6tOCTWbyMD1jSlF9peYjzgAxZIisofA8cSsWU3bZgSwmu5OMRIjcYMgY9JG9UZdlKpg+FO7W+R+FbtNeZ/XhlLfmjeb2r+aOOz8akBU+6szTaSKdTwiGaRJGu4+j00q0pdmIhEaGeFyq7Cxg8nXlF9ML9uFLT9vWVGTLwsSA++PgeF5Pzk4A2RLrZOUH+X1CYu9XkDd4a+fjyUtZdDdC/yLZfYiV0TWyZ5xwg4DYjaAR5J4BMPGTpmWZAG6QLQepWhnXMM6mQeRSBcPjBxGzqB3FgjOEC2YeGVzeousN+WX27hYhKiRt0hCRHXP0kp04efik28YJL0o9hFJv3BOj1MD2D4nCXuwl2ZTiybqXaxxBDCL26jdfC5aj/krpgBneRavLzsK+K1BFTrUGjDY8DIBz5KVMShhNcXcnHRQonAAgL4E2djGkZW5tiuuEzisFzRtfuFjeXZisNcKe3Re6MSgywIj0ZIDFGNGWtRLJ4m3F19ZXN9mTTv/AlU15RkY0xpeLK8Y7jgTzh3VOKr9Q/S0BxmuiMTWEc15zZxIl+qJ1Mts7SfloeuNSQLlpO50sSkTingvZlw5nNyPDIMbEdHoxg8KhJ/XQN50iUQi3SDzRdCj+SgHSHtNtC11Pq47KFmqQ3nSFtuKkvwl5xV5Lg1uvWAY+ubJqtQGpQXp4VGwZXzZn2mI55Nt7w0XsE5EEPJtvI43iglXZ52yjDulMoIiRQ=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(19092799006)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?K1ovZmRDbmZ6VnkySnNEbzA4eHJ6SUVYd3FheDUwTkNMZEVXRTVLRE90bXFW?=
 =?utf-8?B?TFV2NEdONFM4SGZjZHFyS1RwM1U5d0FGQWJVTWV6YklkWXJuaDY2RGt4VHBy?=
 =?utf-8?B?Y21QNDJZcXRjNVBlSWNxNXloQWNDcEl2em80QmFtTDlxVU9raDlLS1o5dnZK?=
 =?utf-8?B?ZDlsUWlYV2tJOTNURVIrcTJhKzl1K05DVUZybkttbDFXU1Z4aTg3Wk9oMXZj?=
 =?utf-8?B?eXJVNFJOTjFmRTY1VW84Tlpjd25rZ2ZSYUVKajV4QjA0UlV4cXdSRXJDSjY5?=
 =?utf-8?B?SDZGTkF6ZnFZbE0xSS9JZzVNZWkvU1BPTXBiMVBMYnpxTFRjMkpzTVMwMFZm?=
 =?utf-8?B?ZjJVaDJYa3dnNWRTdG5xOWsyRXoxeFVCQ01UUVYwaDhTNDNhNnkwZ0J6cXgv?=
 =?utf-8?B?azdqcThOcDRRdjZQZ29LZzl5NXArWGo0QytvRldwUzBhUXZxQXhlZVg0dzNV?=
 =?utf-8?B?Ry9jSWN1Qm9XZzJOR0ZPS1VEUERNY1M4TDJBNncyK29qQitRcnpWMldraVdK?=
 =?utf-8?B?V0ZLdGJDQXRXRFpUUGlIWFplMnphVk9VWlFjSEpsWHcwZU1BQmdoWnQ4ZjZu?=
 =?utf-8?B?THIwaXI0QmFiOGxtdW50eUsxMlhLbGZVd0s2bzB3cC9YenBhS3dsL1FyRU9N?=
 =?utf-8?B?RkpZakFydWMya2RLT2pQaXVHVnZyVlFtcG9MTXBHZHpmcUJCVm9mVFNINnZM?=
 =?utf-8?B?TnFBbUdhS2RnSTkvWC9MczlKUk5tR2RpZ0l2NldqbUE1TUZwM05pN3FibkhO?=
 =?utf-8?B?VklZR0R4ZTJSQWVTV2U2elJnYkwxQzJCUENDNm0wa0dTMXAybUNWV3hyNUdZ?=
 =?utf-8?B?cUdOaGpKTVdsR1lEMUhidExxMFY2UmNaTndHc25kU3lOcUwyeDRQNUZRNng4?=
 =?utf-8?B?emdHRjBoeVhzeUFHUGNVSXE3MmZDR3I4ajZ5U2hMVWlGWlcydmRFSXZ2RG51?=
 =?utf-8?B?QkwvRXpGU2NrVlBKZ2Y1RVNCNmVkVzAwaVUxMEQxZy9vVVE2S0RyWStYd3Vp?=
 =?utf-8?B?NUxQT2x5ZFUxNGwwV3pXcFl6L2JyMVZuNXZndTVZTERRTHg2ak45NUpNL1RN?=
 =?utf-8?B?dzFvUnpJQ21vVUx0cXBJbGZ2V2xLYXdMSzdaeUNRdEJEQlArSVJuQXRibVJ6?=
 =?utf-8?B?a3Z5aS83cnh2REk1ZXVUUFNLcjFPdVhzMEdJdzZOWmdRTmErTDNSVURHYytD?=
 =?utf-8?B?UTNiaDQ0d3R0ZG44QzlBaHQ4aFB0RGxsaGdhdStLa3ZPSU5VSko1ZC9Qa2or?=
 =?utf-8?B?NTRrUWlSUkRValdtTWd2TmxlaWpOL2xGZEdhNkh4SUVpNVdYMTRrQnJVMDU3?=
 =?utf-8?B?cUxaUUZjbW5xNzcyZEVzdy8vanVmeE9BUTUyN1JET2E2dW55WjZzQ283YXEr?=
 =?utf-8?B?WnNqRGlXL0RHbGw1NkM1R3hQSU9JZzlmMnE5ZnNoWE1WdUtFTzYvUUx2VVMr?=
 =?utf-8?B?eGRwU0hRYTFFeUNlbnB4UEY3d2RZRC9IaVlhTXNBMll1TlNlUFk1MXkwY2Ux?=
 =?utf-8?B?NW0rMGhNZTM3WnZWaEIwZElJeHYzSkc0enhaSDZiUjV2V0MxbjhGS2EzYkQw?=
 =?utf-8?B?VERqOUVjRTVMV0s4YlpvZUp5dWhsYXA5bzFaWm5ZbWd2ZnAzdEZLSHFNOE1D?=
 =?utf-8?B?QVg4Zk1ucG11Q0Mzc25oWHhCU1dQNXlMR3dWMWhYYVlGVk90UjkyS0ErTldT?=
 =?utf-8?B?SHllK1o0aDZCdnVOdzJlcy9zaUVUbTR3MTRMUjJzV0YzZnJscnl5VWRTUXlZ?=
 =?utf-8?B?R0ZUanlkOGJKM0VnQVYyZU1NdEpIY0ZOdjB2cjBSQ3oycVorSmVNSkU3aEM2?=
 =?utf-8?B?MkpUcEx4MFMvNnRJUmh1OVBkQjRVOU5NckJXQWJ5dXRwTTNIRlFzcUNFYzg2?=
 =?utf-8?B?b1U3TXBEWkdhZVN1M2hJQ1Z1WE9oNFZGZFVhYVU0RkpLaVVrdHNZblMwaDJu?=
 =?utf-8?B?SHUwazJJUWJhU2pmUzY5SnZrQ29jWkZhMmc1c0ttdnZFdWttOHF1c3lXZkxE?=
 =?utf-8?B?V3JuNFpBYmxjdkJlRkFJSnJYWEMya3RsMWpmcm5LOGo1aFBDWDBWdmdSazRD?=
 =?utf-8?B?cWN0VmFteUpBWWF2NkRCRVJ1Y1N0M0J3RlBqa2tyb211dit6NTlxazhHK1VJ?=
 =?utf-8?B?b1JHWXE1eG93VmhoSmV6UllZaWdqV0FkaStSckg2cWV3Q2hDekRKYUlMbXdw?=
 =?utf-8?B?RjRISFh2ZDBLUEdCTm1JelN3TXBKZjVVbytaTE9kbjVjRFE0aElJWXdlalJQ?=
 =?utf-8?B?ODQ5OUUwTkVVRGVIRUZMZnhUNnpqU1JNMTRGQlV5VUhhQlMwaTVHWlF3TmdZ?=
 =?utf-8?B?RVdiV2dmc3Z3d1BibWM2QXZmeE93cXdMZSs0TjlZd0ZuS0V4REpnUT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7ce0772-d5bb-4f07-c65c-08de787795a7
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 16:20:14.6094
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qgNRd+/a0AhoslAc+loqwpKWo+xAiambAO7VDxJ9WHQ72Abs7Pj2RKQQflueP8vXpNxPm6YnKYvsuJBg4cA1Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9449
X-Rspamd-Queue-Id: 373721DCD2F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270126-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,nxp.com:email,nxp.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Thu, 05 Feb 2026 18:06:47 +0800, Sherry Sun wrote:
> Add usdhc3 to support M.2 SDIO WiFi on i.MX91 11x11 EVK board.
> 
> 

Applied, thanks!

[1/1] arm64: dts: imx91-11x11-evk: Add usdhc3 for SDIO WiFi support
      (no commit info)

Best regards,
--
Frank Li <Frank.Li@nxp.com>


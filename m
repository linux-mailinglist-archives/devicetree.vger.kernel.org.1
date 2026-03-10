Return-Path: <devicetree+bounces-273668-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QC5SJklWsGkJiQIAu9opvQ
	(envelope-from <devicetree+bounces-273668-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:35:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F24B255AA4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 75CEE30B46B1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF8F63D8121;
	Tue, 10 Mar 2026 17:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=genexis.eu header.i=@genexis.eu header.b="BGRvMg4f"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11020135.outbound.protection.outlook.com [52.101.84.135])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645783D8119
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.135
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773164005; cv=fail; b=UxLWCgFyFF0oCEeauSQTPOUVRcFO3nBPwqdaU8DvYny1gsP1fCA0zHvupFms/wPT+VtSQd4yipjGD4KcriDGdFfTtC6C7bU32JYpkoPngiXpO/m5N7/psltkZLyenZPN0TZ5LrbwTDgHvX1ie0NC1llMKSIJJ6I4oJabCAtEeqE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773164005; c=relaxed/simple;
	bh=LcNRb94MpIKefnS+XABImdTDpMXBjlmJrMtAZsvs8DI=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=nZD4tW+37lGdBxuAPLGEbm/HeqrfOgBhPlkTFUB6SdiSWFtOkzNeC9yV+Qs4u18p03/zhxtQRfM0hId/cCYVBYe/fXJv91HcYL8bC9E1YrI53oAv9hMMuO6jxLgMBfAI2W24V86pGpUS1pTwsUZJc/5cYvMSGA+nXXNPTazNhSs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=genexis.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=genexis.eu header.i=@genexis.eu header.b=BGRvMg4f; arc=fail smtp.client-ip=52.101.84.135
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=genexis.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JmCO1+T/fVM6PAU5hxcJnVWyjV0NcxaCHv1zfS8d9387XDnxyhqNOXUWvbsEe2jAJlD6ODnqo9r9pRe5N5Iuip1WPGUs8eOseLTO7ZNuzJ3WixJo28InC88jNW2twa0IaXcoWGlTEvWZO7Ugyqrkbf/NtZ02Tm/rFKx5MPgDvgUXdyUed8ieDC3AlueBMnkMRGnmLiOZaqsGAELiCVXgkZSEk3K9LdXy5YV8RVEaL3r8Pyk84i6fUY48rjyPya/QIeTw2wYIt+sn0q1TrDUbxf2sYyNs7SHdzkFMM5T3gu1cAe+oyMeHBVYxaL0/P3nHoCx8MwIKenvu3u3G5rxa/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t9hce3KHYUSgUGLwjA7DtgVIy+dhi5JhmAHFEJLhTf4=;
 b=LsmYPBLCbojzX997UKq+7XOUtTBho9xr45Ob0TRzEtlsIYnUS8v7uzv07qXwmJDl/5Xg0jjFFJBhyyqEmCs05S2X1zQxF/HIe2ZEl5m+axt6PBgdoN/fPeAkIhQQUXBu+pyw9003DzUf/mweY3SZgcXUo5GdhgU0wqXwaQjN61zZ0MWbCEn1thV1Q1QLmnapJx0TqbJ62YmhK0blaongjhJO4qabYFKAUuH3eiHhZnO0IBICZrh5lkFdGNdXj+r6kI9jcdqV9S7tq16Lmeb1oksMi1qfT2OXkdvDliRtsMAo45NUuZzXjlTKH18y/1/h/6jUcmvG3G5KPv0eZezTWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=genexis.eu;
 dkim=pass header.d=genexis.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=genexis.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t9hce3KHYUSgUGLwjA7DtgVIy+dhi5JhmAHFEJLhTf4=;
 b=BGRvMg4fDnIf3TIJa3Vf3FzpO/2BDhLtc7PFmQ01m4Ya1oT7ONm1zySht30hbWZDBvvrY0Tttmzhhxdo7EymVIuUFNE/qPGeW1GvslyeHBAmmYvpFok8wnHHsP2VuH1nSrDJV6BJo2l4/GpGfAVHuOXmaRDDXVXT3LufZGTuSmtxFwRYwRV9uZX4lxmzk2O4OcN+L7Q0ZcpCxTFii/5ngM+qHZDFPxHZ1Q+3vj7+s9QYJt4MODRM8b7iJq4OuKgstjMCrBjhTK6XSMPxllQRBpNmwkmxFnppi/MLU7WtJSLwFIb8v4o3AJVRLSeUpF6uupiEDqNySsz9Loeh0vkwzg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=genexis.eu;
Received: from DB9PR08MB6697.eurprd08.prod.outlook.com (2603:10a6:10:2ad::14)
 by DU2PR08MB10068.eurprd08.prod.outlook.com (2603:10a6:10:490::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.25; Tue, 10 Mar
 2026 17:33:20 +0000
Received: from DB9PR08MB6697.eurprd08.prod.outlook.com
 ([fe80::bdec:3e95:6614:441f]) by DB9PR08MB6697.eurprd08.prod.outlook.com
 ([fe80::bdec:3e95:6614:441f%7]) with mapi id 15.20.9678.024; Tue, 10 Mar 2026
 17:33:20 +0000
Message-ID: <46cefc22-947e-48da-8ec3-12654227d562@genexis.eu>
Date: Tue, 10 Mar 2026 18:33:19 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: airoha: en7581: Add switch node to to
 EN7581 SoC
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
References: <20260310-airoha-7581-dsa-switch-v2-1-852692ba68b8@kernel.org>
Content-Language: en-US
From: Benjamin Larsson <benjamin.larsson@genexis.eu>
In-Reply-To: <20260310-airoha-7581-dsa-switch-v2-1-852692ba68b8@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: GV2PEPF0002398E.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::193) To DB9PR08MB6697.eurprd08.prod.outlook.com
 (2603:10a6:10:2ad::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR08MB6697:EE_|DU2PR08MB10068:EE_
X-MS-Office365-Filtering-Correlation-Id: 089e6162-9ec9-4610-104f-08de7ecb1f8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|22082099003|56012099003|18002099003|7053199007;
X-Microsoft-Antispam-Message-Info:
	NYvV4sycHjKCnX4EZ6hBJ0vkUji7zqal711cxEqWrrxp/rq86J6Xavq0QmtDczCr2kp1IRNOnFrcSUUBncyIK6S1si5Fpl7fmw7Lz2aQRPHH3bD8HW4MuTP2nwtOUJxhL0jo2dSTimJwLb8wUl9P6tPE0+sAqPEXv4WvsVfmPENbvVbDzeGx1A4C6l8GYP9Yc0B2VZGqSngVQ1GrkkvmEMbqvhE8Bbi7WRlusjQajcYE/Opc7V4DF/XyJwGcXQrQunGQkzef8dbifnxsR2dlSLdDtPJNzdTXt7F57qRnfOl878VZEaBvP334C9xV6Z2Tp1PIRpNk38ky6A986oSiRcZqJak8qerLnFmh01NSwCtqAIYLnJsMu+EapFUi5/atM5lXlKl0joqgG8MBhpoavn1fD4vW0bvFSIL4BHzvxzGpiENQvMbEqbtGCARM98vyK9wYE8IU+pC6ewv/yQAkZn/mmgER7kDVbkrXmiaI4K7e9Yyu6AcEYZiFXKNhAGhm9eKON77mx5mJeSzoutKBCgwiEPPRcoKGc9bs2bwojqmx6AWwxgZIFeEo3/4sm56zkRIAXmu4+uLWO+mIocWGKlMWR9bZMdmInvT+6vtZY4PIw4aw/Kf0Qzaxc1n5eTkocyLA0VLxb5DZ2iM7PtiGpxi+k2qn+Agr1VMPrIffmqbcBbrJIQRQd5LaM9WrnKoN
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR08MB6697.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(22082099003)(56012099003)(18002099003)(7053199007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NzhvbERYVFVHN2huK1B2YU9VZlM4Ym9SZjBjTWhNeFVNSUFWS0E3Uy9xTHpx?=
 =?utf-8?B?M1dydDlXcTByVStpYk1sWDlYOFRMZ2pSYUhPeTBHYVV0Qk5pWG9ndGlQR1ZT?=
 =?utf-8?B?Zko1Z0lHYzh6Wk5XcVpBYWV2TVJCYk1McDNtSGhLV1JxU09JY3k1cU9wckZH?=
 =?utf-8?B?OCtCaFMzNldibnJiSXQxcTNJdjdyZzhyWklXRVVyLzVIL011VHFCQlVKZjd1?=
 =?utf-8?B?aFBhdWdxWGFSdU5xN1hrRTBGa0xaeUpnQlNDbzMrWmxWcWRweGkycXRBdGZu?=
 =?utf-8?B?dTd4dG5vdThrVUZ0WGFKbmNMekhKTU0waEFWa3NhRmduY3ZVVlpjMkFFNWVE?=
 =?utf-8?B?RGp2Nk1MWlBRZEhHbGFlYWxkdDh4OHhRZXFqVHViaFlxUGxQcWVqb2V0eVV3?=
 =?utf-8?B?SjRwRHExdldIUzlzUUZxMjROL1BjamxQaitpbW5pZlBxVkh2bkllOENIbUw5?=
 =?utf-8?B?dDRBS29OZ2RWT0FLQjc5aG5sWnNlNC9uMXlMQnBudmJDYUlRODM3YnlEQ1NL?=
 =?utf-8?B?R0o1Smo5eW03eTJ0S2NNU1hLbFhEdTcwQTVmcjNXYlF6NlA1bFRzNmJzeGdy?=
 =?utf-8?B?ei8rOHUwdXNaREczSFZOSnluSDFyR3FnTEtvMEswU1dsSW1uanNaZ0NiK0pp?=
 =?utf-8?B?SU8wcUUrdG8wQmhaTENNYWdrZXpBdzZNVUdIUDBuMUc0K20vYW1HTWR4TjRu?=
 =?utf-8?B?QXN3RTdETjRZRVgwbFd6YlRFUmZPS1dxNE0vR3VEMmsvNEJubWxvQ2pTeDZM?=
 =?utf-8?B?TlRKalZ3dEtSSFUvenVnU2x4M2FOYy9xZEUreXNHTmZWWFlwbjNLdHloTmFC?=
 =?utf-8?B?djRRM3Q3eFdzd3RSYXlLVnZTUDZYUFphb1pWRWhjdnVnR0NhRlNpSFZpWDg5?=
 =?utf-8?B?UG9MSlZtZ1Y5S1ZZdGFwYlpSU2dsc2NxTnB2YXlibnAvQXMzSDI4NzJ4bWhY?=
 =?utf-8?B?bEZxYTJoRk1xR0hMRWhtcjlKampZMEtPTlBnWkN2a0doRmFDWllqSlF2N0o1?=
 =?utf-8?B?OXB4YUZIYmcwTUhwM3dDeGNKWU92dGtqYTFkVXZXN0Zhb2ZyeDBTenJCWFVa?=
 =?utf-8?B?enVKaHVEQ05wMGlXeU1kZjZuanQ5dFA1RXdQRjBJRHpHRzhFNU53WmZBNEZh?=
 =?utf-8?B?Rm1mTzNaeWUrY3g3TGJMMHNJdnM0SlZrbHlGVVNlZm80UnJYdXBOeWlPNFRv?=
 =?utf-8?B?djdQMTVodzNLelZ2T01NTGZhVXIzTlBrMTEwQ211TGhVRExZN2N5ekxaa3hU?=
 =?utf-8?B?djZiYXZjVlVlNDg4R0FSbFU1NlhDWFpMemJrSmxuRyttUmVpKytUeFA3bnJV?=
 =?utf-8?B?K3c2TUVUcXNtRitMcFBLU3VNdWVIbUtQcVBCYTc4RWZhOFZ5VWpsSjFHU1Iy?=
 =?utf-8?B?UHVnamtIY25tVDd5RE9HVDJ2bit2R3RSUWxpcWJidVRsako5emUxNXFEbnl5?=
 =?utf-8?B?RTNUbGlRcFRkU2M1NXpsTzduUUF3QWhkVDg5d0NzMWVCMVRaZ3M2ZTRJL2E2?=
 =?utf-8?B?bmphd0JNaUJiZ2xIa29OdkxmUlIraW0yL3IvM2Z4Z0RNTXJkR0R1OVZLTTY5?=
 =?utf-8?B?U1V6MUE0OWd1dmppRHl6cVZseVFIVk1GYkU5WmhVVDBKUTBkajYrN2k4ZERW?=
 =?utf-8?B?b2hlVkoyenFMSUVMMGI4NEhES2xyWm1OK1hDbUFvaC85bnhFTjlwZkRHM0FU?=
 =?utf-8?B?Q2N1aGtmN2MzWXBuenplMjRHOHVvMitqNVBMd0pJRzZWblQ5c2RZWmh6cVVE?=
 =?utf-8?B?QytoYTE2YzZSOXdJcGI2dFF1TTcvdUZwc29ZSmhTbFFheWwxQmsxdXFkclBv?=
 =?utf-8?B?VkpHcWg4cmlBeDJWeE9iOU41Y3lpMC91MDdQMm1jSlR0WWIxWURieE9MZXN5?=
 =?utf-8?B?ZkQ0bXBoc2ZEbGsxbnVUQ3hRdDFFNUdtTGdzaDZjUllZQytqeU9ibjhYcmk5?=
 =?utf-8?B?YzZBYVNEQWpCRXVXcGxmQmdYenVOVm52QkJKN2VHNlcrZ2VvSTdTaWpvM3Ew?=
 =?utf-8?B?VU0yb0dURzNnN0FpMmRJUHBsNUhVVEdPWW0zYVRtbU8wMWduMXY4MWwxQURB?=
 =?utf-8?B?RjR1eU90OW9nYjBJczZpeVhhRlZDWnkxMnNBSkJzQjY1am5GZThVWDVGd3BP?=
 =?utf-8?B?Q25BWkM2NlVrdU11cWI4Q1VyL2hhU3FUMVJBY3lHd2xTcDRjVTZzYnRXcU5x?=
 =?utf-8?B?cjZXd3c4aXBScFZoQjl5VzVObGpmVEd3SVFNeG1KcktnbWJzdDkrWlpRbk5N?=
 =?utf-8?B?Ty8vb0IxK0NVMW1lQ0VtbFp5cFVaSCt0RXpQMjZwcGt1TXowR0dtWGZQQk9p?=
 =?utf-8?B?QWxWNVRNdExtQnRBbnd1Q1RSd3VZL1RleEk3MzZWb2RxZkltVmorcll2cVZ6?=
 =?utf-8?Q?g4g4kC7XxbqrUCiw=3D?=
X-OriginatorOrg: genexis.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 089e6162-9ec9-4610-104f-08de7ecb1f8d
X-MS-Exchange-CrossTenant-AuthSource: DB9PR08MB6697.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 17:33:20.7587
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t7pyf0WvsoeUIMw7BilGb4F8GzeTU7D0uHiK36/qOPvQjHP7SBMRxewxjr/EKSJzXEsWIUvvWvyj55EZs2Q2QHjCb6i9wYl5+QEuCsCdXjA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR08MB10068
X-Rspamd-Queue-Id: 1F24B255AA4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[genexis.eu,reject];
	R_DKIM_ALLOW(-0.20)[genexis.eu:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273668-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[genexis.eu:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.larsson@genexis.eu,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,1fb58000:email,genexis.eu:dkim,genexis.eu:mid]
X-Rspamd-Action: no action

Hi.

On 10/03/2026 17:12, Lorenzo Bianconi wrote:
> Introduce dsa switch controller node to EN7581 SoC and EN7581
> evaluation board.
>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
> Changes in v2:
> - Fix ethernet-phy node name
> - Remove unnecessary phy-mode property in ethernet-phy nodes.
> [...]

> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
> index ff6908a76e8eb6cf91343495d1fe531a868e41fb..c84c8d4a6662e24531e0c22ef3a4eb13da2d52fd 100644
> --- a/arch/arm64/boot/dts/airoha/en7581.dtsi
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -395,5 +395,89 @@ fixed-link {
>   				};
>   			};
>   		};
> +
> +		switch: switch@1fb58000 {
> +			compatible = "airoha,en7581-switch";
> +			reg = <0 0x1fb58000 0 0x8000>;
> +			resets = <&scuclk EN7581_GSW_RST>;
> +
> +			interrupt-controller;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;

This is the wrong IRQ, should be 31. This is also what is in openwrt:

https://github.com/openwrt/openwrt/blob/main/target/linux/airoha/dts/an7581.dtsi#L947


MvH

Benjamin Larsson



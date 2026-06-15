Return-Path: <devicetree+bounces-312038-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CeWxLFseMGovOAUAu9opvQ
	(envelope-from <devicetree+bounces-312038-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:46:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F69687D95
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:46:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amd.com header.s=selector1 header.b=vF3DlBYA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312038-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-312038-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B2CFA302804E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26E1D4071D9;
	Mon, 15 Jun 2026 15:42:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012065.outbound.protection.outlook.com [52.101.53.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2B2407596;
	Mon, 15 Jun 2026 15:42:54 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781538176; cv=fail; b=X48CCjOtE+WjL1iJnH+SsU3boFsXHMrhce92vqlPe+6WjJ9GHhSHJE3B8wAPcQj6AmZF3pN0hzGBAcr6+tPzh9Fn7SISZLCx3ipIv4bf7Kmb/SK6JcFOFDVKtPB+8Q5ZGahjuvmxOuoVo3foOUVG/rnMIhaCJl/JQCuLueC/SjI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781538176; c=relaxed/simple;
	bh=HwqZ66rHxLZiwgAWIeexEv+9PnIzUh9mddzL7wQ9VpA=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=Og5XQlVQ7qdCPmFGD20lDSU2Xy0eo0Rzdoi7+X/Ii2BKKJiu+JHtC+ygOYZhN68KcYb2A9qy4oRn3LHP0x06mhWPQ9Q9A/s2BJWjF64+nIH6SXiEGxA4Q/1rk3VV47SJ+uYNj/dCNxm5rXSE7QmxmCRb2TXz43WdY299LhKmwic=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=vF3DlBYA; arc=fail smtp.client-ip=52.101.53.65
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Phw+rnKAlS4IILU5T1CO2e9q7j0hFnufCz3nr33uS3/WZyMzz9sGoxcdS434UsTGFypcnSiPTA4L2eWne8bncu/Zw9BV5o9q9yEctTTAujny4zK+3yGHe8asZbGUM5t3IBD4YWPXGwGDy5aHURCC2Is8c9zcnjl7dvJunMH7F/V9fQDxvNi1mNKuXY2HE6Ok0iurzCvbB8uROk8juUE9KniDNVFQcVj83nYVwd+c0yXFfnDn2G9gL+H0uoAMSLcs7gKrizwXfPEgyp9W7s3EN/38yIGXDBkSCkgKggTWuzQfBPoLk/ihjjvgTgQhRNAhQHuLBUTYBMkRwm8ZAQCdBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GmCDuu4E3cOGY7q/KISCO3ygT6G8Qvn0n0pFmEhFKLg=;
 b=A4zDUXtoJUdJPjtI5BNHWg0sl61u2C5wWEHCwxRedbB27a6nJsPDdEPjI3dTfPKKN+EH+wEcM7zTk1ZhQxfQu4X6jrO63lcFyzucBuCIIPipM4x7cxN53KM5M5Pyn9MRugYIFoHPEFwnm0AyxCC8RJJWE4izEUwBFafxWO0DruNm0kAwgFw7aqwRjWMHXMU4aw/dM5nIfHDkx451ZxGb889WJGzqDLIJDPPXtIJGPH50pggmS790QLM++GGr8YabNgit6kuNE6pLzTT+BXIguYorT/P/r2IlXk1x6v0fP4EFjpES9UNgQ0gUNkMuXiBIM3UY1NLbvvsoiyCsVu+owg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GmCDuu4E3cOGY7q/KISCO3ygT6G8Qvn0n0pFmEhFKLg=;
 b=vF3DlBYApnGmGUm6Zj0PuFxPUs2aL2R7R6HyibcK/mpATeP6+uNK4pxPzFKXgOrO/7txkDT7cMeGujt8Tb+WOp+zcyKprN3QqpDMinqw+woAceX6nDI63TAew8O71jTE86bZAqb/AVj7zJ00XbZS5KfBl/cSsVD6tRYQm1kNR+c=
Received: from IA1PR12MB7736.namprd12.prod.outlook.com (2603:10b6:208:420::15)
 by IA0PR12MB8906.namprd12.prod.outlook.com (2603:10b6:208:481::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 15:42:50 +0000
Received: from IA1PR12MB7736.namprd12.prod.outlook.com
 ([fe80::2274:9fed:8f3:8550]) by IA1PR12MB7736.namprd12.prod.outlook.com
 ([fe80::2274:9fed:8f3:8550%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 15:42:46 +0000
Message-ID: <15d14eee-8384-4605-ad83-5aad774541ac@amd.com>
Date: Mon, 15 Jun 2026 16:42:43 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/5] iio: adc: versal-sysmon: add I2C driver
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: jic23@kernel.org, andy@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, conall.ogriofa@amd.com, michal.simek@amd.com,
 linux@roeck-us.net, erimsalih@gmail.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260614233722.2603459-1-salih.erim@amd.com>
 <20260614233722.2603459-4-salih.erim@amd.com>
 <ajAMjZzfTqplts_B@ashevche-desk.local>
Content-Language: en-US
From: "Erim, Salih" <salih.erim@amd.com>
In-Reply-To: <ajAMjZzfTqplts_B@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PA7P264CA0039.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:34b::8) To IA1PR12MB7736.namprd12.prod.outlook.com
 (2603:10b6:208:420::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR12MB7736:EE_|IA0PR12MB8906:EE_
X-MS-Office365-Filtering-Correlation-Id: 98a9671a-dfd6-457e-0211-08decaf4bf69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|23010399003|366016|1800799024|376014|7416014|18002099003|3023799007|56012099006|4143699003|11063799006|22082099003;
X-Microsoft-Antispam-Message-Info:
	ySgqNDbre0ZKUzlfjETYON4UFb+X2ycVedMbWuI/0aOaEL6+V9iU9U9o3RFquc7crZ6iRY29iAPNoN100KzHvZcPTFdOldFkFWG9tPLEXqM9+thvV0yBZiTPh97m6JfXUZw5zmmSZyp0MFp2JQvNEIqIn5XEckQDhK4mxJHQjlmPRmGkj7syrD3072PB860RnHBOAjRynFriaqK77vy0JDppV3stkBoBYIbOtElsOKjB4eS3NvE7H8RizCaBAAg6KJ8yScG6uA+McKP4Y04vmpHiwWWjeYX4uRD2waE4Ipudb23SDebMCG7G/O2kUKvXTlwbDub2DpKU85tbc/1x2VwgCRVZQJaDdLJIWl/J9i41aToF0i/TVc50bLcwluUxEYlD7uDIalmV80NF5JmA5odUzUHIMu6Qf021I35gXKsjH+TYXfV5KREXSA4qWuIND9+FeiofEO9COHBsqXnNOfWkM3fWuDM0PDsVGg+bvgcyQ0grOczRb4HNfQkeQpJh+Zsf/52AWZ7ipprSLCJSRvZf7MvBg4AGpiTmQSpI1xrIjX2gQMohOWv4iVlWh5ntr1By57btkj5dUlYMZyOd5Of/8uwyX4qoY+0CAJCrB7wHlGbn1RgtmXpuieqbLd8ZBaWWFjgDBDF802Wrp3Pua4Pma+AqZe+l1FoPXI6aFCUYZg1YHPMO9EQ6yei4j2zV
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR12MB7736.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(7416014)(18002099003)(3023799007)(56012099006)(4143699003)(11063799006)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Z0tMUzlhSDNMTGJBWVpaWVVtZVJuWmdpM3pNdCtlOTNuWUV2TC9VUGVpa2FU?=
 =?utf-8?B?b1FDbVVDc2ZlalIyMU5tYnBjVWZpalk3cWZTU2p4Z3V2M3Z2NjdYNklPOVJ4?=
 =?utf-8?B?dTZtdnNESFEvMHBxRFhVT0E2dmNsdk1UQmxJVHV0NVQyblA5TmhuSEpPL0E2?=
 =?utf-8?B?QkllU2U2cWJDL3hIZWFVcTNScEhYMmdhQ0dZSWIvUTlPRmwrYkNaUVI3c290?=
 =?utf-8?B?Y093OVAyZzg4amY4M0gwNFhrdzJtS0FZSGc3U1FiQTR2QjNrQjN3ZjlDUVBG?=
 =?utf-8?B?YzVUbjN3dnNPK1Z4MUdoaXkzbXUybUNPQkFhS3hYblN6bzJndXAwcmVFM2pw?=
 =?utf-8?B?bXdCNHUyTitKL0QzWEt0eVhWK21nT25Wcy9xMnluUXBBYktZS3crZTF6UFhi?=
 =?utf-8?B?MjBsTnBUQ3EwaXA3eGdvckIxamZwbzh3WHM1OXU3M3EyOUpNZFVxSVNQMzN4?=
 =?utf-8?B?cC9Oa3UxdkE2dWRsaFZVcURyVlM4REgwNWV2Wm1tSGw2bDluVWRyZS9JcDVn?=
 =?utf-8?B?Rnp4WWFFNGhGQmxxUUVsYnZpT2t4RlZ1Z1pMT3pKZU9ZbmQ3aVBXVmpYb0NI?=
 =?utf-8?B?Z043RFB0Nms4WFNPUldOU3ZsNFRZblUxS1A0NjJJUVRwZGNoM3dJTlNicExU?=
 =?utf-8?B?eEs0TTlTK2ZLN0M3Sm9kY1J5d1MrWUh3dWd1ME8vd002cEt3dEZZdHR6V2sw?=
 =?utf-8?B?QWJRYVA5ak1TdktGVld3bkJsdWJkTStqWWtLSzZsanBCTFlkYTlDRUxXWUdW?=
 =?utf-8?B?YUZZZ3dqR0RjOXo2RjJCREU2SWJOR0o0TEQ4M2M5ZEhyQitmc2psdk8vb0JJ?=
 =?utf-8?B?dTM3SDkrT3RHWk5wcXZBVWhVc3lNcWV4MVl3eVZ5T2hWQXB5K0dad0diUWNn?=
 =?utf-8?B?NG9EZVZNS2srSDg5ZUV4VjlaU1FoQkhHbTFBSmI1M1hGQVBwaVNaL0tyVlUx?=
 =?utf-8?B?anByaXkyWHcrUnMwcFNhelY0Yk5QS3plbnptL3QvUkluOWcyRG9adUl5WGZN?=
 =?utf-8?B?WW1YYzNNK1RKMWQ4dW8wOEpudU1zM2xUMVRuNWlsWXRSWHFmVFlsZmxhYzFY?=
 =?utf-8?B?dlRYUVN6dHh6U0dodEZwRkdLd2NkcjZ5TGVNT0paNnliYm1BejNiOExqb2lR?=
 =?utf-8?B?aUQzYXVSTVdvTHNuNUk1OFhLUzE3ZVcyZ1Z1NWlodmxyVFVFc1Z3bVkyc3FS?=
 =?utf-8?B?Y3lraE9sUS85SHlGNmYrVXlmQStuWDFnbU5EL3R2bzVmZ3krWE1FeEh2UFVS?=
 =?utf-8?B?ZmFYaWdUVUZkYWhaOEdWckpScWs4SUZ2MktMOFJPMnlMb0tIZTVaUUZUMHdB?=
 =?utf-8?B?Qys2UCt0bGZreHgyZGl6KzlWcWtlMkl6T0ErajlZSi9LeHdyRVJmNUlKOUpj?=
 =?utf-8?B?dHFOOWVxNTNrVjhwL2t0blhraVVsbDNMYWI0NFBJbHNiZER6ZEEyanhDcWFM?=
 =?utf-8?B?M0V2c2VXTlAxbmZQT0U0T1ZkVUFRT3ZkaTZ1RURGTXNYdmZCLzVSQXNudTJY?=
 =?utf-8?B?c2F3TXFFQmlrQ3lUWFpOWVAxZEVyN3RhUjFwU3RUa3lGVm55c1phVFF0ZHM1?=
 =?utf-8?B?SG5lSnUzeXJVbWZZdWZCT1VEZFZtZEppdzQ3RTAzTUJmalNxZTEyVktEMTh2?=
 =?utf-8?B?eXZPWGk1bVhQODVtemVYOEFnNlVqSFJQaXZQRjRockN1RzlhUlo3OWwwQXVC?=
 =?utf-8?B?Z0NHbkZka21tRTFoMTA3eUswWkNHZjhSQ2h5QUdhZ2pSbjkyejR3OUZnQ1VO?=
 =?utf-8?B?eXZ1RXI4WkRjTEFOYUFTL2YrS3R5Um5YeWhNcFY2VTgvSFpGS1JDQmErR3hU?=
 =?utf-8?B?MjVHN2FZcUNESGNvM2xINVg1TVdZeUl1bDRLQldYWFk2TkNVdDlYc0dJLy9Q?=
 =?utf-8?B?RU1NSGpTZUtsTFFqdjIxbGFGR0xwYU5OcnRSS1g0eHlPSEdCbG9oNnpmSEpu?=
 =?utf-8?B?QnphU3JDUUxnYUN1MzVzb1RlNUhOdWo0YUtuZ2pjNUkwUjhEbGR6eTl0TllD?=
 =?utf-8?B?YmQzeEdpMVBJV2ZvVGhUM1JkSWU0K3lrQmdqcWV0WDR4c0V6WHBkdVh1TU52?=
 =?utf-8?B?L1p0VU9GNWFsWWpGMVZtZWlrMERUeThhazhGSWRxU2w0Mmg5M0pWOWl0ekFk?=
 =?utf-8?B?Wkt4eHpxdDNMZ1owNGtPYUVTMHN6WVhMV0J3dU9uMTdHSUxRZ3poRnI4ZCtO?=
 =?utf-8?B?VXMxZDdkVGsvWHkxSXV5c3VGVWh0NkRHK0dRUHhnMWxsQ0tzS1IxU2EvbnFt?=
 =?utf-8?B?dnpHUU1CWnprVVlqanFKaVYzRnlIOXZsSkdwbXdaNUd1TWRrMEowdkN1QXZn?=
 =?utf-8?Q?XYoNUkCOmyrGFQahZn?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98a9671a-dfd6-457e-0211-08decaf4bf69
X-MS-Exchange-CrossTenant-AuthSource: IA1PR12MB7736.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2026 15:42:46.7102
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UOU8qvAxa5gFlAsza2mQ6V2BMleEPzaAlDYoP30e/8uLvose37TRGXdF0puPTZBB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8906
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312038-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[salih.erim@amd.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:jic23@kernel.org,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[amd.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[salih.erim@amd.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,amd.com:dkim,amd.com:mid,amd.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1F69687D95

Hi Andy,

On 15/06/2026 15:30, Andy Shevchenko wrote:
> On Mon, Jun 15, 2026 at 12:37:20AM +0100, Salih Erim wrote:
>> Add an I2C transport driver for the Versal SysMon block. The SysMon
>> provides an I2C slave interface that allows an external master to
>> read voltage and temperature measurements through the same register
>> map used by the MMIO path.
>>
>> The I2C command frame is an 8-byte structure containing a 4-byte data
>> payload, a 2-byte register offset, and a 1-byte instruction field.
>> Read operations send the frame with a read instruction, then receive
>> a 4-byte response containing the register value.
>>
>> Events are not supported on the I2C path because there is no
>> interrupt line and the I2C regmap backend cannot be called from
>> atomic context.
> 
> ...
> 
>> +static const struct regmap_config sysmon_i2c_regmap_config = {
>> +     .reg_bits = 32,
>> +     .val_bits = 32,
>> +     .reg_stride = SYSMON_REG_STRIDE,
>> +     .max_register = SYSMON_MAX_REG,
>> +     .reg_read = sysmon_i2c_reg_read,
>> +     .reg_write = sysmon_i2c_reg_write,
>> +};
> 
> No cache?

No, the registers are live ADC readings and interrupt status.
Caching would return stale voltage and temperature data.

Thanks,
Salih

> 
> --
> With Best Regards,
> Andy Shevchenko
> 
> 



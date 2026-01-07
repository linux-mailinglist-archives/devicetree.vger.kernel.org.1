Return-Path: <devicetree+bounces-252236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 230AFCFC9A3
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:28:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8965D301B2D0
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575AC285CBC;
	Wed,  7 Jan 2026 08:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axentia.se header.i=@axentia.se header.b="Vdmj36o9"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11020102.outbound.protection.outlook.com [52.101.84.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE07250BEC;
	Wed,  7 Jan 2026 08:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.102
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767774284; cv=fail; b=YXr6SinROlRz6U9cLp7PS2F6BDHvLp3PUM/CK1R0P4chvvZ0skKw1ZlwslaC45WeG8YQH1HpFkFvvhubS3GkiVDc4PQlkmoRGMuCPRZc/4WndxE4J5BcQMr3vN1BX1hsu0oJmqHnSzWsPA0gNyjblEBhLM1VJCHjcZxIrLgnnDg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767774284; c=relaxed/simple;
	bh=+YZGYRQRlAQoobDB6Z5xS9kRTrmfLRnICnjtH5r4yWI=;
	h=Message-ID:Date:Subject:To:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=A85WI3HSdwGRdfyu9Frle9oy/xHeuyiHqVq+c9LCkVQM1QjU7DxS0MqszV46cIJzIeAB2FKaLPi7bhhm0rh5pdxNaJrOalJB4O8BMwPuGQ3n8wcEGKpxwQHYEbz8jcb41IGKS2sr8qVUdfmyzBjTJpFnlKSkrjZpYfcbNwTPDro=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axentia.se; spf=pass smtp.mailfrom=axentia.se; dkim=pass (1024-bit key) header.d=axentia.se header.i=@axentia.se header.b=Vdmj36o9; arc=fail smtp.client-ip=52.101.84.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axentia.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axentia.se
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ClOSrgxKCsdoPmKHo/MI2Dyto/qjExDVttUnrJpUNyEQNgGW+dOFbd7zzmIogJ+WZNpmnEjdP1pnwRcVdRp44kmpQInO5d2Gn8/VetoSb/BFYgA+jdUuFOI/1mNAFlNSWLcuO/CFWRqK7SKQat3WQCESpADYnATC0zHEy9Vp8PMW09OOn0/VT6CbaPgfBZ06kpot9YgKLF5H92Y4Odgd9RcK6fkTl5FPh6UBgpyGOhucaqdvsmHwVMFtD/AdPQgRFTvCDY3X4W/GlFwmN04jE4rJIreFHEHPfog98L77fZMEeROWrlrHR+rfT1sH6EVtxecfMgABo7W11YPUnR7bqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0LSFnBPMlQUDaCkt025N3h0or1RWJxq2PhIbxi3DJvs=;
 b=Sb+Io18z2/WFXjelqfFZo9DY0Jx7tufgL4HkTfnhpBAB9vre5XhAbEUK2t0FBiJ2a7BENR6GVNlzmqE5WKD5/YentSO/7bHesqWmFsuRv6oEgY5esGDkSxUiTBiC4nrpa1dhIslGzBuMRB/FA5L6rEX0OVPf2djdqsQkuQWUuoBp2Oy3dvEi1AnjqkLmi4Fzw/qkKxlbw7wLT28JiiMn9ADdQeBBIcmiGC0ymqrsdjd4Qdcn+Ij8soMtHsqfvABGHQ/Gvw6Bw3j062loiWQaQyMcvXr0N/5Phs/BbpIVSMAGKdCYSiWQu+OyH7qVyAPPYBZD6vV5AtLs2F28hsaNZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0LSFnBPMlQUDaCkt025N3h0or1RWJxq2PhIbxi3DJvs=;
 b=Vdmj36o9hCKUvhLikTdPCclTy9zAid9Nytpsg/e7Ae0nLg7sfM3ZKVJcwsdcl4B/tbYBWqKksHMMUJlAEcYHryE3r5lcPRZcf72HIyIfeOftXn7RAkp/euqUhJ8+y7eTA1pxLXRZL/6fvIcDvgggo0HXpXaqAWmUF/HcxJB2Y78=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axentia.se;
Received: from AS8PR02MB9235.eurprd02.prod.outlook.com (2603:10a6:20b:5c1::5)
 by DB9PR02MB7914.eurprd02.prod.outlook.com (2603:10a6:10:33d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 08:24:36 +0000
Received: from AS8PR02MB9235.eurprd02.prod.outlook.com
 ([fe80::32a9:a9e6:ded:5714]) by AS8PR02MB9235.eurprd02.prod.outlook.com
 ([fe80::32a9:a9e6:ded:5714%5]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 08:24:36 +0000
Message-ID: <b9f25589-347f-1c54-f45e-b4617452191f@axentia.se>
Date: Wed, 7 Jan 2026 09:24:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 2/2] mux: adg1736: add driver support
Content-Language: sv-SE
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260105115825.57032-1-antoniu.miclaus@analog.com>
 <20260105115825.57032-3-antoniu.miclaus@analog.com>
From: Peter Rosin <peda@axentia.se>
In-Reply-To: <20260105115825.57032-3-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: GV3P280CA0103.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:8::8)
 To AS8PR02MB9235.eurprd02.prod.outlook.com (2603:10a6:20b:5c1::5)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR02MB9235:EE_|DB9PR02MB7914:EE_
X-MS-Office365-Filtering-Correlation-Id: e688849e-69e6-4e68-bee1-08de4dc63145
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?d015VGErYUp2cEVKaTk3TE8yendPY3pITlAxc0J3RTJGYm5PZ2t3SHpnRmEx?=
 =?utf-8?B?T25TT3NzUzR5VmpoQXgrOWYxalNGVUtyZTVySDIwUHBuUFlibUlGZlB3L05C?=
 =?utf-8?B?TEk2SjJUZk5hTUJWY0pEUytqUXk5R1lZVXRSWXFjUkZKamlEbTBQajV3bjJD?=
 =?utf-8?B?UXdpOXNOVlZwcDN2RDdNUEZVeFNyd0ZjZUVaQkFtdXhPTjc0ajZxVmE1VUNB?=
 =?utf-8?B?L3JDNlJ3bSs3dzQzOUhtTWV3K1BpcDFYbWxRTFhxZVBoNEVJWDk1cmRkWEdq?=
 =?utf-8?B?MWRwUkkrNkh1RkhZQncxRnc5RHE4TEJwVndXT2dlQlRSblEzMk5wREp6TnJL?=
 =?utf-8?B?VFZkUmRHT3o5QlZIa3RydkZ2K0xQVUk1MkdjYjZ2VEp6TFdqSTludjJhT212?=
 =?utf-8?B?bm9seXU5eGZvRzRiRTVOUCtucnJhTFlGbW55aVNXNFZpTkJESE9qV3plUWVh?=
 =?utf-8?B?TUlMbDd1czRxcnFKZjJmOEFWREdRTENWWnJibDVhdmo1V1NKL0dXTXYrbDJJ?=
 =?utf-8?B?RmxCbFNlNCtGM09yTlpBMHNJcVdCTEJLdks2bE1hUXN1eVNrcGxjTE96WHQ1?=
 =?utf-8?B?aFFnNFV2TzFERUFSV1VJZ2NHVTl6eXVxZmREbzE0TTNYNXl4c3JrTTVSMThF?=
 =?utf-8?B?UDAvcDM0OVF3MmFLMVU2NkxDTmZOY0twbzJJNEpVZTU1cWNlQ2ZvYWFlOW41?=
 =?utf-8?B?UGN4bHdTMUpuRGs1RE5ON0tURmdQVzJZMis3Ukt6MXc2ckhjRE5ndHNqbU0r?=
 =?utf-8?B?aG01ZnpxSzl6RXZCaHBmZUZJWFhDclh6MmI5MVhMNml4M2hEWnpzWkdObW51?=
 =?utf-8?B?T3EyNmxyUm45ZHFmaG5DVVMxVnBRVEpNeGg5d1BYRE9mejc0VCsvVHAyc2Ir?=
 =?utf-8?B?cXIxYnZFMWZ3U1hnWnZIVDNQSWFhcDFCaWJtSmlVTFN0VVVDWW9MbU9KblhR?=
 =?utf-8?B?MHZQQTc0WTN2OXFNaStDd1FBMzlZdjBXZGhOSE1CQ1hCc3VPbEUzR09OSldX?=
 =?utf-8?B?b3Azd2Nkck5XQnpUTFMxT3JvTDZUa3VFVEVhYVJKeUE5SHorUWI3WFN5STNU?=
 =?utf-8?B?aGcyc1diU0UrREorRS9WTnNKUGU3VjIxaGMyVDJCODBKYjBURWNSV2pzVXhW?=
 =?utf-8?B?a0hjSDM3U2NoNVpTQUtXUStrNUl2by8xc2JYeVdET1lzbG0wcXRQRis1WWNs?=
 =?utf-8?B?SXAvRWZzdXkzVTZLZXJZUk5nS1d6RHFsdkZJKzAvUVlnRkVHNTdnWVJUbXR6?=
 =?utf-8?B?QUx6Y3o1SEpyOWVKQTVRdHdtcVIyNGtPLzI0cStDbHJqSlBsdjNPTUF4ZG9N?=
 =?utf-8?B?Zlp3Q0g5T1d3ZFc0K3dzV2I2NUdodS9Za0JaV00xVkEzeEVWUkhlZkt0S3lw?=
 =?utf-8?B?VDcvL0x5Z0dqM0pFTXJhdUlrdHJVaW15dkowMm1Qd1lnL3c3bmUvcE9GUXdl?=
 =?utf-8?B?NWJPWGZwRVV4WHA2bzZ5eENHcGtHTkVTWVl6ZmoyaitBSnlUK2FDMUErS3Uy?=
 =?utf-8?B?QWw2SE5CcDhpYmxrN2I4Z1FJSSsvT1NLUkZGWVM2bkRrRHREQVNuZmpuWW5B?=
 =?utf-8?B?N3dndzdrOWFsTitha25jTWlKTFV0Z29Hc004c1lOV2Vha0NETnBaai9FN2w0?=
 =?utf-8?B?US9GbWVZckVYUG1TS0FoWWZKZHBISno2ODVNZGNOUjhxWmlaYWN2VnlEMDRl?=
 =?utf-8?B?WkRjYUtOTUNVVjVSZkJKNnlyMFVBYzJhRVcxVGpKT1hXbWNHKzVIdFMrTmhn?=
 =?utf-8?B?VEN1UndBQUx0aTJKRlI5UGZSQml6QjRHUGNleDhDZHdnU25GMVY4WTVMSmha?=
 =?utf-8?B?em1vRFpwMVE0T3Z6Zm5ST3hhbUljV3BGTzRUVVZYWnZBQVB5YUQ0ODRNWDBj?=
 =?utf-8?B?YWZiZmxLUlV3UTZBMUpoanRHRnFaeit2Ym54ZndGLzF3Y0NDT2pYalB2c3hm?=
 =?utf-8?Q?gQ1uVNNtRoW7A8mcWs7mUeC7xE4I7M6Y?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR02MB9235.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?KzV0bUFDNC8rQ3RCOCsxaEEvdnF6SUxUOHVJaHdwM2lScFU2N0ZmZmJVdDVl?=
 =?utf-8?B?NWJmVDhLRHVXUENSN0VJNlVoTFg5ZEpzeVVTVnAyNHdoN3d4Q3QxS0pWcHZF?=
 =?utf-8?B?N0gyR0JkRVk0Y01YcDMreFc4QURNVWxsTUNtN0NJZzNGN3VlNHBVeENPcDVq?=
 =?utf-8?B?ck1WY0tDVEpRTWIyc3ZZQTBTdjAzakFvM3RaMmlxMUZvSForRUdRVWtpRUFT?=
 =?utf-8?B?MEpPWCsyQnJmS3lZcjJaS0hSTHVDdkwxdEVXaU53NEJoYm1CNE5tMmtBbjRY?=
 =?utf-8?B?cnFGN3E1K3hwdHZrMjFsQVE4SWNxQmxGVndoZmgvN2ZWWHVHL0lvZnRtdHlL?=
 =?utf-8?B?UXZuS0tFZ3ZSeWlXeFVBTlRDZVloUk9DcklqMnFRUmJNZ1NlcmVITTRwb0xs?=
 =?utf-8?B?bE5YdDNrTndPZXljditkeG9TKzdUSisvVnM2ZHdZeFU2QjFEeTJzbjFYM0lM?=
 =?utf-8?B?NzdlK0pYNS84UG5xd2wzczJDZ0NlTWtZZGQ4U2s4MXQ3WUlOYkRzZWFadTBP?=
 =?utf-8?B?Z3QvRmFIanM0YWUrU3ZiaFh5RTVVMStoNElhazIvTzE0Ly9MN1crcjZPU1RB?=
 =?utf-8?B?NjNoMXRuMEEwSzIwc2NreGZ6d2pHSU43RE56UVFwdmN4RFViS0RjdnRpZ01T?=
 =?utf-8?B?OGJQSXkzQUlyZVZoc2ZaM3AvS1p2aUZNSm15b1lHRTA4aEpjOG9iM05TNURT?=
 =?utf-8?B?WU1tZ3VsV2tnN2NuS3pSYVhIb1BDdDMyOTF1RkpmanFYa2xvM0pnR09jSnBY?=
 =?utf-8?B?ZkpkWmVybGFjTGUzOXR3bmZ2bXg3SUxadm0vbHV5cUs5Y0dHblE5Q2xSRU8y?=
 =?utf-8?B?Q0twWVliN2MrZk95QUxIWlVMKzVmZFVsS0lFRWEvQ3VNeHQ1a21IUDJyb1Iw?=
 =?utf-8?B?Z2tER05qd2NKdEJ2MXR1UzRnUjQrZExneEtPVVczbFNGSDhuUGVaa3BIQ3JX?=
 =?utf-8?B?SXVLZmtBMDNFeU9pY3NST2xJcFN3MCs1L2pXS2xmNzdVaEFzSytkN2RkVTJN?=
 =?utf-8?B?REY1QWFwMzlyQ0Z4YjhRS1FaQXFjQzYrbk1DT0txazdIdmNxdmNPMGxrS1ZD?=
 =?utf-8?B?cnFXMU96c2c2bldMdFhDdS9BeWNMS1ZDVkxXM2VCaU9LV01lVkdiMGszYkhx?=
 =?utf-8?B?UHV4SlNBY0tSWkpXVDhYSU80YnY4VGNvT0ZoTmlNL0Rqd0dTTVJWMDJoOHpB?=
 =?utf-8?B?R0pEU3ZPbEFmbHpnYW5nTW5sc2xnRWJkZ0xvL01tQjFTcGloMXVjTTBoWXBn?=
 =?utf-8?B?ODB6Vk9EVEI3aGkwL3dMNGFVTEkxd0luNmp6YlhpeTdpNC85OEJrc2ZJbHJm?=
 =?utf-8?B?NzZTRS9uVUtkMEpHWUNDelBnYm9LZ1RTdldBQjVvQUxUSU9UNU4xT20vTDJL?=
 =?utf-8?B?bnVVcEJxaUhXK2kxdmhUeHUxU0pkMjlYNEg2OG9rVTloR2hTQ1VPcXpjaE1Y?=
 =?utf-8?B?NWVnN2h5SC82R2hFRUVhOFhhU3lzNkcxOTF6dkN0Y2hUMG4wWWdtakNqd0c5?=
 =?utf-8?B?emZLYUd4Y3Byc1NTcVl6dXp4QTJMOHZDT1FKOVVJWWw3NFJISmtXZHlIWnJZ?=
 =?utf-8?B?SDYyRFRuNk5kbFlGdW1zSUo0Q1BvWWRiT1hJNmdaUEI3U0FiMDhMZmEyYWtl?=
 =?utf-8?B?c1NmUTkzNEV4OVVQVkVFcUxxUkpRbU5yZmlvMmR5V0tmSjlkNE1ldXdqZXhy?=
 =?utf-8?B?NSs5MHR0dm1kYnhUeThIWXppZGtXOS9WdUFsVlAwbVNDRU1qSXF5dXMrVUt2?=
 =?utf-8?B?MDYrUDY2OUpITU52d0dDSVJaYTRIdXV6emY4NkRrZEJweEtKZmV1TEljVkcv?=
 =?utf-8?B?T2hxUStFenhPcFZsT1daT2xKS3VQdnpHSFBUYmJ2WkloQnNiMDZIYWdsZ29z?=
 =?utf-8?B?bUQzajZlMzlYcW9xMlJUMUVMZEtPTnV3b3E2NlFhcGtxNU4zTDBZaUxXVFRY?=
 =?utf-8?B?UzA3Umt3RHlOTFFURGtVRkJ1NjBNODBXOE9pcm9MZW1mSzB0dkpOcDRVamU5?=
 =?utf-8?B?Sm1VaTZSQzQ0Y1ZIVkJXWTFURzQ0Mk94WG42OVdIbm9FczdoNXBIZUJhc1Ax?=
 =?utf-8?B?ZE9zQmRrejBPbURPN3JDOFo1YS9vemNQRVdRaCtiYkR3WVFGUTcwUEs3VWdE?=
 =?utf-8?B?a0pzczJIUEdHcDZwU292VTgyaHdVbjNWMTFxY1lmdVNHMVBxeG1qc2laMzln?=
 =?utf-8?B?NUp6U1NwQmgybVB3c1VXbGo5RGt4dy83Nmc1SVJNNE1kenk2TXFvZ1hGWmNE?=
 =?utf-8?B?Uzd5aUM1RFBhdUJqVkJUS1pFNHM1bE5TTnZqTm54bThwRHYrTmM5TmZJWnUr?=
 =?utf-8?Q?YjZ3+E6aUzW9bDbwIA?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: e688849e-69e6-4e68-bee1-08de4dc63145
X-MS-Exchange-CrossTenant-AuthSource: AS8PR02MB9235.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 08:24:36.1299
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u9NowQVrT2cmsBV4e90IEUij3nOno/HMbroBCpfUfuKVPza7ppBS6n85ScAyzhsq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB7914

Hi!

2026-01-05 at 12:57, Antoniu Miclaus wrote:
> Add support for ADG1736, a dual SPDT (single-pole, double-throw)
> switch. The device features two independent 2:1 analog multiplexers,
> each controlled by a GPIO pin. Each switch connects its drain
> terminal (D) to one of two source terminals (SA or SB) based on
> the control input state.
> 
> The driver implements two independent mux controllers with a shared
> enable GPIO that can disable all switches when set low. Each mux
> controller supports idle-state configuration for disconnecting
> when not in use.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v2:
>  * rename ctrl_gpios to mux_gpios
>  * rename en_gpio to enable_gpio
>  * update GPIO names: "ctrl" to "mux", "en" to "enable"
>  * remove dev_info message
> ---
>  drivers/mux/Kconfig   |  12 ++++
>  drivers/mux/Makefile  |   2 +
>  drivers/mux/adg1736.c | 140 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 154 insertions(+)
>  create mode 100644 drivers/mux/adg1736.c
> 
> diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
> index c68132e38138..bdf16e0983cc 100644
> --- a/drivers/mux/Kconfig
> +++ b/drivers/mux/Kconfig
> @@ -21,6 +21,18 @@ config MUX_ADG792A
>  	  To compile the driver as a module, choose M here: the module will
>  	  be called mux-adg792a.
>  
> +config MUX_ADG1736
> +	tristate "Analog Devices ADG1736 Dual SPDT Switch Multiplexer"
> +	depends on GPIOLIB || COMPILE_TEST
> +	help
> +	  ADG1736 Dual SPDT (single-pole, double-throw) Switch.
> +
> +	  The driver supports two independent 2:1 multiplexers, each
> +	  controlled by a GPIO pin.
> +
> +	  To compile the driver as a module, choose M here: the module will
> +	  be called mux-adg1736.
> +
>  config MUX_ADGS1408
>  	tristate "Analog Devices ADGS1408/ADGS1409 Multiplexers"
>  	depends on SPI
> diff --git a/drivers/mux/Makefile b/drivers/mux/Makefile
> index 6e9fa47daf56..f1497c319bcf 100644
> --- a/drivers/mux/Makefile
> +++ b/drivers/mux/Makefile
> @@ -5,12 +5,14 @@
>  
>  mux-core-objs			:= core.o
>  mux-adg792a-objs		:= adg792a.o
> +mux-adg1736-objs		:= adg1736.o
>  mux-adgs1408-objs		:= adgs1408.o
>  mux-gpio-objs			:= gpio.o
>  mux-mmio-objs			:= mmio.o
>  
>  obj-$(CONFIG_MULTIPLEXER)	+= mux-core.o
>  obj-$(CONFIG_MUX_ADG792A)	+= mux-adg792a.o
> +obj-$(CONFIG_MUX_ADG1736)	+= mux-adg1736.o
>  obj-$(CONFIG_MUX_ADGS1408)	+= mux-adgs1408.o
>  obj-$(CONFIG_MUX_GPIO)		+= mux-gpio.o
>  obj-$(CONFIG_MUX_MMIO)		+= mux-mmio.o
> diff --git a/drivers/mux/adg1736.c b/drivers/mux/adg1736.c
> new file mode 100644
> index 000000000000..90408d455a48
> --- /dev/null
> +++ b/drivers/mux/adg1736.c
> @@ -0,0 +1,140 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Analog Devices ADG1736 Dual SPDT Switch Multiplexer driver
> + *
> + * Copyright 2025 Analog Devices Inc.
> + *
> + * Author: Antoniu Miclaus <antoniu.miclaus@analog.com>
> + */
> +
> +#include <linux/err.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/mux/driver.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +
> +#define ADG1736_MUX_CONTROLLERS	2
> +#define ADG1736_MUX_STATES	2
> +
> +struct adg1736_mux {
> +	struct gpio_desc *mux_gpios[ADG1736_MUX_CONTROLLERS];
> +	struct gpio_desc *enable_gpio;
> +};
> +
> +static int adg1736_set(struct mux_control *mux, int state)
> +{
> +	struct adg1736_mux *adg1736 = mux_chip_priv(mux->chip);
> +	unsigned int controller = mux_control_get_index(mux);
> +
> +	if (controller >= ADG1736_MUX_CONTROLLERS)
> +		return -EINVAL;
> +
> +	if (state == MUX_IDLE_DISCONNECT) {
> +		/* When idle disconnect is requested, disable the EN pin */
> +		if (controller == 0)
> +			gpiod_set_value_cansleep(adg1736->enable_gpio, 0);

Why is this ok? The way I read it, if the "A" mux has been configured to
idle on disconnect, then at all times the "A" mux is not set, the "B" mux
will also be disconnected.

That's hardly "independent"...

I see no trivial way to fit the use of the "EN" pin into the framework.
Since the "EN" pin is difficult to use, this device is perhaps better
modelled with two independednt instances of the gpio mux?

Cheers,
Peter

> +		return 0;
> +	}


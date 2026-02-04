Return-Path: <devicetree+bounces-262571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKX6EToPg2kOhQMAu9opvQ
	(envelope-from <devicetree+bounces-262571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 10:19:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C083E3C02
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 10:19:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E45793004431
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 09:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3794C39C636;
	Wed,  4 Feb 2026 09:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="hFUftJV8"
X-Original-To: devicetree@vger.kernel.org
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11022097.outbound.protection.outlook.com [52.101.48.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D631139A81E;
	Wed,  4 Feb 2026 09:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.48.97
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770196788; cv=fail; b=VCEJ8k0wQczLXWdZQyIoLgihI+lyzyI09GawgxW6BgrTRdKe85612qqR6CZcrcHgHuh6FPYKvGQQXt/+UlHOrscn2vufhrwnk9FYlKgxOm+xPIgxCK8ybheEED0ze/UsBH9XsjH6UtJ6BzqU4rwM2pCkVC45zf1auJhZ0GHhbsU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770196788; c=relaxed/simple;
	bh=bfkyVKZz2wF7S646E6hrcWbhMm3kj1FbXfhNGjLCy6M=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=mQZ8OTnwmA9rIPibbkly0uDAdz2K+B/j3qxXDH4YjNU7O6SRxETyaVqxP32u6LtaO2Zp5ROVwpPLY19u8y0mqolfDmN8ZoABVGvEIW+d6W8ILaTyu6wVtOhg4a5oUz/qPVY4yy9G0d51Gi+jaq7u/qA0EZYy1R7DCP2EL+Qiezs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=hFUftJV8; arc=fail smtp.client-ip=52.101.48.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KBHTxlhIshDjCgqFLw3FZU7Ld0GYZkUuDUu/9+toy/9qnpVtDcRhOJUHtbXD2NYT+7/pk26bcitxvScQYcgxi+tQ4ZjlmE2MfFF/L+v5+USDBXr+VEHFmhDmj5+u6nP5me5IrIy1x5szS60SWOj36hm5JrtpGHLnTg+c5ImH4KEENFnQo+YPMzFbD62SRgx2wgAtbrmNRp9YiuPpXOblu1xibS1dvT0GFutXVdlR+dDSx0DDOW1hvXkK1VAEDrhWFdYMKq3XpRUTpKr4ruYFj63JnUYM2Ybk+pyBtohwvU4Mq78ItEIvJwxnY5IQM0ePrsYkZve6lGynA2wcMljdQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jEZCst9pMrSE3N5OJMN+t+CnjOK0KMK/6EJf4/HuZyg=;
 b=kvq28yIP785kccR6mKFR/CRdHWkEEqHzpRRwN/tF5upRYqhCbb38UAt1rt6cqD4aeNU6MggqvrxeV7Etn0vMDnWkOqcOHXHMZBSK8848XvZ8RUhukUVyVHDOUsILwyTGp9ROJGZLJ8KHLCFin5FuBLhC/w7GGLBW1gWGeQIq3DkiJa2zzkmoHMd+VjoML7OyXU3SyMpZK8XM8JDHqVWK7TE18ORwHogdymL1awLXFQ1KJOM1sEMpSteG4yR3EP/QKg/tDmZFzc0o3t56PzHm44ydYg1O0Lmf3jlt77rekLZ+3j7Nwb9lnDTN/BR76N0y+YSEj52adsi8f4uv0OQPlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axiado.com; dmarc=pass action=none header.from=axiado.com;
 dkim=pass header.d=axiado.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jEZCst9pMrSE3N5OJMN+t+CnjOK0KMK/6EJf4/HuZyg=;
 b=hFUftJV82scCmh7k0Lq7/wCfQhkF7SImzHZAKIfpyu2Ym2Q/ZPXvCZYPKMMYCWzvP0Kbydt44XLMLlKJpnaTBV07WFWwqOWSclsEzeh0wnDn6otlURTM6EQGfCxhnIeiIApUsHMygks7hsVRmwGkCD9z6R7EIJ85BdVMeN/mq5wnL1sMmhriZgc5cfRulv4JfG73YTFc5oiXT90Thox8B4qIeyI4nMjSLusa5GhujICZ6yUtJlkJEUdKO4Slxk7tZZiTTLjjWOUURuaPDZv5a25Gwgz8jj90gjWfEISijlGtb+8Za6zSt7mkXYZMzA8/vS90iXmcOFKu3foJ1FSpQQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received: from PH0PR18MB4558.namprd18.prod.outlook.com (2603:10b6:510:ac::13)
 by IA2PR18MB6054.namprd18.prod.outlook.com (2603:10b6:208:4b8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Wed, 4 Feb
 2026 09:19:45 +0000
Received: from PH0PR18MB4558.namprd18.prod.outlook.com
 ([fe80::7a75:75a5:694b:2311]) by PH0PR18MB4558.namprd18.prod.outlook.com
 ([fe80::7a75:75a5:694b:2311%7]) with mapi id 15.20.9587.013; Wed, 4 Feb 2026
 09:19:45 +0000
Message-ID: <63393940-252e-423e-881c-020cb9b03837@axiado.com>
Date: Wed, 4 Feb 2026 17:19:37 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Add eMMC PHY support for Axiado AX3000 SoC
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 SriNavmani A <srinavmani@axiado.com>, openbmc@lists.ozlabs.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Prasad Bolisetty <pbolisetty@axiado.com>, linux-kernel@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>
References: <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-0-dd43459dbfea@axiado.com>
 <176822994353.7723.17700786956910310022.robh@kernel.org>
Content-Language: en-US
From: Tzu-Hao Wei <twei@axiado.com>
In-Reply-To: <176822994353.7723.17700786956910310022.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BN9PR03CA0345.namprd03.prod.outlook.com
 (2603:10b6:408:f6::20) To PH0PR18MB4558.namprd18.prod.outlook.com
 (2603:10b6:510:ac::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR18MB4558:EE_|IA2PR18MB6054:EE_
X-MS-Office365-Filtering-Correlation-Id: 71b006d2-fe2b-4bc3-66e7-08de63ce891b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|42112799006|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OUdxNHJhbGlrVFF2NWw5MEV1aHVNKzZhazhoekJYczJGeTFZdDE5WkJ3SzR1?=
 =?utf-8?B?cDJ3b2w5c1lxZ1RESGszVkxEWVNNcWtoSVp4ODdzckpIV2dDTHpZZUZmMWZN?=
 =?utf-8?B?SnlUWEdkUzRLWE1WMXJ5WGNvMXpBRW50Y2xZMkI3cWJweXNsUW4vbEc0dXRP?=
 =?utf-8?B?eEhOZks0Wm9lcGNnN1dWWjBlYUs3ZDFHVjgvakZyM3B0cEwrVW5lT2RlZFQ4?=
 =?utf-8?B?ZWphVG9yZjdRVG0zbGRXbGtsYjRNVGFFK3RWcE41RVUvSFFTT0w0NloxMXJH?=
 =?utf-8?B?MXVOK0RYYTExUThycXMvS1JReWxKOEFOTmxNODFlUGh6TGFPdk9NOWdmMHdx?=
 =?utf-8?B?RGhBeDdURHVyZmlaUjFMcEFZYVVEOFQyY1pTaVA1cWNEVlVxelptbFpXbzA3?=
 =?utf-8?B?OENaSE9LblpsMGZBS3Z5ZGdGRDFKQVFFMjhzeWN4d1ptbDRGYVdaanJwQUgw?=
 =?utf-8?B?ZkhUb1UwUWhLS1JxY1l1VmJxY29lZ1RQd25LNm93cStNekcvTHZuRnZXZmMy?=
 =?utf-8?B?M05yUEM4ajRiL3pGTzRnS0U0OTFwYXNpL1ZjejI2WkVTNVRPaDRFR3VGQ1JS?=
 =?utf-8?B?elBtcG4wMHdHR2QvSkJHQlNhb0w1NHNKQ2ptL1FtK3Vtdnh3cGkwRnkvMmFJ?=
 =?utf-8?B?NFJwSWdNVlBMSTdNYUlNRXYzY1k2RnpybE50b2drMk1LNVFQL2VINDZ5c1pi?=
 =?utf-8?B?WUNZcEk2OEVhNUNydUVKSHJUMkxMaUtDNlpyZmJFOEM3RG9JSTV0TkZzbFcw?=
 =?utf-8?B?MHdoOVZndVhMdkN3Q29lVHNaS1NJZ29kY1M2c20zSENwQnhyVU1Jb2FEL1RL?=
 =?utf-8?B?Q1BqUDBFcVpTcXpzc2hRS0xWeFRFaWR6Yk1zalNhcEVKVWkzU3dteGRoTEdw?=
 =?utf-8?B?Sk5vK0pDVHhDTGkvSnpHMGIxbW42elpKaEtMcTREK1BJUDZKWlhmakVzTE1M?=
 =?utf-8?B?VFBDTmJDZGRCMElTZmVaNWJYemdoVG1RR01lNlZqSGFFY0xoUE9lSjBGTjk2?=
 =?utf-8?B?ZEdmcHJNUzVYUUFOOEhkZUF0OEVXZmxHdFU5endhS3gwOFFQZEg5UjkvRFo5?=
 =?utf-8?B?YmY3dnBNNkdHb1liV3RTTXowV3k0d25weUR0YU5uMkE2Wk9tYVFKci9vN3Q1?=
 =?utf-8?B?M3l2cE9PSFZhaXo2YUJHclpKWmV5OUhDa0hDTTRvSEJWd01GK2JJZ1c3Ukxl?=
 =?utf-8?B?enBzY2F0Q3ZpalhnYTV4bUdxUFJOOThlLzZWRE13eTN1L3k5cnFqZUkvYSt6?=
 =?utf-8?B?SFNYUklWcHNNbStGam1tZmZEWGZEdUU2TnREWmI5ZGVpTjhXUzdnQ0JidWY3?=
 =?utf-8?B?SDlZR0ZvRXRnNE1hWjFsN2xIZDdKbjlFTE9QcDY0MG9ZSnpnblBVQXc2OWFB?=
 =?utf-8?B?eUpJN3RUbld1bkYvSW05UE5LRWI4NUQwb1pMaHZCL0VkV3dqaE9uWmx6SGlF?=
 =?utf-8?B?WHZia0lwZmJXcWFsakl1NjR0azdBOW04Wmx1Yy9rK2Qxb29mbUxwRmZ0VEJo?=
 =?utf-8?B?MUZuL0hRTEhyZzBwS1FxY2FzUW9PWUNzUHRIa3ByL0dHdU1RaUVlWTN0aGxY?=
 =?utf-8?B?WXdQTFY1MzdqTHhuSTF0SDljUWs1ZndhTWdLeVk5SzlJRUNnUUpwcnk3ejlq?=
 =?utf-8?B?S3J5OVRNNUYrbVJaRVZrbXRNcG4zTW9CRUp0ZkY5SnFSZXJ4UlQ5cWYzcmNX?=
 =?utf-8?B?ZGFMVlg3OU9obnVvVGNzU1Z3WkhyVlRhbktEdDlvUzhsODJ3SVp2UWloZS9L?=
 =?utf-8?B?TVNFWTAvS0dqTnlYNTZ6ZlVTNzZSK3dQaXJ5ZURGMEJQdkJ1M2R0eHl4U3Rq?=
 =?utf-8?B?RmJEaVdRZEtLZ0xaZnVoS3JiYkVqSVJlNTBzbHkvVWthSHA5SXJjemI0T1ZU?=
 =?utf-8?B?elk5aHMySi9MVThLMXBiekxLR3NMcDVNSzNGZHBSUzRNLzFnSkdaY0ZHbmN4?=
 =?utf-8?B?MWx6alhvK2I0SWRmbVhWNUNpaHV1WXZVVEFENGtWUEJqSUpuQW43SzJiK05S?=
 =?utf-8?B?RnJLYkZ5Y2xPaldoZHJYM2tLWWlGTkJPNWJIUHdJZnRHS0xWZG5CbVdjK0dl?=
 =?utf-8?B?VnhXNUhEZ0g0UUVZampCaGRHTHI3OUxWYnN2WjBhZTF0MjI2R3BxaVhQaDdB?=
 =?utf-8?Q?r+F4=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR18MB4558.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(42112799006)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?VlhoOHlsMmZ6QzR2akIxWTZReW9vVURyVmRrSDhUbU4vRDNrdFdxU29YMUtW?=
 =?utf-8?B?b2E3T20wQi9Cb1NUSGxPUnJxNmlLS1VoN0JLdTNjYmdNdzVhZWo5TTZjNXhK?=
 =?utf-8?B?NTVhODF3aUV4Umg3MGZzQVhPTHpSNFFjWDhZUFhZb0sxaFErVWExWVJCSTVU?=
 =?utf-8?B?REJWVlRLdy9oVnBXcktxMWQ0SUFFODYxdDhvcE9zV3paMktnN0t3bFN0dHRP?=
 =?utf-8?B?N2M5VEdRK0cxLzdabDRDM0MxeGhQeHdwUUVLVDJFQWRrTU9GYTNTNjVTMkFD?=
 =?utf-8?B?SWN5K2VxWUtZdjVHNkc4NWNKT2xiQXpqdlBBYmtueXpBVS9mQUtLd3NKZjZG?=
 =?utf-8?B?MEFWQmpGWjA1dk5BbjZvUkIzSTA2WGlXRmF2NUpsTkpuN0ZFVjM0eG9CbTly?=
 =?utf-8?B?K3Z6TlJFNVJta1BHODd6bVEycTVqemhFY3FPMStMVFhsMlgrclcwR3hibnR0?=
 =?utf-8?B?YmV0OFN1b1c4TTBkZEFDL3pNTmY3dzhIYk9lY2VGazRZbm96YmFONGJpZ3l5?=
 =?utf-8?B?ZURZN0V4VFBhTzhLZS9PM1ZBQTFpY3BVeXhnenBBdjAwa0RidkFzOU9vZXdu?=
 =?utf-8?B?bzE1WkRkVGFZZzR4c1R1dzBBazZtVjM0MXowRllPaEkvaVdEMDdQd1czaWdr?=
 =?utf-8?B?cVdJd3Vzd21hcEJwUTdKYlFISDczT1o0dnh1SFhLMjI0b25RV0djV3R2SnNy?=
 =?utf-8?B?QkFmc21Oa3ZyT2ZGUk1OemJDQU9RbWtzRlJRZ3lQLzFHN3NsM29OZ1FCakh3?=
 =?utf-8?B?VndwUU4vMUY3dnZFUGgzQjZxcEV0amEybzMxZVpnOGxkU2xIS1NRMVJiRHF1?=
 =?utf-8?B?ZEJqL0NBWmVKZkdUOGZNWGxDTWlacWpjTlovREVXY2NDSW1XQ2Uvd1ZsaUpK?=
 =?utf-8?B?bUY5V3VTYmtndUpLZUtnaitsTlRWaHp1RnpFSzI3Sk5oeG4rblhOaE5BTWl3?=
 =?utf-8?B?czVvYTJsNlNoc1d1ekJETHJNTTJDanUzS1p2eFVjYlpIL0VtTnB4dzJqbDEv?=
 =?utf-8?B?cFJBYUV5cEl1cWF0aCtMNE5BZklBTHlqMHNhRnB4OGk4aGNnSUhQSE1LVllV?=
 =?utf-8?B?U3BMa1NKT1pxa1dObkRxamFpN1hlbHR1bDI1WDVmMFZrdTJqWjFJU24wYVF4?=
 =?utf-8?B?T08wUTRZV2xMSi9qekJHMytTdkhLcVpvcmNidWNrZjVQNFdySkVTWEZyMGVk?=
 =?utf-8?B?SDAyMmZBWGxyNFRZOWI5WVY4M0lsOXFHWW12aGl4NzhlSS9oaUZ5WHRJYlF0?=
 =?utf-8?B?ekpBKzBqUS9oVFhJWmxvWGVjc1lXcVlJOE9HN243amVqTENvWUtDMWgwRHdk?=
 =?utf-8?B?VVp6ZWhnSCt0dzVyd0sveERubW8rQVI0eEF5MVZoeTE0R2Y2T1p5TFFlaFFU?=
 =?utf-8?B?MXBBYnczSVErdE8zdjVZcVZlYU9YN3BNZ2Z2NGcxVzU5ZFF4dmt4bGhIWXYy?=
 =?utf-8?B?am5pcW85bWNRWlpWUTlqNUJ2MHBCR1k5ZnM0c1d1WEEwNXRhRm5vSmptZEow?=
 =?utf-8?B?ZEVITFJ5QThQTGtFc041VzF4K3hDRDJTa0dTNzJoTE1OUStFVjlmenA5NVlV?=
 =?utf-8?B?VjRtUHREenBFaW8yNUpYc3VCbGxxT1c0ZlNTMWpMdDdmZjF0SGZxSThpUk9u?=
 =?utf-8?B?NDI1TVNTWGM0c3h4UmU5WHRSSU1nR3F1M0psYWlRYUwyYUFaMlZqeTF0cjVa?=
 =?utf-8?B?NU0xQ3RxbjlNUlp2UnR1MFZRK0ZIRnliNDA5WFdGWHVZUVJ5U3paODYyWEhw?=
 =?utf-8?B?czNmTC90MWxwek9mcHR4d2pIVCtpcmE1c01yK2tXZmhzc1JNeHozcEd3ckZK?=
 =?utf-8?B?NlByZmpYaGkweGdqcnVUeFlYM2YzZTd6WG9Hd1puVGNNU2hXWGcrWk1oV2lJ?=
 =?utf-8?B?MWVSSjF6TFRTZndOQ0JPWjVDbU5pamF3ay9BT1JORjBZcGZ6dlNYQm1OeXhG?=
 =?utf-8?B?YTh1UVFhVnFneVpaRHprZEU1UFArcTBvVmtaS0FGS2x1ZjNSa0lmeGhheWVn?=
 =?utf-8?B?VlhRTmdDTENOazlGK2k3Vmo3N29EN1BFeStMa2RMN3AzeGt5Q09VQjZiSDZr?=
 =?utf-8?B?UnVYbmQ4eGJNbGNqOW1hWC9VQnZEVVNIcXNzL0JXMjJQWWt0aHBYemcweWhF?=
 =?utf-8?B?N0E3NmpwUER3ZE9nR25EeE1wSkxXK2lIV0E1c2xLQXowNzM3TExYUTB2dlpx?=
 =?utf-8?B?SzFycFlOVEFRUFZYSW5VcDNEaWdhaUU3Z3NHa0o1aFVaK3NPbzUxVEk3ckky?=
 =?utf-8?B?Zk05b1M0b1dTUGU5TmZKZUpBUmFtODd6VWptNThIdU45eEdtNHZQSnlNckc0?=
 =?utf-8?B?ZDVzRk9Janh4L0dzMmJlaklxbWw4Mkx1bDlvMXlPY1FDd2lGTjBsdz09?=
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71b006d2-fe2b-4bc3-66e7-08de63ce891b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR18MB4558.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 09:19:45.6634
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NKYIWBySXQvDGX8Xu5XjcKEGqrXfHzAJgraBmEnPMntXGsPZUUEzwFj8/BhKBZqs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA2PR18MB6054
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-262571-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[twei@axiado.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[axiado.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,80801c00:email,axiado.com:mid,axiado.com:dkim]
X-Rspamd-Queue-Id: 6C083E3C02
X-Rspamd-Action: no action

On 1/12/2026 11:17 PM, Rob Herring wrote:
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> This patch series was applied (using b4) to base:
>  Deps: looking for dependencies matching 4 patch-ids
>  Deps: Applying prerequisite patch: [PATCH 1/4] dt-bindings: phy: axiado,ax3000-emmc-phy: add Axiado eMMC PHY
>  Deps: Applying prerequisite patch: [PATCH 2/4] phy: axiado: add Axiado eMMC PHY driver
>  Deps: Applying prerequisite patch: [PATCH 3/4] MAINTAINERS: Add Axiado AX3000 eMMC PHY driver
>  Deps: Applying prerequisite patch: [PATCH 4/4] arm64: dts: axiado: Add eMMC PHY node
>  Base: f10c325a345fef0a688a2bcdfab1540d1c924148 (use --merge-base to override)
> 
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
> 
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/axiado/' for 20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-0-dd43459dbfea@axiado.com:
> 
> arch/arm64/boot/dts/axiado/ax3000-evk.dtb: /soc/phy@80801c00: failed to match any schema with compatible: ['axiado,ax3000-emmc-phy']

Thanks. It will be fixed in the next version.


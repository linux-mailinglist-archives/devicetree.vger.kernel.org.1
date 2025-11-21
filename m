Return-Path: <devicetree+bounces-240928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AA4C77C0A
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:49:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 915B234E279
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 07:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C60412EA177;
	Fri, 21 Nov 2025 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="geiribW5"
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazolkn19013077.outbound.protection.outlook.com [52.103.43.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB31258EC3;
	Fri, 21 Nov 2025 07:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.43.77
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763711363; cv=fail; b=cQf+kEtHFHpt4kFqAk7kr0T5hjRkpsTt1qZXzUAsPatPH2ZsNdWRMnEV01itnh0qWMaTqnQkk9WemD3yhLq67JIMLBOHy8EThv8WaP9HiyqL1cmy61kgIStmMJTfQ7ix1TvSpmeLZlUS2zxN3xZDygKQwF/ilN8u5OJb5WL/tVU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763711363; c=relaxed/simple;
	bh=97fiDwLQ1f7x/dgvlP/6Tnb7X03jABwlIMQuZzdhiz8=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=t+HarQgWWSrf95Vq36RLI/1utW9m5XCRPtAZ3v2SWCuKX3UDHX2tG9wd7RSXYqApP9Q7k5GpCD66EjTxRM4iurkayRPfuxAFnZE8tkBNgfnkQb62IdqX6mJWeW5vEnI3XRO8vBr5qimbBvUqQrRg5tUsMb3L9GhAMIVGmbjrBBY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=geiribW5; arc=fail smtp.client-ip=52.103.43.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lZ4T3wxPLhTpb2BK212qPJ9gWoiD2hoctl/8DhtVyzaFwbg9BcSCdRTkDdLtdJd/g25pmbOBafi/OH9dsSRowrYom1zub48RXnnJFkdZfdIERSWKvp3nohq97LTGVecwk2zOrfZ44iQSyC2NlvVpX03icBmj0QxpCTsbCUff+1d7eBgevbo/32+rMjSdVMDR0T94MEpW/o3sNFT1lcpB4fJCvTL+mBArdC1kg5pSbdKaoxGonHDKOAx6wsYBeCOFeFWKINGC+jLhfPH3iHUfqUJFP7ZeMI8++VTRnsyd1Bs3nfevcfF87OZIX4k9241Pmbr7lGKv6ZAnL8rQ6KSplg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OJgH2dTLNWbjSQlWK3M4613+ap83DyD5JzAl/RGWGVQ=;
 b=LtQ8QVHFVC8O1Dk+SidqCoZ1prTtBeTwHwhDe28gxUsQIXMO1bHnk2ybyl//TW8cXKA3/LFzpgkl7LgQpZjdqwc83OUCvck4wTeGww4nnPuOdQc+PUDrTT5OfdtzPHEVy1ptq/w3cbobOg6sOmURRRMY2+4S8g7zRcUJzXv3UJC4ie6/oOB32UwK8yyExbFYCG8FwPK9atBk+OJfJtnckRXc5ytXoebjsApl3CJMgbMQPKl7FXdErCnkRNo7PTQgw5Yh98cXYjk+/xKxVSP+tGzy0Vkqkhcpy5jHmNN0MYtQC5KiCoUGgYu32d6kz7Hq0OrUr4LXmtbHSNcSUhT1zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OJgH2dTLNWbjSQlWK3M4613+ap83DyD5JzAl/RGWGVQ=;
 b=geiribW5Z/tXMoXERNntkCNR70abIyg54gZpSUnW068ZmrtvZNkwhCVKCmmuIaAhChxLyiFj84hloemQYV6N0PQsbnDZ8bh+aQtj7fXjOoHCei1Ejk0UjdI/CQ7fu/UugRT+qBLI+LPYdHOlaLDjhaBwRi+9UWZ4h09rXGrhLGfhfNFG2ziiAtV+YxbCVN0cgWmqH5NRSHkT1WHJuZSOAnw+3yISyI5+KHL+F3q9EY/1chGhs3cibP6N1JaNVM9fhgMaridAUSKVciKBfdRAX1Zr5CzpZFWiIZwHdW8GIcda8IkeiRdYIIS9BqbqPKv7NdbzP1bU8UmBrbXt2Kf6Iw==
Received: from KUZPR04MB9265.apcprd04.prod.outlook.com (2603:1096:d10:5a::6)
 by TYSPR04MB7275.apcprd04.prod.outlook.com (2603:1096:400:471::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 07:49:15 +0000
Received: from KUZPR04MB9265.apcprd04.prod.outlook.com
 ([fe80::3c38:c065:daf4:cbfa]) by KUZPR04MB9265.apcprd04.prod.outlook.com
 ([fe80::3c38:c065:daf4:cbfa%6]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 07:49:15 +0000
Message-ID:
 <KUZPR04MB9265CB6569A42B1325625A20F3D5A@KUZPR04MB9265.apcprd04.prod.outlook.com>
Date: Fri, 21 Nov 2025 15:49:08 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/12] rvtrace: Initial implementation of driver
 framework
To: Anup Patel <apatel@ventanamicro.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Greg KH <gregkh@linuxfoundation.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ian Rogers <irogers@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Ghiti <alex@ghiti.fr>, Atish Patra <atish.patra@linux.dev>,
 Peter Zijlstra <peterz@infradead.org>, Anup Patel <anup@brainfault.org>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 Mayuresh Chitale <mchitale@ventanamicro.com>, Ingo Molnar
 <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Mayuresh Chitale <mchitale@gmail.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-riscv@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>,
 Liang Kan <kan.liang@linux.intel.com>
References: <20251101154245.162492-1-apatel@ventanamicro.com>
 <20251101154245.162492-3-apatel@ventanamicro.com>
Content-Language: en-US
From: "Nutty.Liu" <nutty.liu@hotmail.com>
In-Reply-To: <20251101154245.162492-3-apatel@ventanamicro.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI1PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:1f5::9) To KUZPR04MB9265.apcprd04.prod.outlook.com
 (2603:1096:d10:5a::6)
X-Microsoft-Original-Message-ID:
 <875b748d-7165-4a4e-a8ba-ca1a67631566@hotmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: KUZPR04MB9265:EE_|TYSPR04MB7275:EE_
X-MS-Office365-Filtering-Correlation-Id: a8798060-b5ff-49ef-7a60-08de28d277d7
X-MS-Exchange-SLBlob-MailProps:
	LVbdfIC7uFA35vxQbuTDCcMQEGrKoFVrlPzYPWEKQI7qbdldPxLO5s8U7YdRtODTEmTztNlBSxtRxjK+y1Ah5J0k+/sfCzcI//22FSe3TgA9OsFvEc5SDrTVBbwvPCATTpjBP2sT3+ynVaGl5LpBcML+v1uCeFas0p2YXcFpfTBqRJ6KcUMmYE0ajmpvl94+neqKbWCenUkxC50PxprPbQ6X8bVjB7lzKjNtjSTfimjIhXj7myIkRLsTPSN5FxhTM7ZjPXbU+GP3UNKGyNYsrxLHbUnnsSVcdp1i7BqThd3i6uxGmNkXBDx46Aqifgp/eWEzIOzA5H5PRatgcscWTSpqsuu2Qo4dRdchek8WlrmNEXlRVzNJPOdZXbJKMZyb+RUdLT7SbNq+4Jr1krjI9wqBRBCYPN6lGIES843IODQasGOfHhKjIuzqBUTvjW8pqrWkpeZJ2OTGPjgqUMyt4s6pgqXSmKR7vk/fppIgJhskOlnz8xjOvC3FstutrmzLWIeUASsoHbVymFwC8kftRpDee+jkpaVlLHNQ7eFprAnX8qbO3HxRZgg5YLM6IvjRIk5x6x08hX/pGnQGLEdkCwJyhYg4HmeJykT8cOLKSx6Ci7j8bMgL2tzLmWSM5XzVrSfMHhJCgWsDr9zuWGKyzf9YJSjvz1RXnCgbuNUY81O9KukWW08diCNgrZNXhF6vjjPSw2S93ZJ6h4i00/FkI5DiCb5LLWvVebq5vBnXc3HakQfNnoay6Q==
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|37102599003|6090799003|51005399006|5072599009|15080799012|19110799012|8060799015|461199028|23021999003|3412199025|440099028|10035399007|40105399003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?clJ2THYvcy9aeFI2MzNjTExXWE5PMW5nSFB4MlFYU2g5N3JoZkZuWXVaYUZU?=
 =?utf-8?B?NUV5dFcvMjd5ZmR0YktLQ0NHYUVydEd5R1ZJK0s0WnJCR2xrRWZzTGJLb1c2?=
 =?utf-8?B?Zi9XSTJOSFVpZjFRZ3NPd0tWMjhvcEsxMzMwT0xTbTllejVsSDkzK2NXMExD?=
 =?utf-8?B?TjErV1E2c3ZaOEJHUitLaWlxeWFqZUp5QWExaWZDWVpoSGpVL3ZyKzJpVTVT?=
 =?utf-8?B?MHFON3hYUzM5UGZIVXlLWU9lM3B5a2tuM3hGSzFTV2FPZEpZQkJqOGFhNFVS?=
 =?utf-8?B?R0tLWXQ5eERoT0JmNUpIbTlpbFNweTFjZ1huaGlEWDNWODYxUlhIRVh4TmJB?=
 =?utf-8?B?RXg0VjVOSDJJZWlUSmtUY0ZZSzAxaS9sZUNNQkZCcFdaTUYxQzU2TGF1ckJx?=
 =?utf-8?B?aFVwejZCSldrWEQyOW1vNGQ1dVRSVDFBNWxITzB4UmpQMC9iVGpiazhFRFhM?=
 =?utf-8?B?Zzl1RGVKRlZQNnZ2Q0VPa1c3MzJoNXNTTlk3TzZ4QU9KZm9iZzc2cFcrQ0dn?=
 =?utf-8?B?T3J6Q3M4Y3JvTlB2UStrS1J3OFFXcHJHclhHOGZiQmN0Z3Y4bnFwQU91U0xF?=
 =?utf-8?B?S0xKRG92eGdFZlVaSzZ6YUpSRjZLRmN4MjZHMFA3OHdTMnhqM3RIaFNpOFZw?=
 =?utf-8?B?SERSNFRlelZKaHMzVGE2NW1BUU5qV1pNTFBzM3JucmxQb1FpeUM5eFJsSENJ?=
 =?utf-8?B?ZFU0TXRXWXVQY2czdGMyVEQ3bVBqNWg5d2JaNjhNZk4rM3NPL2xrdXFFVXBi?=
 =?utf-8?B?eHVaZU56MUhwQlo1UWhwVVdOaWhyVk9ERE5zMzVOTVhkNndnaTJ2b3ZUZ0Zn?=
 =?utf-8?B?WTA1alJYVERmZEwzNVErYVQrUXNaYTZrN0ZLblJiZXlkK29ucFkxQkovWkxG?=
 =?utf-8?B?K1ljMm5RMmJOVHU5QUVqSGF0VTZWNmo1ODlZOXNySEtha1prU1o5SFlpVFBw?=
 =?utf-8?B?NHpqdjlDb21kaHpNL21PR1pkZHBHam11VUZGdDVGNXFBUFcvLzdKTTN0K0M3?=
 =?utf-8?B?V25tc09BZ0ozVU0zcXhhQWxoczU4eThOMkl3TUo5OFJRSUtIb3RsY0NZSjR6?=
 =?utf-8?B?TEh1Smh0VlJIKzlkQUQwdU9wNndjZGh3S3lKaThlVmdQazRHUC95M3hjbmNB?=
 =?utf-8?B?b0RSVTRUR2oyV3ZaMlFaYmlHOVpTWHV2OHJURmVkSmRTbWszU2Rxc0FJa1Fy?=
 =?utf-8?B?dERob2tJYWQ0dmxhcm5FMW9SUlpFdjgzSE1aRzVCOUt3RG82V1JhcXE1ODRZ?=
 =?utf-8?B?MmJrL0o5NElZbXNQTGtUMm9POUpVbnVKcDZDSjM2ZXJENkw2OGNDSmRkeUtQ?=
 =?utf-8?B?Uys4RXNpM3I4TzdpUGJxcENXM0lzVkk4enlHTVE4SVo4MXlqZHVVYTcrQWFT?=
 =?utf-8?B?QVYxbGpHL0xxaHBZekQ1OE5udXA4dkhSUDV5Q01pc0srdG1SekI5cFM1MXkr?=
 =?utf-8?B?cnhVZEl6OC9rd1ppODM0ekxMc0hxaXBGOEZPN2JOSms4RTdReXd4MWFNbUJu?=
 =?utf-8?B?UzduME9mUE45bG5tY3diOXFENmJRRHZacmUxSkV6cFRBQ0xYRWp2K3lrajFY?=
 =?utf-8?B?cXM3elpBTTFkU3N1bVNCR0lVdDN0My94T3huSUkyZXVqKzA2S2pWK3ZUNzll?=
 =?utf-8?B?cjY5eEZ6SEpkb2UyeUp5bFlnL01POVF0Lys4V2hrWEJOSHl1enBoblU1VXpj?=
 =?utf-8?Q?G2M1WjfQw3ipl6n3mSR0?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?T2hWTFBUVlF4QzRKSXFFNUJIMDhkcGNKS0hWYVhPTG9Pakp3MUUrSm1ydm9u?=
 =?utf-8?B?amxOQzY3Z0xaVnc0WHZUOTRUZGJuS0d0NFEya2JqRFNFcnRaM0VmZkJpbFJK?=
 =?utf-8?B?aGRHRXkyZzM0WGpYaS95Qkh1eVdzckJIT2NyTEpjOTZRbDhFN1o5cGRLWDF3?=
 =?utf-8?B?T2RzQnVWcjlXWU81VENTWlY3Y2RNZUZtWFpXS2pyYXpQMlJEbU4xVnlGVmhL?=
 =?utf-8?B?SWhFUTlLTFBRZm00WnliNzVrSUx6TTRvNWRhWUlqQ2FQZ1hnQ3FxVHNVazI0?=
 =?utf-8?B?WDhVT2xPcGxPa1pZMGNkWEhrUm1wNlkxL2JLN09LMVBoNmFHSlFOSVhWdUdU?=
 =?utf-8?B?UGNvZ0RUdmhtclZsVWExREErQ2Y0bWNqQWg1ZFB4ejBCYmFFRy9KVG1jV2Jw?=
 =?utf-8?B?WmM4MU56LzJUNXVsNVpnb2s5Mm1GOENaeERYQUhzWmMveWlzbGlqUzVpdXlt?=
 =?utf-8?B?M0JVbStibXlVK2FFa2h4MGRvSFVNNFhwN1cxb2l3RlYyR2p1UnJEY0wzZEN1?=
 =?utf-8?B?OXZoT2VlWndpdmlKZ09HYzlpUnhuNU5VZ082ZDU2UkRlWmREbUhHVDNTZzMx?=
 =?utf-8?B?c3kycms0NGlneDdnMWplYTVWWE5ta3hGWFl6VkJrT0taRmQzOUZUakdLOEs5?=
 =?utf-8?B?THRyb3FSLzcwSjhmTDZFTHB2K0puU1A5TCtHQUxPeWFZVDkvUmNoTjJkVlR3?=
 =?utf-8?B?RmhwYnowUGlsOHlKbU9qYzk1OFQxcjUzVEY4QWNCTG9BcXZpYnJWcldjMmlD?=
 =?utf-8?B?TmxBNFpqdG5ZcFE1T1FpeVdaQlBhT1orck9IeEo2WVRGUXdxMS9oaktuWTlO?=
 =?utf-8?B?QVkrczVsS01zbC96SzdQVXFSc3RpNGV1cE8ycWpqMm1yL1lIMVRiQlFWTnky?=
 =?utf-8?B?aXc5OFA4TStVSjhZZTd3N2haajR6aTROMUswbE5IWlZhalNJYkQxb0dJdjlQ?=
 =?utf-8?B?cnV5SHphZ2RkUFRiN3Y5eVFUdjRxMWp1Tnhta3VQMTBXZ0FzeVF5a3BvZzk4?=
 =?utf-8?B?Ym5GRjRuTzk2cWJzNWpvMVNHZ1RvU1RuRzdzTzh1SDlHNVdaS3c4NllYb2dn?=
 =?utf-8?B?UkxEMWQwL1haZ1NSL2RmSFZyR3pJeWRBQkxGOFNDOWtvWVk2Z2NNekl5OEdP?=
 =?utf-8?B?MmoxSytkSTNYVTdDNXBDNUVNbDd2VUh3THl0cDdXVnIxcUZQZURBVHlla2du?=
 =?utf-8?B?MUNlR2w3K1VwVnliRTVLOXJCNTVEN3lOOWNUZGZrV2VtNnVGQi9MNEttN3Nn?=
 =?utf-8?B?VldRclEyRnlFVlg1R005ZXMwTjdBSUR6VUpRaTZMVTVINGdqQ01mdDNPLzdY?=
 =?utf-8?B?UXNtZWNmTGl1MlJ4WjhoaTliUUNzMmw3YURxYW90M1dHQVpSNGlsdEplWlFN?=
 =?utf-8?B?djRyUHYxZVFaZmF1N2RsVzlEaThORXNIQnFZeGwxZ29SQ0FSZVVnK0lFY3pT?=
 =?utf-8?B?TDdRUXNaZzdySHlIRG50VlRNTm53MWxuTzJtamhhdlB1Z3VNazk4amIxTUls?=
 =?utf-8?B?ODhjQk4rWTdSNlBjekNWZ0VYYjN3VFFUTTRWT29JRVJWTGtoYUhETDRtMkh0?=
 =?utf-8?B?ZEIvV1NYY3h6dzEzQUZqSVoxQUFPVDI1VVZsaExNbnB3NTMxZFduOUlaVjlO?=
 =?utf-8?Q?4Kvf8XSdS+aGon40VSOUcI9Hvv4L4jwwrvPe9NUiU6c4=3D?=
X-OriginatorOrg: sct-15-20-9052-0-msonline-outlook-38779.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: a8798060-b5ff-49ef-7a60-08de28d277d7
X-MS-Exchange-CrossTenant-AuthSource: KUZPR04MB9265.apcprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 07:49:15.5961
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR04MB7275

On 11/1/2025 11:42 PM, Anup Patel wrote:
> The RISC-V Trace Control Interface Specification [1] defines a standard
> way of implementing RISC-V trace related modular components irrespective
> to underlying trace format (E-trace or N-trace). These RISC-V trace
> components are organized in a graph-like topology where each RISC-V
> hart has its own RISC-V trace encoder component.
>
> Implement a basic driver framework for RISC-V trace where RISC-V trace
> components are instantiated by a common platform driver and a separate
> RISC-V trace driver for each type of RISC-V trace component.
>
> [1] https://github.com/riscv-non-isa/tg-nexus-trace/releases/download/1.0_Ratified/RISC-V-Trace-Control-Interface.pdf
>
> Co-developed-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>   drivers/Makefile                             |   1 +
>   drivers/hwtracing/Kconfig                    |   2 +
>   drivers/hwtracing/rvtrace/Kconfig            |  16 +
>   drivers/hwtracing/rvtrace/Makefile           |   4 +
>   drivers/hwtracing/rvtrace/rvtrace-core.c     | 501 +++++++++++++++++++
>   drivers/hwtracing/rvtrace/rvtrace-platform.c | 192 +++++++
>   include/linux/rvtrace.h                      | 280 +++++++++++
>   7 files changed, 996 insertions(+)
>   create mode 100644 drivers/hwtracing/rvtrace/Kconfig
>   create mode 100644 drivers/hwtracing/rvtrace/Makefile
>   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-core.c
>   create mode 100644 drivers/hwtracing/rvtrace/rvtrace-platform.c
>   create mode 100644 include/linux/rvtrace.h
Glad to see this series and look forward to supporting 'perf kvm'.

Reviewed-by: Nutty Liu <nutty.liu@hotmail.com>

Thanks,
Nutty


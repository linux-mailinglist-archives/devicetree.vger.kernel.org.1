Return-Path: <devicetree+bounces-140317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F22A5A192F6
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C6E53A0270
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AB6B212F98;
	Wed, 22 Jan 2025 13:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="sEO2VqVf"
X-Original-To: devicetree@vger.kernel.org
Received: from MA0PR01CU009.outbound.protection.outlook.com (mail-southindiaazolkn19010007.outbound.protection.outlook.com [52.103.67.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04CF1E4AB;
	Wed, 22 Jan 2025 13:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.67.7
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737553882; cv=fail; b=IDyDjnF7hvZlqg7jKl6mKq4fb+YHj/lsdvoUwK9tiIF9HnxYWo54WRpgwdcBdRkNNs7x+lw+75PvZd45RHe8aQ2QQis3l7P3Z84v6K3twrw+67aldaXbsLXhtJPyLVjydXnUnNZf7t4WX7WCUe3nnskz25o74nF9R6564za5Q/U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737553882; c=relaxed/simple;
	bh=8x9zuQM3Ac+h49WzMjShv2RAwkNUApX4C1mmhH2HtlA=;
	h=Message-ID:Date:Subject:To:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=RtutAjzD9UrRQqsjX6DGlHW8b8ZsMKERs2S+yNACdfnc4FkE4CjjzsHgFfUnbxrtX+scOPknUOxhXtTMy5nAV2YUlSH5NZaDx2rFLYLw89z8srWftm6mo2ZbuMkW2aaJmHz5Sx4aBv+Eqmjf0mzA8ZIZOBReNctafIrUD9H3Bs8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com; spf=pass smtp.mailfrom=outlook.com; dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b=sEO2VqVf; arc=fail smtp.client-ip=52.103.67.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=outlook.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SKwvU27MR76GR3fnr+NshxlI88rzBXLTUlfCLsTA51aGzHB+cZR073lfRfBWm5PtwXPXjQt8YoHHDkSas1/7AQ87MptmrMpz4Pek2ZA4566JG3n3JGuebo5bdB3aTIBZrg8g33EAeXTEnyKhTbRLKHIAOFAumZxFHkYtInJc1AAJBcfkvYEGuMUJcQ7nGfMD9iMajQ2IdWtyFL0mq3jQT6CFTQdzhDurU8HcJzGBeanTYiVEeXWfqJQLHGMTZfVzjD1oy76QCEezuC/p17BVWMiWy6nQcQRnHhnwmq3QWjN19S5mWGHsl1K9l5qMuG1w3/MVZl863hJZifYK/Buz/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=56eza9N3su1Le8VCE/IEi4mdblVIDuewBQQDN03AHBQ=;
 b=ujVJWHK+BeUs6gd9XmiYcmVVSmJD+JhATDzA+gaXDaFqMpW52l++dH3LKtcetEl+ez9P4PVSBWUP4UIYIBYwfUAN4uevr7YcwlW9M+I9ad9ZGzJyVKZNtAvARGCVfLq90Ef2TJn4tJQKLrhMfDw8SVMTFZ1NxDNab8FJuGI2fLjBFq2VdcV9rFzyVE2C/4gAVHDFpObNsWwFW1RBeWvRCCIkWAMAgkl4L6DlcDQqakx9RI3R6fXAXBCN02UaKhhyvO8rT0eCOKkMaFIJ9QOU9qstjMwqwNcDZio6WRhF6K2wLyDETHw95D2QqWYYtqzVN4lXFcLbreMkt5g6W3myKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=56eza9N3su1Le8VCE/IEi4mdblVIDuewBQQDN03AHBQ=;
 b=sEO2VqVfhzar0JnuMwXXJu7zF9WUtSqn5t76msnHij9H+tbK+uzGvzEcAJSdK2U/w124Gu0PFaSuvoXemUbkzzLOwSxe0o0TUT/MFgMCwCRRTrBn7VqUeG8aXGFjXznovdzLsxkToDKCvO2YmZHvqJn3OA2kCNADGi/tC8nmXS8ftpI4PAcafEP64/5szcg/2x1b5fT9NvJ3Qy+h+DTBgRMhKUEiQJVUMMza/0EmWWuBMKHFY8dPCk0wa7hMMmpjn/XyqtdkKzdOeC52ongX48Rkv8HfRz5+hQF0sakpgvd7yRExEPFgNRJyNyZFxL2Nse/EN8/8P0ZVutKmoLGZKQ==
Received: from BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:44::15)
 by MA0PR01MB5895.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:48::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.23; Wed, 22 Jan
 2025 13:51:11 +0000
Received: from BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::954a:952d:8108:b869]) by BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::954a:952d:8108:b869%3]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 13:51:11 +0000
Message-ID:
 <BM1PR01MB254564DCF4004C3E60177331FEE12@BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM>
Date: Wed, 22 Jan 2025 21:51:05 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: interrupt-controller: Add Sophgo
 SG2042 MSI
To: Inochi Amaoto <inochiama@gmail.com>, Chen Wang <unicornxw@gmail.com>,
 u.kleine-koenig@baylibre.com, aou@eecs.berkeley.edu, arnd@arndb.de,
 conor+dt@kernel.org, guoren@kernel.org, inochiama@outlook.com,
 krzk+dt@kernel.org, palmer@dabbelt.com, paul.walmsley@sifive.com,
 robh@kernel.org, tglx@linutronix.de, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 chao.wei@sophgo.com, xiaoguang.xing@sophgo.com, fengchun.li@sophgo.com,
 samuel.holland@sifive.com, christophe.jaillet@wanadoo.fr
References: <cover.1736921549.git.unicorn_wang@outlook.com>
 <c9dd12c3ad77b13dcdfbf4accd51e92e6ea2a4a9.1736921549.git.unicorn_wang@outlook.com>
 <gyf6cdqjnvom3adf3cr7l72e7xevewhrsv4koelpnfm5cd22ge@t4ru6avsihzd>
From: Chen Wang <unicorn_wang@outlook.com>
In-Reply-To: <gyf6cdqjnvom3adf3cr7l72e7xevewhrsv4koelpnfm5cd22ge@t4ru6avsihzd>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR06CA0004.apcprd06.prod.outlook.com
 (2603:1096:4:186::20) To BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:44::15)
X-Microsoft-Original-Message-ID:
 <8645fcf2-2d74-487c-b64c-64a982440518@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BM1PR01MB2545:EE_|MA0PR01MB5895:EE_
X-MS-Office365-Filtering-Correlation-Id: 0972986f-3867-450b-3096-08dd3aebd45e
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|19110799003|7092599003|6090799003|8060799006|461199028|15080799006|5072599009|440099028|3412199025|10035399004|41001999003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dVRWZFpVSWdOTG9qQjNuMkV0bWc1MEVrbStwM1hxcHMvcmJzbnFENk5Cc2hp?=
 =?utf-8?B?eG1OZzFlNU5RL2VLMGY3UW1ndUJvQitCTDVoZHlhR2xmOUhvMWZCRStxMDMx?=
 =?utf-8?B?MmlPNlRrR1lXT2lKcW1yYlVYOGpTOXA4YXZDVGxOUFpYeThpZzJiMDdMWTVH?=
 =?utf-8?B?aUZicWVCdUtPWWdWWFdMMjFOS1hXdU1DbWNFZWJUZlVwbzVsQi9IRk5TN090?=
 =?utf-8?B?eTNqVTFhN1lGb3B4MmRrbjZqWmdaZ0piRGt2dmd1dGNyc2o3eGw0czBhY0Y3?=
 =?utf-8?B?RU5TaDUyK084ZDhPSW8zb2RRSnNZb0psREFJTEhBZHFoSm85T0pWbDVrNFdi?=
 =?utf-8?B?bWtuSGFzRVkvdkVVR2pxL0drazBtMGlzclpsbFA4aUo4SXEvbEFlRzdiTm41?=
 =?utf-8?B?Q1oxQWRENUN1REFIdS9rZ2tCc0lPOEZFcDVWWDBlVDBqaWZQQVA2ZzQxY3dN?=
 =?utf-8?B?TVRSdFZMT3l1SnY2MUdjUmw1UmJiS1Y0dXJjSW5GZDZUWUY5YnQ5RVFrQWNi?=
 =?utf-8?B?WnkvSkp0T3N6R2IrYlNHWGZtZnM4QjhyTkpKbHdNYlJMc2Rxenk1aTc0c2xk?=
 =?utf-8?B?UEhTQnhOT1E1eTk0dUhsVU5HcU1Ra3RERkgwK01CUFhNSDRiQm5heVlWbUQ0?=
 =?utf-8?B?ME9JSkgxelBVZzlxYXM3NEdHZVN4YXRNT0szSHlWL2x0cGMrRUtNemNlUC9R?=
 =?utf-8?B?UW5DdHdtVWFxR296K0U3SXpVT3pkZ1EwTTRFcmNBdWNOZmtHNDB1WXFReklE?=
 =?utf-8?B?N0ZNMXIyZy9pb3hJTS9UcTltTU1MSzE4S1dJSTJaYk5hOVBtTTEzYnRiUmlK?=
 =?utf-8?B?eG5xby93MG1kcmVMM0grT0dPSnMrQlgwVysyUVFBS0VPRDdBaGVud3NYOHdT?=
 =?utf-8?B?QTZsSEo4cjlzOE1OcVpvUG5Mb0pNdFgyUmpOMnVIZExpd2JTRHFPeEUxVzB4?=
 =?utf-8?B?UG5GOFNvcU9sQkxKUS9xMnNzMUtWTlVWWEVWWWRZcWQ5QVFaVzFUMkFEMkNM?=
 =?utf-8?B?Y3llQWxpMXJ5N3JDTjZZL2U2MVBNMThXYlE3elZvY3ExRGxZMTNwR1FaZ0Vt?=
 =?utf-8?B?QUo0ZDROeEhaZzZuQUcybWJHa2ZBdzZXaEtUT3B5SWZ5UUFGYS9FTGlBR0tO?=
 =?utf-8?B?VktReGFaa1kxM1dJeWYxNmM4Qnd2UFZUQmd4L0lKZWxjUUxpQ0tsZWJEUHlr?=
 =?utf-8?B?NjhmUDlON3ZDY0hKMnMrWENubFFyMkVGbEFDaGxzTnRkTnJaRWZHbWl1Q01r?=
 =?utf-8?B?K0pkWGRoSnFUNEMzeE14bTBIeXh1VDNXeVltTHZ1RDhTeUpkNmNFUW9hN05X?=
 =?utf-8?B?TFJJVGdWWGpXNTNZWmlHVGZsSVh5bXltaFp1K21rVVhFRDFOYzNKYjNRR1Q4?=
 =?utf-8?B?dG5KY05uNmR5WWVjd3BhMlZ2T1ZoUTVwUzN2Mk05bllmNlU4dlZiVm9VUlBr?=
 =?utf-8?B?OHp2dW12VjRiWjlaYVhUUVJQdGJCSXBzb1F2TU1tZW9aQXBDSUh3ckRqdTdG?=
 =?utf-8?B?UnJoaERCbk1OMkdIMW5YcWNkcnRWOTh2Z2VxaGpaT1Nja0ZIc0Y5NUViMXF4?=
 =?utf-8?B?aEtIclJ1ekFtYUw4V3Q2VzZWcGlEN21aaVpYaXhidEZZVG05VUFBdlRNSkY5?=
 =?utf-8?Q?RIzCYTufssTp5jGetqe3mjBwCaGZPg6moR+lFyBIbYm0=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?RDJJRWV1Nkh3dnhlbzZpUGhGMnB4MURKdzV3YksrdGhuelIxTHVQUEd0QmVi?=
 =?utf-8?B?TTlLYm05R00wYTZLSUJMU2dVczgvNEdWeG5hdlVsZTludEYyUndFc1JSV0ow?=
 =?utf-8?B?QlljYS9SdVhRNjNvRVVWZGoxb1BrZ04zRUhUWnNWdDdiSXJzUlBVQ1ZVUVhk?=
 =?utf-8?B?TzdTdzhSczVRRC9mMFQyblh0NDFWbUg4Q0JTSUlpTWw5VHhteWRJanpzalhP?=
 =?utf-8?B?czE1V0w0dHZYaHZZN1JHVlA2Q05FRUI5QlhCVVlNTlpiZE9ORkNnWnhBRlA4?=
 =?utf-8?B?TnZSUHd6MHFvRE44MnZ1ZG03VTYwbmQ0QXJqeGxmZXhKMEpaeSs5KzlxTnJD?=
 =?utf-8?B?U3hjU3JPNTRPaU13dkNpa1dGYkFwTm9RSmxCcFF5Y1RLcUR6NGxlSnMyMlNC?=
 =?utf-8?B?V3Z4UUpFNUlsUEIxTTUxSWpCbERZMlUweVpWM0d6V2UydGxkK1YxcDF3UTNC?=
 =?utf-8?B?NEdOVHpHMmRJSTNVUHV2enBSRmZaa0VveHZqdlFGcjNrcG9iWldxbmFkQjQ5?=
 =?utf-8?B?dHJ4UDJjUXBhZjdiZWpmUFR6R0Y2Zk11SDZBZUcwRHo1eTNNN2pLTWpvV1dl?=
 =?utf-8?B?L1pRbG5SWnY3U1d2YldWT3NJRkF5eng2aDlQanNCN1FhOGVhMklYTzcwQ3No?=
 =?utf-8?B?akl0cGM1VW4vdHJ1SzFEUkU2c2JybmZxWUFFSGJwOUJGdWE5RGpHRWlxdFZM?=
 =?utf-8?B?YVFsdWJSdi9zWHU1V1dETmRtb21PMUFnekUwS0w0bVlIUXVuRlg0RkhLMzMy?=
 =?utf-8?B?eUNNeXFjMXdYTDRvbFdKVHU0KzY0N2FnWnVEN1NnZUNGQlZ0Z1dRd3BUU3Ro?=
 =?utf-8?B?MlU0aG9jaXUwWjRuRnh6WDZXTXMyZE1GWW9QMTk3T0ZOVEdMSWhlWkZkMVBG?=
 =?utf-8?B?bjZic1VjOExiRC9jRDc4U2JLWHJMTnhMamNsMCtTR2lyemgyL3pkWnhUQWIv?=
 =?utf-8?B?Q1dGTVc3R09FaUtiQytOaVJnZXBYbDFoL1J2djNCemdhZkN5Y3FXTmxEYXBu?=
 =?utf-8?B?NEltckg0Qyt4YS9EZm1sYVR5Ly9NaE5EY1YzVmExb3pWOHdIN3JHSkVreHVh?=
 =?utf-8?B?Y1RLSmRBdkdUOHBqOWl5OFptVXNMUk93MEdKZXk0d3pGaWJqMFVtQXdmVUNq?=
 =?utf-8?B?SWVuaUZsYTVXSDRZWnBhNmR4VEN4UnhObS9DNzQrMmxoY2krN0hnRmVsUll6?=
 =?utf-8?B?cVcxQWhpaWZuZHJxQml2Uk1TSnpLZEIwbTZ2NzZaS0Y4R1o0VElsazIzcldz?=
 =?utf-8?B?NmpYLzFCOU5TS05sajFybkpudEZEbmlDWmZoQWJkcCszRW9FZmpGMnIxb2sz?=
 =?utf-8?B?N0JRZTVGcVFxcjFaRzBNdlVld0RESlVMUlpMUEIyVHg2QzJzYXlmRUFVNncv?=
 =?utf-8?B?RjZaejZVOXN6UUMzZkRUREZ5YnEzRkhDbjJMSG9UdWVJQ2ErbnFpcEwrMVJE?=
 =?utf-8?B?YXZJQldZRzZ5TytsSVJIWVBxOUk5WC9HZWpXMWpESFlyQXUrQzNQRWNsY1dk?=
 =?utf-8?B?eXVMSG1uNVI1WXlEVWl3QTQ4eWpJOFFFUjVLdWI3SytTYnNrR2g0Y21GVVg0?=
 =?utf-8?B?cWt6cHhxWFFSbElsMFJOTkxPNk9ZcDFPcGtDN3dCb0FSQzhOdEoxVC9WNStB?=
 =?utf-8?B?ejhGVnZjVVhLdWFzajVaNjByL3YvSkVxYjVYRkdTTDBpamNhREtJdHUvdHFi?=
 =?utf-8?B?eFdQVFZDd2RzN3MzY2hlUHJtNkRQNGl1N2FUNUdkWENnWlZseHMyVElNbFlD?=
 =?utf-8?Q?8/ab0metgBdOJyKuDD3kVUwY9/tFBaS1wSOL+5s?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0972986f-3867-450b-3096-08dd3aebd45e
X-MS-Exchange-CrossTenant-AuthSource: BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 13:51:11.4555
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA0PR01MB5895


On 2025/1/20 10:42, Inochi Amaoto wrote:
> On Wed, Jan 15, 2025 at 02:33:23PM +0800, Chen Wang wrote:
[......]
>> +  reg:
>> +    items:
>> +      - description: msi doorbell address
>> +      - description: clear register
>> +
>> +  reg-names:
>> +    items:
>> +      - const: doorbell
>> +      - const: clr
> please reverse the items order, the clr addr is more suitable
> as the MMIO device address when writing device node. doorbeel
> address is just a IO address and can not be seen from CPU.

I find dtbcheck will report error if order is switched.

On SG2042, address of doorbell is ahead of clr.

>> +
>> +  msi-controller: true
>> +
>> +  msi-ranges:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - reg-names
>> +  - msi-controller
>> +  - msi-ranges
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +    msi-controller@30000000 {
>> +      compatible = "sophgo,sg2042-msi";
>> +      reg = <0x30000000 0x4>, <0x30000008 0x4>;
>> +      reg-names = "doorbell", "clr";
>> +      msi-controller;
>> +      msi-ranges = <&plic 64 IRQ_TYPE_LEVEL_HIGH 32>;
>> +      interrupt-parent = <&plic>;
>> +    };
>> -- 
>> 2.34.1
>>
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv


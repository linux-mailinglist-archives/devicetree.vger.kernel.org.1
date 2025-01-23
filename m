Return-Path: <devicetree+bounces-140443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A711AA19BF0
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 01:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E032A168342
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 00:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ADF9849C;
	Thu, 23 Jan 2025 00:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="ilnxBIuj"
X-Original-To: devicetree@vger.kernel.org
Received: from MA0PR01CU009.outbound.protection.outlook.com (mail-southindiaazolkn19010014.outbound.protection.outlook.com [52.103.67.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABAFE4C6D;
	Thu, 23 Jan 2025 00:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.67.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737593263; cv=fail; b=Ebmr9cExhA0Uha9LeY0BxdVdYyeGdN3/7+niKYqMnBp/B2/zkgd9wIIG1rc8reFMciqlaPrdyT9vkX+vx5TsodpIvkF6lWKwlp04sNoFFdD57IgCfyabyupm7JjI3CA150D7epzN37kJttaFw0nniXYa/a5cWb0pEgfgW0utrSA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737593263; c=relaxed/simple;
	bh=6Vox3knyoOg2VckVSp0kUKMBdyzL9xptF/0B5nCjIgc=;
	h=Message-ID:Date:Subject:To:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=bLxoOgzQ++p/ikTq+gghcnKQO5Pvh4nKA4VPXOO1qwkFVSB1VsE11FZTt0piC9v+xsFMcs+0MNUX46M4KpFXS7+ryEZiq5+tfkVt0SBJO8VhN5mrNEuji4wH5RvvRLgZjfRYBPodDt9+TGf1+wWbP+9fWf86zDM3ivp7W4gSXWY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com; spf=pass smtp.mailfrom=outlook.com; dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b=ilnxBIuj; arc=fail smtp.client-ip=52.103.67.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=outlook.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N0TP6WqHnOre+A6S8iaY13r22Yws2andPq0+R/A1QALj6riUTwu9M4JNicdbM46qs+dqxTkwZyqBq+SjMjp81/UaHkWEvMY7oVa4pJcDqS4CfdiEoje/CSUhVDz5gWL06Twprkyot0et3xMmMF3L+juiIg8b2fNMwHlS+SDzxFINPYfXGGhCoKx9K3pbuBnuQBH5FatO1m4s+qzAMdMQJvNsoR5x9njo8+KJSHGIkOux4ENluU75vFuSybss0vyocTcwmDTciiAYgcUZEBYDzBstB5FHxMy44TexYuAh8luRwZLBic4B+Y2eRFUJwRm7EKyUdnbNF8Pd8raEXwdkmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1kXzQY67lqtml4hK+vsRSag+XEzizOA6XVzjd8nRwaE=;
 b=f7jCkhbiUjY9bI1LwMNA+FiPBO3XhXvRs84K4F/J+77Cm/cf/o8wayMmUZ/BZ19IpJnvqTVbSuDJT7Sh6TcBffyIkDOEwsXj/PwkhiG62bIt/jIhilcDQ08aVE+nZVftiwV7mbf+V2qj2SaW4d9BYNFj9PiJQs80y/P+q8MrNZbBbiC0uubDAii0ufS8UT2+/2HsuIn57CiMOYR/g9XKpBAMIVNUYYZVXk3PWmTaY1GV8Z/PpJ7zeQYABEopVCuwqHlv5/YHAZxxBdgUkI6GIktwyGyBSptsTwDt9867iw0UlTrJwSo0z7IXqRIDQzXyBupxxjl9mqlmUxCyEfBVVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1kXzQY67lqtml4hK+vsRSag+XEzizOA6XVzjd8nRwaE=;
 b=ilnxBIujGYHme8jwhqwbgHKE6NOk5mZt8paiGPXqeNyoRxWGF4qi01qaxIUU7Hn77Ws4+zshQQX4NEaOBOFDmidajgIiX9W0oHjliJgJqZ8YsZ3kT+vR8lN5U/uEPwGgAXdNPFDo8aHS+L6NHUlqk3Wtwq0cNI6PyNjjn50d2nx3Ax7aNhewCTqqoy4MiBuz2BECkEncZEK53vkAxaJCgA1ipHCF99byfY7gbKtNADN3jg7OVUEzmUw2uY0mrdHLBXGI6XF4XopsqahoLBeHDJhEqM6IroxQH0HhZienvsDAAOXuOuQj05ZXtNfMWDrSL4kzh4a/tb1gUuU/DCdSnA==
Received: from BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:44::15)
 by MAYPR01MB10588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:155::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Thu, 23 Jan
 2025 00:47:33 +0000
Received: from BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::954a:952d:8108:b869]) by BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::954a:952d:8108:b869%3]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 00:47:32 +0000
Message-ID:
 <BM1PR01MB2545B70D34614F5BE04B116EFEE02@BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM>
Date: Thu, 23 Jan 2025 08:47:26 +0800
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
 <BM1PR01MB254564DCF4004C3E60177331FEE12@BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM>
 <wwgb5kx7o3s53tzpjcizrw7ftkxze4ynrwvgxshk6cl3crslx2@erbjvg44h7cb>
From: Chen Wang <unicorn_wang@outlook.com>
In-Reply-To: <wwgb5kx7o3s53tzpjcizrw7ftkxze4ynrwvgxshk6cl3crslx2@erbjvg44h7cb>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TY2PR02CA0034.apcprd02.prod.outlook.com
 (2603:1096:404:a6::22) To BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:44::15)
X-Microsoft-Original-Message-ID:
 <176b3061-a7ea-4c03-8919-8a17082f2155@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BM1PR01MB2545:EE_|MAYPR01MB10588:EE_
X-MS-Office365-Filtering-Correlation-Id: f7d2b234-02b1-4280-7637-08dd3b47855a
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|15080799006|461199028|6090799003|7092599003|8060799006|5072599009|19110799003|440099028|3412199025|41001999003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UHBWWEc2MjZXdEh4Zk9aN3l4VEF1MmJxK0lNQVdsNFBHdWVDN0hoNndNUnVx?=
 =?utf-8?B?djgrdEZBeC95UXR1VTh3REl5b2JobCtSWjBjWHpseFRQUmN6S0g4Z2pPWFRS?=
 =?utf-8?B?SWRyWUV4bWQ2bGk4MGhoREFHT21QUlA5QWxKYzNvQzArenJNR2hqNlowSmpz?=
 =?utf-8?B?cTEwRWltaDN6V1dFa1kwU3RjNGdLdDlyWXYydUtKVWUxaDZ6eUpqRnpOaGlB?=
 =?utf-8?B?eSszdjk4VEtEcG16SVRmcXUyeEhSK1pLRG1PeEtUSDdPaktRZWZtK2l5THAw?=
 =?utf-8?B?eXllM3BPS3FLUmg4d1VqWTNOcFR4UTBqSmIwckV0OC83L1JxR2daWEZnL2ll?=
 =?utf-8?B?eW9hWjBEU3JUMHdvUHkraDkvVGh2ZVhCbTdlUnExKzhMbGRzMmhpVCtxamdO?=
 =?utf-8?B?bkRmNHU0MVJ1N2trN01jZ3pnak1mT3NlVDlEMmU4N2pINUorVkFtczBVT0Rh?=
 =?utf-8?B?a20wbVlWNHBTa3k3QXRXTkQwOTV5Y2FzVCtjdzhCd2JwTVQ1V2hTM1Nta1JX?=
 =?utf-8?B?MWZVZXM0WFVjTXlsOTQ3OUtBcGVHTzlNRXR4MlRZWjgzRXZyL3Fka2ViR1NQ?=
 =?utf-8?B?Nm1GTEk5a2FWalBqeiswSXdxTnJVQmhwQUdMRzdKTWRROUFkNS9aaDVTNURK?=
 =?utf-8?B?UDZFeEpMOFlrNlM4V0dtbkZENFJiYlJJdTZCbG9Kdk96bkN4bU51M1dMZ0pD?=
 =?utf-8?B?MXpvTzNWZ0Z4cVd6ZUZXQlZxUnBBSXIzOFRRZGpmY3BSUlhwM0NBU1I4eGln?=
 =?utf-8?B?b2sxSUY1R20xYk84ZVA3ZDVqaFNqK08rSk9BMHJjTmJjcXd0R3FlWUZUV21w?=
 =?utf-8?B?MkMrVVp5dDlMdVJwVjY0Y0tzWVlvSlJuSWsyTDY5eGRkZGt5QkJvMDE3RUhz?=
 =?utf-8?B?UnBVVlpoc2ZLbDgwQUxDQTJqMGNsTHRCRzUzSkdSdGdkTTRMZ3c3YXA2OHBO?=
 =?utf-8?B?Y05nVytGUTA2aGxwVkV5TkJUaFR4OUhLQ1pnT2ZGcTYyV3g5Mlh2dFdSNnhv?=
 =?utf-8?B?ZE1DZGhiRC9Bc0JLRFdHdmVJS21HQjV6OGJtanByTUZZSkp0WUxPUmRBTkNm?=
 =?utf-8?B?OTFuRW1WNVc4b3dRYXhzbkRCK0F6WHFERjNWMG1vdWZ6QWR2czNzanF0SXN1?=
 =?utf-8?B?RG1UUXpEVjBuYmd0YmRaMjZQdXhwTWg5eG10MXc2YUxvL0VJWmM5YXZJc0xl?=
 =?utf-8?B?WE9hSUQrMUdVUEc5RlBDUER2OWxVNG5pWVBBZFFSVlZTTGY1aG5BRGxjWVly?=
 =?utf-8?B?VkhqUkZKZU8xZ3lLcDhTRzZ1NlRydWVIVDZTWHNzbldqUzJCQkZza0FyZWRS?=
 =?utf-8?B?Y0llSk9lZ2xrQVkzVFZTUGpnNjJHWlovQ04yVTlEMXRWMlhTSy92NFVEOUlS?=
 =?utf-8?B?a0F1SWFuL0lJNVVERC9VQ2hJNUc0RXljclBJcnVFRWVPZDBaSmFyQlJPNks3?=
 =?utf-8?B?a2VDRGZrK3VHcDdQb1hVSW5GazMxTllBaGJQUHZmK3ZTTnZPQytpSlZtNFcv?=
 =?utf-8?Q?cKvsuvgUud44ZyS0ELZSYArqdiD?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dm5mKzBmQVpUYlgwMElaT0lJcnJtaEI2WDFvNVYxanduWnNNaUkwSWk5NDRp?=
 =?utf-8?B?bG5iejcyWmpzcUJTQ2NGWHNBaUpsQlFnbnFSTm5ncG5RSmdOWHUrNCswS1RN?=
 =?utf-8?B?ZlFUYnhGY204WlJGc0l6TTltRlJPWmpBdlphYXljSXAwd3VnVzlVVW5SUVdx?=
 =?utf-8?B?c0VYMmp1TE5EWTlQRXBONm9HeTVGVTEvNWdUOUJBUDBRQnZaOEUyMFpmT0Ur?=
 =?utf-8?B?Uk01TWV0NzcxZ3dtZlV5QWRZdktHT3NZRGF0WnZlT1pjMzNXcHcybjY2UnFP?=
 =?utf-8?B?Y1oycDltMzNCWnY4ZEp3VXNqVHdZSlkzWjZtMlAzejk5VERSc2psM0M2Ylhj?=
 =?utf-8?B?Vjl4MDBTeVhIUWZYc0I5SmpZc3pRc1pibWQ1UVFxdkVPK1NhY2dBNWJoeEpq?=
 =?utf-8?B?Umk4Q1ZWYWorMkxaUHlkRG9aeWdmdXhtM0NxS2ZrUTk2QjFNOU0veU53ZmNw?=
 =?utf-8?B?NVlqb1JTdHllTEd5Z0dlQXM3c2VQYTZrL1A5MUFDL2ZGalN6aXFuUkQ3b0xv?=
 =?utf-8?B?dVNTTHFtMHpybThXTy9ncmsrQk9wWGxoaUs4cGc2MFBDbDJuelhRRW5BYWhx?=
 =?utf-8?B?c0tQdmgxN2RLTjBKclpDWER0Tko1WDlZRUwvSVBheDBRejVaTm9JS3hzQjRm?=
 =?utf-8?B?THNPMXpBZnVIU0JZdktyeWp0RG9raXNDMHRhdEl4TlNqTHQrMy8vUmVKMjl3?=
 =?utf-8?B?cnpxaHpVekdnWS90akgxMmQ4WlN4YUNrS1IyRWhhbzFBM2gvQ2h4amFYVWtX?=
 =?utf-8?B?dXQ1MnRkTUNvakVCZnh2WVo5ZWpxaFNWVlBuaXRZb0d6TkNOTVdxS21IU3JO?=
 =?utf-8?B?TmFkbktFZ210Z09qbVh1Slh2c2lRajNVdThMK1hSVU0reU52M0JVN2E4MU1C?=
 =?utf-8?B?RzhGOG1HNittdDY3YitVV05aaXdZS01SWjFCUVJiOXlkenNFY3UxWEdBM21v?=
 =?utf-8?B?K0ZENGF6WVh6NTB4RHgyN3FlZElXM2w0eWJsTkRyMkJkSGVTTDJPcFRmQVk4?=
 =?utf-8?B?K2wybis3MGE1T3lJRDdqSDVJQlVLd2dHb2hFUm1UM1d6RzJCeUdqS0Y3Nndl?=
 =?utf-8?B?ajI3cDlwSWc3RnRWY1RQcG1zL1hPaCtDajdIRkRHVXNLbjdFRVNRRG93Wi9y?=
 =?utf-8?B?RVlhaE1haTNzTlFqU1Q1UWNtKzdFMlpHeDdLTE5tMWc4cHBqNXd2Nk5rSDIw?=
 =?utf-8?B?dlJHTFNQaVdoMXIyMW5EckhTeU92ZStXT1ZoVndGamQzNmlqNDBxMXo1dGNI?=
 =?utf-8?B?R25ScWNteUJVOFZpaGY0ODZZYW5JNk1sR0VpeVJqOFA0Nk5QUTlLTWhEdkE1?=
 =?utf-8?B?WW1SYk85dGc0c002MHg5LzF0Qnk3MGJwYlI1aWgwKytLci9yenRNbk5GZGh0?=
 =?utf-8?B?QlorTlZ1OXVzWk96endnTUtkYXVTejllVWt0ZmJBQVVDSmtUMzZnRGp0WGZP?=
 =?utf-8?B?em84czYrNzdlWC8yU21wNzUzRXdWMmFFMHVqY2xXdEZqd0puVmNBM0VVQzEv?=
 =?utf-8?B?Zmw0cFp5ZDUzaDdhYVU5TWMyd1kwbjJTcE15c0p6L1U4V2VvUzh3MHJLTjlu?=
 =?utf-8?B?cGEyYWZNTEl2ZXd3M3ZtcEE3RzErS2l4NHlmUDlPUTB1enhGcHJoOTZkUUt5?=
 =?utf-8?B?bm41ZnhRbEtXaTZaZTB2aFByZ1pBaTUxZEppbTl3MHFxRUFiWnc1VnFnb3Vt?=
 =?utf-8?B?dUhMM3orbEVROW40K3poYithNTlCcGExYVNsVkpuSUpJZzQyNENtYjc2OUZV?=
 =?utf-8?Q?3dYhgl5guBlwWTYax/ZhS8He7ZSLrDaDHpvX0an?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7d2b234-02b1-4280-7637-08dd3b47855a
X-MS-Exchange-CrossTenant-AuthSource: BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 00:47:32.6171
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAYPR01MB10588


On 2025/1/23 6:42, Inochi Amaoto wrote:
> On Wed, Jan 22, 2025 at 09:51:05PM +0800, Chen Wang wrote:
>> On 2025/1/20 10:42, Inochi Amaoto wrote:
>>> On Wed, Jan 15, 2025 at 02:33:23PM +0800, Chen Wang wrote:
>> [......]
>>>> +  reg:
>>>> +    items:
>>>> +      - description: msi doorbell address
>>>> +      - description: clear register
>>>> +
>>>> +  reg-names:
>>>> +    items:
>>>> +      - const: doorbell
>>>> +      - const: clr
>>> please reverse the items order, the clr addr is more suitable
>>> as the MMIO device address when writing device node. doorbeel
>>> address is just a IO address and can not be seen from CPU.
>> I find dtbcheck will report error if order is switched.
>>
> You should also change the unit address to avoid error.
> I think you forgot it.

I forgot it, thanks for your suggestion.


>> On SG2042, address of doorbell is ahead of clr.
>>
> It is the same on SG2044, but there is a problem that the
> doorbell addr is a IO address and it is not suitable to
> represent the device addr in the dtb. It also lead to a
> weird unit address on SG2044 which is hard to understand.
>
> Regards,
> Inochi


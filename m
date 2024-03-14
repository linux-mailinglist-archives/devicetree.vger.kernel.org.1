Return-Path: <devicetree+bounces-50478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B606887BCF3
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 13:43:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44D981F21C57
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 12:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE2E258100;
	Thu, 14 Mar 2024 12:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="JE3MfMJH"
X-Original-To: devicetree@vger.kernel.org
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01olkn2056.outbound.protection.outlook.com [40.92.102.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED1A266A7
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 12:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.92.102.56
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710420205; cv=fail; b=Itl4IWNHzdNl4Sp94/kXAlyX4emgJm74VQROTThI3bXmtFToP4CwHuyvnmsJ2zY9rlOLmNUU14W1McCFMGvpvBJDPtmS/rX1/4nRoOB85o2hZfcqwqpoj2NveDbpfULArY/7pQAKYPbeD5R05ePwZivHb6V5vrrynVoOPcF2IPM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710420205; c=relaxed/simple;
	bh=Alw+1HSjDzwV0vtUJGxBx49wZSaym+hs1rL95fEGNUo=;
	h=Message-ID:Date:Subject:To:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=YIko+srgrhruFzDsql4dKygCZXtAsVTaH6eO9jrdS7ljcVw4x2gdTdDwYVdHh2/NV/ss/3CqYVOKK4HSXn0GPMCItmubF6ta49gyYm4k+b6sjsLvaO6AsNdsn3cBB6b92BdDoxnP4bTYWXgbSFyei1Z26ruMWKgQf0pz/lntG2U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com; spf=pass smtp.mailfrom=outlook.com; dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b=JE3MfMJH; arc=fail smtp.client-ip=40.92.102.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=outlook.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VO9UAEvzEyrBdsfb/dDJ6QZ5FYG/Q9DtfyDaxofyqWcrja9czYcliuASlJCktP4QDfoQbtfwoIgj2XYWfRi54UHi9+4ycxchTyef2qAEIfxtYLujq+LqNHVtRiROuLF7oitM4M2+TbUfbVyZJKCW1tZsaowmw/gdBwUsvbbQmKcUkUCR/KOHS0s1jBOaD1aiE3CfGP3FDN6y3VfCwqLR9IlmrTShY57WhFUZ1+bQiwdiTkR2fJLzo6xzh783inbbJza1m0GNROjWBcE6SnLtMxmhPpP5tlPNr34P88vK61wB9+Dh7Oz7thlXj6ogszPGyRsJ14wa0vrswwQhz1ckEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KHwRG6fXRxioGNcbnrS19cZFgJoPXJdggfSsfQtlF1s=;
 b=jutJIHh86KtIKOPmzNjnY0WpaHKFtOI+oAmQzV/SxU47SEoVT3hQ3TN3LAaIJwnsfhXH1aceipKHW0tKZ41w5EB+bQlQMg/UAuyF0Hmdq9hUP3T50XrcLgzjczRZpvcP3AsKiLVc6HYXHAuooNIIP0mKflgfIS+AudH1BkFS68NrPlzogsw5SOUxk7NcoM1lVO0f3+w7AAXg27FuwvTNq7jTLkOdMqJym8RWVMHjc4n7mHsW3gW3t3DGuGAYdBqj9URhCK5FG3cmHE2SpKes/y3C+kX/NvOMhXE/+LfdHLBiw1e40Wqa+ILDtZRW1nwDg5Uyv3oTPjGvUQbV791Ifw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KHwRG6fXRxioGNcbnrS19cZFgJoPXJdggfSsfQtlF1s=;
 b=JE3MfMJH0rgA9MbJA9g2nEHCZmuRlWj+VCx+Fwx2QcRa6dcAB/6ifJXcojmHPjD/4oNnze3/XmMMUZVuHNMwrLUTAoGbHCORrhZl/lkam6RyMMnpFo3vgGBRBiMTnAExcsMvWFf7g6jxH0xPZ998MtTV6Jv6hyjlByWel7B3t2ba8qv0hAAYTSEClpbPjTLdRu2lIllI8oSZF3DbL57EI5gaO7YfTOQj38lwX3Z+fZM7plbw+yUow+ajphHtLZwbt0EgOKq4IzYPsVPvVFOR+T4/r+ykgmTSb87hl1Km+y184oJ3w62yaZhqw2i8LNQwXIPyN+Jrhp3pXzp8CKB+Cg==
Received: from MA0P287MB2822.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:138::5)
 by PN2P287MB0627.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:15d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Thu, 14 Mar
 2024 12:43:14 +0000
Received: from MA0P287MB2822.INDP287.PROD.OUTLOOK.COM
 ([fe80::64a9:47d2:ce4e:b84a]) by MA0P287MB2822.INDP287.PROD.OUTLOOK.COM
 ([fe80::64a9:47d2:ce4e:b84a%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 12:43:14 +0000
Message-ID:
 <MA0P287MB28229709A260ECC6348CADF6FE292@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
Date: Thu, 14 Mar 2024 20:43:12 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: build error for sg2024 device-tree
To: Ben Dooks <ben.dooks@codethink.co.uk>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor@kernel.org>,
 Device Tree list <devicetree@vger.kernel.org>
References: <dc78535c-eab3-4501-9ecc-0464e90c9b54@codethink.co.uk>
From: Chen Wang <unicorn_wang@outlook.com>
In-Reply-To: <dc78535c-eab3-4501-9ecc-0464e90c9b54@codethink.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-TMN: [UtrNd26olxlgjrsOqdaKtdUDP1VpkHSs]
X-ClientProxiedBy: SI2PR04CA0002.apcprd04.prod.outlook.com
 (2603:1096:4:197::17) To MA0P287MB2822.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:138::5)
X-Microsoft-Original-Message-ID:
 <79329cb1-7e3c-42ff-b558-bcd7b5f45de5@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MA0P287MB2822:EE_|PN2P287MB0627:EE_
X-MS-Office365-Filtering-Correlation-Id: e42161fa-2b3d-46c7-6306-08dc4424509c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	zP03ZOwJNzDf8PkEN7O/GIhg4pCS8y1Z7JDcwA4BYdTcx0aeNZEpKtiF6G6vX+LfL1Ck9cAus0Rfc7gpFJIrKFNYhu7HOEB5UjKm0lRWynpIkdSRk7E3sQvbWETD9X6cAt67J8reWHz8/Pon2/JIboX9sEgLztLuG6XtteJ7K2zM+2M+pafDEWtv8M9GvRFzrUSQYa882vWJ8fv7ua8clSUABn1rOzCNBXFzprJuex8WyIJrJ55U0stG/PcZLiVqWstFtNVrZnTxif5jbXyk/JE+lT0qqY719MTHdB65ksDEc09wyox77j6tdtV9cQ3VyZ0AIWLMLjrOpUg05Y5nrdXW1MNPZNN7C+71XpsbY1L+ikthCPaXthqvIsQ1iLaREpEl3rNloi/LOQXgcg/pfK+sUrWHATI1PCuatx1HiYRj66QeJwrWvyRod+Pr092W7+c97Zjd/dH2OV+MGuqBUmFDIZdFUZinUiVJmvOWzYaA1EZeJ4oiEjAUrpFQp268Kr0G+1fJ470L1fGw8L3K5zWhWLh3ppk772eN6lfHIohviOPym6yLbtiF04OSa6BClI6mWX+hWG/x5aNPmLKnrkjpG4rA6EGLFcmgmnvFAqdAjNJPxRTfQc1Vb9W7b3hgyAuCPYMLXW9QZWbz9Qzp4APN02nE9SDPBCvlYYTC8II=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?T0VxdDZKZFVLblk1NnVzTFk0cVlFOWlLYWE5dVp1VEZwaFpUZGUrc290MUtx?=
 =?utf-8?B?bExKL0xaQVlNT0JUMHd2bEZQRFNmSVp3YzMzbURFaWxHUFVoUWtUVkYreGxq?=
 =?utf-8?B?RVBXUDVtZzZEc0lydDlOYWVyK2NIQlBWWDBYZGtPNDkzakRJV1lMbzFwdGtt?=
 =?utf-8?B?Ny9hRlRmL1pXSXE5QlkzaWlZdlBFWXVYWXNzdzExS0o4VFdrbXJOTFJuTEZm?=
 =?utf-8?B?SmVvMzBIcFZwZE9xQ3Y1T21uNEtReWFQTUM3VmpBcnFjbDg0a21lUHZYaXQ1?=
 =?utf-8?B?UHdYU1NaWjNIM2k1QWVFYk1GaVdpdDVhRjlMZlZWcVZCQnRzWStsMm8vY1Ev?=
 =?utf-8?B?dmVlSUswaTdCUmh5SzFYZXBFMVE5S2dLT0c1RG1oanhMTU1WK3BjTWtHOU9x?=
 =?utf-8?B?RjZKRTBISklJbEs1STBKc1RObjZLUXNWQWwrTlJhWEJBd1MwNFltanRWSDJ3?=
 =?utf-8?B?NkhrZmFZY09LclViRDE3NndTVzdqUUhpelBpVWRKM0x1bXB4ZWUvcU9WMng1?=
 =?utf-8?B?R0pzTVZ3cGEvSUgrdG9relNxeW02c1BMbEdSSmpjSmsraVFGaWdlR0hETytq?=
 =?utf-8?B?S0FyY21zU0djVFpNWUx3VDU5bGtteFE4TkY1S3d2dm05bGN6cW1FMVZIMnA1?=
 =?utf-8?B?dXpvUVp4ZnJveUVudlNzS292c3Z0SXk2dm5xdnJXbHovVkkvN2VocFg3NkQy?=
 =?utf-8?B?SUZVUXpqdGdISmhZeFFPdS9PUHJUT25XRUdvdUxGbVRsVi9hQ1dEMGlyQXdt?=
 =?utf-8?B?c3p5NVdTclkvM0NKMDlJZkhrRG4wWWtNZDZ5RjJDbjFYcW1PSkxnWnl2MVlF?=
 =?utf-8?B?OVJOREJZUE5pYWI3L3lTdythNkVjUW1DYmN2UG1tUVlJdllYNUowMElQMit5?=
 =?utf-8?B?SGtUN0RFN0dmN1E3MTZraUROekRacEg4c29KRU1ZcjlXRi9DTlhWMUJEZEVY?=
 =?utf-8?B?eEwzTkxwRVlTdVk5MnN1NjlZbVk1VXoyaFZpekVLNTdiczl5dXpwTzFkdmpm?=
 =?utf-8?B?THphYy9DVnVyZldjb2svU0Vsb2M1VWRtS0VqVDBaakVubUI5YkhUTDRJcHdz?=
 =?utf-8?B?eVd1a2xZaUMrN3IxK245aGhqak5qTWtlVDRYS2dCdnVKUm0vbXNobGc5MGlG?=
 =?utf-8?B?WVpKdGFqbXdHRDJPMGVOZU9kbUZBQlQxbGFVYWp3cVU5OGFuSnNYUjljeDJt?=
 =?utf-8?B?RFF1dGZGaUtSSFR1MnZKMDM4OHppWjcrS1FTeXpLSWVkYWphbnhUUkk3TmdM?=
 =?utf-8?B?YWoxSjlncCtQdEIvL014blVqR0dPTjdDdTBVSHFTNFpEQ01QNjVDYWFsa3JZ?=
 =?utf-8?B?TzNMY1FZc2QxTHJYcldDdk5UNUl6VmpkRVUyZjhOZU80WHoxYURZbmo0R214?=
 =?utf-8?B?YzdqMkRvbktEMWMrTjJJVkI2ZHZXa1FBN3hBRXh2STl1d0pPZG9xRTAzd0FQ?=
 =?utf-8?B?MGpBVjRxekVaMFRoemFCU0Nlb1h5VmZpc0duRkxCcjNiYk1TYldZNjhVc2NQ?=
 =?utf-8?B?UnJOaE1sSUNJUDlKd09OVVFPSmxMNTl4S0ZIR0hOcHdrUXBKbGpJUEErVngy?=
 =?utf-8?B?WFpzcFpTanRKeFk1TG5COUdRWXpMLzdzMXMrODF2aE1ScEhoa1g4bzdobDls?=
 =?utf-8?B?eFNmT2RpaVRJYU1Cd3JoaTAwa2RIUlYxajk0YUpzMzllSGtzTllvY2ZkSzJz?=
 =?utf-8?Q?jBt7pglXLP9n6m291AoR?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e42161fa-2b3d-46c7-6306-08dc4424509c
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB2822.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 12:43:14.4537
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2P287MB0627

FYI: 
https://lore.kernel.org/linux-riscv/MA0P287MB282228A94119642979A035C7FE292@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM/

On 2024/3/14 17:47, Ben Dooks wrote:
> Building the current linux kernel I'm getting:
>
>>   DTC arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dtb
>> In file included from 
>> arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts:6:
>> arch/riscv/boot/dts/sophgo/sg2042.dtsi:9:10: fatal error: 
>> dt-bindings/reset/sophgo,sg2042-reset.h: No such file or directory
>>     9 | #include <dt-bindings/reset/sophgo,sg2042-reset.h>
>>       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> compilation terminated.
>> make[5]: *** [scripts/Makefile.lib:421: 
>> arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dtb] Error 1
>> make[4]: *** [scripts/Makefile.build:481: arch/riscv/boot/dts/sophgo] 
>> Error 2
>> make[3]: *** [scripts/Makefile.build:481: arch/riscv/boot/dts] Error 2
>> make[2]: *** [scripts/Makefile.build:481: arch/riscv] Error 2
>
> Config is attached, but looks like something is either missing or not 
> merged from another tree.
>


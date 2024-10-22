Return-Path: <devicetree+bounces-114200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A43ED9AA2BF
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 15:05:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC98FB23042
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 13:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F6D19D8B4;
	Tue, 22 Oct 2024 13:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="qZNBVA57"
X-Original-To: devicetree@vger.kernel.org
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01olkn2046.outbound.protection.outlook.com [40.92.103.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60800194ADB
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 13:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.92.103.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729602333; cv=fail; b=OtSUp4b2UDyfZ7QQAFAOkn0TaWh5KJlGvce863i2CKP0T6+5ACb+ZrTWcj2SQ5Q/Sab50u+UJqOIFlqP1WTh70QLIa8vszjgwy4ttfsEmoXxySr5SLnMkhLdEuowKt5UHWRn9lpLnYbtmCjzIC4QaOOz64VSPYLyX+E92FOAXdA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729602333; c=relaxed/simple;
	bh=EcR7lA/KZGy2jLTtcGMm1OFvFDPp8IMxe2A87FRCJ/E=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=RkV8w/FLC9SBvUYp0OpQf3DczVBH0liSq892ZX/VMgwds/FPT4jJxTuumprJvjHZmvFKu68HZx489gDvopB8OYN5iasdqZZCQvcyVNny95dIYO6RZbYYaQYHEfHOcqzpSRmtwVyH4WBZ29oKT5qvZg59uDj0/0TMC8nC3kgJ8iw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com; spf=pass smtp.mailfrom=outlook.com; dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b=qZNBVA57; arc=fail smtp.client-ip=40.92.103.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=outlook.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D5HbanDqKI/Tp7Rhv+qK6JhQgiQuYf3754rGFHM8a4ACD8HNKIJrJHH/IqRL3rD+53TVr90L/BK7EchaU1f9CQbkDCLuauMTDpXzf/ri+14LWhvkp2/9EYZp0BfbZqwPfmdmB8XEhcr6zWrBK5UxPJGdk6Ht5j328eulyH/aiU4yBXAQm4tDDN26wAIwZMYjoB3qJDSPHn67KSfhEiVcMH5+PDZSv+5hlpD9t5dRtoELfj4BbeH9ZRWnRh6M0A2akaJqbV+SWhX0Q1cfP28H620CJFBY88xWP2UWAXeqbK8oKQcBIDRJiiPM5mMOiOHe94x2aNQcM8Pjca3hHjHCiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NhuMGTqAvXkEhjb/p0H6cU2Xb3nrwr1AF+LbZf9ORe4=;
 b=CF+XkdI5Vwwt5xSCwJRWJArRJYL62UCd5/JxRjmqZxiudgBJYJBiW2sPJ8TjMjKGpjvjdCJpjXTLulyJi7jTU47vB5KdU6qZoPi6cDipchisFiSRFdjNNxnAmCafCIdM0QWJ7lN62/Y0WDbGzFSWACM0/vVP67ASFI5qUqKeg93Cgasn5OLk/dW1z+7vVLnHPNByq6ijFIlSXnZ1OE4TpGGa6v+5E7EV2MyjBQPygragN24QtqtjN2oxRMnfNuKitXCNpBYZKNNfOfUthZrQtDHpz1VWQDUKHI9vq7f1efMEV2xH34Jrq96ZM+KGmX59CNPQb56WXdv+HpkNibIc3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhuMGTqAvXkEhjb/p0H6cU2Xb3nrwr1AF+LbZf9ORe4=;
 b=qZNBVA57pGhNyR06UI4Mo7t8EZRQn6WXaGH4KsFV5z4/0om4+BJXh4ReJlumVlcJ0eZUVpRRBrLilAirmeMuLfwUmj3kEMZsUSEq/BFCMPYBK8in5C1pSqUnbDN6V1B6ICWBBx4hp5/ONce/2qYvhzH7cZQDS69i78H7FfkXxmCvlsPtJi1C1YVH5yVJdrgrIKly7IOk9v7dV6fRpuI6V4hL61dl7NlL7aCeN+l6/RemyihNl+LGpdxDgyTvGpB0quyIToYh8c3eMyVqMhaPK8MIPUfTEcaLiyoQdXwImd098jLNrOm6Un2dqGuuUtiq/9QywjXjK/MCQO0KaeVv2Q==
Received: from MA0P287MB2822.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:138::5)
 by PN0P287MB1040.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:142::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 13:05:18 +0000
Received: from MA0P287MB2822.INDP287.PROD.OUTLOOK.COM
 ([fe80::a94:ad0a:9071:806c]) by MA0P287MB2822.INDP287.PROD.OUTLOOK.COM
 ([fe80::a94:ad0a:9071:806c%3]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 13:05:18 +0000
Message-ID:
 <MA0P287MB2822F8833229C771136D0B5AFE4C2@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
Date: Tue, 22 Oct 2024 21:05:14 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] riscv: dts: Replace deprecated snps,nr-gpios property for
 snps,dw-apb-gpio-port devices
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Inochi Amaoto <inochiama@outlook.com>,
 Guo Ren <guoren@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20241022091428.477697-8-u.kleine-koenig@baylibre.com>
From: Chen Wang <unicorn_wang@outlook.com>
In-Reply-To: <20241022091428.477697-8-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SG2PR01CA0127.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::31) To MA0P287MB2822.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:138::5)
X-Microsoft-Original-Message-ID:
 <bc9e899e-4e2e-4d1f-88e2-8409c932447b@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MA0P287MB2822:EE_|PN0P287MB1040:EE_
X-MS-Office365-Filtering-Correlation-Id: 05b0174d-9d3a-4fe7-1da3-08dcf29a2d67
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|19110799003|5072599009|6090799003|8060799006|15080799006|461199028|7092599003|3412199025|440099028;
X-Microsoft-Antispam-Message-Info:
	RogfhdAG21SkVQ5VU2l9UxY0WHSYXCSwXW7GptCVerLRXIDqQYwp4mpY4hTeRhNKEQ5UkJi4buy/sFhBO0EzVUhqDzEBleJFYYjZcukYo69wpksDW5lxgjh3gI1EK8d/beKZlHfz9UA+vu1Cs/96qtbGjRVRAHt7z8Ud45JeYxwhzdYbzv9G13utx1LDUhDElATaXlG/IRdf1x96NkkS5zHKJ5x5ChYBAfhnjpmzW3zuknZvQ36A48sRRHOxjneOANVd8LH1ck8nSUKJohvxy9omZsHqs2E/o2iPQ5/Oj/bBYd1Mbf/6c1JiaaOuCzcbhoxvwfaM6f3yCZugVHnacfwiqiaCx84eTNpuChty/M9nJFGx/gyp988TqmCyz7EbGvJpguWcnMpkC1HczjizYb92ubXrD7iSJWC77kPOv5NgFGcdJr+KGlJvUNVueHzFJrn+lFgOnv43qmQRep3PW6XvnOlvo8POPYGDRCsgDJcSwVM4Q8vmcQEAJjLVnKtJkofMOlw/L+Hq7Lmyr7wSx+XaRQn5UbK+s+xcmmZJaqASxCQEXVN+UUI3tB/nMTogtQxgkibXeL2Z+KT0jjBwJB2g1qi+CEzpfGP1feLq4Q/hEciESmx8E1RRNxUd1Fu0QSzTaUno6A2MK3HwbZklWADQCObab4BCtHk57F9wcac3uTKrUXAxeoxKjylt/qNlbSvmkS7viPPjKiQdQxDHoj0Y1Xo2gDH4laYNKdFYzg/IRZzBCkzqUKPLXTcEagaufvhpGUPR0n8SqGQ+9sq1LA==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SWJMSEFPRXBjU1JCZkpJeHAvTi9zbi82dzZjU0llMDNsUVFVWHowQSszZk96?=
 =?utf-8?B?cElwV2U2eFlmWWNyNko3cDRUTjBQbjZDVDU3blI0dnZOeHdOV0NBamlIdC9q?=
 =?utf-8?B?WGFDWXJHaFArT1pVVW1McTZNTDFjZzUwSUpNTjNqajUxZ1JKdFlORmRuMjZ4?=
 =?utf-8?B?N2NLT2pLMitEZzhmK0ZoTisvcmc5U3VXSWNUVS9IN2ZVQk13Vkg5cTduc2Z0?=
 =?utf-8?B?aW0vM2xWOUlmRFVDQW1hRGQrU0syNWNHU080ZjJyZDZ3a0NmN1Ntd0h2RjNr?=
 =?utf-8?B?VXhwVE5EdndtbnphbzhyVkFkdm82K1g4YWZZaWR4NnNZa2lSNkhxQzdMMG11?=
 =?utf-8?B?OENrTTRlQVlzYkhSS2ZmWVdodGZyMDFvMzE5QWk0T2pMdExDeloxb3BrVlpD?=
 =?utf-8?B?Nkg1ZmhQZXdxTWtYQkFDamRxdW54SzVLRkZVOHVBamVuQnNHd2FrWlVScVBR?=
 =?utf-8?B?dXkxUmd6Q3lrYmVoaEtzcDdZNGJRQ2dBS0RZRDJBVUxnWHdTWm5tMm8vZ204?=
 =?utf-8?B?NjhFWlltcGdWM2FNSjZHQU5MSmVWbzRTL3hsOVpwemo4KzA0THdCSFhEKzNo?=
 =?utf-8?B?am5zTy9QeFhJeU12c2VOQkhMV3BxY05LUlE0bmd3Qi92NWxoSitqSnlzSDN6?=
 =?utf-8?B?RFF6T1lLMDF0Vm92WWVqOTNMUk9pam9NK2I4cVYweXVuQUVpT3RuYkhTLzFB?=
 =?utf-8?B?MmgvUitwVDlzWGV4ampTTjduaFZLdXhOUld6QWZlU3lBeEk3UTFVYnlLRkxU?=
 =?utf-8?B?cTJ4djQyaFg2dCs2ZytLNk83WEdWVWlDT1E3SmhaZWNBaGMvQUs0QkxSNWFS?=
 =?utf-8?B?T0ZlemRlY1oxZE9TbFpqT1g3cjlaMlc0VGtHSkxCNnpDeDBmbnIwNkFEdmNC?=
 =?utf-8?B?Z2N4SzVuWGN4Q2JHZFcvaWM5VUV3TjVSd3hHMlJlMlFMcXQ5MWF1WGVFN2JJ?=
 =?utf-8?B?Qkk0NzFLVXZDM1YxTENody9GNzJQK3VlMHFRa3ZqeUdielZqcEhjLzJOUHhp?=
 =?utf-8?B?Nk10bnpEdEVmSXlISWxGNlU1d3lEdFpjWTJBQm1VVGx2QTJBQisyZ3ZFeHpm?=
 =?utf-8?B?b0Yyb3NuL29HWW00Z25UMFlUY1ZwbGNXWUlMajVEdlRBLy9leDJMbjlXem9q?=
 =?utf-8?B?NTJreFkzSS9Va2JjZnVPZjVJamFLdzNkSmFSbnA0VXBKbVZ6WFU3SlNFeXo1?=
 =?utf-8?B?VHZmVW45Q3pIdmh1aWdTZDNpSnlZN1J1dW8xNWR5MThaVElPWDR6ODc4N0hK?=
 =?utf-8?B?NmswZ0g0akh0c1BSZSsyTjdDdjh0bXFLSTRsV0lDcVg2Y1lhT2ZGRmlyZHJO?=
 =?utf-8?B?Z0Q5SGU3bHhCbnppbGZ3TTZvSW15SCs5Y2VSOGtlZC9KMU1ENHJuNnpGLytW?=
 =?utf-8?B?T0dzc1c0dnV3OTkyR0V4U2cvbHIrY1k4SGtZM0lMSDZycTV5NVczeE55T3dK?=
 =?utf-8?B?MVB0YnZVUFNqVEhBY0Z3czF2d2xqRDRKMGxwWlBLZ0E0TU1mb0NKS2lIdUd4?=
 =?utf-8?B?ZG9EVm5NQjFqNmp6dktEQXloUTcxTU8vZVVSK1RNQ2MxNE9QcThta0RNTXlO?=
 =?utf-8?B?UDAxSjRDVnlPQ3pQZmJxcXJJWVBhbi9yN01rd25uVWFya01sdWkzQXpTQVhl?=
 =?utf-8?B?YlMvcGZ4VzByZ1o5UHVrUngzZFlWTzdycW9PSW1KdHF5aHBKcXdKUkZ6SkY2?=
 =?utf-8?Q?O6/ycI5L/zslpC1NXcKS?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05b0174d-9d3a-4fe7-1da3-08dcf29a2d67
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB2822.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 13:05:18.2100
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0P287MB1040


On 2024/10/22 17:14, Uwe Kleine-König wrote:
> snps,dw-apb-gpio-port is deprecated since commit ef42a8da3cf3
> ("dt-bindings: gpio: dwapb: Add ngpios property support"). The
> respective driver supports this since commit 7569486d79ae ("gpio: dwapb:
> Add ngpios DT-property support") which is included in Linux v5.10-rc1.
>
> This change was created using
>
> 	git grep -l snps,nr-gpios arch/riscv/boot/dts | xargs perl -p -i -e 's/\bsnps,nr-gpios\b/ngpios/
>
> .
>
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>

Reviewed-by: Chen Wang <unicorn_wang@outlook.com>

Thanks.

> ---
>   arch/riscv/boot/dts/sophgo/sg2042.dtsi | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/sophgo/sg2042.dtsi b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
> index 4e5fa6591623..e62ac51ac55a 100644
> --- a/arch/riscv/boot/dts/sophgo/sg2042.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
> @@ -112,7 +112,7 @@ port0a: gpio-controller@0 {
>   				compatible = "snps,dw-apb-gpio-port";
>   				gpio-controller;
>   				#gpio-cells = <2>;
> -				snps,nr-gpios = <32>;
> +				ngpios = <32>;
>   				reg = <0>;
>   				interrupt-controller;
>   				#interrupt-cells = <2>;
> @@ -134,7 +134,7 @@ port1a: gpio-controller@0 {
>   				compatible = "snps,dw-apb-gpio-port";
>   				gpio-controller;
>   				#gpio-cells = <2>;
> -				snps,nr-gpios = <32>;
> +				ngpios = <32>;
>   				reg = <0>;
>   				interrupt-controller;
>   				#interrupt-cells = <2>;
> @@ -156,7 +156,7 @@ port2a: gpio-controller@0 {
>   				compatible = "snps,dw-apb-gpio-port";
>   				gpio-controller;
>   				#gpio-cells = <2>;
> -				snps,nr-gpios = <32>;
> +				ngpios = <32>;
>   				reg = <0>;
>   				interrupt-controller;
>   				#interrupt-cells = <2>;
>
> base-commit: 7436324ebd147598f940dde1335b7979dbccc339


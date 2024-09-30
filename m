Return-Path: <devicetree+bounces-106620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6F598AFA5
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 00:09:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6A0FCB21377
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 22:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B49BA188000;
	Mon, 30 Sep 2024 22:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="nVHf8m4E"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10olkn2017.outbound.protection.outlook.com [40.92.42.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F0E170A22
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 22:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.92.42.17
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727734155; cv=fail; b=QyZy/4OcV2pnk7jryKI/gGOgT2Pn2TuLXF/1r8hEdbZR9oOYKahJ1Ct6svCjXchxLWMZwcmDYxV/TX1Vvx5436HEPqToNifnBfyDuGCuHMKo0FTI12q949buqItSvOk5qF4ykxDJGb0wUM0CesWTJKShjYleMya1RS7DTTKLDN4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727734155; c=relaxed/simple;
	bh=dXI6t6IFyyote30Ot/bDSKn19sqMsSodbdJjy51tK1Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=BrXxi2vQzCpdThddD8mpmmZFzMzVBITYdha0aFMBQObSyudMS+18/rRiDec10BjhsQLMensiyWPf9nBa8vGnn8N6QNYYm/nR0ZqsyAU2qlMjXN4nWJVG8sS5DIRVBv/MxTtRq9bOWVeS0sq9e+R2607hkscozv9x1y/9Wo97a/s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=nVHf8m4E; arc=fail smtp.client-ip=40.92.42.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L9Ax6iCqmP2MOmc+8Ymkt3ccI1LaD0eHGuYZcHYN0m7NaTIz47NlXxZS58bj1BEXn/lLMo0t1fw3nMPhqUdZQ2ibdbkVKyCKRdd3fr6oI2U/pd8GJYTnov5ipPS2FGwmSs5RPiUE5k5mhhsv5hbjpUJCPJJ5CzUXHANr7Px7V5BCbVTw6/niaejuiHUYaQ10dn//QPTJkDb4eqpj9CQqCgirCCxE8yYbGuAkIX2XlrzKWZKl6fqbDy9V5WgoLgd408ya7T26tvTojO8dX5oZoLUtKn7ZDGan8NxDfGekCu1+hnpmtaPwT22V0jWX/BYY3kcD15ydGBS5QEjOA6B6ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Io1REjvJLQzyjmmfprvrGaMlwvITzMrSEu+NmIQVABU=;
 b=ELbJSNDuvnjY84ZWe7z5aobPtZq9p0HT0eLoNebnu54RkMgHKYUSbc3drM2gVTguhR4U4oAzJHAoJzTgwSHe9PqqFgAVX1eGz3OK2IVn4LX7FY6NucSyMAyUTPUgCYCkTXTb98WsvYnAuFnB8xAsbrv8ETmtgQNbyd0GoXYn3PqRI6CeJG+qYTGs1LoTjHVtUr5hatAixB+5GgvCrdJtgWzQ5R2qiT3gJknVZ4DMsLWFfK3AxqFYyw8FBjv+75DqcbSPmkmZcPI64L9+vewctoB2IcGKWOj7jbui6I1KJSc1CkKWli8tHItduy7Bc45mFIYGdwl4rhdYPTb+7OSjyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Io1REjvJLQzyjmmfprvrGaMlwvITzMrSEu+NmIQVABU=;
 b=nVHf8m4EcBDeBO2q9zPSfczq7vv2/LFqLfInFDSLxGYd1h7eZdyspwqRhNEDQmicW55RAPCaQnSJE8Pfkwfoo/yumt2M/p47LpJq2Hx59wzeQKGxtbbuFaKz+gI+EdQsbOdsbOSfkHnaRU3S8MSjZOG8CalAg68auSxBpcaiWmpGcFjHqn/xe2xt6D9K35z/CbsICIA5z8gixzl2WeMC4jo0nGZDFqi7f6f1cYDDQDUe9UhBEPul/5rw6Z39xMQY2kxi8LBFGUDh2H8lGAhmxfIdMyi879gD7NWjBJBkHjIg3sG6W3ZTtSkTV5trt+kLS3zhhnKyE7mnihHLqtkHYQ==
Received: from MN2PR16MB2941.namprd16.prod.outlook.com (2603:10b6:208:e1::15)
 by DM8PR16MB4328.namprd16.prod.outlook.com (2603:10b6:8:23::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8005.26; Mon, 30 Sep 2024 22:09:13 +0000
Received: from MN2PR16MB2941.namprd16.prod.outlook.com
 ([fe80::9d62:95ae:c373:c490]) by MN2PR16MB2941.namprd16.prod.outlook.com
 ([fe80::9d62:95ae:c373:c490%5]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 22:09:13 +0000
Date: Mon, 30 Sep 2024 17:09:10 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/8] arm64: dts: rockchip: fix i2c2 pinctrl-names
 property on anbernic-rg353v
Message-ID:
 <MN2PR16MB2941658254EED6C7D05C8563A5762@MN2PR16MB2941.namprd16.prod.outlook.com>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-3-heiko@sntech.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240930210112.1993625-3-heiko@sntech.de>
X-ClientProxiedBy: SN6PR16CA0069.namprd16.prod.outlook.com
 (2603:10b6:805:ca::46) To MN2PR16MB2941.namprd16.prod.outlook.com
 (2603:10b6:208:e1::15)
X-Microsoft-Original-Message-ID: <ZvshhqdzxMAChe0g@wintermute.localhost.fail>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR16MB2941:EE_|DM8PR16MB4328:EE_
X-MS-Office365-Filtering-Correlation-Id: 7400caf9-62e7-45cf-ce07-08dce19c841c
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|15080799006|7092599003|461199028|5072599009|8060799006|19110799003|6090799003|440099028|3412199025;
X-Microsoft-Antispam-Message-Info:
	sT1d4jGVrZXcjfmOzwk8fwDppNfavqyGWoEJwglMPauaZaQ2V7NIS6QXWfkDzU/0Rs6TFJZ8G0a/SzX2m42Hog4ynYxxJT5DzkkiSZBKXKED+xCPc3QvXdR+wFfVHrP4GsxgYBktErTsOrSFMwCq27pCZ5D0+Wq0IiKTL0BbpRv8r4aaONM8yrxZqJYwcb1pjIlbdpzPGtgWDPDshNtGq3iTp3LqVV0vs5qtFkB2b17QmaXQDuT1oAQouT1MhOCOKXyzH6TwL5ilW95sdQo45QNYyeobDczGKbaL4R83C4T4ugBAJaZ8Ab8RM8+Eyd5o0FaP2mqiDXsxmPaI4LiYukppMLuAoSUmWHvxHVRDKnbC1NFKCuBoacAEFGE9Pr00cq6suH9QJWJ5/8tLhOhlpGKdDQyVYHArQWR4TP7BuxK3FSSQ5ZyxVsh4NAIsM21pPbsQFIcOff4B+069FIw68Cn3EJv73+/VAXBtUZQogilwyKhLHAgxSwvqRDHwVi2W9Uh1Zaduu+8HheDQLm6wfuKj1nQBJvoHjNWV8vRFrwH5LpJSy5l9K8PNwvHhKWKQ5NQ4V9JNi559A7km5RJASOm06HiTTKXrWjEJJvjxKacZO54M8PVHjTQhOuFwFil71RpYoQl61S0P8t/4sqQ0YWC6FY2a8YKZpkJNt+9z4D6AyqhGGq6IkrhL4kUJwtVdp5Fbt5u5AJ7uUpP+z54j5KpbtJ+aX8BEneHSEVWui53h2I/MX865jEUbY7XoUQcuuQkCh0oJ377ktoqCm8JfFg==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?EtKdXDLARpBKyDdbriC8+WBT+ZuqOii40+fTv8jd8AT8RFWHjEvM68+54HRt?=
 =?us-ascii?Q?lSplUKCJwZkTJjEEjJL2AARv9UPmwQdSqAOiJCDlRrtKxwxLPR/q7m/I6tSi?=
 =?us-ascii?Q?zviTMYOStma+GgRqsbK6w5+kupFcIp/O8mPTswhqYK884q8n/CkstmPr25Dp?=
 =?us-ascii?Q?BhmH1aGKzUfAWVRiaiTFVadin73B1cVKTDnOiwjM8b61Ji2Gb2X78DufjBo7?=
 =?us-ascii?Q?RK2gRVh5J6yKTiYIT+aVcRd+3iFxhVJVYRU7x2zo0UpT1TUSGsaWO999QTeC?=
 =?us-ascii?Q?Z61o1nhz2ZU59FStxvB12sSVov5pe4tyHdclS+kI3ljyQnVCrmlXTejmUAkF?=
 =?us-ascii?Q?0s0HYCLMBRFmhDM7kLs9UbgnwHzZt0Z/9j5R6gYoz+oopdMWE1GF+VxdsqIe?=
 =?us-ascii?Q?D+I2tXd0Zlw9aBNCbSxxMVU8GUUkHu8b0AvldHBh+WaQeo96JzsWOmurgs6S?=
 =?us-ascii?Q?YD1DBhVB6zjbAZbjvscZF8XKUr/JRg4dvrECgPLcWlmxCM9nDSuUh3QhpO0d?=
 =?us-ascii?Q?x2IB4awFEkF8b8gMnNagOWFDt9osEN5TzYrh0n5noNsV+Y68U3mTKNrz/1tz?=
 =?us-ascii?Q?iGySm+4JZbE5jsCS/SikDo5FCJWN8z8kr/8uA3V9foA040w9JWTXLa/n2jdl?=
 =?us-ascii?Q?FaHo3HIE2/aYqrxeriRaD/qbrWnTsW/Wkm+rw8++2TSTovc2XRYPQrhqRzQE?=
 =?us-ascii?Q?YjeSmKNaOG7JoCk42JaO+5jq3yTZYf9svBmQZOTr6rJX2wgHn5DnyNygHT2R?=
 =?us-ascii?Q?0L8wSjMG9uCY8z0F5VDpQcW71bIKrx/P/bVMiym4e1D+XqUoQOnQ14LA4Egx?=
 =?us-ascii?Q?XXGdb2xzxsaiokmwndVQvzwlZPAm5jFqHaU6Ry+EEWTOjCqHmGDyAJgGitgt?=
 =?us-ascii?Q?2E8/ge1KrobSIcq4/pk+kdwijErh/etzRaLqdaufKWZGGAE5VralrkJo+nr7?=
 =?us-ascii?Q?M6NzkppQFIONq/cwY6ya14CuQfC9RS07bSfmth/T5OXw0SdotOqdiXBKvhQI?=
 =?us-ascii?Q?Wv+ietqRWKw+rCRZp+NknfLmBntI3F2esxt1iF5Pmy215agi1dDzEuWzj5oF?=
 =?us-ascii?Q?08yN6GQqcOnCT/hCe9fJEmql1npiC4DsV2tfytvmNmMLiah+BIJmDF72+OHr?=
 =?us-ascii?Q?PL/fh0AHDci5MTbwDwk8V7X4PxK7CnVpz36fqV1KuIfUqUES2XEGfrEN+QCd?=
 =?us-ascii?Q?rzPpF9t19zTJjsvuAXYNwbtxueDwmidEm8B09xdCISxLixSxIF/uT0vweyjl?=
 =?us-ascii?Q?ATtduvEfeB99BAwc5nwjOwc7Pmt48blNNGyfbzoF0w=3D=3D?=
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-559fc.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 7400caf9-62e7-45cf-ce07-08dce19c841c
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB2941.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 22:09:12.9926
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR16MB4328

On Mon, Sep 30, 2024 at 11:01:06PM +0200, Heiko Stuebner wrote:
> We want to control pins, not beer mugs, so rename pintctrl-names to the
> expected inctrl-names.
> 
> This was not affecting functionality, because the i2c2 controller
> already had a set of pinctrl properties.

Acked-by: Chris Morgan <macromorgan@hotmail.com>

> 
> Fixes: 1e141cf12726 ("arm64: dts: rockchip: add Anbernic RG353V and RG353VS")
> Cc: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> index e9954a33e8cd..a79a5614bcc8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> @@ -79,7 +79,7 @@ button-r2 {
>  };
>  
>  &i2c2 {
> -	pintctrl-names = "default";
> +	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";
>  
> -- 
> 2.43.0
> 


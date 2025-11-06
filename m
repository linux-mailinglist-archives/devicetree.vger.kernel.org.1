Return-Path: <devicetree+bounces-235435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A29C38A67
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 02:06:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2CF6734D8EA
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 01:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26DEF1ACEAF;
	Thu,  6 Nov 2025 01:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="f75yFrAv"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazolkn19013075.outbound.protection.outlook.com [52.103.7.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43049142E83
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 01:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.7.75
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762391214; cv=fail; b=E8KHsq/ssoXhxnwnwXNsQ2enTbJ12PKAKYJAD4/UeQiSJLoW7OrRWdcQZoarKlMqhvOm3R1zsQVFfRr/YDNnvMplIJ34x8ml5QLJUfIyljmnsWQaZbwZWCPbOw/F3b0PciIWdUENBehMJgwiIFM7aIqFO1k+xohE3+utadWFHiw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762391214; c=relaxed/simple;
	bh=sIatFxgg9Mr/GnWGTuYOrNUXuYizs1a78l2RyrJsNzk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=nUakqTyjHPMGZMaJBSByU6W/2wh3DstLsEqqWV1CxP+gNNsaKs4vJa7mleK7kYarkLly782JEN0E3Cg7nISg0AmZHRuA9wis9/hqhs35YeCazK79cgP8wBBcE86zGcrbNHwWWeo9pB5v/4iHD9dpC6+tJyZBJ8YgWK4IMFZ1lIY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=fail (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=f75yFrAv reason="signature verification failed"; arc=fail smtp.client-ip=52.103.7.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tVKAPWdW6EGuPrBDwn21PYlI7+yKRfynwlGXktI1GkYg3QGRbe3BYcbheNxwYbb43Li6f8RcVQpIPF/63BbApA08RkPrjFCh3TrY90VjIiarECF+dUH1EpouYNbAsmWkxgOTBFlUfMWEuUAA32apvbjj6sW8QZS2TcE4T+fy2BFf7UeoMUJHZfludVbphBwlaMSMJm1xreXPFofm9yQYNvhUBlJfFawLMKXiLp9jYmo01+/53SxdVTi56QjHOoS5rlAjBZZkvJaXkrnDNwDWlLb9WqsVmfwJ9y3z6kennZrA0RaR0byxpRgliaax68d4EHV+KkrGbLgKZczUCpSt4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LPGNiLAzKuI5HoQ4/6xbFnNWjav9SYZwK7f2VwZyxxY=;
 b=pHSxo6shRU1pJ21BBd8/n+uAX861VjSKgFw2apchhiQ+F8gLIcq5QPKyIcwdLAnpHnppHD3d0v0Uw4D8CAF+n9b0b9WjSr3riN9gjeljYmchvW9TDCc2mYI8ATn1OsdDBeNpgvrxeDfwXvP6QBMyA3FraXsNBeyCagL3RjJOw4YHbluGpVWbzcq1bB5ZeWOhqg4YRBEXMOFuuFbSYK+YuGoQ4MjtoH/9cFh4WEapCvPcEPZWPV1XkE3Vgw3BkliUh2j0DqXXIS4FkZjQO8EToSNyb5+e42MzMcnJVPzWIOmiquJMN4206of/qqgoRUozOEczQvtPtoR3NDNp7qJN4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LPGNiLAzKuI5HoQ4/6xbFnNWjav9SYZwK7f2VwZyxxY=;
 b=f75yFrAvXSRC2otj6ReBMK/Ey2X7H5/E1X/BjuBIH95X65lr+UMksZU4+ARE5QJl671VaAqmSfcFeWXk5Kh5SjpKiswfGwi2cxli052F7H9vKX3qzAkXg3FdLmi1Ga8OYdqUSCIhl+JiAhL7GH1YbX+KDNxju/i+K7XQXuSD0MWPj3AQybsambIOVeZZb3VaU63s977xM+Szvr8349EzSgVA446uKMBC9d+LMEWcuyLNnbYxl/PIyUZj79h9f5/34FDTbqGJ0NiKSziEw8ngRoDGObEWKietWC6dn2AD3ModngxjCvtRggyLvRv0v7MO5oCcfaNzmFqxzuL6KW4Kug==
Received: from DM5PR19MB4646.namprd19.prod.outlook.com (2603:10b6:4:a9::21) by
 IA1PR19MB7256.namprd19.prod.outlook.com (2603:10b6:208:428::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Thu, 6 Nov
 2025 01:06:49 +0000
Received: from DM5PR19MB4646.namprd19.prod.outlook.com
 ([fe80::11db:b5b:1230:2947]) by DM5PR19MB4646.namprd19.prod.outlook.com
 ([fe80::11db:b5b:1230:2947%6]) with mapi id 15.20.9298.007; Thu, 6 Nov 2025
 01:06:49 +0000
Date: Wed, 5 Nov 2025 19:06:41 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com, damon.ding@rock-chips.com,
	jbx6244@gmail.com, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: Enable HS400 for Indiedroid
 Nova
Message-ID:
 <DM5PR19MB4646879FCC2D1B807A20E067A5C2A@DM5PR19MB4646.namprd19.prod.outlook.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
 <20251105205708.732125-5-macroalpha82@gmail.com>
 <2864346.mvXUDI8C0e@phil>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2864346.mvXUDI8C0e@phil>
X-ClientProxiedBy: DS7PR03CA0122.namprd03.prod.outlook.com
 (2603:10b6:5:3b4::7) To DM5PR19MB4646.namprd19.prod.outlook.com
 (2603:10b6:4:a9::21)
X-Microsoft-Original-Message-ID: <aQv0odyaK5zp8WVE@wintermute.localhost.fail>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR19MB4646:EE_|IA1PR19MB7256:EE_
X-MS-Office365-Filtering-Correlation-Id: 027aa559-b43a-4196-fb47-08de1cd0c08b
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|8022599003|23021999003|19110799012|8060799015|15080799012|461199028|5072599009|6090799003|1602099012|3412199025|4302099013|440099028|10035399007;
X-Microsoft-Antispam-Message-Info:
	=?iso-8859-1?Q?0wl/w16BLsvoE8TDYT9+4+HzIKdWL0E9Jx/ZqkEfwc7VSfO6+27yJiG1bY?=
 =?iso-8859-1?Q?QvyTbAKE5NNy56QkJsY28jJ/Kzi970obSSvNE3vQoQ/DfR6MRtVbLvP4wj?=
 =?iso-8859-1?Q?+KIBvb4QX5BfrD7I+Er5e1nat62irum59ZLCojFE3XGIaOgbTCBrAWPwn7?=
 =?iso-8859-1?Q?QSWxqBbGCueyh7pglGgz7GQCuzfB6I4eH5tEXiDTfv4G9zyO1ioHGaPLq2?=
 =?iso-8859-1?Q?sPzfjQKp3OsERGQywoh6EQRqgeUfkWoJYl9bRjmuUcJkyCUGHO+Ii39tI2?=
 =?iso-8859-1?Q?gV5CGfowaH+0xzwQegnHkDfBtlE+P5kmnHSeJ/fdxXCg/QW3q6ukqvX5Qk?=
 =?iso-8859-1?Q?iyzomLshzQKyXG/EbogmX0VYFzlENTb8ivvrAFRoL5nZC/Ab6v/he/FKDa?=
 =?iso-8859-1?Q?l2pA13TsTBD116xp0ncoIkKrZRsKbYtzaEUxQsKZN13FAJO2pB3vJTIuUP?=
 =?iso-8859-1?Q?xrpP+nDbNQuk6+qKsC4kHBmRLxwmdY/AYcVLigGZvn4nenf55ra7/sbB+K?=
 =?iso-8859-1?Q?4InVN3hKLpgGyhRtLCeUqn6Jrvc+6A+NLbWEvig4aEtE4Mv9yKDDP9llPO?=
 =?iso-8859-1?Q?MQiGdUrfUczwU3JR2csA3D3C28ARs3FooPvY6pi9/k31JC7kfNYVGtUNJC?=
 =?iso-8859-1?Q?KBNxqttMJBuG4xvJEquxTDXNA/2Qj+UJWMFuRhtqzbqR1tdbVQN1VLcGLa?=
 =?iso-8859-1?Q?oN696pOAcWotKRIiKwz+cPsIqWYKoMw/MuYSAPpuh1uMDmBRIgjD43ma9k?=
 =?iso-8859-1?Q?TR/KC0UaQUaoZ+0VYQlUF1A0d4fhdQwcrqXERTyyRrtLHqHdX++d8lX7qw?=
 =?iso-8859-1?Q?8GFGMa0Vrfh7M9/5zXkbTzfroChgVOjj5MXHwsb8IGCdy5v7GyeTGa+Oh3?=
 =?iso-8859-1?Q?6oY8Uwo6slLcHXvf5DiKB5GlZy6dLl4RFbBmR27vfoq8WbOaqLLYajcLRp?=
 =?iso-8859-1?Q?4WDcUBj4pkCiuoWYRoXJF0Wh1gwlKg22T+rWuJievyxXTuaj5aYFmmLiQE?=
 =?iso-8859-1?Q?yXNjIaUb7UjeK3CKuRNNNNAXNk4jBusvM32clfthFE466ZL4BbKAngJnyp?=
 =?iso-8859-1?Q?qVVDFlC5PgUrdETS1dAAWCNArQwdXgsRPCq4JnaBBMXf35iK6OIqntVQxx?=
 =?iso-8859-1?Q?vPT4bC90UDPn3JFmnpk4VdjT8fS5cF8/v0ufmgkwf9uRsbqCMHlMnu81n1?=
 =?iso-8859-1?Q?Tvn5ThEmzF05s4siR/BeHFw3MB4xzjs50SKtSwifouP/cBJanEFZLLaw/n?=
 =?iso-8859-1?Q?vAhSkgnMgvWnqRdqXIvo8MeRGAwwHocO+/EdlyeEkNYEF3I7EGC2jujV7T?=
 =?iso-8859-1?Q?UU1m3cc9M9PUGqaNVtxidZAcVFWQbZa+uIklX8F/xV9342w=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?iso-8859-1?Q?QRjGHKPzTHNGsoCqe2Z0A6W5FsfTz3G4mEjj6aloGRr4ZGMpubnt55bU2z?=
 =?iso-8859-1?Q?mszht0B+RfhD+nhXrYAlhxusOmTp/MME4uT42sGoq4Fkm0OJOHDsUAC5+8?=
 =?iso-8859-1?Q?X/j+oDfnc+CKcZ/PxWWsKCukiNxBiV4hU9iz/V6W0skAi1/ivaz8ACV/f0?=
 =?iso-8859-1?Q?vpe28QJGXAE/LLlpEIaTUYnXAoPgK63PWVHl4++C0I3V7V+YKj/6S0ioig?=
 =?iso-8859-1?Q?wcj2ljgc8MdlhbYpY0IPdmBa6gHu/ijjHtH+rP/zeoiRMxxN1/csJJfASF?=
 =?iso-8859-1?Q?1eojWCu9LtKicstQT6s/H7/7IVDSRMfwPBQNRMKiEyG0XyOXJpIjUWcJr9?=
 =?iso-8859-1?Q?zS6YU1UzaFsXkIQ0J5Yw1qmE9YBMC/qN2Fvij9SEBn6Y8WZVbutwFhtvi0?=
 =?iso-8859-1?Q?G1Fawnf4pPrlB9xcNwrXYdR569GvMM50UZzrAjwsrOCOOXnhnipMu07GWP?=
 =?iso-8859-1?Q?GodBVM33h2E7OP4uScIW2yyD7jyUiocGHm9VAc27nZDXxaCcFnAmElYmEI?=
 =?iso-8859-1?Q?qx90S0jnuzWMlNiHrF8ynPZX0v2/bbco3CLbyL8OjR7ShxmMtYQ+8COdBE?=
 =?iso-8859-1?Q?qov3GdSA3nFDla98Dw6kjToLO93OCA/07up9Dydv3J7jFsmB989Z81kt68?=
 =?iso-8859-1?Q?R9S9ngrL5UuohlK2HcafWDaCZqRSZIhmL85buqeSmJNPp8SVMecNdvIHhL?=
 =?iso-8859-1?Q?PIc5Gi5YjsWe98nYhHzGWMtT/LAWmOV6AfmAr/1+vnvrzxgbP0JrD+0axi?=
 =?iso-8859-1?Q?6UJR2pRfjc/tXi64EEqrj82NNkPkw3PvIVCXwdkJ4hx4RsnXHiqBbwxH2N?=
 =?iso-8859-1?Q?64neNJ23/+GpC9UqRySXwT5SFPBaTCaAZX04qbGCBDjD6JFbMTba4sO6Fl?=
 =?iso-8859-1?Q?Yzrm5eAs0L0Ar+kQ5X2v0CAffBBYwHSm67rr9Jm48aFKa+oW7OwkXNz/Qs?=
 =?iso-8859-1?Q?Vp2ZINpnOYtNPhBhvNBbi9xZ+d1iNzlLtH5I6y+6cNHg5jMnM05aC+1eUI?=
 =?iso-8859-1?Q?+8NIG4QgWtabu0lYOUTVZ8cTs26nh0/gXzwQPMLcQLHF3jz7h4c/BaNiFn?=
 =?iso-8859-1?Q?F1fySQIT7oHbifnN5XSi67DmO2x06iR1gXsF/HK0p0KRnDwlCDYtnaT1zt?=
 =?iso-8859-1?Q?8IVwVJzOs44ivhXx08vdfj/bnz5Hi3DlGF5sJcQ+FdLxuuj0cBRIHTCBWi?=
 =?iso-8859-1?Q?+dIaqZnQlJm+w2zPOh8+UebP/bAeePkmVPcztKXKuAzKTEvvtfqqu+wW0t?=
 =?iso-8859-1?Q?m5OFbtTmkiJGtXwb1SUmQfLwgpgG5YtOrbWT0ScukLRSRQytHUMd3tMnjr?=
 =?iso-8859-1?Q?Ctv6f/AGvksMcMZbygqayQZkgA=3D=3D?=
X-OriginatorOrg: sct-15-20-9115-0-msonline-outlook-15bf1.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 027aa559-b43a-4196-fb47-08de1cd0c08b
X-MS-Exchange-CrossTenant-AuthSource: DM5PR19MB4646.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 01:06:49.3841
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR19MB7256

On Thu, Nov 06, 2025 at 12:18:51AM +0100, Heiko Stuebner wrote:
> Am Mittwoch, 5. November 2025, 21:57:07 Mitteleuropäische Normalzeit schrieb Chris Morgan:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Once the DLL_STRBIN_TAPNUM_DEFAULT is set to the correct value [1], the
> > workaround to ensure stable eMMC operation is no longer needed. I
> > have observed testing this that hdparm went from:
> > "Timing buffered disk reads: 502 MB in  3.00 seconds = 167.14 MB/sec"
> > to the following:
> > "Timing buffered disk reads: 832 MB in  3.00 seconds = 277.32 MB/sec"
> > 
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/mmc/host/sdhci-of-dwcmshc.c?id=a28352cf2d2f8380e7aca8cb61682396dca7a991
> > 
> > Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
> 
> This needs the patch you linked to, to actually work, so I'll drop
> the fixes tag when applying, because this should likely not be
> backported to older kernels.
> 
> Same reasoning for patch 5.

Thank you, I wasn't sure about that or not. I can say with certanty
you don't want the eMMC device tree changes prior to that patch going
through or bad things will happen.

Chris

> 
> 
> Heiko
> 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > index 62c8c8f68713..0796ba6d2504 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > @@ -561,10 +561,10 @@ &saradc {
> >  	status = "okay";
> >  };
> >  
> > -/* HS400 modes seemed to cause io errors. */
> >  &sdhci {
> >  	bus-width = <8>;
> > -	no-mmc-hs400;
> > +	mmc-hs400-1_8v;
> > +	mmc-hs400-enhanced-strobe;
> >  	no-sd;
> >  	no-sdio;
> >  	non-removable;
> > 
> 
> 
> 
> 


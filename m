Return-Path: <devicetree+bounces-53072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B7D88AC9B
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 18:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E0C52C66A2
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE5F613BAED;
	Mon, 25 Mar 2024 17:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="lgg+UP4o"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazolkn19013007.outbound.protection.outlook.com [52.103.13.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12C613BAD9
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 17:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.13.7
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711386972; cv=fail; b=hvg4BIWQFhs94NNZGaSziu+K3VdQZL4gyMsYtl2yev6CHpenMCq03wQAO6eb0PJTniv7gTQsfVpVYFXYw0FJCyT2YD0Fpr31DQ+bPRBACy8QEzLyaZyYjR0gaR4E4whBXB2NeekvYKRzT+Q65PjGp30DDGLuTKjWg/yXnFxBPRY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711386972; c=relaxed/simple;
	bh=OPPXzBCdPE1jyMtSUspqmkvOR8oZ3pTZj9B9bPLkhzs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=U1BXCl20QZCykylAcK36cL4rBxykAUTm7IgxxlWV56eW7fg+BJMIzt07JBdLRlQVD9xPtL9EDQfa9iQYN4huB/jgA+QXDAL2Mirbq4LqG50cfUlKLOPfx0D1jcHb1esDfsj4jpF7G0URDCAta7oKkj8J0smofENhKa6THbC8B+8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=fail (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=lgg+UP4o reason="signature verification failed"; arc=fail smtp.client-ip=52.103.13.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TJDKNpelpOhE5pyVxIs5hPbD5+WHUEjnWFSDF1KOAkYvqebpvDZlc80XvUDtCjkFseUUnxBpQwaHM5atCcAL4YjFSjcQ7DQgK0A06xld0kDMzXA4qvUmb+AqpRYawy9Dw3p2S6op37eba5sBeExxpG1FtWwuUxuFJ0DxXinXeeZfOXyM0mnOMSck/HydIzdOlEhtx+qsuJUQZ7ZC/d3Fqf//aJhaL49dS7VYSePtEVkNN/JCVtzgotV+qtc46QmInSJwseu1TDRSGKcBtkbvGtWLvOt9EV5adZlRxTNLm1mylCQHl853kpd7MbOAU//6vcIFOvNVL3SXdfETUhmAmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=raDvlzuoiXzb2826HzYfOVbf9BqS7ARknAJiPRVK/RY=;
 b=MvqBZlKxT97hB0qY1fhwSa1YhK+e7M65+43iPH39VnMBBho8hTtZdR/Y7X6QWzBBULX56V6fcPv55DXvmFtOQQtnmusG1ZNFASedvIi1LWEgHOy7IYAIaHWbtybY4EzjIvh3kymd0QRcNMblvJVtWGjO+1eERbjmBbQ97t9Dw+IhbHSC7pBPAkQZmTbMjeux17VyM9kcrQbYPF9rSrAuLFHzFa8+6MMh11fW5lW/V1yg7+ZJ2uyIMnLQTlz5ZDif3LG4ZRl0Z0Pgt7rqPNW7sCDExyX0A0pEpbewJHraMbtoOCur38NODnEZhrcBESZwsPB+bKzU6ZRk29ZKCGYBag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=raDvlzuoiXzb2826HzYfOVbf9BqS7ARknAJiPRVK/RY=;
 b=lgg+UP4oFF5j7HkMBE89xwg9htNkyF2xGkAqiqzXPXnk3RkfotfCpVt6jJ2VzRSbafuQNy85O6FJrq12OL54Of6tQSAEqfNtBMAVJck4je8vGhRnDEB9WweXqU2PvfWMbpCJF+7Q/eCAzxssw6yzPWqT+lqvG7xOoL+WRIJ4SgqVT7unhjOmi9NlADso8MZ7lSg03yFnaUZ/RXohJxORpDGatmeXWf1+dJ0DZ8k7r6lgVrIv/eZ681KrlWzUM50g06N361cvN2vyaoaB1zMqbNsVequUlDx/ZZDJcUvMdq0bHMeDSmRPNKAujrTbvBFlt7VJ5zx2qfPAgrSIB5q94Q==
Received: from DM4PR05MB9229.namprd05.prod.outlook.com (2603:10b6:8:88::20) by
 IA1PR05MB9455.namprd05.prod.outlook.com (2603:10b6:208:42d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 25 Mar
 2024 17:16:08 +0000
Received: from DM4PR05MB9229.namprd05.prod.outlook.com
 ([fe80::148f:6016:501b:93f4]) by DM4PR05MB9229.namprd05.prod.outlook.com
 ([fe80::148f:6016:501b:93f4%3]) with mapi id 15.20.7409.023; Mon, 25 Mar 2024
 17:16:07 +0000
Date: Mon, 25 Mar 2024 12:16:05 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Correct RGxx3 SDMMC ordering
Message-ID:
 <DM4PR05MB9229232A569011FFF10FED11A5362@DM4PR05MB9229.namprd05.prod.outlook.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
 <20240325143729.83852-4-macroalpha82@gmail.com>
 <2963425.VdNmn5OnKV@diego>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2963425.VdNmn5OnKV@diego>
X-TMN: [mFgg9pUd7UcRkfsqMU3dZynkYCGwj/WX]
X-ClientProxiedBy: SA0PR11CA0026.namprd11.prod.outlook.com
 (2603:10b6:806:d3::31) To DM4PR05MB9229.namprd05.prod.outlook.com
 (2603:10b6:8:88::20)
X-Microsoft-Original-Message-ID: <ZgGxVQZ7e5SK7K6I@wintermute.localhost.fail>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR05MB9229:EE_|IA1PR05MB9455:EE_
X-MS-Office365-Filtering-Correlation-Id: 853be1fe-6fa0-4416-bf3b-08dc4cef4253
X-MS-Exchange-SLBlob-MailProps:
	Cq7lScuPrnqkjmXb1vlddM5aSa/Epk3AARc8S1+EJJzMkgEcHRe4m1Ekca7J7py72XCV8KMsRbleTPRkvM9I84ogRm6+IF0GXOjLie3327qhTjhGB/p2wywKIg5RCpvmocXrn+8Jk1dTfzbriLiDuseQsTaV2G4sJf0ne7T3MPo4Gkl3+W2U9bH4v9lRjk9UzeOSjw3Jk4bXfXatqWrm5nfUlxgNm+rlS2fRWeUEYvMRc7/j+wGh3E/DP57pc/8EFWxedCwlPXwyOiGJMcmlOYQlnEE9CPvsxhM41j/Vn/7vtswNJr7vh3iRIbeDU+06/bH3M7nv384ofUiEBgnfrEhRB0KzgtBnvhnKgvitddHUlVZvaPaENKatNm0UwYoVVkXRHjU19TsAI4jIUKUL4pFr2nhqpJqsIkEXV4qXR/lUZp/ZesiqTFEyMHmmC3JfqId5RrR3+T7ajEA1Ci4zHtvJ1cwiMnKEG/AKOMRCLTW8w40cFPiwr/r1yHwyiRYWk1ulhxICkuXeQmrBBIrStlArH1RF2R8uZKl2eBXNhdSOl2isyiapj8pAG/c8uEQ6zT2wOOry9jQgUOoyyyzhwOFZP8tu1qHXjDW03RfonH+KKpAzMif8PPi6b2jOtMu9pXvf1FYw/7Kk1zZYmw/eTDz8ZtdW5XnSw8Ub2Gkz8JGSHLJbjASTprWu9i30WqEtHRcvpE8KePjS0p7ajKBOkxyyooDeCP2F8v7Xhrl5/nb6R+lpd4t1/e0JMtq9vsNTfUYRuXS3Apo=
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	rkX4MsZPcZrWNZYo3tHo9DdQpFyt4iVnhirr7Uw1CA+OjDXKtxc8R+a50EQw3cZTzqsOCOb6tiWwfUDLZ4XbQ+7UsrBg4LPA4nF/u3Dijm+Ywo8G60oVZOHazn1UUt3CUoCyGSIHTqIS/OCga8GrtzRBg3HOt8jIZZ5EzPFCG0ef3+Fcv8Z1GqJMOg7iFZYrZDf7/myIdrawRkKMhoRew1dYw1Qq8BCBExkloDROTRZ8FxeGA+3z1HEnk4wuRQ6El/icOEJXjAwoZaS1ycf27wRVBP34Hug2HuAtm/lFXAehEmdljqbUJfevXBjLJeNE/QMPJEILJoUfSBTS/nVIVuOlHQM/hhTzateH9I7pQus06+gozUjV/k7QuCFZEj89hoPfVtJzoDhSSF03Jt/x6nhirKL1Ng/Q5EskEDD1J5eNNrw0hFOLK1C1mMyXN1dxcn5hsuRGgyfAH7ccHjigp+7HwGeyxfRMNtJ+QRJGr2UxP4mi3hgd5dqjnXsHNmjPsWM7IaQClsRtU6K9YMBWXNiW7WtPDMaa6AhWR1Z6AkNMmhhfDdVglUyvWAbEK8zL
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?iso-8859-1?Q?ifuGBHn5aS5Ba08Yv5Ax4COqb2m2vKDn6zN3G11kI3S/nc4kWZc3vEMbR0?=
 =?iso-8859-1?Q?c9BEL+sYhUHg5JsKVffyIQ6dqssiHkfqG6k2d0ATy5EGfW1LKP0eZ966Pu?=
 =?iso-8859-1?Q?zP+Z9uRdr2svJe/8BiMpViOOppjAq+LmIknItOJlCUyxVqxmdgBuAKarNT?=
 =?iso-8859-1?Q?7Fzjy1xL/ay5qRFNm0TGxbqDp2qos8hNIpUFGcS+QWkUYXFWnL3w1l6Fho?=
 =?iso-8859-1?Q?Gk0OvyEAtigN8E9LmbLOcsTUXNHmCWeltytGVcvQtOgSaNAkStPSCe6jKZ?=
 =?iso-8859-1?Q?QtCSN+Fr+LNsstAhNCJn0ZAbKn+o3UB/GuDEnctx8A2ZyQRMgeTMg7/rB1?=
 =?iso-8859-1?Q?orCAre0+c5MrmZuAqoEf/hrWCNkYjuOXRy3c7IQG2k4KRu+vWL/NSCvfRE?=
 =?iso-8859-1?Q?/oAgGta4MVEIlLfUpRAurpHPD5F/t1wX6AdPdZNOA3BrRwuAlBh1Dl0O+K?=
 =?iso-8859-1?Q?IONv7JTJ9dXNm7fHWQXqCawbLNlYjyFQIG+3ZYoQb1kzuR4oL8Njev1biQ?=
 =?iso-8859-1?Q?GJrArkF/8dXJKaz5oJbYOvMsPVv3ySLfROGfWIuPuY4UvJ4+JHzL1+o3Lt?=
 =?iso-8859-1?Q?SJ5pOecP5zigZ8Mr2o07L7vQ0dnPgCWfJIbaJEwCVqdeAMTFrE/UXH82xQ?=
 =?iso-8859-1?Q?a5UzYvtUQFcIcSEGUUuOYRy8hP+WTJ7vS/7BS8WPRKlfyiSXr5Hrta3Xj9?=
 =?iso-8859-1?Q?vfKhKd623uX8sEmUiOu6ID0MrCjRIWugMtDCQWR+gfFu7SkBt1w2E/N9D2?=
 =?iso-8859-1?Q?DtpzDptniIQj5y0CgEVU1JhKrwmmnTNJk1slNz+tMrjZs81o7U8+xnwkBO?=
 =?iso-8859-1?Q?bAbn3i8p66pwMaxBX/n/c20+TfwTaTVVeHU4dM751fxnO2uBp+xuzCOTpD?=
 =?iso-8859-1?Q?8jn4swdb9VU/kotXm7EuHU7XbMYypokTxWkV+ja3NJasaBvHBugJ1IVAni?=
 =?iso-8859-1?Q?9FEbKUb+EDA7m+NRqyPEcqH9LJxDHDyu90wAiO9l8hfhrjDfFOS90HRQOn?=
 =?iso-8859-1?Q?HVvwpdNq3KTccRPhsBA/EX17MAYL6oij9q+uu/mqrn6RQGZrM3PYteZFmL?=
 =?iso-8859-1?Q?w5utD34UveoZkYUufHusPbZmqrLidYxorNn0uDaDVlyxRNPLsc12r2/vPN?=
 =?iso-8859-1?Q?DspIfya4wki9PiepwYE4KaGreH1RHwzG+f23bcPjg38flhifS5aEY4bXfn?=
 =?iso-8859-1?Q?G89xx6pplLlJ5kLCCQECihkGNr0r8lMqA5fdc5Cos23sCRpQfzMhj1ZPx6?=
 =?iso-8859-1?Q?+3qgCG4tefnZiQT2f+ht46Edm7kzne1fxTHSI5qCw=3D?=
X-OriginatorOrg: sct-15-20-4823-7-msonline-outlook-84f76.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 853be1fe-6fa0-4416-bf3b-08dc4cef4253
X-MS-Exchange-CrossTenant-AuthSource: DM4PR05MB9229.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 17:16:07.7197
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR05MB9455

On Mon, Mar 25, 2024 at 04:39:28PM +0100, Heiko Stübner wrote:
> Hmm,
> 
> Am Montag, 25. März 2024, 15:37:28 CET schrieb Chris Morgan:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Make the order of SDMMC predictable across the entire device lineup.
> > This allows userspace to always know that sdmmc0 is the eMMC (when
> > present), sdmmc1 is always the first sd card slot, sdmmc2 is always
> > the 2nd sd card slot (when present), and sdmmc3 is always the wifi
> > (when present).
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> 
> this is really really difficult.
> 
> For example, you added the rg353p, rk503 nad rg353vs and their aliases
> two years ago for 6.1 , the rg353ps for 6.5.  So someone might actually
> rely on those already in their userspace setup.
> 
> So reorganizing the aliases to point to different devices might actually
> break userspace, which as you might know, is sort of a big deal ;-) .
> 
> Userspace programs can determine the mmc mapping via the board-compatible
> though.

Okay, then this might need to be disregarded. Perhaps at a minimum we can
set the WiFi device to be mmc3 at least for a consistent basis. That was
the main driver of this request and shouldn't be a major concern for
userspace. Would that work?

Thank you.

> 
> 
> Heiko
> 
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts | 7 -------
> >  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts | 6 ------
> >  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts   | 7 -------
> >  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts  | 6 ------
> >  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts   | 7 -------
> >  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts  | 6 ------
> >  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts    | 6 ------
> >  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 7 +++++++
> >  8 files changed, 7 insertions(+), 45 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
> > index ab83e8a61615..d239a8452957 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
> > @@ -10,13 +10,6 @@
> >  / {
> >  	model = "Anbernic RG ARC-D";
> >  	compatible = "anbernic,rg-arc-d", "rockchip,rk3566";
> > -
> > -	aliases {
> > -		mmc0 = &sdhci;
> > -		mmc1 = &sdmmc0;
> > -		mmc2 = &sdmmc1;
> > -		mmc3 = &sdmmc2;
> > -	};
> >  };
> >  
> >  &i2c2 {
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
> > index 6264a8c78d0b..4bb13d94a759 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
> > @@ -10,10 +10,4 @@
> >  / {
> >  	model = "Anbernic RG ARC-S";
> >  	compatible = "anbernic,rg-arc-s", "rockchip,rk3566";
> > -
> > -	aliases {
> > -		mmc1 = &sdmmc0;
> > -		mmc2 = &sdmmc1;
> > -		mmc3 = &sdmmc2;
> > -	};
> >  };
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> > index 8aa93c646bec..94c678c44d3a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> > @@ -11,13 +11,6 @@ / {
> >  	model = "RG353P";
> >  	compatible = "anbernic,rg353p", "rockchip,rk3566";
> >  
> > -	aliases {
> > -		mmc0 = &sdhci;
> > -		mmc1 = &sdmmc0;
> > -		mmc2 = &sdmmc1;
> > -		mmc3 = &sdmmc2;
> > -	};
> > -
> >  	battery: battery {
> >  		compatible = "simple-battery";
> >  		charge-full-design-microamp-hours = <3472000>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
> > index b211973e36c2..25edd81ce26b 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
> > @@ -11,12 +11,6 @@ / {
> >  	model = "RG353PS";
> >  	compatible = "anbernic,rg353ps", "rockchip,rk3566";
> >  
> > -	aliases {
> > -		mmc0 = &sdmmc0;
> > -		mmc1 = &sdmmc1;
> > -		mmc2 = &sdmmc2;
> > -	};
> > -
> >  	battery: battery {
> >  		compatible = "simple-battery";
> >  		charge-full-design-microamp-hours = <3472000>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> > index f49ce29ba597..5354c5958df2 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> > @@ -11,13 +11,6 @@ / {
> >  	model = "RG353V";
> >  	compatible = "anbernic,rg353v", "rockchip,rk3566";
> >  
> > -	aliases {
> > -		mmc0 = &sdhci;
> > -		mmc1 = &sdmmc0;
> > -		mmc2 = &sdmmc1;
> > -		mmc3 = &sdmmc2;
> > -	};
> > -
> >  	battery: battery {
> >  		compatible = "simple-battery";
> >  		charge-full-design-microamp-hours = <3151000>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
> > index a7dc462fe21f..02653b59f6c2 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
> > @@ -11,12 +11,6 @@ / {
> >  	model = "RG353VS";
> >  	compatible = "anbernic,rg353vs", "rockchip,rk3566";
> >  
> > -	aliases {
> > -		mmc0 = &sdmmc0;
> > -		mmc1 = &sdmmc1;
> > -		mmc2 = &sdmmc2;
> > -	};
> > -
> >  	battery: battery {
> >  		compatible = "simple-battery";
> >  		charge-full-design-microamp-hours = <3151000>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> > index 94e6dd61a2db..e7161a86a9f1 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> > @@ -11,12 +11,6 @@ / {
> >  	model = "RG503";
> >  	compatible = "anbernic,rg503", "rockchip,rk3566";
> >  
> > -	aliases {
> > -		mmc0 = &sdmmc0;
> > -		mmc1 = &sdmmc1;
> > -		mmc2 = &sdmmc2;
> > -	};
> > -
> >  	adc-joystick {
> >  		compatible = "adc-joystick";
> >  		io-channels = <&adc_mux 0>,
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> > index 233eade30f21..47c8fdc7c843 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> > @@ -12,6 +12,13 @@
> >  / {
> >  	chassis-type = "handset";
> >  
> > +	aliases {
> > +		mmc0 = &sdhci;
> > +		mmc1 = &sdmmc0;
> > +		mmc2 = &sdmmc1;
> > +		mmc3 = &sdmmc2;
> > +	};
> > +
> >  	chosen: chosen {
> >  		stdout-path = "serial2:1500000n8";
> >  	};
> > 
> 
> 
> 
> 


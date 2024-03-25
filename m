Return-Path: <devicetree+bounces-53188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D320A88B38E
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 23:10:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89583305C5D
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 22:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D4137175E;
	Mon, 25 Mar 2024 22:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="VX6LnOji"
X-Original-To: devicetree@vger.kernel.org
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazolkn19014008.outbound.protection.outlook.com [52.103.13.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9281B5D737
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 22:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.13.8
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711404622; cv=fail; b=Ye6kzZBDWXj5wqNzNYag5W+NRWwIXDHH4XJtFVFUM/rAKi9NK6iAa8ppybTfgpv/77uHN31HPP2kQSzgw/RCwkOT04BwV+K7KdptXq/plVfN5FaCXc/aufXJfxy+4sLGyc/tJAqn1+KWQCZpHy8C+tshFc5PwEyRJf/MF8IiDWM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711404622; c=relaxed/simple;
	bh=86pz7pBgP6q7kqrnhBOoOtq39MFUot7ffG63UU7SKsc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=CtKuw2FoOlv/KYf/Q9ndLxl/4ZBm+Sh6EklGPWEQxv2fANFMwvW1X8EdunHp3bTEVY64N4fF7/yCjJAna9s2k6ZYWeOtmLzQ3jrtw3b6UlhbZNRiyXbma57yFjddjdMkhOeWSgo0pW41OoM2EPGJ5AfJAR2JVN7rfQMFs2/w6o0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=fail (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=VX6LnOji reason="signature verification failed"; arc=fail smtp.client-ip=52.103.13.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fHeiO9JAzLLN84kK5CQiEoXoueEUFPzyABtNIm6rsXhhFg0tIq+2eh1xvLpuPBT+/e/NYSRhJk1SYlF3wnbhqApM+dBT0Fp2h7KiZ9yGZNWJwEoha9PqB5MzGuAgy9ZV93B5rBzFf3xA9e4Z7LwhMoVfRjD7+fe/8lcpLmD4mdUMiCnV1gXgjQ95d0NlaNqbCehjlyOgyPVGnzwGytOKRQBFtwufet4NUmkIdfJlWpbjlZGv9cXrUfA2//K5aMkbPhWIvihOagyrE86xFP6iPJQtd9mUcZAgeoOqZkzWFNhxBNG+f0NUs3PMPIhsZT2RKtrjXZvbtt+lLPTUCtm1yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mNrjgHN/R0crprgCKUfSvTgXiPUBweO5ypqEgxosvSo=;
 b=RPmuPPEAyf/GekWDF12cTYdAnX+f9ysb7Ii76SNk4UVt+PRLqD9CpCn0Uq8BLvQigOFPewNrnVzxjTi4h+MhotgE4ZQbcrA/MzKxYAnJES8vo1rwR51cT/Xk8/30hIW94k1BMLXpFVhMfQ8Onpwg+OwxGxgUerxHxVquQmVBx9XujGxq6ek8bCsUmIhc2d0XJ0WQNYdKxEpp52VfDDhYGstcCotaik4m5hH4fKq1HywxrgoVCbWzmi8L0oWX+hhMUcjGZ3s+qiHO6rd/uGqTB6mzj4WtOU0rpH5T7ddzE0pFZiSU0dIq49s4eZh93xZlCcQ4rl2q11rNOc4+0iLwVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNrjgHN/R0crprgCKUfSvTgXiPUBweO5ypqEgxosvSo=;
 b=VX6LnOjizqSryOrYBZzma85S25czIK8fVl24AIvc4BUVRv7rhKprJxQ0X145E5BS2wIfcmLBvPZ6qsbHDjHzlHUAFCmbZZz+59KtRbL+ObFIz32izSs/pY2sAxigTJVePO5I9Ah5keDKiV5ypL2evyDGeKnZydhluNYp9yXsXKPIwTVOM7VoNj7Rp5EEahvhup8jcdGwesWVY9rJwkEcwN1zkIeZcNE72TdFsdDMV8bYGyiTnHYb2ZPD69GZGelf7++UvcDRwtfkT6CZFHlyG8VHcLozvkMTe80ZQywe7prz/ULCj9QT4D1Iq3jpc9Q+uOdtUUT9gi7jNmzarPWdFA==
Received: from DM4PR05MB9229.namprd05.prod.outlook.com (2603:10b6:8:88::20) by
 DM4PR05MB9015.namprd05.prod.outlook.com (2603:10b6:8:b1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.26; Mon, 25 Mar 2024 22:10:18 +0000
Received: from DM4PR05MB9229.namprd05.prod.outlook.com
 ([fe80::148f:6016:501b:93f4]) by DM4PR05MB9229.namprd05.prod.outlook.com
 ([fe80::148f:6016:501b:93f4%3]) with mapi id 15.20.7409.023; Mon, 25 Mar 2024
 22:10:18 +0000
Date: Mon, 25 Mar 2024 17:10:16 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org
Subject: Re: [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
Message-ID:
 <DM4PR05MB92299776F73878F4338C1CE7A5362@DM4PR05MB9229.namprd05.prod.outlook.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
 <5e2f0da3fc066cf1faddda71bb6ea2e7@manjaro.org>
 <2854897.88bMQJbFj6@diego>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2854897.88bMQJbFj6@diego>
X-TMN: [f/XFgwE+HRbKGt0CNRJ3xuKW/Jgld+kS]
X-ClientProxiedBy: DS7PR05CA0105.namprd05.prod.outlook.com
 (2603:10b6:8:56::19) To DM4PR05MB9229.namprd05.prod.outlook.com
 (2603:10b6:8:88::20)
X-Microsoft-Original-Message-ID: <ZgH2SDgUlloytFod@wintermute.localhost.fail>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR05MB9229:EE_|DM4PR05MB9015:EE_
X-MS-Office365-Filtering-Correlation-Id: 726f4f87-d5b3-4eec-8e34-08dc4d185ad4
X-MS-Exchange-SLBlob-MailProps:
	Cq7lScuPrnqkjmXb1vlddM5aSa/Epk3AfmgTddMB09FhZqsHOad8Abv/ik9yG4g1JxfG+76gwvSzs56BN0bli1ySJm5WsxumQmBQAWY3kAVbjVQB2PLqSWV/uwufRWGhagh3aMSXScGmp0wfmyGfuJOalcyFwQW505dk7zUf0gIU9//LT1pFMZmMrkrD+5e482f/bd2wV7734YQSHJOec6k/N5mRDWd54sN30af541Ko0mJP4vTaMPpI2CQUIWPMHwO8jbpYYRDD8lbQNTRRQxH9VkD7v6qrjhGaUW/+cvER5vRIXsg8X/xVQ+YIc/MkSgROG8QmZj26Ij3hXKYDt/n9AZJEHWEe4bBcIVpQ9mxDPy4I3N88wbkXgkMYBvf9w8a5m9O14D4FPF6SHkbmyI24z4+SeR2M6hB1EcNd9I3S1cMKBN/uK3XHN1GnO7AziGtmNb8mE/zIs5hCUsYLBQs+KwbzsAMAxvw2avu6Hz4KjEpa4UGt8fRpnN9bKjD8H65hLLMDBcOC3d1AeoeUMueHhvrHxQ4bXTgsrsKRkdwbw5JskgywT4041ckKxEBBHeNWTwsVjc7GUqHjiuDTBFO4/6ChKygA0CCds9ONPVDMmODrlX9x/HYf1OW9OdDT7VF2T+1c9koxlFlkFLosDWhu0uXgcq9wvTbAN2ZWudd8QjAzqd0Igh6bqoLozCV084oTDvKU6uCOmqorPSMM1ReHi4dU+hSQYNSWYICpDafpaO7hwvqfcfB35mCChf8LyYAtlioo7jU=
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	+bpjxCaHtd3QHV/GAFOmlm2mUma7ZN7hUqqZpBt4MhQ7IXIOaHasPtufiNqWPeLQMOArqkuwG7xswofueOI2qyoCRzEc1YgyUWpk3REhzasu7WfQ1ke7b0e0dSbggQ0i9jHjQ0UogOT/SoIvz49mGLBd8D306JM2AA5rsVAVOMqzeGA95sZ0jVClImpBq5nJzUT2+7VrEvIEogjR40NYoNZcMulWpqtJriyKaM6Ebc9eS131cQZRSVuuI7BylczIezkP6TBN3UbDcvzo7lRda6jVyvLYKj3dbAviyVS8TuTG93Fm9ngPmlnNVkVvzF2Mj9zoi5D50cA/g8thMft13VqL7aqU1Fly/CIIGV+DPfNFr+sGlsWeBWBH1lkyyOrAshqfK6j0HjLfKyaiffSKmCcra87o7RtcVDaXtTHgfvGy+FuP+M+JsTIU/K886Ziy9B4UyDCBkULmajVYOjwFm65Zti9d5j6uPRje/ewmGnLWThqwbPsBH+8sVb2lCUjFkVseaXGXW19iqyIFuul2WhHGOxGEsxmANMxuWckjNhNi4VkXcwOY/BXUf+MbC7ha
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?iso-8859-1?Q?66ZonwUNTnrY0IWlZti5mE4ct7AvKyjgjsWeJbT/i9/vTFzv7qHxO1mWL6?=
 =?iso-8859-1?Q?zvctvOS4iAsd55lqBm0kLGSx6ueEOGFvKqiFo3RqPCPpLu6OYdFN4Vjbhc?=
 =?iso-8859-1?Q?uyLeDLXhDKW6QYpV4LGS5ueGJJqPqqfmjqS+XhvDs/LBReeFpv8vyihPNJ?=
 =?iso-8859-1?Q?rtO3sn0nak8KXWlYQk9FgVTc1HSyCtvkEDxICQd68hxYIbompC3NBmCIuN?=
 =?iso-8859-1?Q?O+dV0unweicQUm9fTWKQFAeHWUhC2FhE74TNOhJdkxZhsVlG01u4ax6sIU?=
 =?iso-8859-1?Q?R1QAtqrIt2a4HLjy6nrbEcw3vPk7wuMuWyO08Y9/8J8zmo9f6l6BtDT40X?=
 =?iso-8859-1?Q?3Q/uT/LBFaKCAcEo4gQmHyZ+7/rsqu3hHtBsLwqC8Me52DO5uUsoFvyuXR?=
 =?iso-8859-1?Q?7bzCiT/Jp46NpnTLhTPW/NqI10/nQJqhH9/RfTFYW7KSN/LHZqf9Qwx/Gt?=
 =?iso-8859-1?Q?SfsglRnz/+QU5YV9v4cAwWaUN+uZte7OCde03MmhbwP08mxvo21+l5yCci?=
 =?iso-8859-1?Q?MgPJS7uPmwQsrTdH1eWeypz37hau0H9RSQwKiR7uQA9gnfoKYYKNTByY/y?=
 =?iso-8859-1?Q?t0XZU/z8Eo2vYfRUfHd16Tg7EBDSAwbype8qijEJIhUhhAQM1b5KQmBNqk?=
 =?iso-8859-1?Q?xV8dZlA4r56rb3xqCfG5OzRmD+q1ONI4EudsstM1yGaXkpGXgUw/2FfyAP?=
 =?iso-8859-1?Q?vZrGEy0Z5yrRfn6/rix1TXeRHs7RHNGz03LmxZrjlVFGpUn5QB1UuPTwib?=
 =?iso-8859-1?Q?+FIbRJMSZ8B8VSBKYkTVjOZzWqnqsgzNCS/Va5emgI+XeTt9rrtxySgQ54?=
 =?iso-8859-1?Q?EOO9BzEzYI0+MP/7hH5zEcasFm1a/g8BFqeBAJcQ0yeoRLk1pGF4Dnsj9e?=
 =?iso-8859-1?Q?beI9OcsX2LsMWP7hFWeqQ4npPsadrS81mwdneA4GWcdCDGTBYhxspv678k?=
 =?iso-8859-1?Q?sih9uLjnHktgtSGB2y7FxiQLsyV8dVub3/fVAigj50VrtOvF2GrOsff3NM?=
 =?iso-8859-1?Q?vl07BIOmeV1iA3UuCCFNFKB4MyRiGSpL4Mm3oASkRigx7mRhBlqbTbDT3p?=
 =?iso-8859-1?Q?tb5xc6VWh2oyIgro0GqljYJzz3lnLqVna0iw3BR3h4CiKCCTKKQFoYtJAX?=
 =?iso-8859-1?Q?PpvYqDSNEnGa4QkFs2sdoXfmxtsyioZjTlAzadAbFS91+Yd5+tZ+HYUtXs?=
 =?iso-8859-1?Q?aSu4fq1TtFqHk2NEQpauUToUdSGISqX5Q0T3WNpRatVK5e+kYXQutifnN/?=
 =?iso-8859-1?Q?dPAgazwsr+uXVQLuDm4VjrQ7M0xVl68GZqFUuS1Oc=3D?=
X-OriginatorOrg: sct-15-20-4823-7-msonline-outlook-84f76.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 726f4f87-d5b3-4eec-8e34-08dc4d185ad4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR05MB9229.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 22:10:18.6946
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR05MB9015

On Mon, Mar 25, 2024 at 10:53:02PM +0100, Heiko Stübner wrote:
> Am Montag, 25. März 2024, 18:57:06 CET schrieb Dragan Simic:
> > Hello Chris,
> > 
> > On 2024-03-25 18:51, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Users have requested fixes for Powkiddy devices to help with some
> > > intermittent WiFi issues by adding additional properties to the
> > > SDMMC2 node. They have also requested that the model name be
> > > represented consistently with both the manufacturer name and model
> > > name. Lastly, there exists a second configuration of the RGB30 with
> > > a slightly different regulator layout we need to describe.
> > > 
> > > I have added the new/additional property of "chasis-type" as well.
> > 
> > Shouldn't this series be labeled as v2?
> 
> I think this is for Powkiddy handhelds, the other series was
> for Anberic ones.
> 
> Somehow they design and build seemingly dozens of somewhat
> similar handhelds around the rk3566 ;-)

Yes they do, and unfortunately in the case of some of the devices they
love to make changes and not tell anyone (like the regulator change for
the RGB30)  In regards to that specific change, let me know if it's not
appropriate to put that in the devicetree the way I did. Ideally I'll
do a fixup of sorts with U-Boot, but it might be easier if I have a
disabled node to work with already...

Otherwise these fixes try to resolve some wifi issues for all the
devices along with fixing the inconsistent names. I have some additional
fixes (coming when I can get them finished and tested) for the Powkiddy
devices as some of the screens have slightly shifted pixels.

Thank you.

> 
> 
> > By the way, regarding renaming the mmcX aliases, maybe that would
> > actually be doable, but only if you have full control over software
> > that runs on these devices.
> > 
> > > Chris Morgan (4):
> > >   dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
> > >   arm64: dts: rockchip: Update sdmmc node for wifi on powkiddy rk3566
> > >   arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
> > >   arm64: dts: rockchip: Describe Alternate Regulator Config on RGB30
> > > 
> > >  .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 30 ++++++++++++++++++-
> > >  .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  6 +++-
> > >  .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |  4 +++
> > >  .../boot/dts/rockchip/rk3566-powkiddy-x55.dts |  4 +++
> > >  4 files changed, 42 insertions(+), 2 deletions(-)
> > 
> 
> 
> 
> 


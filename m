Return-Path: <devicetree+bounces-142770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE3FA2658A
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 22:28:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43FB316259F
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 21:28:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE10320E71F;
	Mon,  3 Feb 2025 21:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="Ee/+izAL"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10olkn2052.outbound.protection.outlook.com [40.92.41.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DA51D5166
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 21:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.92.41.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738618083; cv=fail; b=eOA8bdrRqV5XAh8c6WXS9A6E8ij6fIjr5qtKeTK66FinW1Xf2Gu0nrGM2mZ5PMzWaTwB4gfBLS65CBC8Vpc9OJhROOFeXgzkErcF9UAHJTar1Vu/K3z7zCXwQUtCKVJxktOVatVFzdMHdHKKVgOpd4qUKU37Zpz3e1YhStBAc2o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738618083; c=relaxed/simple;
	bh=mpRaiErpwWPSxSJBlJc8R8A6vwrmMyBQr88dcZpEW64=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=aAMC3bXZ+fHpLKuacoOc9g9OIxpflXrYgLUv+Z9X2WR4r24c3JEYHOvRfjD2lahWx67MRHzUczY+6CYqrzhL0b1QDejm8Kcf3FjaAZofoomkFcs/UZL60ez/PpB1W2VYg9wHe+mY/9b9ekOrAGgChbRoF44pgaNgeGzx3Nfpu8Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=Ee/+izAL; arc=fail smtp.client-ip=40.92.41.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ktXTo2MFCiEnyYmbrtgqIzZdqvdOkwyR1T8aSx61PrhRNKoUI903rJAYEEDd/TPOpwhV2ARh/uwtq68drZBC5fVbOFFE0hO8cMPyyusQHh+YtxglaH1d+NARY8IQtQ25fgnyzLae/C1f1lgW7yEJQXNDsbrLEOC4Lcjdb2Gbt2aOM/kFXRGxi/HX6w7CcES+Pj0yfnA9rDHQ3g7ctVD+kX86ZLO0pEoks08Uzf5dONAMvUenLnJ/hlViX9BmEUmSdjI4lafMeIsWJgVR0nD3ujVX53w6GcrrBcVBhIdmsQb1WEsrWhl+NPgsJBh7LjHmka0o/3ZVWzsrl4GI9dc28w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2U8SIU6Fp4V1dQbOIWD0ZCq6VdGSciivyrny1ARZLSY=;
 b=S72JpJmEOgqfQBNTTkC4aTrnY/CQCrbKa2NTmGuuJddyQAph1kJvA/YCPNNkFK6Z/Mv77YFUl+F6d1RvlM3v/2byScduvFUCqGYYoh0AU5ptShct4GrGmu2npF3oWYq1IPmVOij4WwnCl4DpN9q8l7YiRxMsS/YnGazmRJDNXbfGEglVViZffHA4tetvBqfGp66JYfdKtMZvbRIRm+QEIoJ2//QZdchJ0eLxt9ugj+uQ5gOR6SFmvnkv9/6pDZnHoJBpSk4pd2HyJLay0RAACapKQGL+W9+zerEEE+YgwjyasQ/RVi/CGhzYAM6XbOt0J/EPOybE9JLkCoDmeqRR4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2U8SIU6Fp4V1dQbOIWD0ZCq6VdGSciivyrny1ARZLSY=;
 b=Ee/+izALAoaIUh5zDIovMmkxu6A6YjVm9Prd94V30B56LPQJS+HU8S3O4so2FjHIq0mzrkNZReyFZKAriySTcvFN1XBhVsmIflsKins5UXekgFNr44uftLnUfKPHngfhFHzBJ0SU3eFWs1a58xFlNaZY9+q5uW5W2e6XJJU6vbn60ufH2t74iUg4wgvnAOOzklYygd7lij1pKWt7uNqbYVwtxv9fbUOJTjV/53Ps1X27+Bp5DK3KRpBymyE0PjPioasiKWr3oIAW/PQiVZT6HuK5eNXh2lo9uE3Sl+Y2tuuwCSCljyyYobB1mb+54yZ2oalhbciC/1fdw82HNdybMQ==
Received: from MN2PR19MB3728.namprd19.prod.outlook.com (2603:10b6:208:196::21)
 by SA0PR19MB4287.namprd19.prod.outlook.com (2603:10b6:806:82::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.26; Mon, 3 Feb
 2025 21:27:59 +0000
Received: from MN2PR19MB3728.namprd19.prod.outlook.com
 ([fe80::35f9:f290:76a1:1c70]) by MN2PR19MB3728.namprd19.prod.outlook.com
 ([fe80::35f9:f290:76a1:1c70%4]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 21:27:59 +0000
Date: Mon, 3 Feb 2025 15:27:56 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
Message-ID:
 <MN2PR19MB3728B870175A9568773D9BD0A5F52@MN2PR19MB3728.namprd19.prod.outlook.com>
References: <20250130181005.6319-1-macroalpha82@gmail.com>
 <5d0ae245-1ad3-4e3c-9c68-28babc7290a6@cherry.de>
 <DM6PR19MB3722A5CCBF3FBEAC59189642A5E82@DM6PR19MB3722.namprd19.prod.outlook.com>
 <7266daa9-b031-4c45-8711-c4e6e4be7095@cherry.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7266daa9-b031-4c45-8711-c4e6e4be7095@cherry.de>
X-ClientProxiedBy: SA9PR11CA0006.namprd11.prod.outlook.com
 (2603:10b6:806:6e::11) To MN2PR19MB3728.namprd19.prod.outlook.com
 (2603:10b6:208:196::21)
X-Microsoft-Original-Message-ID: <Z6E03BzdcRNBUUdI@wintermute.localhost.fail>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR19MB3728:EE_|SA0PR19MB4287:EE_
X-MS-Office365-Filtering-Correlation-Id: c36571ca-93b1-4472-5c87-08dd4499a1b3
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|15080799006|7092599003|461199028|8060799006|19110799003|5072599009|6090799003|3412199025|440099028|41001999003;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?IYcza5kVmPFJd18FBcBIniyl8gt8IIaeh66XYV+MiUOC7AoZm1i59zmoxAON?=
 =?us-ascii?Q?DF0VxYomjxurFSdZcAXMidM+hG9S5YVIWo/Hg8wTHgoYInjjOhP3b0dNot59?=
 =?us-ascii?Q?bxdUiudashhjkcF08kH57xwXDwSSiUqdcMEg1KZ+DMIg0KHCnVbsRhiNqbBa?=
 =?us-ascii?Q?9LpmVUSI/dFIlHgcLXWtu7th0O76LZ4X545UeLJKJUuyRUoVixzX5iFP8HUj?=
 =?us-ascii?Q?VGuTJqBuwKY6IYSfOEW29buEj7exI3SX5UWJ3YqdoeCOPFTKloxjSQ2KQ4N9?=
 =?us-ascii?Q?x1e0hiWQABxdqF5u0ljFzCnKeE/3Bdg6XwawsgNiaPzy2U55MXCdvXkTk+kR?=
 =?us-ascii?Q?kYySzlPLdX/JwPWtFF9wupYbTofrGxoZaB7v01AA0SSI9YbHhO9UnpOGkmRC?=
 =?us-ascii?Q?WHWeQFY7g8JI0sMC+MeaDD5tSw0hwa1zuIcBa1rh3S2pofnM3OWgC8pR/oLP?=
 =?us-ascii?Q?7ltwqq7X7KIo1HVnYG7uqNJeGVhq7XMw2smNmj0naoqBqQT8u8A2/h+q+tti?=
 =?us-ascii?Q?yiC2jJaTrnWg6HaRmTC+cCfEJnUkT/VAOiuQHfpjUVmMG3Cer6WgMtmme9Z5?=
 =?us-ascii?Q?MvwrZpcFRgAPW8ZqAgpcPont00hZYBQU1nsl3/4C/fbqsh6ch/MKpn4TLYs/?=
 =?us-ascii?Q?26pjo6idqzfxMVgfINKvGAtC4Bnd638OL7Y0VNuEUWy6rnQY3CAEwl8ruEhD?=
 =?us-ascii?Q?J4WAXNeKUPW9UeInitLKJg/YgJ0Az0jo3zx3AcyhYgg8QE0otsGstxITnK0W?=
 =?us-ascii?Q?J5sw6rfomTmFjpY3f/B/1/kYWeDICxtxjyMP2n653loBNe3ZQv2nrujzTRnE?=
 =?us-ascii?Q?SK5ydpU4p3L5drPr0g7dsnGUZhB822Coj/JPP68WCT7CVhQnARioBbiLMJv3?=
 =?us-ascii?Q?LI/TGMhuCdzAEEPFDIf6+LvhV58zQzlj5NJtIMmKYCXEtoQVjJ2kMs0Ij6b2?=
 =?us-ascii?Q?g4H9q3jhyZKIO+HK4XgWMtpyYHOGInO+d33Dx/p+WRVbF8LQqUQVf+Rwa636?=
 =?us-ascii?Q?/V6wf1yg99QzCho8/9sHHzqnEj07Y+DrcH+Ln8RUFHDS7SoC8iVhVqaWhTrf?=
 =?us-ascii?Q?AyQLLV5VBKmzQDDy1o37gxfaFdtLQ5WCJP7WhoGrXNS7+UEL6DRbrqk5RWY5?=
 =?us-ascii?Q?7sdHPsWb8iN5Zlw62amSxB0CAoSuvG/0qA=3D=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?jGbMFqm8l8BH0oycDLip2DRrWuOeSQh89Dw48Qsousp3VhcYdhsy/2vkLUbv?=
 =?us-ascii?Q?B4UmphPGHzXIXdOB0EAMFXKZdQfAHSOMvPNZbPOXJxc8gwXG46tbGuAKMkui?=
 =?us-ascii?Q?OmvVwrv0ziP0Lo8u9n/vjwsKDJnhhkDxchElidt/lTNqa6bmG3cr867qbRmi?=
 =?us-ascii?Q?siyfxZ3MaeC1tp1+miMJchNDbwyhtFMevUZycmEHGz4atCT5Ix2Hj8NBrayb?=
 =?us-ascii?Q?0b4sJNWraL42s1JrAcwl0SDNVuDMjiHHDpQBuTyd6eP+GtEj0uN4WmMnTq9P?=
 =?us-ascii?Q?noeFKNSh1vuvMl0fD5us9TrzZfAEUiDTplZpfCsUifhkdgjSMjXes20EX3DE?=
 =?us-ascii?Q?qe4441tS8FscMWzqdDsy2WLSlFUYKyIjj79eDiHPKx93JltE+DVENmhVCZhQ?=
 =?us-ascii?Q?S9Ao2VLkGKS+u4qQEoxh0JhASntCRrtURa6eFw7LzStcoD3pTfdWKY07PZSv?=
 =?us-ascii?Q?vbx1ZGdTwH0pFa3wOvO9uwlEeKPzulwcrCkVe3uRwR966IKjclWXHh7RFpCX?=
 =?us-ascii?Q?TNxGe0Z6tXFZDOQ3LDhrsqB5D9VeiZlfvjXZQ4m5RNfPFQSIPlyA5ohdP6IK?=
 =?us-ascii?Q?5zsaXp7aklFOghetNtZedkaBwf3V1/dl8bhR/6XIJ4uje7mEafRFiLu9IOpP?=
 =?us-ascii?Q?Ukm/oFuYbXvwncSUQWq5116HimeC0/fNf7+Ugc4aqiEtvIpwjFHIBCic2YGk?=
 =?us-ascii?Q?zavYqreNdAwyr6Bo8ADRzyblJr6bqA50nAJG90o14KSPvhfJDkdJdEJMEsBZ?=
 =?us-ascii?Q?kdfd0K5eZx4Cgp2zf9F21ad8c/TSNIWyYQF3I57rYiesyryqs7KzfVfgqAGE?=
 =?us-ascii?Q?3LuVJcYke4raWVqPnXA3f6YQnJI+lxDLDwnEIvSOYrqIJsK67CzeXDRWBaNm?=
 =?us-ascii?Q?cTqpkuqAFFwLTh0ZrBb6XZkuCBlHYCPC3RCnWjbrUaRpuF91ZeFmkxcpGn2L?=
 =?us-ascii?Q?E5uY3z1lNGDh0M+WBOMugCebov/lHRNXqvyJbzHJPHjRi0dHhURUluJNoLzr?=
 =?us-ascii?Q?p91Lku3PdRfghgp5o59nJsrMr+oBX2wINqFWT28OQ1MjXARn6iZIHaiH0ycW?=
 =?us-ascii?Q?MQIiniJsZz3uzk5mHV08rdmlsb5B2OogvYw4XZC+9NlM8C3PvEsQr8FgKtc7?=
 =?us-ascii?Q?70QcFvtnd4efjbU5I2Mhbrp1G/ViN6fSx7RZnJ8Q71f3QiYvxS4jeZfZ2MoS?=
 =?us-ascii?Q?4uzLuFa3h9Gr1KPqLIX8WIBoFkdrhGIp3NrR7Q1Unbs70V+ukQffNmIjYUic?=
 =?us-ascii?Q?AeSTww6hcKf2k8KFajmgZPwKk0AikwRLo9dyKOpUVH0711IozckM8U3RMdY1?=
 =?us-ascii?Q?0fifzjDfCteQwHoAioC0Q8f3?=
X-OriginatorOrg: sct-15-20-7741-18-msonline-outlook-c907d.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: c36571ca-93b1-4472-5c87-08dd4499a1b3
X-MS-Exchange-CrossTenant-AuthSource: MN2PR19MB3728.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 21:27:59.5099
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR19MB4287

On Mon, Feb 03, 2025 at 05:32:53PM +0100, Quentin Schulz wrote:
> Hi Chris,
> 
> On 1/31/25 5:59 PM, Chris Morgan wrote:
> > On Fri, Jan 31, 2025 at 05:46:20PM +0100, Quentin Schulz wrote:
> > > Hi Chris,
> > > 
> > > On 1/30/25 7:10 PM, Chris Morgan wrote:
> [...]
> > > > When Optee is not present or used, the node will trigger a probe
> > > > that generates a (harmless) message on the kernel log.
> > > > 
> > > 
> > > And what if we have OP-TEE without this node present, which would be
> > > possible if we have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set in U-Boot?
> > > 
> > > I guess we could detect from U-Boot if a TEE is loaded as part of u-boot.itb
> > > and fixup the DTB otherwise to mark this node as status = "disabled"?
> > > 
> > 
> > Based on my understanding of how each of these projects communicate
> > with each other, Optee can only work if you either include both the
> > Optee node in the firmware AND the reserved memory nodes yourself, or
> > if you have neither and let U-Boot do it (by including each of these
> > patches as well as setting the CONFIG_SPL_ATF_NO_PLATFORM_PARAM). So
> > basically just this node alone is insufficient for it to work today.
> > 
> 
> Therefore I think we should either have this node defined + the
> reserved-memory node (with hardcoded address and size if guaranteed to be
> stable forever) added or nothing.
> 
> Can we mark a reserved-memory node as "disabled"? If not, then we should
> rather have nothing at all I believe.

I honestly would just rather remove this node. The reason I say that is
while we support Optee with the RK3399, RK3228, the PX30, and the
RK3588; howver only the RK3588 has the node already populated in Linux.

> 
> > The core issue is that Optee requires you to map the memory as
> > reserved so that Linux doesn't try to use it. You can either do that
> > yourself or you can have U-Boot do it automatically. Having the Optee
> > node in the devicetree makes no sense today unless we also carve out
> > the memory.
> > 
> 
> We should patch U-boot to add these nodes to the DT if an OP-TEE OS is
> passed and either SPL_ATF_NO_PLATFORM_PARAM=y or we cannot detect the OP-TEE
> nodes in the kernel DT. What do you think?
> 

We would have to assume some hard coded values in that event as I'm not
aware of a mechanism to grab them at runtime from Optee except when you
pass it a device tree. That said I think the concern above where you
mention "guaranteed to be stable forever" is the problem, as even now
the current address in the Optee upstream project conflicts with the
kernel_comp_addr_r in upstream U-Boot, necessesitating one of them be
changed (I'm attempting to change the Optee one, for what it's worth).

Thank you,
Chris

> Cheers,
> Quentin


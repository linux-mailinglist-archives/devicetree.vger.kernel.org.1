Return-Path: <devicetree+bounces-24195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E45380E567
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C026C281572
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:05:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCE87179AE;
	Tue, 12 Dec 2023 08:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Ot8zWVvc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02C70B8
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 00:04:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702368296;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G71DUn2WG9PuaVBEWzrxCCXiQ0UtyB4Ikn9B9GyIs9Y=;
	b=Ot8zWVvcAlE9IgfZ75JRx5yteGsu6DlKKOeCuswTBcRKO1YPEgp2uoZYNPlmYQVLyIExPD
	LpV8oDrpcztVs4u86ol5FWMFDUJ4FlZXUybL04AvpJN7/7kjMrZXdVTV5irMLYprH1w81/
	v/gzsbigHzh0+xskkL7XsPxxvwa13z4DCENODF5Afgpf2RV5B9nTNIDdvrLc83ZuGH4AOc
	Od4ZrOrdsvDOmJ1gRbGJsscEQ3lh9XPYAK5Yz/r3jWQtGaCr9EZ10PGm2/hD3k2CPVU5VX
	0lkURozr0KnCNUyBsLm/EOfhY3pvF7iYX8i5Awf6eIPYp2enI/bLUa07ISippQ==
Date: Tue, 12 Dec 2023 09:04:55 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tim Lunn
 <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring
 <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
In-Reply-To: <6efa5eb17d795da024357a12dfb11ac1@manjaro.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <4234862.3Lj2Plt8kZ@diego> <8fec049c0b72727086c707dfd9de6dda@manjaro.org>
 <5119280.687JKscXgg@diego> <6efa5eb17d795da024357a12dfb11ac1@manjaro.org>
Message-ID: <316304f17b7e2641658d0efc867c0603@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2023-11-27 14:07, Dragan Simic wrote:
> On 2023-11-27 12:10, Heiko Stübner wrote:
>> Am Montag, 27. November 2023, 11:55:21 CET schrieb Dragan Simic:
>>> On 2023-11-27 11:50, Heiko Stübner wrote:
>>>> Am Montag, 27. November 2023, 11:43:05 CET schrieb Dragan Simic:
>>>>> Please note there's already an Ethernet alias defined in 
>>>>> rk3399.dtsi,
>>>>> even despite not all RK3399-based devices using the GMAC, for 
>>>>> example
>>>>> the Pinebook Pro.  Perhaps that's something to be fixed as well.
>>>> 
>>>> possibly :-)
>>>> 
>>>> I guess for starters we shouldn't introduce new instances for it.
>>> 
>>> Totally agreed.
>>> 
>>> > All the newer SoCs already have their ethernet alias in the board dts
>>> > (rk356x, rk3568) which came after we also moved the mmc aliases.
>>> 
>>> The base rk3399.dtsi file and the RK3399-based board/device dts(i) 
>>> files
>>> are fine when it comes to the mmc aliases.  I can move forward and 
>>> clean
>>> up the Ethernet alias as well, if you agree?
>> 
>> Yep, we moved mmc aliases a while ago.
>> 
>> So moving the ethernet sounds like the right way forward. So if you 
>> have
>> the time for it, then I'd be quite happy to take patches for that 
>> change.
> 
> Great, thanks.  I'll prepare the patches in the next couple of days,
> and send them over.

I apologize for the delay, I finally got around to implementing and 
verifying these patches for the RK3399, RK3368, RK3328 and PX30 SoC 
dts(i) files. [1]  The way I verified them was to compare the compiled 
dtb files before and after applying the patches.

Also, I went ahead and implemented the patches that add ethernet aliases 
to the RK356x and RK3588 dts board files. [2]  With these patches in 
place, together with the other patches that have already been accepted, 
we should have a rather clean situation when it comes to the Rockchip 
arm64 DT aliases.

[1] 
https://lore.kernel.org/linux-rockchip/cover.1702366958.git.dsimic@manjaro.org/T/#u
[2] 
https://lore.kernel.org/linux-rockchip/cover.1702368023.git.dsimic@manjaro.org/T/#u


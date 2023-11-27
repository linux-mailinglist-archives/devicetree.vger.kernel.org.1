Return-Path: <devicetree+bounces-19207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA967FA04B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17DE8B20E56
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE5F2C861;
	Mon, 27 Nov 2023 13:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Vx11ddL8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5B2110F
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 05:07:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701090435;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iwccmV9IuUrefjySV0ms2KJs1klOXwHHiQUN90bepXQ=;
	b=Vx11ddL8btfRCNxoTkXjUZ4BmuZvlK5n9WHhiWtufVIa+zeie72DC9YF0T5wxvwgUVAUb7
	cwdJ5SowI5S5eCK4BhWEDYDhSAO4bj2P4em+Rf5F1a4hFFuAoE8BJBWAnC6zzE+DrfaWHg
	abHHAMFAkLU/mGO9lI5R8ZhSw0Z6lHfWfs3hM5UyEuNfJIXiVDoEm9urCTTj0DWJR12tVw
	SFwgm2QJ4gxKvVc1pQBIOCkBY7z3/NQ+Y1WZMFaYOraOP7G5I47Zj0enymSJV/xi92m9mq
	a6sz9WWcHzD0qHVxaTymqHAvZt5no6jQSbMUKsFsTZNjsdvUQMTrEa87GID0Xw==
Date: Mon, 27 Nov 2023 14:07:14 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tim Lunn
 <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring
 <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
In-Reply-To: <5119280.687JKscXgg@diego>
References: <20231122122232.952696-1-tim@feathertop.org>
 <4234862.3Lj2Plt8kZ@diego> <8fec049c0b72727086c707dfd9de6dda@manjaro.org>
 <5119280.687JKscXgg@diego>
Message-ID: <6efa5eb17d795da024357a12dfb11ac1@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2023-11-27 12:10, Heiko Stübner wrote:
> Am Montag, 27. November 2023, 11:55:21 CET schrieb Dragan Simic:
>> On 2023-11-27 11:50, Heiko Stübner wrote:
>> > Am Montag, 27. November 2023, 11:43:05 CET schrieb Dragan Simic:
>> >> On 2023-11-27 11:29, Heiko Stübner wrote:
>> >> > Am Montag, 27. November 2023, 10:58:43 CET schrieb Tim Lunn:
>> >> >> On 11/27/23 20:45, Heiko Stübner wrote:
>> >> >>> It's different for mmc, where this naming scheme isn't normally used,
>> >> >>> so we (mostly?) migrated to them being in the board-specific alias
>> >> >>> section.
>> >> >>
>> >> >> What about the ethernet alias, the MAC is part of the SoC, should this
>> >> >> stay as it is in patch 6 from this series, or move to board dtsi?
>> >> >
>> >> > I think judging from everything above (and the other modern boards
>> >> > like all rk3588 ones) the ethernet0 alias should move to the board
>> >> > dts(i).
>> >> >
>> >> > The gmac generally does not have this numbering scheme like i2c or
>> >> > uarts.
>> >>
>> >> Please note there's already an Ethernet alias defined in rk3399.dtsi,
>> >> even despite not all RK3399-based devices using the GMAC, for example
>> >> the Pinebook Pro.  Perhaps that's something to be fixed as well.
>> >
>> > possibly :-)
>> >
>> > I guess for starters we shouldn't introduce new instances for it.
>> 
>> Totally agreed.
>> 
>> > All the newer SoCs already have their ethernet alias in the board dts
>> > (rk356x, rk3568) which came after we also moved the mmc aliases.
>> 
>> The base rk3399.dtsi file and the RK3399-based board/device dts(i) 
>> files
>> are fine when it comes to the mmc aliases.  I can move forward and 
>> clean
>> up the Ethernet alias as well, if you agree?
> 
> Yep, we moved mmc aliases a while ago.
> 
> So moving the ethernet sounds like the right way forward. So if you 
> have
> the time for it, then I'd be quite happy to take patches for that 
> change.

Great, thanks.  I'll prepare the patches in the next couple of days, and 
send them over.


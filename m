Return-Path: <devicetree+bounces-19157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4FF7F9DF7
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 135ECB20D7C
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A91318C01;
	Mon, 27 Nov 2023 10:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="HMsGbxvm"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 735 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 27 Nov 2023 02:55:23 PST
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94423F5
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:55:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701082522;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x0l+XWGrBi7HnpgDtS7cSIiOoIMorkwg7MufRLDhI8c=;
	b=HMsGbxvmsDtyOu914y3XvjC0cH8nMegz0dQc6UbkGy9mUlT+4Y9P2ftGoB8WHGP/2qRxkE
	XOnZY8ktKYNON+XbDMgmVbTLSiQiFHFCd86skFYSSkotzimRIR4O04TAE6KbueCjLhv0Ut
	81SDWL+QuATYxbKjGFFUzZF/YUMMmE6Aj1mubnsB4Hf4yVMH55gkxbJ53rstZYw+/r7SDn
	0BevYo3PQ/fc95CfQYf1S8YC9lVHQrRoi2Vn5gN/6VK04LJ71bpWDcDDtVRkiHifc41OrL
	81ZUQp5VOA7JKFl5xNiTYZo/PbEL4s+vEvPi7KjP4i1VJX1WOVCtNaGyvM0MCg==
Date: Mon, 27 Nov 2023 11:55:21 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tim Lunn
 <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring
 <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
In-Reply-To: <4234862.3Lj2Plt8kZ@diego>
References: <20231122122232.952696-1-tim@feathertop.org>
 <4065853.CrzyxZ31qj@diego> <4bd0ce0f496646209eb8b220dfdd80bd@manjaro.org>
 <4234862.3Lj2Plt8kZ@diego>
Message-ID: <8fec049c0b72727086c707dfd9de6dda@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2023-11-27 11:50, Heiko Stübner wrote:
> Am Montag, 27. November 2023, 11:43:05 CET schrieb Dragan Simic:
>> On 2023-11-27 11:29, Heiko Stübner wrote:
>> > Am Montag, 27. November 2023, 10:58:43 CET schrieb Tim Lunn:
>> >> On 11/27/23 20:45, Heiko Stübner wrote:
>> >>> It's different for mmc, where this naming scheme isn't normally used,
>> >>> so we (mostly?) migrated to them being in the board-specific alias
>> >>> section.
>> >>
>> >> What about the ethernet alias, the MAC is part of the SoC, should this
>> >> stay as it is in patch 6 from this series, or move to board dtsi?
>> >
>> > I think judging from everything above (and the other modern boards
>> > like all rk3588 ones) the ethernet0 alias should move to the board
>> > dts(i).
>> >
>> > The gmac generally does not have this numbering scheme like i2c or
>> > uarts.
>> 
>> Please note there's already an Ethernet alias defined in rk3399.dtsi,
>> even despite not all RK3399-based devices using the GMAC, for example
>> the Pinebook Pro.  Perhaps that's something to be fixed as well.
> 
> possibly :-)
> 
> I guess for starters we shouldn't introduce new instances for it.

Totally agreed.

> All the newer SoCs already have their ethernet alias in the board dts
> (rk356x, rk3568) which came after we also moved the mmc aliases.

The base rk3399.dtsi file and the RK3399-based board/device dts(i) files 
are fine when it comes to the mmc aliases.  I can move forward and clean 
up the Ethernet alias as well, if you agree?


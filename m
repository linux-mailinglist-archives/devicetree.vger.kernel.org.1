Return-Path: <devicetree+bounces-98555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A5F966924
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 20:49:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E843C1F23871
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 18:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23ED81BC9ED;
	Fri, 30 Aug 2024 18:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="YKAXFqgZ"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922FF3DBB6
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725043736; cv=none; b=HkA8kDh8c1IHlmo0AsKhiFwUNKb7G/JUeFhe9pGXuzLbnkDERfaneGvnY8SMmweb9MyWoLLVmS6g4uQjmv75hYCh8ZnUCWa0JBU8Bczj5olNaW34mxjIqL0WRDwj+4NLopMbf1g2gzxqbjtYejwYcirzmhlJa+Cry5Jd5nlq7SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725043736; c=relaxed/simple;
	bh=nEn0QkS7/Ic2zxK811xtJa99EQfJRizjc5CVl0W6Qes=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uK6fxIjSqv6xHBFYKzE3yCbjNWPsDUZgB5/ZyVUNQkdNUs6B1fkoOC/7pMU2Y+dZFTb4qcLMV45rGrC10NYI04XN9RAye9rALMU+k40kpREs6yBl4djE0tPxjJwdho9ogWHBCLBiOzYlf9dB84gNFNW1IhA/Rw5p6HDzzc7M52s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=YKAXFqgZ; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+spee87MBqrIxvSjUtbiDAQhzt54H1xuEhae6jiT1wM=; b=YKAXFqgZNvF6CDMP8VU0jZHpF3
	UeINTvYDUMKyg8XtcBLs/KttVpRlYeGKdbc5IclbwUjXVu3ZaPvK2o+b0Vt2GXFHHKYuN2Z33QTTy
	0E+oWmRtzIKBpafnYPAqWaTtgETA3MWHG6O6f4BO0srbimJJ5vEOjw8ypIisE+L5oH78T+lV/sKYl
	I8eu40x0DMU8K/sZTZvKLsFGFwLIc3Ez9VNMxVtQEu0Pgg/YaCXdVHi1zVLIxoiYIhLh3DhR0Zvge
	EQnRXv+rp5VBjJ8M14E3Pg42LXXMFh6dp7QU9AH8k4d9htb5hOfHuM2v6X0CxeqyAtW5+7ZMNaViD
	7yvTHQ0A==;
Received: from i5e861921.versanet.de ([94.134.25.33] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sk6fk-0005x9-JB; Fri, 30 Aug 2024 20:48:36 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: zzc@rock-chips.com, andyshrk@163.com, jonas@kwiboo.se,
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>,
 jagan@edgeble.ai, krzk+dt@kernel.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org
Subject: Re: [PATCH V2 0/3] Add GameForce Ace
Date: Fri, 30 Aug 2024 20:49:59 +0200
Message-ID: <2314970.8uLHfb51uz@diego>
In-Reply-To: <172503553992.420479.9699991919956159507.robh@kernel.org>
References:
 <20240829204517.398669-1-macroalpha82@gmail.com>
 <172503553992.420479.9699991919956159507.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Freitag, 30. August 2024, 18:33:50 CEST schrieb Rob Herring (Arm):
> 
> On Thu, 29 Aug 2024 15:45:14 -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add support for the GameForce Ace. The GameForce Ace is an RK3588s
> > based gaming device with a 1080p display, touchscreen, hall effect
> > joysticks and triggers, 128GB of eMMC, 8GB or 12GB of RAM, WiFi 5,
> > and support for a 2242 NVME.
> > 
> > Changes since V1:
> >  - Update eMMC changes to note proper authorship.
> >  - Removed cw2015 changes for dual cell configuration. For the moment
> >    it's just cosmetic (aside from voltage_now reading incorrectly, no
> >    other issues were observed).
> >  - Removed USB bindings because vbus regulator isn't ready yet.
> > 
> > Alex Zhao (1):
> >   arm64: dts: rockchip: rk3588s fix sdio pins to pull up
> > 
> > Chris Morgan (2):
> >   dt-bindings: arm: rockchip: Add GameForce Ace
> >   arm64: dts: rockchip: Add GameForce Ace
> > 
> >  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
> >  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
> >  .../dts/rockchip/rk3588-base-pinctrl.dtsi     |   10 +-
> >  .../dts/rockchip/rk3588s-gameforce-ace.dts    | 1237 +++++++++++++++++
> >  4 files changed, 1248 insertions(+), 5 deletions(-)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
> > 
> > --
> > 2.34.1
> > 
> > 
> > 
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-gameforce-ace.dtb' for 20240829204517.398669-1-macroalpha82@gmail.com:
> 
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: video-codec@fdb50000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu'] is too long
> 	'rockchip,rk3588-vpu121' is not one of ['rockchip,rk3036-vpu', 'rockchip,rk3066-vpu', 'rockchip,rk3288-vpu', 'rockchip,rk3328-vpu', 'rockchip,rk3399-vpu', 'rockchip,px30-vpu', 'rockchip,rk3568-vpu', 'rockchip,rk3588-av1-vpu']
> 	'rockchip,rk3188-vpu' was expected
> 	'rockchip,rk3228-vpu' was expected
> 	'rockchip,rk3066-vpu' was expected
> 	'rockchip,rk3399-vpu' was expected
> 	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdb50000: failed to match any schema with compatible: ['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu']
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba0000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba4000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba8000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdbac000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']

That is not Chris' fault ;-) .
The relevant vpu binding patches have made it to the media-tree [0], but
not linux-next yet it seems.

So this should sort itself shortly I hope.

[0]
https://git.linuxtv.org/media_stage.git/commit/?id=1e490a1ea64396b98db8c233360093e264b0c10b
for ['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu']

https://git.linuxtv.org/media_stage.git/commit/?id=b92346d2dba0048bfce7114225250bef73f83ad2
for ['rockchip,rk3588-vepu121']





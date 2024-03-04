Return-Path: <devicetree+bounces-48150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3D287066E
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 17:02:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A817AB23252
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 15:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4525487A9;
	Mon,  4 Mar 2024 15:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="hlSnIHJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F271447A6A
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 15:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709567961; cv=none; b=WbZ40TO4z4Oxa+KZa5ca7SJsHKxoxaqAVsX8fXX7SQnLXdhHgk5i3RbDvglog3rSLRJc2RGVAPGCQ0Lj8FDpacYHELpleU5+q1sFZBCi1lhXXb7wEpuH0aDwLrDD6rYsGkXDpysjYEbhjH/QiRizcDC2VkIF7MGSU9vW7xU1pis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709567961; c=relaxed/simple;
	bh=Ktv0qFkGUvRfuCtiXRVRRdD2ALNkiQK4oYThDtNTL6s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CCm9KR39o9vuv3k1sqj37Zk1lfTI42wFTcO2XQcU3YQDew98IUn8PHubOR8DT1CXfrBJ5zY0b7KFI/f5cQYIrl/k7Gdp2j9uMsF9gog/MunjHYyVFQlLYPKhS2M/WQlHj/exG2z7IUngOv8REGQGtiZ70TWQNloChK0n4YUVZiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=hlSnIHJ3; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=OZDRvBSgigE3tIIRQWQZVjWXgyULo9fdLqfBNvEOG6M=; b=hlSnIHJ33T4N1L0DxCC6/w/s4f
	62mSEpeXgZv6wiqeTM44HTVB3uxFMJr+o2xSHmn7BhthrPAh6JNy9aizVCoyzm65HZvv0GMr7fc7A
	I0rrBdlOAIu4SMuksKExDTrcivolIGRYLNKzc9OuTM9hQ0AuJ0caSbqo83ZW+urXI7XQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rhAj4-009L9G-H1; Mon, 04 Mar 2024 16:59:38 +0100
Date: Mon, 4 Mar 2024 16:59:38 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
Message-ID: <b614dd49-7dbe-452e-b3b5-cb014b30f0f8@lunn.ch>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
 <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch>
 <27139798.WhXITi6ROJ@bagend>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <27139798.WhXITi6ROJ@bagend>

On Mon, Mar 04, 2024 at 04:32:03PM +0100, Diederik de Haas wrote:
> On Monday, 4 March 2024 14:09:15 CET Andrew Lunn wrote:
> > > > Andrew already pointed out when I posted the patch introducing the gmac0
> > > > node that rgmii-id would be the preferred way to setup things. Back
> > > > then this didn't happen because this change broke reception of network
> > > > packets. However this only happend because I didn't have the right phy
> > > > driver loaded.
> > > 
> > > It could be that the PHY is strapped to not use its internal RX delay.
> > > And the PHY has some weird default TX delay, so having the driver
> > > put some sensible values in is probably better.
> > 
> > It could also be the bootloader putting odd values into the PHY.
> > 
> > Anyway, it will work better with the correct PHY, and enable WoL
> > support.
> 
> Not sure if this is the right place or way, but here we go...
> 
> A few days ago on #debian-kernel@OFTC:
> [28.02 16:35] <ukleinek> u-boot should be out of the game
> [28.02 16:36] <diederik> I'm not so sure anymore. On Quartz64 Model A and B 
> (rk3566) I had massive packet loss and tracked it down to a change in u-boot
> [28.02 16:37] <ukleinek> diederik: sounds like the Linux network driver on 
> that machine could do something better
> [28.02 16:38] <diederik> yeah, probably
> 
> I reported this about a month ago to Jonas Karlman as I bisected the problem 
> to a change in u-boot:
> 
> > diederik@bagend:~/dev/u-boot/u-boot$ git bisect bad
> > 25f56459aebced8e4bb7d01061dcb1b765b197e2 is the first bad commit
> > commit 25f56459aebced8e4bb7d01061dcb1b765b197e2
> > Author: Jonas Karlman <jonas@kwiboo.se>
> > Date:   Sun Oct 1 19:17:21 2023 +0000
> > 
> >     configs: rockchip: Enable ethernet driver on RK356x boards
> >     
> >     Enable DWC_ETH_QOS_ROCKCHIP and related PHY driver on RK356x boards that
> >     have an enabled gmac node.
> 
> I just checked and both Quartz64 Model A and B have `phy-mode = "rgmii";` and 
> set `tx_delay` and `rx_delay` to some (other) values.
> Without knowing nor understanding the details, this seem very much related?

If you don't have a specific Linux PHY driver, you are at the mercies
of how the bootloader, or strapping set up the PHY. So it is always
best to use the correct PHY driver. The Linux PHY driver should assume
nothing and setup the hardware from scratch, removing anything odd the
bootloader did. However, the fall back generic PHY driver has no chip
specific knowledge, so it cannot undo whatever the bootloader did.

So, in an ideal world, we don't care about what the bootloader did,
just use the correct MAC and PHY driver and it should work. And if it
does not work, it is a Linux bug, which needs to be found and fixed.

     Andrew


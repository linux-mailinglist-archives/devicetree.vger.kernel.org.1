Return-Path: <devicetree+bounces-223885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF2ABBEA43
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:25:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50726189AA6E
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D362DC775;
	Mon,  6 Oct 2025 16:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="Fh057Ycs"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F62E2DAFB5
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759767872; cv=none; b=a+3qK67HtMfq24p51LsFAMwHBStk/pI0luQBGqZQNULs7MZ5FnT1fs2kLrAJ+Svi7vlEM7lv/tUzK6RNzQUNJUpIgCRnfbJkKcl1oe7uxg6GMrcNEOPlalDqwSW6KR3fruuQDa5LavmE1dhwzebc/do0K/VXrHWQ1nlSMju3baE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759767872; c=relaxed/simple;
	bh=q4y+WjKg8QKovIhfsz5mhoBisvqugua5xV6TPvamwY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bdK8+HNxUKtn+oQJml1DF5H+89sSm9R8xusF3zYYD/DN7+L5MqlL81COyBsUQrszZ9Ug0VYenZoF21P9SEe8+MWiEfNICRjPWfyZIBI7AUlivHksIrcs3IR66bd9akR0zkqPVZi1FksHVUx0vXzGfeD2KZt+hh2KNExZuCe4v68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=Fh057Ycs; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 2FB52B0B;
	Mon,  6 Oct 2025 18:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759767775;
	bh=q4y+WjKg8QKovIhfsz5mhoBisvqugua5xV6TPvamwY4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fh057Ycs0+XNzsIJ6pHqE414nAvgR66G3qCWmS7EA7zhO40hZJEuFaLo5c0Rr4BfH
	 U9RKela09E/rAZQHcrHEkaVsA61YVFYOw+BvAiB1vd78vCxJGt83ZO+ASRLhJy8/dT
	 n0tQUMjOVNc0lBsvNC2sB51BKvrxEBXhBaVpNEBY=
Date: Mon, 6 Oct 2025 19:24:20 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base
 device tree
Message-ID: <20251006162420.GI5944@pendragon.ideasonboard.com>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
 <4d337915-e3a9-46b7-a30b-ccb47ad33556@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <4d337915-e3a9-46b7-a30b-ccb47ad33556@lunn.ch>

On Mon, Oct 06, 2025 at 06:06:21PM +0200, Andrew Lunn wrote:
> > +&gmac1 {
> > +	clock_in_out = "output";
> > +	phy-handle = <&rgmii_phy>;
> > +	phy-mode = "rgmii-id";
> > +	phy-supply = <&vcc_3v3>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&gmac1_miim
> > +		     &gmac1_rx_bus2
> > +		     &gmac1_tx_bus2
> > +		     &gmac1_rgmii_clk
> > +		     &gmac1_rgmii_bus>;
> > +	tx_delay = <0x42>;
> 
> Nice to see phy-mode 'rgmii-id', but 0x42 is pretty high in comparison
> to other boards correctly using 'rgmii-id', and is asymmetric with no
> rx_delay value.
> 
> I cannot say this is wrong, it is just odd, not what i would expect.

I copied it blindly from the BSP. Dropping the property, I can still
ping the board, so I removed it in v2. There's more that will need to be
investigated there, as clock_in_out should likely be "input", but I
couldn't get that to work. I'd like to leave this to someone else as I'm
lacking time to fix it (and ethernet is also not my strongest
expertise). I could drop the gmac1 completely, but I think the starting
point is valuable.

-- 
Regards,

Laurent Pinchart


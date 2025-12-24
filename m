Return-Path: <devicetree+bounces-249434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D36CBCDBC72
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:20:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C87930057F1
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6CD5257848;
	Wed, 24 Dec 2025 09:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="hEGjb/QW"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23CB19D074;
	Wed, 24 Dec 2025 09:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766568051; cv=none; b=cl9WrGMOIXQ3rIMKGtk/O3xRERzdKhJx7uRiKUxQmBPNUgHDkPefmCJXUXRL15MzzImX2rO4mbrNuEw5KHVHpcRF0R+UsXf9hwp1X4AshG03wUHep85LO/7rMWeUa1TEF8o+VacLze0rcIgi5XWG9gQipYtf020X719HrqfJjQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766568051; c=relaxed/simple;
	bh=mrTB/Ywc+jYe+UHkGuEQ2lxk/tCF1N5qQs/KGP4sHlI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iHt2mctFO3NagninfofHDUf9Pt+n13iwWhx+Y/BQKuujtJRcZRIjgjnxgmtgnJP23htsi0i4wjrtgx1WHvux5Hb6o4lFL5cVO9AO6U44d0VsBpvttdECAK0C8DktoI1Y+Hziu7QY+huoCnb9dnmZWFZOlLWIGjI7TNONjWv63Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=hEGjb/QW; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=og+Ux3x/arfwiOpRBPCbvWYwNi8map9YcJ7XOxJZxGA=; b=hE
	Gjb/QWuTRrKy/elfnoXQGAxsz3lHe01RhnyEGCL+KU1uLVKaRaFFag3yNR9W0sVVyou0xDbsriE2v
	7mhfgvWZ38SIcDoM7OplqSjOx966l9U3iN1u4D6jAAWOrpmKQsjQlmD1vIpeziRbQIJmIf5+bhuhv
	Kn39wZdha559GFM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vYL2a-000OlF-00; Wed, 24 Dec 2025 10:20:20 +0100
Date: Wed, 24 Dec 2025 10:20:19 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Kyle Hsieh <kylehsieh1995@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
Message-ID: <32ff7ca8-9cb0-4889-adb0-a6dae735630b@lunn.ch>
References: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
 <20251222-ventura2_initial_dts-v1-2-1f06166c78a3@gmail.com>
 <c069b452-df22-4afa-bf6a-c48949f40ebc@lunn.ch>
 <CAF7HswN_jEXOU_9K4LpLnbhvd+RD0qqELAHxMBbp=hGtMjS4kQ@mail.gmail.com>
 <35f3eba9-5ec4-4cba-8a64-fb521dc65b79@lunn.ch>
 <CAF7HswN0hhJQ-gmE59cKTuPyzrs1A3rM8Xw+Z8i3_AsHRiNcug@mail.gmail.com>
 <1e21f828-1b06-492d-bfcd-ab5721621e8a@lunn.ch>
 <CAF7HswP7Oejs42K=jG8bkNiBoDhXR2LbeHoppk0nnNon6_afwA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAF7HswP7Oejs42K=jG8bkNiBoDhXR2LbeHoppk0nnNon6_afwA@mail.gmail.com>

On Wed, Dec 24, 2025 at 02:40:39PM +0800, Kyle Hsieh wrote:
> On Tue, Dec 23, 2025 at 6:35 PM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > > > What make/model of switch is it? Is it unmanaged, or does it use SPI
> > > > or I2C for management?
> >
> > > The switch is connected via RMII to the MAC and is managed over MDIO.
> >
> > O.K. What make/model?
> >
> The device is a Marvell 88E6393X switch. In our design, the BMC connects

Which Linux does have a driver for.

> to the device via RMII with fixed link parameters to retrieve ethernet.
> > > On our board, MDIO is not wired directly to the processor; instead, we
> > > use a USB-to-MPSSE bridge (FT2232) to toggle the MDIO signals for
> > > switch management.
> >
> > I have to push back on you using a closed source user space driver,
> > given that i help maintain the Ethernet switch drivers...
> >
> > I know there have been attempts to get GPIO support added for FT2232,
> > but i don't think any got as far as mainline. That is probably the
> > only part you are missing. You can describe USB devices in DT. So you
> > should be able to describe such a GPIO controller. You can then
> > instantiate an virtual,mdio-gpio driver to give you an MDIO bus. And
> > then add nodes for the switch using DSA.

> Apologies for the confusion in my previous reply.
> The BMC connects to the peer via an RMII fixed-link.
> The link parameters are fixed at design time and there is no runtime
> MDIO-managed PHY or switch control from the BMC.

So you use the USB-MDIO to program the EEPROM? The switch boots using
the settings in the EEPROM? It is then an unmanaged hub? You are not
using UMSD in userspace? That code looks terrible.

So if you connect multiple of these unmanaged hubs together in a loop,
your network disappears in a broadcast storm? Yes, you can use these
switches in a dumb mode, but it has consequences. If you let Linux
manage it, you gain a lot of functionality, such as STP, to break
loops.

But you seem to be opposed to this. At least add in a comment
explaining the purpose of the fixed link. DT describes hardware, so
there is no harm in describing the hardware, even if it is a comment
and not real properties.

	Andrew


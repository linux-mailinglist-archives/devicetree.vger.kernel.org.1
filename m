Return-Path: <devicetree+bounces-249059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAC9CD8D96
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:38:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC012302EF42
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01A7C22688C;
	Tue, 23 Dec 2025 10:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="aZLauevL"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402AB1940A1;
	Tue, 23 Dec 2025 10:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766486163; cv=none; b=ho5IGtYFBZPXDhFxT5AchZT+iZwop3YFfkDh2I86VlA/dTP6MIiU7M62zlFM07GmvCNZYSH3DawyOFWu946ggOgpT6WeKUmqSfdVnk+QdmI75JffaEwdn8ZCMtvA0EUrl6rhGmTaQkqBO/CYWMDV4CYv//Zo27n9uhr4XqBLA2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766486163; c=relaxed/simple;
	bh=TuW/LacAeAK3ML2uL9b17kWRZc0BvvGmLvc+BcTNSHQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=haFNEfuFUrQ2MlYRYuy599ABsF2OrmSx7BA3arZgLVrepW0x549/MNXLCOZDQ+xN7BHpejlxLvdvqYwiLv8YIuGMjVvBihpIj9kcsgVEo99bYAYprHBYrMzbYErdOUZUZ9vIsFJPLeiRlkI9vwOD14J9A08jSNlV80UJ3qhkfj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=aZLauevL; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=havzK/SwF0OREzHRiv691TKr+k8MMceBKF0LuOOygAE=; b=aZLauevLcwMG/dS6u3X7JjCQ3D
	HuNgnIbUxXzfYaLmd4Tpc/2qGNVx/XpFkh7MT/c0ALJF8vlsufhUVxT1LmponF6eHjliWP57PiuMY
	sFY4/9T97AFGLzfZJPzKGd6JuQJP2BRr6vY3MYRLl8DU9Biy2icAyl0WjOKZ1ORlgPcA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vXzjw-000HuJ-IF; Tue, 23 Dec 2025 11:35:40 +0100
Date: Tue, 23 Dec 2025 11:35:40 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Kyle Hsieh <kylehsieh1995@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
Message-ID: <1e21f828-1b06-492d-bfcd-ab5721621e8a@lunn.ch>
References: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
 <20251222-ventura2_initial_dts-v1-2-1f06166c78a3@gmail.com>
 <c069b452-df22-4afa-bf6a-c48949f40ebc@lunn.ch>
 <CAF7HswN_jEXOU_9K4LpLnbhvd+RD0qqELAHxMBbp=hGtMjS4kQ@mail.gmail.com>
 <35f3eba9-5ec4-4cba-8a64-fb521dc65b79@lunn.ch>
 <CAF7HswN0hhJQ-gmE59cKTuPyzrs1A3rM8Xw+Z8i3_AsHRiNcug@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAF7HswN0hhJQ-gmE59cKTuPyzrs1A3rM8Xw+Z8i3_AsHRiNcug@mail.gmail.com>

> > What make/model of switch is it? Is it unmanaged, or does it use SPI
> > or I2C for management?

> The switch is connected via RMII to the MAC and is managed over MDIO.

O.K. What make/model?

> On our board, MDIO is not wired directly to the processor; instead, we
> use a USB-to-MPSSE bridge (FT2232) to toggle the MDIO signals for
> switch management.

I have to push back on you using a closed source user space driver,
given that i help maintain the Ethernet switch drivers...

I know there have been attempts to get GPIO support added for FT2232,
but i don't think any got as far as mainline. That is probably the
only part you are missing. You can describe USB devices in DT. So you
should be able to describe such a GPIO controller. You can then
instantiate an virtual,mdio-gpio driver to give you an MDIO bus. And
then add nodes for the switch using DSA.

     Andrew


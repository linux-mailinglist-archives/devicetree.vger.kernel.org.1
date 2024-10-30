Return-Path: <devicetree+bounces-117259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B99C9B5B61
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 06:40:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F3AD1F248AC
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 05:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70751D2B3C;
	Wed, 30 Oct 2024 05:37:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2CC71CF5C8
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 05:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730266673; cv=none; b=qnHqi216PB2P5fzsyuos/i9aZCmwyLeL94iuCPMeuBs1+gWb6knGunV7uGV7A+Z8TlGzayA5n+ddZCXL7cmh8+5rmARQ147/QJi91V/O4ObNpEtRGWlRtPwCVjgCyZnvmwOpcs0oX+P0niaQ/zPkL5cGYIFUrk8UtGAGbS1zfbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730266673; c=relaxed/simple;
	bh=PjLHXwrAhoN/Mb365uv5xtjh13ztQTTsoXP7lKVcVNw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eGZclYDuWj9VfAUcO4BmRmwVgwR/HXsDJ40JblATP5AFdtdhflrtlVG0HZFui1jBB1rOAL/xmwbiXrqKfIdAEDuxMAvWloNe/F3sCrGE5ekEJdy80AN5czewnQiXDkNSBiOv8ga0mx2I0A9F6mvNuV6thsNwE0htMZnBnqzU8pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1t61OU-0004DM-VL; Wed, 30 Oct 2024 06:37:22 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t61OS-00190G-2A;
	Wed, 30 Oct 2024 06:37:20 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t61OS-004JFG-1l;
	Wed, 30 Oct 2024 06:37:20 +0100
Date: Wed, 30 Oct 2024 06:37:20 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Arun Ramadoss <arun.ramadoss@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	kernel@pengutronix.de, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>
Subject: Re: [PATCH net-next v2 2/5] dt-bindings: net: dsa: ksz: add
 mdio-parent-bus property for internal MDIO
Message-ID: <ZyHGEDfhcRGX_Fzg@pengutronix.de>
References: <20241029110732.1977064-1-o.rempel@pengutronix.de>
 <20241029110732.1977064-3-o.rempel@pengutronix.de>
 <20241029123107.ssvggsn2b5w3ehoy@skbuf>
 <ZyDe_ObZ-laVk8c2@pengutronix.de>
 <2b03f429-9ae2-4c7a-9cec-0bc2f3c6e816@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2b03f429-9ae2-4c7a-9cec-0bc2f3c6e816@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Tue, Oct 29, 2024 at 09:35:48PM +0100, Andrew Lunn wrote:
> > > I'm not saying whether this is good or bad, I'm just worried about
> > > mixing quantities having different measurement units into the same
> > > address space.
> > > 
> > > Just like in the case of an mdio-mux, there is no address space isolation
> > > between the parent bus and the child bus. AKA you can't have this,
> > > because there would be clashes:
> > > 
> > > 	host_bus: mdio@abcd {
> > > 		ethernet-phy@2 {
> > > 			reg = <2>;
> > > 		};
> > > 	};
> > > 
> > > 	child_bus: mdio@efgh {
> > > 		mdio-parent-bus = <&host_bus>;
> > > 
> > > 		ethernet-phy@2 {
> > > 			reg = <2>;
> > > 		};
> > > 	};
> > > 
> > > But there is a big difference. With an mdio-mux, you could statically
> > > detect address space clashes by inspecting the PHY addresses on the 2
> > > buses. But with the lan937x child MDIO bus, in this design, you can't,
> > > because the "reg" values don't represent MDIO addresses, but switch port
> > > numbers (this is kind of important, but I don't see it mentioned in the
> > > dt-binding).
> > 
> > In current state, the driver still require properly configured addresses
> > in the devicetree. So, it will be visible in the DT.
> 
> This is not what i was expecting, especially from mv88e6xxx
> perspective. The older generation of devices had the PHYs available on
> the 'host bus', as well as the 'child bus', using a 1:1 address
> mapping. You could in theory even skip the 'child bus' and list the
> PHYs on the 'host bus' and phy-handle would make it work. However i
> see from a later comment that does not work here, you need some
> configuration done over SPI, which mv88e6xx does not need. 
> 
> > 
> > > These are translated by lan937x_create_phy_addr_map() using
> > > the CASCADE_ID/VPHY_ADD pin strapping information read over SPI.
> > > I.e. with the same device tree, you may or may not have address space
> > > clashes depending on pin strapping. No way to tell.
> > 
> > The PHY address to port mapping in the driver is needed to make the
> > internal switch interrupt controller assign interrupts to proper PHYs.
> 
> You are talking about:
> 
> 			ds->user_mii_bus->irq[phy] = irq;
> 
> in ksz_irq_phy_setup.
> 
> I naively expect 'phy' to be the 'reg' value in DT, and the 'dev'
> value which passed to mdiobus_read_nested(bus, dev, reg) ?

Yes, this is correct. This can be implemented purely by parsing the
devicetree. Based on previous experience, I expected you to suggest me
to implement the validation so i jumped directly to a part of this step.

Should I implement it based on the devicetree information and validate
based on HW strapping?

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


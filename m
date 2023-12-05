Return-Path: <devicetree+bounces-21852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A64188055F2
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 14:31:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D09C1F212B3
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB1745D8EA;
	Tue,  5 Dec 2023 13:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="Hd617gTH"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03E98D43;
	Tue,  5 Dec 2023 05:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mFuSrbfurzuYvmLcQXdfkLqbLcdk8ZaR8luvYGQG6oo=; b=Hd617gTHXFpyvcsmWlduuhoxl9
	+rBsDK528+ELw5A8Vyt0ty+t0wmdeqmtuAzfDXdTQcBmgi9lNiJ8nxsVEm6zo8ka8B5rwB1QUCKxL
	M4csM47IUX0R0RcYt2yIZkI8fUytGP7Rl7BgXMHLGBm0kmzCtNw6uAHecqS2S+TffqqHvrEeCV6tI
	jgM4zA96DNKIIWuWj7PwSvOeZ3HyseDUPXvrIFGWyYu3q+mv4V2rWTZ+b121zOvJbcRbp7ejoGINl
	jphjMFCTQedfHaFhzrqWNdcjfP7TDL2GHMeRBeHsiKKI0lSL58ZREhC7ixf0Z3IYJmOoI9ck8PJUD
	G1/Z1vtw==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48700)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1rAVVw-0006pq-2E;
	Tue, 05 Dec 2023 13:31:04 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1rAVVv-0001kI-DX; Tue, 05 Dec 2023 13:31:03 +0000
Date: Tue, 5 Dec 2023 13:31:03 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Serge Semin <fancer.lancer@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Jose Abreu <Jose.Abreu@synopsys.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	openbmc@lists.ozlabs.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 06/16] net: pcs: xpcs: Avoid creating dummy XPCS
 MDIO device
Message-ID: <ZW8mF5TuAEiW5FOU@shell.armlinux.org.uk>
References: <20231205103559.9605-1-fancer.lancer@gmail.com>
 <20231205103559.9605-7-fancer.lancer@gmail.com>
 <ZW8ASzkC9IFFlxkV@shell.armlinux.org.uk>
 <rgp33mm4spbpm5tmgxurkhy4is3lz3z62rz64rni2pygteyrit@zwflw2ejdkn7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <rgp33mm4spbpm5tmgxurkhy4is3lz3z62rz64rni2pygteyrit@zwflw2ejdkn7>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Tue, Dec 05, 2023 at 02:31:41PM +0300, Serge Semin wrote:
> On Tue, Dec 05, 2023 at 10:49:47AM +0000, Russell King (Oracle) wrote:
> > On Tue, Dec 05, 2023 at 01:35:27PM +0300, Serge Semin wrote:
> > > If the DW XPCS MDIO devices are either left unmasked for being auto-probed
> > > or explicitly registered in the MDIO subsystem by means of the
> > > mdiobus_register_board_info() method there is no point in creating the
> > > dummy MDIO device instance in order to get the DW XPCS handler since the
> > > MDIO core subsystem will create the device during the MDIO bus
> > > registration procedure.
> > 
> 
> > Please reword this overly long sentence.
> 
> Ok.
> 
> > 
> > If they're left unmasked, what prevents them being created as PHY
> > devices?
> 
> Not sure I fully get what you meant. If they are left unmasked the
> MDIO-device descriptor will be created by the MDIO subsystem anyway.
> What the point in creating another one?

The MDIO bus scan looks for devices on the MDIO bus by probing each
address. If it finds a response, it creates a PHY device (struct
phy_device), and stores a pointer to the mdiodev embedded in this
structure in the array.

This device then gets registered as a PHY device, and becomes available
for use by phylib and PHY drivers.

This is something that needs to be avoided, but I don't see anything in
your series that achieves that.

> > No, this makes no sense now. This function is called
> > xpcs_create_mdiodev() - note the "create_mdiodev" part. If it's getting
> > the mdiodev from what is already there then it isn't creating it, so
> > it's no longer doing what it says in its function name. If you want to
> > add this functionality, create a new function to do it.
> 
> AFAICS the method semantics is a bit different. It's responsibility is to
> create the DW XPCS descriptor. MDIO-device is utilized internally by
> the DW XPCS driver. The function callers don't access the created MDIO
> device directly (at least since some recent commit). So AFAIU "create"
> means creating the XPCS descriptor irrespective from the internal
> communication layer. So IMO the suffix is a bit misleading. I'll
> change it in one of the next commit anyway. Should I just merge that
> patch back in this one?

This function was created (by me) to also create the mdiodev. The
function for use with a pre-existing mdiodev was xpcs_create().
But what do I know, I was only the author of this function, and of
course you're correct.

I don't like this patch anyway. Moving the mdio_device_get() etc out
of xpcs_create() is wrong. Even if you get a mdiodev from some other
place, then having xpcs_create() take a reference on it is still the
correct thing to do. My conclusion is you don't understand refcounting.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!


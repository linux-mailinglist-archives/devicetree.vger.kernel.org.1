Return-Path: <devicetree+bounces-21771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7546805123
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:50:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 494FE28180B
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 10:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AFE12E843;
	Tue,  5 Dec 2023 10:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="duogcorQ"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFDA7116;
	Tue,  5 Dec 2023 02:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Upnjb/CtjXa7Ifq7kmJI62+mAm9o5YlGesjj/UWinbA=; b=duogcorQ4P8zl3J8qpazL8Dgj0
	gHnjMJldEDLL/hRu89DsHHSe3nLkNLmgqQrqgETe/jTgORfz66dwyn/MNnL9AXKCZiLgwWoUm9bDA
	e2WdwdhsAXEi+bDtljNF7S+HBTPUb8khY0RpR427YJ3T/hQ/jGBeCl41qzTZcYl/1M96s6k8XVpvq
	gnmWfAp0NmIzWX5pau2JVLlDP03b/KePZYtrhMeCc8MWjV0kwFS9a7WFL+W1+s7mYPqE+eP83rDXo
	R4WqtqGhans10+bH8ntaaXL/pWeqN458OXnYwsNGpce4IYqQI1nRXFPflwNsXLyZFy5ETN5ITCgxY
	CHgwHrXA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60944)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1rASzq-0006ds-1N;
	Tue, 05 Dec 2023 10:49:46 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1rASzr-0001e3-Hy; Tue, 05 Dec 2023 10:49:47 +0000
Date: Tue, 5 Dec 2023 10:49:47 +0000
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
Message-ID: <ZW8ASzkC9IFFlxkV@shell.armlinux.org.uk>
References: <20231205103559.9605-1-fancer.lancer@gmail.com>
 <20231205103559.9605-7-fancer.lancer@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231205103559.9605-7-fancer.lancer@gmail.com>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Tue, Dec 05, 2023 at 01:35:27PM +0300, Serge Semin wrote:
> If the DW XPCS MDIO devices are either left unmasked for being auto-probed
> or explicitly registered in the MDIO subsystem by means of the
> mdiobus_register_board_info() method there is no point in creating the
> dummy MDIO device instance in order to get the DW XPCS handler since the
> MDIO core subsystem will create the device during the MDIO bus
> registration procedure.

Please reword this overly long sentence.

If they're left unmasked, what prevents them being created as PHY
devices?

> @@ -1437,19 +1435,21 @@ struct dw_xpcs *xpcs_create_mdiodev(struct mii_bus *bus, int addr,
>  	struct mdio_device *mdiodev;
>  	struct dw_xpcs *xpcs;
>  
> -	mdiodev = mdio_device_create(bus, addr);
> -	if (IS_ERR(mdiodev))
> -		return ERR_CAST(mdiodev);
> +	if (addr >= PHY_MAX_ADDR)
> +		return ERR_PTR(-EINVAL);
>  
> -	xpcs = xpcs_create(mdiodev, interface);
> +	if (mdiobus_is_registered_device(bus, addr)) {
> +		mdiodev = bus->mdio_map[addr];
> +		mdio_device_get(mdiodev);

No, this makes no sense now. This function is called
xpcs_create_mdiodev() - note the "create_mdiodev" part. If it's getting
the mdiodev from what is already there then it isn't creating it, so
it's no longer doing what it says in its function name. If you want to
add this functionality, create a new function to do it.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!


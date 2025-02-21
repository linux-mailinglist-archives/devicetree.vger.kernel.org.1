Return-Path: <devicetree+bounces-149270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F27BA3EF18
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:51:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D11F189E99B
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 08:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04487201016;
	Fri, 21 Feb 2025 08:51:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383E1202C33
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740127860; cv=none; b=WvcI11N6RIDiJlpoeveVpzOdUy9P8GghxHa1hGyJBQyqIzHyVJqtH0Ysr4VRP2fr+uu0aLGG07szI9/KguGdoxv3lfnj4sC+8HwwxQWj4LgqP3+OsttDGw1Q+ejxekL96UM9O4hoFrGj2zh6TNpmJd9HgWOWloGIDi3vpoKXamI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740127860; c=relaxed/simple;
	bh=nSKLy1Ix2qRvmMeeA07XwFeiYxHYgil0sFq6yP7REX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g3rcJmXthp8HkU/qDgp4jdyUW5dAab4jGQ83mJ4s0dLNEJRAdgWrEkGzt2qGK310yfmBp33DKzy9VdfktZ0/Y96pFDtg0AIsryahsUvODDFfZM3UYpVe3vnuXwyqMar2HetLsJHCr37eG3BAPkaiOQYyjlYmrHUdxvXBKd7fMCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tlOk0-0003XF-RD; Fri, 21 Feb 2025 09:50:36 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tlOjx-0024Vn-0c;
	Fri, 21 Feb 2025 09:50:33 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tlOjx-009tjk-07;
	Fri, 21 Feb 2025 09:50:33 +0100
Date: Fri, 21 Feb 2025 09:50:33 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Donald Hunter <donald.hunter@gmail.com>,
	Rob Herring <robh@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	Simon Horman <horms@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	netdev@vger.kernel.org, linux-doc@vger.kernel.org,
	Kyle Swenson <kyle.swenson@est.tech>,
	Dent Project <dentproject@linuxfoundation.org>,
	kernel@pengutronix.de,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v5 02/12] net: pse-pd: Add support for reporting
 events
Message-ID: <Z7g-WYQNpVp5w7my@pengutronix.de>
References: <20250218-feature_poe_port_prio-v5-0-3da486e5fd64@bootlin.com>
 <20250218-feature_poe_port_prio-v5-2-3da486e5fd64@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250218-feature_poe_port_prio-v5-2-3da486e5fd64@bootlin.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Kory,

On Tue, Feb 18, 2025 at 05:19:06PM +0100, Kory Maincent wrote:
> From: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>
> 
> Add support for devm_pse_irq_helper() to register PSE interrupts. This aims
> to report events such as over-current or over-temperature conditions
> similarly to how the regulator API handles them but using a specific PSE
> ethtool netlink socket.

Thank you for your work. Here some comments.

...

> --- a/drivers/net/mdio/fwnode_mdio.c
> +++ b/drivers/net/mdio/fwnode_mdio.c
> @@ -18,7 +18,8 @@ MODULE_LICENSE("GPL");
>  MODULE_DESCRIPTION("FWNODE MDIO bus (Ethernet PHY) accessors");
>  
>  static struct pse_control *
> -fwnode_find_pse_control(struct fwnode_handle *fwnode)
> +fwnode_find_pse_control(struct fwnode_handle *fwnode,
> +			struct phy_device *phydev)
>  {

This change seems to be not directly related to the commit message.
Is it the preparation for the multi-phy support?

>  	struct pse_control *psec;
>  	struct device_node *np;
> @@ -30,7 +31,7 @@ fwnode_find_pse_control(struct fwnode_handle *fwnode)
>  	if (!np)
>  		return NULL;
>  
> -	psec = of_pse_control_get(np);
> +	psec = of_pse_control_get(np, phydev);
>  	if (PTR_ERR(psec) == -ENOENT)
>  		return NULL;
>  
> @@ -128,15 +129,9 @@ int fwnode_mdiobus_register_phy(struct mii_bus *bus,
>  	u32 phy_id;
>  	int rc;
>  
> -	psec = fwnode_find_pse_control(child);
> -	if (IS_ERR(psec))
> -		return PTR_ERR(psec);
> -
>  	mii_ts = fwnode_find_mii_timestamper(child);
> -	if (IS_ERR(mii_ts)) {
> -		rc = PTR_ERR(mii_ts);
> -		goto clean_pse;
> -	}
> +	if (IS_ERR(mii_ts))
> +		return PTR_ERR(mii_ts);
>  
>  	is_c45 = fwnode_device_is_compatible(child, "ethernet-phy-ieee802.3-c45");
>  	if (is_c45 || fwnode_get_phy_id(child, &phy_id))
> @@ -169,6 +164,12 @@ int fwnode_mdiobus_register_phy(struct mii_bus *bus,
>  			goto clean_phy;
>  	}
>  
> +	psec = fwnode_find_pse_control(child, phy);
> +	if (IS_ERR(psec)) {
> +		rc = PTR_ERR(psec);
> +		goto unregister_phy;
> +	}
> +
>  	phy->psec = psec;
>  
>  	/* phy->mii_ts may already be defined by the PHY driver. A
> @@ -180,12 +181,13 @@ int fwnode_mdiobus_register_phy(struct mii_bus *bus,
>  
>  	return 0;
>  
> +unregister_phy:
> +	if (is_acpi_node(child) || is_of_node(child))
> +		phy_device_remove(phy);
>  clean_phy:
>  	phy_device_free(phy);
>  clean_mii_ts:
>  	unregister_mii_timestamper(mii_ts);
> -clean_pse:
> -	pse_control_put(psec);
>  
>  	return rc;
>  }
> diff --git a/drivers/net/pse-pd/pse_core.c b/drivers/net/pse-pd/pse_core.c
> index 4602e26eb8c8..10a5ab30afdd 100644
> --- a/drivers/net/pse-pd/pse_core.c
> +++ b/drivers/net/pse-pd/pse_core.c
> @@ -7,6 +7,7 @@

...

> +/**
> + * pse_to_regulator_notifs - Convert PSE notifications to Regulator
> + *			     notifications
> + * @notifs: PSE notifications
> + *
> + * Return: Regulator notifications
> + */
> +static unsigned long pse_to_regulator_notifs(unsigned long notifs)

I prefer converting it the other way around to make it reusable for
plain regulator-based PSEs. For example, the podl-pse-regulator driver
won’t have its own interrupt handler but will instead use
devm_regulator_register_notifier().

Even full-fledged PSE controllers like the PD692x0 are just one part of
a larger chain of regulators. An overcurrent event may originate from a
downstream regulator that is not part of the PD692x0 itself. In this
case, we need to process the event from the downstream regulator,
convert it into an ethtool event, and forward it to the user.

Here is one example how devm_regulator_register_notifier() can be used:
https://lore.kernel.org/all/20250220074429.2906141-1-o.rempel@pengutronix.de/

> +{
> +	unsigned long rnotifs = 0;
> +
> +	if (notifs & ETHTOOL_PSE_EVENT_OVER_CURRENT)
> +		rnotifs |= REGULATOR_EVENT_OVER_CURRENT;
> +	if (notifs & ETHTOOL_PSE_EVENT_OVER_TEMP)
> +		rnotifs |= REGULATOR_EVENT_OVER_TEMP;
> +
> +	return rnotifs;
> +}
> +

Other parts look ok for me.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


Return-Path: <devicetree+bounces-231875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4CFC12172
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 00:47:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E1B534E2942
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 152D82C08BA;
	Mon, 27 Oct 2025 23:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="V1fDhPjX"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CDE283C8E
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761608828; cv=none; b=W3nZ0SBW/X4jpEdoCHGtu4z3cqyBO7ViJxzEFSjFP7U9UDLyyn8txXYiG20eTC1A3I720Ylz88dvPQxZv032j3TX5M6Q95ch/ABvBP9fH/VuoFKHaDmKhm1AZrbeipTb27c+knSL3Is8xVBUUDNB4I/sbtAciDMG818VPI/auno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761608828; c=relaxed/simple;
	bh=YYHUzAcEn48hxpCkP434f80Wc8cJl1AevXLmPQTIRD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m7DQbXWinriL1fqGTXUNpyrhBTctFiMd12ucaTdm9ImjG+SEU2/JtY1RdA61Vi3FRM3Zy+F5ZeeMBltj3iiJ2SjoTTJhdOIjbAKgeSuk75YxbssU11IJHGi+fUrm7gPPsR7KuIZn1G/FnbZLRAXB5+9bBensRaJkzxkOcEPCzcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=V1fDhPjX; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (85-76-17-108-nat.elisa-mobile.fi [85.76.17.108])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 4250211DD;
	Tue, 28 Oct 2025 00:45:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761608715;
	bh=YYHUzAcEn48hxpCkP434f80Wc8cJl1AevXLmPQTIRD4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V1fDhPjXRoI6Z2EtHsqCOXN3Ss2/tf/XCQwabUASDvat+W0b/6C/kQSDIe4Ac/LtX
	 sEpsbxgtzteiPSSdw8Vfp63aBPrJv5/KH7kGw0TyCwUTGmwEnOmesZtTVX/6UTmqci
	 03IqR5ayiEfeCPFtkTSWLsfkDkwWiJ6bZdKhlEKU=
Date: Tue, 28 Oct 2025 01:46:48 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Emanuele Ghidoli <ghidoliemanuele@gmail.com>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Daniel Scally <dan.scally@ideasonboard.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Stefan Klug <stefan.klug@ideasonboard.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-model-a: Disable EEE for 1000T
Message-ID: <20251027234648.GC24987@pendragon.ideasonboard.com>
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
 <aP-ML-A_h13pXY2d@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aP-ML-A_h13pXY2d@shell.armlinux.org.uk>

On Mon, Oct 27, 2025 at 03:13:51PM +0000, Russell King (Oracle) wrote:
> On Sun, Oct 26, 2025 at 02:29:04PM +0200, Laurent Pinchart wrote:
> > Energy Efficient Ethernet (EEE) is broken at least for 1000T on the EQOS
> > (DWMAC) interface. When connected to an EEE-enabled peer, the ethernet
> > devices produces an interrupts storm. Disable EEE support to fix it.
> 
> We've finally got to the bottom of what's going on here. Please try
> this patch (it's building locally, but will take some time because
> I'd wound the tree back to 6.13 and 6.14, so it's going to be a full
> rebuild.) Thus, there may be compile bugs remaining.

I've applied it on top of 

I've started with a branch based on v6.18-rc3 plus "[PATCH net-next 0/5]
net: stmmac: more cleanups" ([1]) and "[PATCH net-next v2 0/6] net: add
phylink managed WoL and convert stmmac" ([2]) to make the patch apply
cleanly.

[1] https://lore.kernel.org/all/aO_HIwT_YvxkDS8D@shell.armlinux.org.uk/
[2] https://lore.kernel.org/all/aPnyW54J80h9DmhB@shell.armlinux.org.uk/

The base branch exhibits the interrupt storm issue. The patch
unfortunately doesn't fix it.

> This uncovered a latent bug in Emanuele's case - the TI PHY drivers
> report EEE capabilities despite not being capable which also needs
> fixing. The patch below will stop stmmac enabling EEE by default on
> PHYs described in firmware, which is the behaviour the driver used
> to have.
> 
> If we decide that EEE should be enabled by default, then we'll need
> to revert this change. However, given Oleksij's recent input, I'm
> wondering whether EEE should default to disabled given the issues
> with Tq. The suggestion there is that many PHYs get it wrong and thus
> are incompatible with each other when EEE is enabled.
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index fd5106880192..c18690a6804f 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -1208,6 +1208,24 @@ static int stmmac_init_phy(struct net_device *dev)
>  	return 0;
>  }
>  
> +static bool stmmac_has_fw_phy(struct stmmac_priv *priv)
> +{
> +	struct fwnode_handle *fwnode;
> +
> +	fwnode = priv->plat->port_node;
> +	if (!fwnode)
> +		fwnode = dev_fwnode(priv->device);
> +
> +	if (!fwnode)
> +		return false;
> +
> +	fwnode = fwnode_get_phy_node(fwnode);
> +	if (fwnode)
> +		fwnode_handle_put(fwnode);
> +
> +	return !!fwnode;
> +}
> +
>  static int stmmac_phylink_setup(struct stmmac_priv *priv)
>  {
>  	struct stmmac_mdio_bus_data *mdio_bus_data;
> @@ -1270,7 +1288,7 @@ static int stmmac_phylink_setup(struct stmmac_priv *priv)
>  		/* All full duplex speeds above 100Mbps are supported */
>  		config->lpi_capabilities = ~(MAC_1000FD - 1) | MAC_100FD;
>  		config->lpi_timer_default = eee_timer * 1000;
> -		config->eee_enabled_default = true;
> +		config->eee_enabled_default = !stmmac_has_fw_phy(priv);
>  	}
>  
>  	config->wol_phy_speed_ctrl = true;

-- 
Regards,

Laurent Pinchart


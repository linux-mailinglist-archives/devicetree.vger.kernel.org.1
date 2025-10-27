Return-Path: <devicetree+bounces-231611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EB01AC0ED9C
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 96FA734C233
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB3153093CB;
	Mon, 27 Oct 2025 15:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="BsQ6jui8"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6992D2499
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761578037; cv=none; b=nGSvLo0rq9BJl4Wouk67+DKYE4t7OQuoPFdgQ1C7a3z/WzdS0q1VspjjlC1TPNclAfNZO685uJrndqAwv78tnJAN8aXmLptSHNM0MsmEdO/qIr6pXAf3+3C3Qsfmd8qr3ZNJUDdsmfvag1GZedXjn9WYvOzxJqTZ80n95XpuFUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761578037; c=relaxed/simple;
	bh=nFhrS3cEn1XfPtXxFdkzqzvxaJcy1h02P0GBJTtXtfI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cumQS/yznqb2XvArlQIC0KJyMMdvcqlzfp27N5GyVzToZrVm8vNeDnr8TpzR8oj/nYjK0mBrrcFtJpVg71jr+mHNUtlr93Fpoyr3l9at9mq9Pd7KXEAlM3g4vkNHkHNNgmE1ZUjRiofXQagxWJny50H3gurSIMpT+ykmu+DEMWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=BsQ6jui8; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ObvvfYM44FTbwUJpbdSEvWMrXCyw//C3N19B6DVqQac=; b=BsQ6jui8m6ldUL4e9YJPTB7YFt
	qm8iwtSzX2G3fQ9WTrJGQYHLQ8LJI7R2rCKSOGMzdrhv1e8YGU4tnCc+o450aNval+U2ItnBhiv0m
	a3gBtV/6I0pcreEIBU+voykE//AsQv/ws6EUrGySPVTrZwt2LeUi67ALyLNoBngIaRUmNasUwdqSJ
	mpWXP77JvZkdyMH0Yj5gF5n34u54hA8+664sCHsuJ2mDhueqcUroUAfYm5LyKblqvsde1un1IG7Nz
	UYz+Ym/PO2LGxM/f5+Z8luAE5R7Uc8/6+K0KCLsNcR/TH4QnrSzC/k0SKvhjXbSjonrkl1s6Lq/4u
	XmrFyQxw==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48518)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vDOuu-0000000020b-2qfk;
	Mon, 27 Oct 2025 15:13:52 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vDOut-000000005hO-1KtM;
	Mon, 27 Oct 2025 15:13:51 +0000
Date: Mon, 27 Oct 2025 15:13:51 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Emanuele Ghidoli <ghidoliemanuele@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
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
Message-ID: <aP-ML-A_h13pXY2d@shell.armlinux.org.uk>
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Sun, Oct 26, 2025 at 02:29:04PM +0200, Laurent Pinchart wrote:
> Energy Efficient Ethernet (EEE) is broken at least for 1000T on the EQOS
> (DWMAC) interface. When connected to an EEE-enabled peer, the ethernet
> devices produces an interrupts storm. Disable EEE support to fix it.

We've finally got to the bottom of what's going on here. Please try
this patch (it's building locally, but will take some time because
I'd wound the tree back to 6.13 and 6.14, so it's going to be a full
rebuild.) Thus, there may be compile bugs remaining.

This uncovered a latent bug in Emanuele's case - the TI PHY drivers
report EEE capabilities despite not being capable which also needs
fixing. The patch below will stop stmmac enabling EEE by default on
PHYs described in firmware, which is the behaviour the driver used
to have.

If we decide that EEE should be enabled by default, then we'll need
to revert this change. However, given Oleksij's recent input, I'm
wondering whether EEE should default to disabled given the issues
with Tq. The suggestion there is that many PHYs get it wrong and thus
are incompatible with each other when EEE is enabled.

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index fd5106880192..c18690a6804f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -1208,6 +1208,24 @@ static int stmmac_init_phy(struct net_device *dev)
 	return 0;
 }
 
+static bool stmmac_has_fw_phy(struct stmmac_priv *priv)
+{
+	struct fwnode_handle *fwnode;
+
+	fwnode = priv->plat->port_node;
+	if (!fwnode)
+		fwnode = dev_fwnode(priv->device);
+
+	if (!fwnode)
+		return false;
+
+	fwnode = fwnode_get_phy_node(fwnode);
+	if (fwnode)
+		fwnode_handle_put(fwnode);
+
+	return !!fwnode;
+}
+
 static int stmmac_phylink_setup(struct stmmac_priv *priv)
 {
 	struct stmmac_mdio_bus_data *mdio_bus_data;
@@ -1270,7 +1288,7 @@ static int stmmac_phylink_setup(struct stmmac_priv *priv)
 		/* All full duplex speeds above 100Mbps are supported */
 		config->lpi_capabilities = ~(MAC_1000FD - 1) | MAC_100FD;
 		config->lpi_timer_default = eee_timer * 1000;
-		config->eee_enabled_default = true;
+		config->eee_enabled_default = !stmmac_has_fw_phy(priv);
 	}
 
 	config->wol_phy_speed_ctrl = true;

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!


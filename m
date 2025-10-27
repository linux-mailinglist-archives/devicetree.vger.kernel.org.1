Return-Path: <devicetree+bounces-231549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 713AFC0E179
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:38:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 407034ED985
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C582423A98E;
	Mon, 27 Oct 2025 13:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="DHPcyJSk"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBAD21C160
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761572024; cv=none; b=JuSgkDw5lsaSaEtYC6gLnJA1d2rY7eOmEOm0LGGYA6Zcd9cpeo5VjH4kD6LPrdMe1NGzbs5PDjuyECL2BeS+DOnGAvg5ZgBy8nCOoux10NW1A8jfRhjiBoEDMUWqeqHPKfqI0BpjFxc4Zkzm7FusuMNE28h7BBoQa7FnK6gMXXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761572024; c=relaxed/simple;
	bh=wZV9rHqjFmCKE6342LhgpDNYUqatE29bXLix3KtUghU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IdNB3nL7WGWBdrY71yFwxqd7a5X9z1XpSJ0ekI8OzIUPkGLPZiWCWSjLfPe3bvpkc/5r2W/FQPC5riO4qW8h2cIIgH5hJIkzoH6Yjphdvxxaw2fXKmYcNpudZ/fHnmpwO482d04EZ4+6ZF0b3qBMvIMhtr94YIWqbc/pEb1SckA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=DHPcyJSk; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jdru/g1UDfmEH8Ssu1G/uWYFsLY+kwVhWPET9PZ9Xs0=; b=DHPcyJSk6sjzs7WSFEoWbKk0kY
	q0u6hTxBXjylBWdZ4mUpAPChK/JLqlU1lRbRDru6tToO6DUyrYQOxEOmhGBLw0/T/+dTamGDbnU/x
	S/9odHu07HjB6uoprKTHP/MT12z0HLcgKENeOGmHD+FhoTIhWNpCgemdCyT9aLkoXkI4k9h/Q5eRE
	1YQgwyaVCco8ZcrhF58yMEFzHzSMUyJzpJtCuo0WaNaNJJ5WeuzFG5u0YBYA1sp3xv6VHwTskP2PE
	/UluW7RwKMBMgCh8A7zhwi44CzoTkW/jpj8JA5Mqq/QrEajf9qHKA6jT5SUoUMTNCXvMZeJpXkyXJ
	Vk4k0USA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48776)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vDNLv-000000001uq-0oOg;
	Mon, 27 Oct 2025 13:33:39 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vDNLt-000000005cR-1q37;
	Mon, 27 Oct 2025 13:33:37 +0000
Date: Mon, 27 Oct 2025 13:33:37 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
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
Message-ID: <aP90sT5c-_xajH8S@shell.armlinux.org.uk>
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
 <aP82VEjNDgrNAZzy@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aP82VEjNDgrNAZzy@shell.armlinux.org.uk>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Mon, Oct 27, 2025 at 09:07:32AM +0000, Russell King (Oracle) wrote:
> The changes to stmmac have been tested on nVidia Jetson Xavier NX,
> which uses RGMII with dwmac4 and a RTL8211F PHY, connected to a Netgear
> GS108 switch. It seems to be the same that your board is using similar.
> 
> I will re-test today.

I just booted net-next on this platform.

# ethtool -S eth0 | grep lpi_mode_n
     irq_tx_path_in_lpi_mode_n: 24
     irq_tx_path_exit_lpi_mode_n: 23
     irq_rx_path_in_lpi_mode_n: 201
     irq_rx_path_exit_lpi_mode_n: 200
# ethtool --show-eee eth0
EEE Settings for eth0:
        EEE status: enabled - active
        Tx LPI: 1000000 (us)
        Supported EEE link modes:  100baseT/Full
                                   1000baseT/Full
        Advertised EEE link modes:  100baseT/Full
                                    1000baseT/Full
        Link partner advertised EEE link modes:  100baseT/Full
                                                 1000baseT/Full

So it looks like everything is working as it should here.

stmmac was converted to phylink managed EEE in v6.14-rc1. I've built
v6.13 to check that my assertions w.r.t. EEE defaulting to being
enabled are correct, and:

# # ethtool -S eth0 | grep lpi
     irq_tx_path_in_lpi_mode_n: 15
     irq_tx_path_exit_lpi_mode_n: 14
     irq_rx_path_in_lpi_mode_n: 0
     irq_rx_path_exit_lpi_mode_n: 0
# ethtool --show-eee eth0
EEE Settings for eth0:
        EEE status: enabled - active
        Tx LPI: disabled
        Supported EEE link modes:  100baseT/Full
                                   1000baseT/Full
        Advertised EEE link modes:  100baseT/Full
                                    1000baseT/Full
        Link partner advertised EEE link modes:  100baseT/Full
                                                 1000baseT/Full

So, as I have asserted in response to Emanuele, the conversion of
stmmac to phylink-managed EEE hasn't changed whether EEE is enabled
by default. It was enabled by default before phylink-managed EEE, and
as I always try to do, I try to avoid introducing different behaviours
when converting drivers to a new implementation. That point holds up
here w.r.t. whether EEE is enabled by default. Hence, blaming these
problems on the phylink conversion enabling EEE by default is
incorrect - and I wish people would *stop* jumping to false conclusions
without evidence. As phylink maintainer, it is extremely disheartening
to keep having problems falsely levelled at phylink.

Note that the difference here is the receive path at the MAC doesn't
enter LPI mode. This is because PHY-mode EEE is enabled, which prevents
the LPI state on the receive side being forwarded to the MAC. I fixed
via commit bfc17c165835 ("net: phy: realtek: disable PHY-mode EEE") for
RTL8211F PHYs merged in v6.15-rc1.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!


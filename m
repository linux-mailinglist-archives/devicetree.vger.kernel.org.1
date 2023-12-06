Return-Path: <devicetree+bounces-22456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE237807728
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 18:58:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91ADC1F212A4
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA1296DD11;
	Wed,  6 Dec 2023 17:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="0HbX49In"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DFE2D42;
	Wed,  6 Dec 2023 09:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=3ZZNNhGyoTwRHgS/bMWVfX3vw+ZZ4cEePiAqrrIcnwM=; b=0HbX49InVIrrypsWfM0ZmrDswH
	hUiEYIwZ/X0y6/g3n9MfR/Xe2G5AdEZwo+6WoFCG9muiQqjrdSwuIWlOmpA/dcAwSSIDNPabftXNo
	uUNE6oM3plQH/R0YwGvoVXykOm1A4uJeGpKeG2xQ6OpBt4v6vuNKuyUgCJLK2gEMd+nzY3h0O6rqU
	lVYOBys6d13VTBf1WTZRBZfPGgizzwR9LYBtitOMb3NgrraS95ziohm/QKnnBx5eXCTQ1NEWNAn6r
	jZStgPtTaO+kCOGSkHoMhAr3HpiHeQ3UkPTPRTIclBzQAngtVpzIr9Moie2tqITHv3pZ/w+4X8vqF
	3QJptGVQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56612)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1rAw9w-0000E0-0u;
	Wed, 06 Dec 2023 17:58:08 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1rAw9w-0002uo-Va; Wed, 06 Dec 2023 17:58:08 +0000
Date: Wed, 6 Dec 2023 17:58:08 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: Daniel Golle <daniel@makrotopia.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Alexander Couzens <lynxis@fe80.eu>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH v2 5/8] net: pcs: add driver for MediaTek USXGMII PCS
Message-ID: <ZXC2MFn7pVX/KNmJ@shell.armlinux.org.uk>
References: <cover.1701826319.git.daniel@makrotopia.org>
 <3cd8af5e44554c2db2d7898494ee813967206bd9.1701826319.git.daniel@makrotopia.org>
 <20231206105838.069ae288@device.home>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231206105838.069ae288@device.home>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Wed, Dec 06, 2023 at 10:58:38AM +0100, Maxime Chevallier wrote:
> On Wed, 6 Dec 2023 01:44:38 +0000
> Daniel Golle <daniel@makrotopia.org> wrote:
> > +	/* Read USXGMII link status */
> > +	state->link = FIELD_GET(RG_PCS_RX_LINK_STATUS,
> > +				mtk_r32(mpcs, RG_PCS_RX_STATUS0));
> > +
> > +	/* Continuously repeat re-configuration sequence until link comes up */
> > +	if (!state->link) {
> > +		mtk_usxgmii_pcs_config(pcs, mpcs->neg_mode,
> > +				       state->interface, NULL, false);
> > +		return;
> 
> .pcs_get_state() isn't called only for link state polling,but also when querying
> the link state from ethtool, from phylink_ethtool_ksettings_get().
> 
> As mtk_usxgmii_pcs_config triggers a pcs reset and reconfiguration, won't this disrupt
> the link ? 

Highly likely if there's a race, but note that mtk_usxgmii_pcs_config()
only gets called if the link is *down*. I guess some IPs need a bit of
kicking to work properly.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!


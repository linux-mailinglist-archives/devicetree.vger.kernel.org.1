Return-Path: <devicetree+bounces-155826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAE6A58530
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 16:02:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5223163959
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 15:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05E481805B;
	Sun,  9 Mar 2025 15:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="uyVswsSz"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1F2A33E4
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 15:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741532531; cv=none; b=aTBCj9+HIUrPtuAm8zTmD5PV0RlyWl3a1yTNvN7S75wiQQbFFRdHY9yxaBpWRAf2SPlTc3xiCJaEgatg+Hg57vgOLwoIp1YiYf7qLXpiVJJ3CwRfrds/7kTHr9ByqP83a7uSTphOKkl0T9l/8t3k35FOUBkXVcAK9EDkr5nCNA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741532531; c=relaxed/simple;
	bh=SxYysrSFMqXOC77e2O7NaBlxe+q+ZrFo091wCvX7xyg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=X0VUNs6wwDpB9i+i2xNH/CmX6xmVooUxdXIqDEEDUHAPJE1quh1jLqb5SEwMxCX5XztX0ZdRhkVYxcpyO2FpMVXjZYsJbEqdboM/OkoobzA+sip3kKKM5lyN1cR07ro5uKlTRRVv9GyHh9aOy7uTVjmayY8q4zGaJrtp9kMS3M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=uyVswsSz; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BbBiGCSKMXr66JbjzDCjkEcWGnGU1X4kGM8CxTEj+2I=; b=uyVswsSzexh7TDURa6ve2Az6nD
	cJpFigE6NhnYaa5Igqnn/3L1sFIFq2WIQShELonahp7m7diaG5sbubT0XkFz3rXo7tPGh8Ke1G8cJ
	LKYR5GWgo+R7B0qVxkwHOeqmrdQYIZF+M8Zp8YqXpAdSx+J4Ac6dbHERmRYoJekOxjaSdANUXVPgU
	wLxH8c9hg6KXGtREN2mE/JuzCJD//UBYq/SmWa+JpuG7DmKH2/AJi9bqxL42QWhoctcrS6VrcsqMP
	nGFjL319Wos/5/Jt2quj0gTUWez3eTE36hAXw5nzP28aljFGH6nH2w4WK/cie9Wqyc5iyHiRnTgrO
	wjy75Kcw==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:47022)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1trIA6-0001OW-0D;
	Sun, 09 Mar 2025 15:01:54 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.96)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1trI9x-0001XJ-2l;
	Sun, 09 Mar 2025 15:01:45 +0000
Date: Sun, 9 Mar 2025 15:01:45 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Christophe Roullier <christophe.roullier@st.com>,
	Conor Dooley <conor+dt@kernel.org>, Conor Dooley <conor@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Emil Renner Berthing <kernel@esmil.dk>,
	Eric Dumazet <edumazet@google.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jakub Kicinski <kuba@kernel.org>, Jose Abreu <joabreu@synopsys.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"Lad,linux-arm-kernel@lists.infradead.org,linux-riscv@lists.infradead.org,linux-stm32@st-md-mailman.stormreply.com,Maxime Coquelin <mcoquelin.stm32@gmail.com>,Minda Chen <minda.chen@starfivetech.com>,netdev@vger.kernel.org,Palmer Dabbelt <palmer@dabbelt.com>,Paolo Abeni <pabeni@redhat.com>,Paul Walmsley <paul.walmsley@sifive.com>,Prabhakar" <prabhakar.csengg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Samin Guo <samin.guo@starfivetech.com>
Subject: [PATCH net-next 0/7] net: stmmac: deprecate
 "snps,en-tx-lpi-clockgating" property
Message-ID: <Z82tWYZulV12Pjir@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

Hi,

This series deprecates the "snps,en-tx-lpi-clockgating" property for
stmmac.

MII Transmit clock gating, where the MAC hardware supports gating this
clock, is a function of the connected PHY capabilities, which it
reports through its status register.

GMAC versions that support transmit clock gating twiddle the LPITCSE
bit accordingly in the LPI control/status register, which is handled
by the GMAC core specific code.

So, "snps,en-tx-lpi-clockgating" not something that is a GMAC property,
but is a work-around for phylib not providing an interface to determine
whether the PHY allows the transmit clock to be disabled.

This series converts the two SoCs that make use of this property (which,
I hasten to add, is set in the SoC code) to use the PHY capability bit
instead of a DT property, then removes the DT property from the .dtsi,
deprecates it in the snps,dwmac binding, and finally in the stmmac code.

I am expecting some discussion on how to merge this, as I think the
order in which these changes is made is important - we don't want to
deprecate the old way until the new code has landed.

 Documentation/devicetree/bindings/net/snps,dwmac.yaml |  1 +
 arch/arm/boot/dts/st/stm32mp151.dtsi                  |  1 -
 arch/riscv/boot/dts/starfive/jh7110.dtsi              |  2 --
 drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c  |  1 +
 drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c     |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac.h          |  1 +
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c     | 16 ++++++++++++----
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c |  5 ++++-
 include/linux/stmmac.h                                |  3 ++-
 9 files changed, 22 insertions(+), 9 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!


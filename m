Return-Path: <devicetree+bounces-156245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB274A59B2B
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 17:38:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F06C7188931B
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 16:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03947230BDA;
	Mon, 10 Mar 2025 16:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="12cNsTfK"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5434A1E519
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 16:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741624670; cv=none; b=jPyh9fbpWplnPnzkRAea88Ff6K1mebe0z0hB080E0cBsrglcVnVaWYrVrTLZhDl7HQVexr+PRYFhjKD3cW7H8y5mm36vJDpX4mqtZi2cGAmcUwCRvbAN4BWcCBOFqj3Q5ZZeQ66iOBEFXcEPPsyghs9YWCNqJHwxTsnYXBmNeDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741624670; c=relaxed/simple;
	bh=GFv9/TMzKX08tVbU1N9Uy0+e92fd4Z5cfIJ/IOvFWAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y+E2N2wz78tAS70p4ohukIGsxho04R09lI8TcBJk96bBZp1FurJWibtjWH9r6IP7hO0cnIzhNeeDVsM0BnuNg/+BVyQEGz8vL/fTfiEVz1c1EoC496RemI6xN0JcuVzC7WlVgH8E8AtbFzeKGX++bi4ImPhi9T4zt1WzC2X/vVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=12cNsTfK; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HqMU14VvaNk2dMwLv5cd94eKd+shodZWsQTICAv/rNQ=; b=12cNsTfKRSs7ObpGCQOF+yomLy
	eGdm05c/oRfPetrwI7aPQzdFto9qHMjimspinRwhk/Xc8hPmds1FSPHuUQKtl6pPChDjyDsN70py9
	9kK8KCFUw56RZrVurfdYWtllqnAXsDMER4PngbVshOWrEith1waqDN6h3dbJd8JIKGxt7iuefhruV
	jx0atyO4tiIEouftLHk3CAkilxk9CRz4hFJyH/83gSC5nk6+OTOekHI2YAR3+YQoFR3miqJ8/6ond
	cdz3Wmaus3vXCD3xgT8Lg+1RJCthESf/uA0dIEsD1TBzqBRbIe8zM+5Uxi8GCjmAc/WnRTxVLA6wG
	yrY4Qyjg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:55536)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1trg8G-0002ws-3A;
	Mon, 10 Mar 2025 16:37:37 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.96)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1trg8A-0002cs-0N;
	Mon, 10 Mar 2025 16:37:30 +0000
Date: Mon, 10 Mar 2025 16:37:29 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Conor Dooley <conor@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Christophe Roullier <christophe.roullier@st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Emil Renner Berthing <kernel@esmil.dk>,
	Eric Dumazet <edumazet@google.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jakub Kicinski <kuba@kernel.org>, Jose Abreu <joabreu@synopsys.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"Lad,linux-arm-kernel@lists.infradead.org,linux-riscv@lists.infradead.org,linux-stm32@st-md-mailman.stormreply.com,Maxime Coquelin <mcoquelin.stm32@gmail.com>,Minda Chen <minda.chen@starfivetech.com>,netdev@vger.kernel.org,Palmer Dabbelt <palmer@dabbelt.com>,Paolo Abeni <pabeni@redhat.com>,Paul Walmsley <paul.walmsley@sifive.com>,Prabhakar" <prabhakar.csengg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Samin Guo <samin.guo@starfivetech.com>
Subject: Re: [PATCH net-next 0/7] net: stmmac: deprecate
 "snps,en-tx-lpi-clockgating" property
Message-ID: <Z88VST3TIOgzeIyd@shell.armlinux.org.uk>
References: <Z82tWYZulV12Pjir@shell.armlinux.org.uk>
 <20250310-january-sensually-b6b88f7cd1d0@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310-january-sensually-b6b88f7cd1d0@spud>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Mon, Mar 10, 2025 at 04:35:55PM +0000, Conor Dooley wrote:
> On Sun, Mar 09, 2025 at 03:01:45PM +0000, Russell King (Oracle) wrote:
> > Hi,
> > 
> > This series deprecates the "snps,en-tx-lpi-clockgating" property for
> > stmmac.
> > 
> > MII Transmit clock gating, where the MAC hardware supports gating this
> > clock, is a function of the connected PHY capabilities, which it
> > reports through its status register.
> > 
> > GMAC versions that support transmit clock gating twiddle the LPITCSE
> > bit accordingly in the LPI control/status register, which is handled
> > by the GMAC core specific code.
> > 
> > So, "snps,en-tx-lpi-clockgating" not something that is a GMAC property,
> > but is a work-around for phylib not providing an interface to determine
> > whether the PHY allows the transmit clock to be disabled.
> > 
> > This series converts the two SoCs that make use of this property (which,
> > I hasten to add, is set in the SoC code) to use the PHY capability bit
> > instead of a DT property, then removes the DT property from the .dtsi,
> > deprecates it in the snps,dwmac binding, and finally in the stmmac code.
> > 
> 
> > I am expecting some discussion on how to merge this, as I think the
> > order in which these changes is made is important - we don't want to
> > deprecate the old way until the new code has landed.
> 
> I'm happy enough to have the jh7110 dtsi change go via netdev, rather
> than sit on till the driver change propagates to my tree in a release's
> time.

Thanks! Could I have a r-b or a-b for it please?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!


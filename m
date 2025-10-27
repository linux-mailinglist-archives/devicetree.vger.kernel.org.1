Return-Path: <devicetree+bounces-231369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F06C0CB19
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE3643B7358
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C808E2F5488;
	Mon, 27 Oct 2025 09:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="ZOyWRBO8"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB4B2F28EA
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761557551; cv=none; b=mOPq5xT1VsuqvfmbJlFO3/HPgIFIJbM/G8ghEXlcS3/L3p46T1YE1BHmoYa3UDrbxPdDJUhtCnfECFOXy8tiRn2Jf/Hb5e3fBppq9gjT4LASiF4mMCZFceNcBY8V4FSPixQvPotNn1w8SFjSVcAr7PsCzhw0yRjJlSgF1MQsiak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761557551; c=relaxed/simple;
	bh=ATBcpmqiZCC4edC9SqOHZZvOudIxJYaunakAkk6Y1P4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CbBb8jS+R18dUe1tfH001rpGiWgA3U7iq9EtwvGffIuZW42ZKT/hwwvp948YgLFok84IW5E8m5RA7tshGc8irhmoh80KRFx3mvwalYl0khbKFGNsdaG6RIRTj3rApsPFycdQfmRSN4qhGWC9/JuyhcrcB3QVLFYrumhH7yXG4pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=ZOyWRBO8; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5GqcCzFslWvwspg/f+Srh9ebuYfL4ZY09Ogmj+CHlmg=; b=ZOyWRBO8eHuPLliV5wfH0oKhQK
	IKEMn3aguU+Yqku44v/jYUeNtf8sioy+jDr24vH9ZxWwT5Fu29lShStH0MEuD5SLtIIf5DV33fO8r
	j5IHxDKD5YD2ImYR074CJBWlQKzxRsFPSmx8jyEZMRHtcECssO9h5mNoW4f2W+ZnmHXBtLxka280E
	Ee01tYiO1EaGeVnvwW0ByKTFhN/UZXBMIrRC0rQ16XxVJo5UpsuWx53e8OzUvqGvrNR17JM9C4rEw
	o0QZX17jLNmrC/Jt/aE6hMwDrQLseTjFT9I7mR/CxqNBjLBC1tbT7vU/38VyO7YFLrgMbd4kvR+Os
	vPPqTQ2w==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56852)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vDJaV-000000001a2-0LdX;
	Mon, 27 Oct 2025 09:32:27 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vDJaT-000000005TA-0D3p;
	Mon, 27 Oct 2025 09:32:25 +0000
Date: Mon, 27 Oct 2025 09:32:24 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
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
Message-ID: <aP88KO8uVrEQlmMm@shell.armlinux.org.uk>
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
 <e87ff7f2-d16f-41f2-b781-b175cfb84b21@lunn.ch>
 <20251027072749.GA7811@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251027072749.GA7811@pendragon.ideasonboard.com>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Mon, Oct 27, 2025 at 09:27:49AM +0200, Laurent Pinchart wrote:
> I've tried to diagnose the issue by adding interrupt counters to
> dwmac4_irq_status(), counting interrupts for each bit of GMAC_INT_STATUS
> (0x00b0). Bit RGSMIIIS (0) is the only one that seems linked to the
> interrupts storm, increasing at around 10k per second. However, the
> corresponding bit in GMAC_INT_EN (0x00b4) is *not* set.

This is a change in the PCS series rather than the EEE series. It would
be good to narrow down whehn this problem appeared for you.

The RGSMIIIS bit set without RGSMIIIM (0x00b4 bit 0) shouldn't result
in an interrupt storm since the status will be masked. That doens't
mean that RGSMIIIS won't be set. So, at this point I'm not worried
about that.

Can you print the intr_status and intr_values in dwmac4_irq_status(),
maybe something like this:

	static int ctr = 0;

	if (ctr++ >= 9996) {
		printk("stmmac: INTS=%08x INTE=%08x\n", intr_status,
			intr_enable);

		if (ctr >= 10000)
			ctr = 0;
	}

        /* Discard disabled bits */
        intr_status &= intr_enable;

which should avoid too much noise during "normal" operation. It'll
print six consecutive interrupts every 10000.

> I ould suspect that the LPI RX exit interrupt is the one that fires
> constantly given its name, but I'm not sure how to test that.

You can check this because the LPI interrupts have statistic counter
associated with them. ethtool -S should give these, look for
lpi_mode_n.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!


Return-Path: <devicetree+bounces-231868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A863C11F2E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 00:15:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C052188979D
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD6D2DE6F9;
	Mon, 27 Oct 2025 23:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="QMAQtSzh"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD5E26CE3A
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761606932; cv=none; b=L5aX7o2W0p5cU/Q20RjIhfS/+gpfPOjqbj1ezbLfjQkM4KeZbKKI0O7xtEmZ0FpJsrMtK6H8Au6wwFKrat11BkriRIDDpPB63otl2r9q+Sdf5dlVugG/IrzXoCoK+JmV2Dt3v02Yn/THUf98bSZm3maHMofwCda3BNfTBA5uuAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761606932; c=relaxed/simple;
	bh=nt74lwe+3Mv9bENcEg2mAYvzZjiiGcAI05M14szMS90=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EfRGVsnKkY3QEdk6ex4Fla3S/xX/KMjK6icOrpx7U4irn0F+DXklyJ8U1kFlP738wLf7eX4dzhMRpQdWM4Pcx/8wawUqgJt9OzpMvs/Yv7mo69HYjk32FKTYmIx0T7qqBBctafMJcvQpIEzuNVdkjyGtLLjrf2zco6sBmD9S/qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=QMAQtSzh; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (85-76-17-108-nat.elisa-mobile.fi [85.76.17.108])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id B3E17AB4;
	Tue, 28 Oct 2025 00:13:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761606821;
	bh=nt74lwe+3Mv9bENcEg2mAYvzZjiiGcAI05M14szMS90=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QMAQtSzhJqi1GityQRMFbCuLdSPNOIqwnMahLMnM+q2zx4fDiQMCBGCm3WRtIP6qy
	 Qx5Wx0gJ7YaOfR6yMiwePVwCBLdX19lg9MQ172RcfDF97QsC1IV8R062Nbsl0PgsFi
	 kJ0mMfmusAmdQlbL4YRk6jmdaHdimuZP7E/NhuI4=
Date: Tue, 28 Oct 2025 01:15:14 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
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
Message-ID: <20251027231514.GB24987@pendragon.ideasonboard.com>
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
 <e87ff7f2-d16f-41f2-b781-b175cfb84b21@lunn.ch>
 <20251027072749.GA7811@pendragon.ideasonboard.com>
 <aP9V-zosjg7rY5vZ@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aP9V-zosjg7rY5vZ@shell.armlinux.org.uk>

On Mon, Oct 27, 2025 at 11:22:35AM +0000, Russell King (Oracle) wrote:
> On Mon, Oct 27, 2025 at 09:27:49AM +0200, Laurent Pinchart wrote:
> > I've tried to diagnose the issue by adding interrupt counters to
> > dwmac4_irq_status(), counting interrupts for each bit of GMAC_INT_STATUS
> > (0x00b0). Bit RGSMIIIS (0) is the only one that seems linked to the
> > interrupts storm, increasing at around 10k per second. However, the
> > corresponding bit in GMAC_INT_EN (0x00b4) is *not* set.
> 
> I'll add to my comments earlier, because it may help you work out
> what's going on.
> 
> RGSMIIS will be set when the LNKSTS bit (bit 19) of 0xf8 changes
> state. RGSMIIS is only cleared by reading this register. So, something
> else to test would be to do a dummy read of this register and see
> whether the interrupt storm still has the RGSMIIS bit set.

It does. I then get

[   22.880935] stmmac: INTS=00000000 INTE=00001030

with the same interrupt storm. This is getting weirder and weirder.

-- 
Regards,

Laurent Pinchart


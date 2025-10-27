Return-Path: <devicetree+bounces-231381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EC5C0CCBA
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:58:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8967F4E72EF
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF7442F39CE;
	Mon, 27 Oct 2025 09:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="PDLKMdYt"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DF12F12DA
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761558935; cv=none; b=F6MSgAh1FD28zwMS/HTbVtDKFEqqRJRWTcQx/CjzWIIzoeK5JZHFW1JFBoj3+lOBjJ9XIvLuxmmzzbv/W2lI1oNgDJIsSoA+IK4Lbmx0vcIDL3hisnXyOOa7EnTvxEbiSvYBlicTkk3W49GEwLeBmAITCRUF5QTLJCLvRmdOhNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761558935; c=relaxed/simple;
	bh=8RzIiPz9xOCm407auoA7e2dNUBBDbF25UtoP0pWX+Dk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=csQCn/W3BF2K1lkCRSvBdwwYDScKpUbdpTtS6Sx1UmLPrzGI1ExPk9Ki5zb/o1OL8Uzcu+4ETd6t0TJlN6KhgOB1q/+nc8xUJ7GlbMyrMZ7rcQFzpNCUaYO4+7681sKQbvkIV7L8LeNpDsxfFnZFtbOqxs6ITXugJRLPLfUi6+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=PDLKMdYt; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (unknown [193.209.96.36])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 57AE31661;
	Mon, 27 Oct 2025 10:53:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761558824;
	bh=8RzIiPz9xOCm407auoA7e2dNUBBDbF25UtoP0pWX+Dk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PDLKMdYt1C/3C4fcJR8kOHsTcT3x9RdIFNrLPubQoDvb5jspOjsaXCyXDMkl9oYiF
	 Apy10haJGbrecedgzqXqZH2QCk+6E1oerm4n4vHSxUBkPnj0xobXjGOD5MOFa5NQVt
	 pQnS6YsUD9wfpyJWtR4/O4dQE9mODOUWaJwQSoQ4=
Date: Mon, 27 Oct 2025 11:55:18 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
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
	Shawn Guo <shawnguo@kernel.org>,
	Emanuele Ghidoli <ghidoliemanuele@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-model-a: Disable EEE for 1000T
Message-ID: <20251027095518.GD1544@pendragon.ideasonboard.com>
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
 <aP82VEjNDgrNAZzy@shell.armlinux.org.uk>
 <20251027093346.GB1544@pendragon.ideasonboard.com>
 <aP8_UjqvCHbrP3lH@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aP8_UjqvCHbrP3lH@shell.armlinux.org.uk>

On Mon, Oct 27, 2025 at 09:45:54AM +0000, Russell King (Oracle) wrote:
> On Mon, Oct 27, 2025 at 11:33:46AM +0200, Laurent Pinchart wrote:
> > On Mon, Oct 27, 2025 at 09:07:32AM +0000, Russell King (Oracle) wrote:
> > > On Sun, Oct 26, 2025 at 02:29:04PM +0200, Laurent Pinchart wrote:
> > > > Energy Efficient Ethernet (EEE) is broken at least for 1000T on the EQOS
> > > > (DWMAC) interface. When connected to an EEE-enabled peer, the ethernet
> > > > devices produces an interrupts storm. Disable EEE support to fix it.
> > > 
> > > As this is the second problem that has been reported recently, please
> > > bisect the conversion of stmmac to phylink managed EEE support and see
> > > whether there is anything in that which is causing this.
> > 
> > Emanuele Ghidoli has bisected this to commit 2c81f3357136 ("net: stmmac:
> > convert to phylink PCS support"), as reported in [1]. I can test that
> > commit and the commit just before tonight.
> > 
> > [1] https://lore.kernel.org/all/341f56de-9dde-4c44-9542-b523e1917dcb@gmail.com/
> 
> As you will notice in that thread, I have responded to it last week, so
> I am well aware of it. I am also well aware of the claims Emanuele made
> in his commit description are demonstrably false.
> 
> That's not to say the commit isn't a problem, but the explanation of
> why it's a problem doesn't make sense right now, and thus what needs to
> be done to fix it is unknown.
> 
> I don't think going around disabling EEE on individual platforms is the
> right approach.

I fully agree with you, seeing how eee-broken-1000t spread on many
i.MX8MP DT sources raised a red cargo-cult flag. I didn't have the
knowledge to properly diagnose and fix this myself, hence this patch,
hoping someone more knowledgeable than me could help. Based on the
replies received so far, it seems I was right to be hopeful :-)

I'll perform more tests tonight, printing the interrupt status values as
you requested in a separate e-mail.

-- 
Regards,

Laurent Pinchart


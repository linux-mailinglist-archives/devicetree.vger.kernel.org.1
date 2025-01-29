Return-Path: <devicetree+bounces-141668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 841FCA21DE2
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 14:31:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2EBE1882F0E
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 13:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C1910E9;
	Wed, 29 Jan 2025 13:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="eoOGrk6B"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8A1EC0
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 13:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738157465; cv=none; b=phXPfk9FGmoKSiiVw1XRtCxem3sqgkYqQyKAsGB5XWraFrHrPUJvtjFME3+wxnRGyNLHPg1+J9iMRjYD2abztWf4sCAYwsyjNSzkidJUQ7XiHKft4SFBEWVstWGrilTpSPVIpFYYptk2YNEtswQHKae7pesZ2wNIY89sjlVBYhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738157465; c=relaxed/simple;
	bh=Gp3ypGKlTH2JgaXeCKN2qGaCMVaU1gGvRNSQvRAhEnA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mGwXyHarQ2uPZ3eQ9+ejCPuLFBYIjdA44gTaLBsx7XlJX24OyyRCsOlAa5MiKKQQidqtJ+Lb1uPIWG9y/3onxW5ShL/DJr8u+QavnXODh9+fZaBSeKvRDRPMKpmzqDxNSbKQt4Ivy/9ojrdFMgF0VZO1Ov3eUxUEXMD4WxC7QtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=eoOGrk6B; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=Z8RbXTh1moYBuJYDFqQJgcBiuoaXsIkIu6hEWa4JAps=; b=eo
	OGrk6Bqgm9UrPGuFXMR27VYtK1S+Dhj4ljLHq/COZ8tpF8ZKBX+/j1FNN4q1/ZcS+W8MIyFZMGMJR
	ktPruYLtgnYdekrO1eEjIifLb7OTqBnJgx2aS/QMbUhMTBPeGJP/s+jXapNW9xCCiltak8GxumwTB
	M7Xhmx348XZ56gA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1td89k-0098Yd-AT; Wed, 29 Jan 2025 14:31:00 +0100
Date: Wed, 29 Jan 2025 14:31:00 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
Message-ID: <768a2957-4e3e-4b19-a350-3ba9a301d21d@lunn.ch>
References: <20250128172917.4565-2-u.kleine-koenig@baylibre.com>
 <f9aad21c-64f9-413b-a3ea-18825515944c@lunn.ch>
 <tjkdekrcxoot3inwcboqc76iljbkjgjaamo55u2k2glr7aubjh@y3465k547zwz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <tjkdekrcxoot3inwcboqc76iljbkjgjaamo55u2k2glr7aubjh@y3465k547zwz>

On Wed, Jan 29, 2025 at 09:35:21AM +0100, Uwe Kleine-König wrote:
> Hello Andrew,
> 
> On Tue, Jan 28, 2025 at 06:44:26PM +0100, Andrew Lunn wrote:
> > > +&gmac1 {
> > > +	/* Uses a KSZ9031RNX phy */
> > > +	status = "okay";
> > > +	phy-mode = "rgmii";
> > > +
> > > +	rxd0-skew-ps = <420>;
> > > +	rxd1-skew-ps = <420>;
> > > +	rxd2-skew-ps = <420>;
> > > +	rxd3-skew-ps = <420>;
> > > +	txen-skew-ps = <0>;
> > > +	txc-skew-ps = <1860>;
> > > +	rxdv-skew-ps = <420>;
> > > +	rxc-skew-ps = <1680>;
> > > +};
> > 
> > The convectional meaning of phy-mode 'rgmii' is that the PCB provides
> > the 2ns delay. Here you are abusing the
> > 
> > > +	txc-skew-ps = <1860>;
> > > +	rxc-skew-ps = <1680>;
> > 
> > To add these delays.
> 
> Ah, at some point I already knew that. Thanks for repeating that hint.

No problem a with the hint. This is a nice easy case. Some vendors
have made a big mess with RGMII delays, hiding it in the bootloader,
and giving customers bad advice. That is much harder to fix.

> (Back then it was for
> arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts.)
> 
> > Please test without these two lines, and change phy-mode to
> > 'rgmii-id'. 1680 is rather low, so it might not work. Look for CRC
> > errors for received packets.
> 
> I did an apt upgrade involving > 100 MB downloads with rgmii-id and
> afterwards I had:
> 
> 	# ip -stats link show dev eth0
> 	2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAU
> 	LT group default qlen 1000
> 	    link/ether ee:5f:09:22:72:da brd ff:ff:ff:ff:ff:ff
> 	    RX:  bytes packets errors dropped  missed   mcast
> 	     158336739  113000      0       0       0       0
> 	    TX:  bytes packets errors dropped carrier collsns
> 		482481    5094      0       0       0       0
> 
> so that seems to be fine, right?

Yes, this looks good.

Thanks
	Andrew


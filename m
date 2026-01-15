Return-Path: <devicetree+bounces-255521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A01DD23D10
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A83F300093A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF29B2D739C;
	Thu, 15 Jan 2026 10:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qd3Xtne0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB8530E83D
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768471622; cv=none; b=qNfgz4lnq93swqZftvBcxjQecALyKlZ+WPj0OPdznFjS/KwKmj0BS0IankRwcMIQPOZs8SkovSOyy0PD00tKDIYJ9qdBZ07SJkxaZGOEHDbZaTHRr7nGmKetfyMGFgb/x62TmB7YEAIxHHXD1r92TXnmgzu5sWzk8ovdxR8dmks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768471622; c=relaxed/simple;
	bh=C9salBa3JJaRTcsqyEMlKRwSirzSEEC+xpkxnQnjuWQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vDheMT+2C1s/BckEv6hfOT9wvyaWc+BHn0tHHx74jC/6gVY4W/nwPFllI0zKI/XMRrSC7MQRob7olD428O9NWlSBgtkAvgPc1eAti9vQAm3bepSKzKrN8GCYWliLJY0V/IbBfF+4hs9EiQsQSvNGEnSHMo+FGlANyMBBae3aT34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qd3Xtne0; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47d6ac8db1eso424815e9.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768471619; x=1769076419; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=a5soI2TEmGJb1+jGjzuFngO4vwUM1/XF+/gPL8edafE=;
        b=Qd3Xtne0fBE/drxsSPU8ArQOGI5u0r+zdB+5z4z0cYLE7VeUUyMvqNMSJIve6+/oca
         UCrQfk63vXh6rDy/cQtjirrxb88oE8bVuCgyIijISfAmFzfF+6p7uYkQhBPEstCD1vJF
         OMHGaSjALLXEs+xUf8aj4fF8pK9z748AqHzX6XVubjq27+wGnvZrcbO4OyUdiLbgyxpG
         NqqmIrUY76z8OtvDXeXf1OTu80gfDZGpN2DgjM7UzyyvFJb/O4hifld3F0OQ97ty+kwH
         UEMdeJmQjENlGYGmg6BmnqyJrYTm+9PDjZxC1jAQQP7yPSHHZQHtcMQhWaKhEn8ycszt
         /Vog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768471620; x=1769076420;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a5soI2TEmGJb1+jGjzuFngO4vwUM1/XF+/gPL8edafE=;
        b=d7CzMKzPd9l0zGfgHg8hW8smN04/ZzYk+o/pXr5qv5Pd6Lvic+qq4rFPdyfy3cmTxT
         GI/ngD8bWXR6jfX+/urQeZHMyWddWRizfBcntF8e9XbKSFVUIuB0sGyLPvKOlJ6Uaqvi
         k26oxlg2zDXhbnPr0f5NbbUlaBlSJC6eObz0bCg9Et71cnGRmAKRk71Nw0F2PE/PugHI
         93IO7kFbnclIQTfmrZgfrA1aft2HwmwxifTUGSDxgudeM7nRNULlmtRtkakyaIlvJAHM
         5gBOfRvysXlH2xe06VPoGEMzCI/Tnkp7mO9xlD0wp+ax/6dRnGhMKkV48nBAgum1zanw
         fNuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXp3m2Ksn+Uhg0oHkzShvH49yq8MYycMPkJPQ2TErz8EctcxsdlWmnG+YJJZRGTd95tUQbVcOEVkrIb@vger.kernel.org
X-Gm-Message-State: AOJu0YzJHLkXq4NTvPnV+gBXuHIo8jApIQYtP0LudzGD+yqs7PWmJyiN
	LvXXYrVvDg99exCdevSbiqbtfK/+MsikmvHLP69DJegRB7+l2ncjYzfu
X-Gm-Gg: AY/fxX4dcahuC2WUqizSa1A4bLAhuv5LsdO5qBuI0/gQabuZnduSSC7socSM45xvZJY
	Uw3vBeeb69BWnFTcdls+hTkdPMPDOfaSX6Y1YYxLoxJzs/V0IJASwu3UiuCDsKs/ZsqdUqhyOOt
	XnR+96IXKhWYpyJhUQotJJzCQkV4UGk5MNpSy4YzHEH/Wy8cRIYPwazpLELxExB36uLgDVlcGjF
	Gl5QSHnsOcgBsvkRK0yGMS8VBRUkTnKn6dCaSdybC6b+aww7hUH3rOTbpsWXQZAOIVgzOuR2xld
	fDkxh0vpkn13tqrbjc75jDX9+FWNZqcVqOwF3er1cqqSEVwgErDQA6ok0WPHfIlnx4tW/SxRboW
	MBR+DhTLIJLCCkKEI3uIujKHxP/oL6At3DI6olxDUXvfmzgXQmd4HhOLiBuyeAIL+jfnx0x95HK
	IAwdZ/hriZaKwS
X-Received: by 2002:a05:600c:8217:b0:47e:e20e:bbc0 with SMTP id 5b1f17b1804b1-47ee32e122amr39245435e9.2.1768471619400;
        Thu, 15 Jan 2026 02:06:59 -0800 (PST)
Received: from skbuf ([2a02:2f04:d703:5400:d5b0:b41:b5b3:8c4d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af6e1b7bsm4945416f8f.34.2026.01.15.02.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 02:06:58 -0800 (PST)
Date: Thu, 15 Jan 2026 12:06:55 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Chen Minqiang <ptpt52@gmail.com>,
	Xinfa Deng <xinfa.deng@gl-inet.com>
Subject: Re: [PATCH net-next v2 3/6] net: dsa: lantiq: allow arbitrary MII
 registers
Message-ID: <20260115100655.da2w3zsxmi3ze5rz@skbuf>
References: <cover.1768438019.git.daniel@makrotopia.org>
 <572c7d91f8eb97bd72584018f9b5941dbfb2e46e.1768438019.git.daniel@makrotopia.org>
 <aWhFohyjEnaIeHSS@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aWhFohyjEnaIeHSS@makrotopia.org>

On Thu, Jan 15, 2026 at 01:40:50AM +0000, Daniel Golle wrote:
> On Thu, Jan 15, 2026 at 12:57:07AM +0000, Daniel Golle wrote:
> > The Lantiq GSWIP and MaxLinear GSW1xx drivers are currently relying on a
> > hard-coded mapping of MII ports to their respective MII_CFG and MII_PCDU
> > registers and only allow applying an offset to the port index.
> > 
> > While this is sufficient for the currently supported hardware, the very
> > similar Intel GSW150 (aka. Lantiq PEB7084) cannot be described using
> > this arrangement.
> > 
> > Introduce two arrays to specify the MII_CFG and MII_PCDU registers for
> > each port, replacing the current bitmap used to safeguard MII ports as
> > well as the port index offset.
> > 
> > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> > ---
> > v2:
> >  * introduce GSWIP_MAX_PORTS macro
> > 
> >  drivers/net/dsa/lantiq/lantiq_gswip.c        | 30 ++++++++++++++++----
> >  drivers/net/dsa/lantiq/lantiq_gswip.h        |  6 ++--
> >  drivers/net/dsa/lantiq/lantiq_gswip_common.c | 27 +++---------------
> >  drivers/net/dsa/lantiq/mxl-gsw1xx.c          | 30 ++++++++++++++++----
> >  4 files changed, 56 insertions(+), 37 deletions(-)
> > 
> > diff --git a/drivers/net/dsa/lantiq/lantiq_gswip.c b/drivers/net/dsa/lantiq/lantiq_gswip.c
> > index b094001a7c805..4a1be6a1df6fe 100644
> > --- a/drivers/net/dsa/lantiq/lantiq_gswip.c
> > +++ b/drivers/net/dsa/lantiq/lantiq_gswip.c
> > @@ -463,10 +463,20 @@ static void gswip_shutdown(struct platform_device *pdev)
> >  }
> >  
> >  static const struct gswip_hw_info gswip_xrx200 = {
> > -	.max_ports = 7,
> > +	.max_ports = GSWIP_MAX_PORTS,
> >  	.allowed_cpu_ports = BIT(6),
> > -	.mii_ports = BIT(0) | BIT(1) | BIT(5),
> > -	.mii_port_reg_offset = 0,
> > +	.mii_cfg = {
> > +		[0 ... GSWIP_MAX_PORTS - 1] = -1,
> > +		[0] = GSWIP_MII_CFGp(0),
> > +		[1] = GSWIP_MII_CFGp(1),
> > +		[5] = GSWIP_MII_CFGp(5),
> > +	},
> 
> Kernel CI trips with
> warning: initialized field overwritten [-Woverride-init]
> 
> Would it be ok to enclose the gswip_hw_info initializers with
> __diag_push();
> __diag_ignore_all("-Woverride-init",
> 		  "logic to initialize all and then override some is OK");
> 
> like it is done in drivers/net/ethernet/renesas/sh_eth.c?
> 
> Or should I rather keep the .mii_ports bitmap in addition to the array
> to indicate the indexes with valid values?

This is new syntax for me. I don't have an issue either way. It seems
netdev maintainers did already accept it for another Ethernet driver, so
I suppose you could go with __diag_ignore_all().

FWIW, when I had to handle similar things, I opted for the simpler
"spell them out one by one" approach, see sja1110_regs in
drivers/net/dsa/sja1105/sja1105_spi.c. But that shouldn't necessarily be
the only way.


Return-Path: <devicetree+bounces-258164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAGVLfdvcWkPHAAAu9opvQ
	(envelope-from <devicetree+bounces-258164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:31:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 294E45FF3A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:31:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7EAED58C1A9
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B3D2EDD6B;
	Thu, 22 Jan 2026 00:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e1SSKs8Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD17F2EB5A9
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 00:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769041891; cv=none; b=qohQZ0CM8SwAayXfFHH0irUOdV1BiefHE+kD2kyoxsyYqoIFyt8kHDNc1ARJYM9fRaU9s8NAiEuQv4lxw+vrwqx1hbJXHvXFmm0Bu//qHmZcaLqz0ssgidU7yoUTOXJQ1oBeejCkITkBl1De5eJ+21Aa2U6lMzmGYnB2o1SJOa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769041891; c=relaxed/simple;
	bh=wAtMZUK4FV7iRWMYfcVdkDkwpZkU2TSPElEoKPCQOFs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WWKQO8DhVH8VgQ/m0vWYa3elTU4VN7aa924sazuQww2DWDi0qo6ULzMRB4eylARcu5Epa/k15DyJKHkQFUe2HKZmyhVKp5uxy5BvoDEtv4EOxyOQ2o6kqG0yd/B+geFaMXKiX2twa8PR0oySbsGaPVuQrKGZIztSPINA2MqgenE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e1SSKs8Z; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-5636784883bso320592e0c.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:31:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769041888; x=1769646688; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tzXSISnrF9gPuh5VrYor9F9pE35gc9wpvxNp6irLpQw=;
        b=e1SSKs8Z7DQAvcYX+FrUpWf+F1GxsD/Vr7ScRg96dhzwA03fH+LnxBC2WKEofcLFBG
         Wr8F8R3cGbKBsgIIgHQ3++XiHneHO24ydG+VYJPQDI1lrk6a9dXI6+P5r4TpQebTcIvY
         HEr09pLm14UaazRrqMYh+NTzZShrpwuB4ZREBM3GfLz53DDEtNG6liYC+zFt24lV22vh
         GHOt3DggKT057FTek60ObXTq/vCoBvG3/DLSRyKnYdMotICmhPnaIvdA//oP/DeXfzQg
         uNWvmRHrSdCwwM4cfCgjRhhqn/DuFUEIb2XM+kqKuk7AWtm7HNiAVHTfhjg0QRxOS8Si
         3FDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769041888; x=1769646688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tzXSISnrF9gPuh5VrYor9F9pE35gc9wpvxNp6irLpQw=;
        b=G3Sz5TWa5XraLNz/HKIyPKfZvAyBq0hQcM7pD/BhenCVgUB0Fk9q5maNn2mEhvn8Vb
         ITcwKBGvsceebcmfjyr3sqOOaZOmdCLoyiwd0i/Ztjj6ArWWm+yJ0AZd6hR0LwAJfvro
         AOgojCU14nTyYpsxsW7QX9TNy9wyk9aqR+g0z0ZBAj1hugjE8KZejNnRvJwFXPMX977X
         BjNkAnSJzcyU12SDoG9ltF/qAUKouBOefaT1MaQX1LhIntPjKYAe6H7hdXVQqfXAF5lw
         4eUqoveXRSUq1xrs1wJ+h22VMHJbtHuNZIRIaFJobyqo07sEQB001Uh2aHUU2usIX7QT
         jj2A==
X-Forwarded-Encrypted: i=1; AJvYcCWA3ksfO1Rs7GqSosE+j2ncTRXDgdRYXyLiCsm6JbG7vFKpZ+nQr0oKl8N/CgvTWZofjWbUXUWcVxjK@vger.kernel.org
X-Gm-Message-State: AOJu0YyafHqJ49XVYkNV35F7aUg3CrTin44mwFjcTQsX3pfBv3e9WPrU
	tcEFuN7Y6xJN319CbMcRkFgV6pGq9/P4rIeDY/T650lhhV0ji/m0eNgznvHBcjXS
X-Gm-Gg: AZuq6aKIohpI8n0IjOakz4oCLG5ZG4gvynSTlGcRecFvDvMdl0jEwaOhP/iZATx31SQ
	oABkPE2R97Z3z5maxeuAewePqdA16LJ6suRgMSn0HbFgl4H5dsd9q1Dj1qi616Haj46n/wt001o
	yYMYzsZYwtE5MEUqEI9TK7NGN+oArbhpckGtjzsGIh+7GQbI9B81WByotas7PDxI5ICOcHutJyd
	rbHAVhyP87qS8DIRT5BT6bi4kiioOrGxwtk+cIB3BzA93lgS6B4CuMUFiet/2fxPvuefrktbhHl
	GvCWSvVkNkQ54WzaF3dL6AoLmh6PWPV6YDpeAfJVeb3jv+y5NNQxJarzzu5TskFPhgcQZdhMIMP
	9MiP5uDjiLZU1W2UujbXRGCgqCHa+YRzzLsBWy6TEi0CZKw1obpqdSCZ0+js+AAuyO1kCgWtvt4
	ZJd9Ov/t6OZw==
X-Received: by 2002:a05:7300:bc08:b0:2ae:5470:2e61 with SMTP id 5a478bee46e88-2b6b46c68e2mr15434088eec.2.1769034989298;
        Wed, 21 Jan 2026 14:36:29 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b3503a30sm25165715eec.13.2026.01.21.14.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 14:36:28 -0800 (PST)
Date: Thu, 22 Jan 2026 06:36:18 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Richard Cochran <richardcochran@gmail.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yanteng Si <siyanteng@cqsoftware.com.cn>, 
	Yao Zi <ziyao@disroot.org>, Vladimir Oltean <vladimir.oltean@nxp.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Choong Yong Liang <yong.liang.choong@linux.intel.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Shangjuan Wei <weishangjuan@eswincomputing.com>, Boon Khai Ng <boon.khai.ng@altera.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Add glue layer for Spacemit K3
 SoC
Message-ID: <aXFS7fW8kdsi_2ud@inochi.infowork>
References: <20260120043609.910302-1-inochiama@gmail.com>
 <20260120043609.910302-4-inochiama@gmail.com>
 <aW8LAFhCRWlMVemz@shell.armlinux.org.uk>
 <aW8MJpERR3TmsiKg@inochi.infowork>
 <aXDAmDEpUArE1_en@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXDAmDEpUArE1_en@shell.armlinux.org.uk>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258164-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[armlinux.org.uk,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[38];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,cqsoftware.com.cn,disroot.org,nxp.com,bp.renesas.com,linux.intel.com,bootlin.com,eswincomputing.com,altera.com,cherry.de,st.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 294E45FF3A
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 12:03:36PM +0000, Russell King (Oracle) wrote:
> On Tue, Jan 20, 2026 at 01:05:39PM +0800, Inochi Amaoto wrote:
> > > > +	mask = RGMII_RX_DLINE_STEP | RGMII_TX_DLINE_CODE | RGMII_TX_DLINE_EN |
> > > > +	       RGMII_TX_DLINE_STEP | RGMII_RX_DLINE_CODE | RGMII_RX_DLINE_EN;
> > > > +	val = FIELD_PREP(RGMII_TX_DLINE_CODE, tx_config) |
> > > > +	      FIELD_PREP(RGMII_TX_DLINE_CODE, tx_code) | RGMII_TX_DLINE_EN |
> > > > +	      FIELD_PREP(RGMII_TX_DLINE_CODE, rx_config) |
> > > > +	      FIELD_PREP(RGMII_RX_DLINE_CODE, rx_code) | RGMII_RX_DLINE_EN;
> > > 
> > > These FIELD_PREP() fields look wrong. Did you mean to use DLINE_CODE
> > > both tx_config and tx_code, and did you mean to use TX_DLINE_CODE for
> > > rx_config ?
> > > 
> > 
> > This should be RGMII_TX_DLINE_CODE. This is a copy paste error, I
> > will fix it.
> 
> Are you sure?
> 
> In that case, please change this to:
> 
> 	val = FIELD_PREP(RGMII_TX_DLINE_CODE, tx_config | tx_code |
> 					      rx_config | rx_code) |
> 	      RGMII_TX_DLINE_EN | RGMII_RX_DLINE_EN;
> 
> If that isn't what you meant, then your reply is wrong, and it seems
> you're confused, which makes me then question how reliable your
> replies are.
> 

That's wrong, I think I have reply it in a wrong way, it should be

RGMII_TX_DLINE_STEP -> tx_config
RGMII_TX_DLINE_CODE -> tx_code
RGMII_RX_DLINE_STEP -> rx_config
RGMII_RX_DLINE_CODE -> rx_code

The RGMII_[RX|TX]_DLINE_STEP register selects which step is used for
rx/tx delay. The RGMII_[RX|TX]_DLINE_CODE register provides the factor
used for calculating the delay. These register are computed in the
spacemit_dwmac_detected_delay_value(). And finally we can got a delay
with "code * step / 10 * 0.9" for both rx and tx.

Regards,
Inochi

> > > > +	plat_dat->clk_tx_i = devm_clk_get_enabled(&pdev->dev, "tx");
> > > > +	if (IS_ERR(plat_dat->clk_tx_i))
> > > > +		return dev_err_probe(&pdev->dev, PTR_ERR(plat_dat->clk_tx_i),
> > > > +				     "failed to get tx clock\n");
> > > 
> > > You set plat_dat->clk_tx_i, but you don't point
> > > plat_dat->set_clk_tx_rate at anything, which means the stmmac core
> > > does nothing with this.
> > > 
> > 
> > Yes, the vendor told me that the internal tx clock rate will be auto
> > changed when the speed rate is changed. So no software interaction
> > is needed.
> 
> Please do not assign a clock to clk_tx_i that is not the dwmac
> clk_tx_i input. clk_tx_i is a name used by the Synopsys DWMAC for a
> specific clock.
> 
> As you don't need to do anything with it other than to get and enable
> it, consider using just a local variable here.
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!


Return-Path: <devicetree+bounces-268394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNjgHvICn2mZYgQAu9opvQ
	(envelope-from <devicetree+bounces-268394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:10:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20687198869
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:10:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 920C7302BBC9
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67E093D331B;
	Wed, 25 Feb 2026 14:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qkv9HF20"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07FB3A1A54
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772028656; cv=none; b=gHuYZ/xibS3vGHUB4SCIcSy2ABo55ksg5XSijn77ywGfTYSCn6AdjJfZg/S5uZmwf7erElvzEHgpMze2UXn0wEYupFVX7ZZHDFda2zJbz3nmjfQCl52vGD+zK18F2UEvXj8Xl1TzqAJyAVbktIcw/G9dTdgSQ29LQ3yjFqcURRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772028656; c=relaxed/simple;
	bh=Wbxkai96KV++LHuFBYgeBqSwbkDv6oZ7clagX+nNyW0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IRC0WxgYUpUQ3FlOLCnYMv1wbYj06gk/afPpVd36Vsgpudx6Aub1i38pZMZQJwRzBdv6Bhd0pXmWk4d2Qv8m4PHm1v/m9wIi4FZz63qQLRkEee/SMSKx9iluOOv9ln7MnXLWz6qGCwIFrT+5ycSWn5VPI3HbQiSBgawrBuHicqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qkv9HF20; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-65a1eb5dcb7so791532a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772028653; x=1772633453; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/X7TGnbDY8JHbzvNZLr4KocFzXXLBLgEWZOADNbBVWE=;
        b=Qkv9HF20oAfx8V55bwCz3jdibQbonLP/tde5U3IiM6zdQVdGA2dNzREzrRDBMGQc+z
         JSLsA5FyHP2cYiMtxxSTIEmgZ0necl3lI8x19cADIasOLXP33ut9ZsjptSVwLlvhymGJ
         9u7Fbset2YC2Z0kxF5MwF+1NUlQbc3Q2RYevpeWO6F2X/I9Fpr3WV5yk/VPytB2M1/71
         P4rGISLZ4tC628jvVmVNxLCDl47N5Xto/bwoTy7RQMh2GSKoF39XaM3yUH2tfwbVvajg
         2AqJuKN6JG+6bc2AZtKR5IsdF2PTryiluaKs12H0rk1SBFJVJKmGXcLUk8OUbuSu1owc
         QRvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772028653; x=1772633453;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/X7TGnbDY8JHbzvNZLr4KocFzXXLBLgEWZOADNbBVWE=;
        b=HNFWKIRDVplekKiFm3avDncWK7YgreDy7giSJMqs7HH9CEua+VoqOJcx6VEJ7OUjW/
         WFnf4K9lnMch96CMYn2eq1DUkLNUMUcGdx2K9VBUGvlSJ1MZdEIN/1e3Rg40DBgg13Yf
         LvT6c40yFvhYEbcgKEgBcM3l//WaWLxxxOVXw/i7aKtM5D610pgUCkhaNHHGMDQfub1y
         jv9qhPFuRKi1HxhD3urFpyAEOGh6rUzoz+YVTEmFu3u5QEPcVbufIvWmZ6E5Lx5scJK0
         uivFS4zw4cvCUILaAc7fY1iOfLOVJuOEdm9B7NQpnEFViIkhvcmBwHXq96Q+ySDBQic0
         yF/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUexL45MgBgMRPVAmru+MWMP9q8DxjAoQCOhbvpzWcPQ8F1QYBvge5oMUBQo21pgp298A6E/Ggq49Hg@vger.kernel.org
X-Gm-Message-State: AOJu0YyFN0pF53GE1ZmRKSK0R6spiAMbkWihe3Zf7zWGkDILBxQZThsy
	kETHTpvm0aW1gohSySl62HSkzWra1fd1TPOiMYTzq21y3YP13Nbd4AqT
X-Gm-Gg: ATEYQzw+7Q25xqqiz0dV3IDuAXj52f6nkkAfDr47So37Y+cIjUAS6YO5CVv8Sm3lK5F
	nXycIW/EKf6hzjxvjRYJFUyZ8BNd/xHBE0CulFQID1nH394B2Apk9olzcwET8Qg3UQtsNM9wNGW
	Polu4xXfPt4pS3XlyNT0N9S8hy047gWV/7/Rp0/y1g/grp81wTFJ8GLbahtOBlFnGtDS9W8CtEH
	y9ZVu+C9tSSDKFDnioG8GaaCHmr7Pe3HFXr0HPJBPcaaQouf6kq/lK8tvameBbSLCd/Z3/e4etF
	1aT5ZM3/1do3lrEa7srf6g3T8V5Im0pVPifPU4xSqEFjk49dR2rDGwAQ35lV/TxH6sa1ipWqqmv
	XroABo3VD/QUCx/g0XXVeHzzIwkGonDZYRIPfwfXv0X82ogY2/27lPQioeEvnGTLU0IU7KQa/eY
	+R35L70MK7M7NN7A==
X-Received: by 2002:a05:600c:6218:b0:483:702f:4639 with SMTP id 5b1f17b1804b1-483a95eabd7mr166023945e9.2.1772022593550;
        Wed, 25 Feb 2026 04:29:53 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:6e08:ea2c:b2bc:dea])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970bf9feasm33655969f8f.6.2026.02.25.04.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 04:29:52 -0800 (PST)
Date: Wed, 25 Feb 2026 14:29:49 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>
Cc: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	=?utf-8?Q?Gr=C3=A9gory?= Clement <gregory.clement@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org,
	=?utf-8?Q?Beno=C3=AEt?= Monin <benoit.monin@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v6 3/8] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Message-ID: <20260225122949.pt55t3eefr5nawmu@skbuf>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-3-cdd840588188@bootlin.com>
 <20260210193516.temrg46yozxma7xb@skbuf>
 <DGND4VXM9X0N.2CP1VBD8E128M@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DGND4VXM9X0N.2CP1VBD8E128M@bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268394-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 20687198869
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 06:20:21PM +0100, Théo Lebrun wrote:
> > Could you please add a macro or comment hinting at the origin of the
> > magic number 5 here? You could also place these 3 lines in a common
> > helper, also called from eq5_phy_exit(), to avoid minor code
> > duplication.
> 
> ACK, something named `eq5_phy_reinit()`.
> 
> I don't have precise explanation for the 5µs value; I only know it is
> time to let the PHY settle before further register config writes.
> Is this enough?
> 
>    udelay(5); /* settling time */

If there's a single occurrence and there's a comment, it's fine.

> >> +	      EQ5_GP_SYS_SWRST_DIS | EQ5_GP_SYS_M_CLKE |
> >> +	      FIELD_PREP(EQ5_GP_RGMII_DRV, 0x9);
> >
> > Quick sanity check on your proposal to use #phy-cells = <1>. This is not
> > a request to change anything.
> >
> > What if you need to customize the RGMII drive strength (or some other
> > setting, maybe SGMII polarity if that is available) per lane, for a
> > particular board? How would you do that if each PHY does not have its
> > own OF node?
> 
> I have no knowledge of what that 0x9 stands for, I didn't see the point
> exposing it to devicetree. We could plan for the future and add a cell
> or create subnodes, but here I kept it simple stupid. Is it OK?

If you don't know that you need to customize anything, it's fine the way
it is.

> >> +	writel(reg, inst->gp);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static int eq5_phy_exit(struct phy *phy)
> >> +{
> >> +	struct eq5_phy_inst *inst = phy_get_drvdata(phy);
> >> +	struct eq5_phy_private *priv = inst->priv;
> >> +	struct device *dev = priv->dev;
> >> +
> >> +	dev_dbg(dev, "phy_exit(inst=%td)\n", inst - priv->phys);
> >> +
> >> +	writel(0, inst->gp);
> >> +	writel(0, inst->sgmii);
> >> +	udelay(5);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >> +static int eq5_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> >> +{
> >> +	struct eq5_phy_inst *inst = phy_get_drvdata(phy);
> >> +	struct eq5_phy_private *priv = inst->priv;
> >> +	struct device *dev = priv->dev;
> >> +
> >> +	dev_dbg(dev, "phy_set_mode(inst=%td, mode=%d, submode=%d)\n",
> >> +		inst - priv->phys, mode, submode);
> >> +
> >> +	if (mode != PHY_MODE_ETHERNET)
> >> +		return -EOPNOTSUPP;
> >> +
> >> +	if (!phy_interface_mode_is_rgmii(submode) &&
> >> +	    submode != PHY_INTERFACE_MODE_SGMII)
> >> +		return -EOPNOTSUPP;
> >
> > Both PHYs are equal in capabilities, and support both RGMII and SGMII,
> > correct? I see the driver is implemented as if they were, but it doesn't
> > hurt to ask.
> 
> Datasheet indicates 0 can do SGMII/RGMII and 1 can do only RGMII.
> Did you imply that the driver code should reject SGMII on PHY 1
> if it ever gets asked for?

I didn't imply anything, as I didn't know the facts. But now that I do,
yes, I'm explicitly requesting you to reject the submodes that PHY 1
doesn't support.

I also notice that you haven't implemented support for phy_validate().
Please do so, even if your PHY consumer does not call it (it should, to
detect which modes and submodes are supported).

> >> +
> >> +	inst->phy_interface = submode;
> >
> > Short story: don't rely on the phy_set_mode_ext() -> phy_power_on() order.
> > Implement the driver so that it works the other way around too.
> >
> > Long story:
> > https://lore.kernel.org/netdev/aXzFH09AeIRawCwU@shell.armlinux.org.uk/
> 
> I wouldn't mind, but what should phy_power_on() do if no submode has
> been provided through phy_set_mode_ext() yet? Guess one? Fail?

Assume a default initial submode, and power on using the rules of that
submode. In your case you don't even have to assume, you can read
EQ5_GP_SGMII_MODE to figure out what the submode is at probe time.

> Also our PHY will need to be reset to change its mode if we do
> power_on() followed by set_mode(), which in practice is never something
> we want. Maybe there is a flag to indicate that we require a submode to
> power on?

Such flag doesn't exist, nor do I think it is desirable. It would
unnecessarily complicate consumer drivers, which would have to support
two code paths if they were to follow the "generic" PHY API model.

Feel free to reset the PHY if requested to change the submode while it
is powered on. For example, lynx_28g_set_mode() does that.


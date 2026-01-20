Return-Path: <devicetree+bounces-257182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0BBD3BEA0
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 06:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 731A54EA939
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A26B3612C4;
	Tue, 20 Jan 2026 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ar9cdeXJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0173612C0
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 05:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768885553; cv=none; b=ey2OXHFCgo7E9h7pvXyUYBO0cA0G64q32eOy+9FvOQ0ppnXXv+VDiYYadvwgmxN9j74WjZ0EKvByHmyxPOIqjbJJFuLrVDtPm3lYAtJQpPYcs9+I1raYsypBapNr+ZgHzQHxooOWrLMoSFgHdEZ2Mt35q0RKsevppulleGkyfc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768885553; c=relaxed/simple;
	bh=PC4UrdjLqaW0iLhVA9Sz3l4QXzyP/7m+HKjSOXpuvYc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rJTmmZCE8jJEMyh2lbvMlaSIwZE06Iq2yaZUGLhbWnbp8VPudVGd00UN/Uuvb/9EpUJ49n5SvfbqhNUQwucHf4dkTyHmNaHnPeh7Utx1lK3imHeuzIt0z8EQUKq8G4e+9tXx3NdQ9UTmvyW08afSVmTy49e370VOd6ErHiz7Aqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ar9cdeXJ; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-1233b172f02so6114997c88.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 21:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768885549; x=1769490349; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gFedj4f11o/3T9vWUp8OttHw6rjgwlEi4dqKoM80zmU=;
        b=Ar9cdeXJXB4htFKCh+kHdDLQZF8B6yRc05KRIA9ESLIVLV35SjF7NJ0UHmPPRMnH5e
         1Pn7j3eUZpb4rqg84OE4f1H6giGUsn6NH/88a16jseZ/NB5hZyRyA3CxPowQ+TQM7DcB
         PIGg2yDAYfgv5spq5hvHiORzuEjG4TnoBovhQV07lbrOCmam81fTSGgNeXPFZwpfqGcn
         N3MCh6bFf7zdVD1uU0KLVQ8vIpTHCoxbaC4A3yOOkcbi2pHHmKvxjWPJ4gQI5NETGNsk
         e5QGzomxi/a+BI1vvCaNQfpo0NosxIsRLo9kvg2BBhlmZRZqd4lpKlI/hax+MnSfmLae
         f+gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768885549; x=1769490349;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gFedj4f11o/3T9vWUp8OttHw6rjgwlEi4dqKoM80zmU=;
        b=Gnx7EyRU5k+D38hadNrcAmVczIUQIh9o5+DV8pHAuSS7yHW4DX4/7pmTQexbVBwO9g
         PM/Zn4jk5cZe5FwVW1EXkUB10nEDlWD/7JTFeMHBJmPvDWtCwrhE6jBFmlFuZU1T3iID
         8LELoxexiCUi8dv+ryCDy+hCaKz84GGP0Vv+jfb/jmh3+Y4hx95a6V3O2JdKyHCmI3NZ
         CVrzw+uNxjof/PVF39HwqLXqCx369AdcugUY2++iGKlKZSPGJRIZuxIOrYWw+OXYLnID
         fszm1ZiGi0Opr1QVsllbho4P0aWQmmyx32SIaURwjrn0u32ge7g1YzF1Afnmp8JbN3Qz
         o8YA==
X-Forwarded-Encrypted: i=1; AJvYcCXuMK1YFWF8RWZNsvgi36K7L7HdPFO2EAX/eK/K56Zn7oNTHzzn1Iv8vIwSUP9dwXtfBGFlRuI0iC/U@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe+XD2bils7JwBeIWLmbtR1ssuzZJClh0J7C1ef59So7ihLNdR
	kGzefBJyNZicmOyQmxndtkar43yW3cXUJ7U5CwXGN+1pgXKq8VEJJZU5
X-Gm-Gg: AY/fxX4pb+1B4TauGDOLgN+ENA8z/BxU6h0tNYls5hYjCvITbp8QwmcKJO85wpyv6uk
	wadnkXUcdfpGjn/ozglmrGyzHXtgd8irO4GBBGXkPtn890X3M71MZLCiJEjamFNriB8+q/mwm4W
	B8KpFIlmxdEEBlzD+I+cV7+ip8fc3t7fcBCTN6Lxls6zHjRtj2bM8BQrz20BNGuRsNv5Y06ZXLy
	LF9n35xRdBY4d3qROC+Vf7AS687HpowrBAltDth2m3veJ5W1EapFQj4fZ1nv+IfyhRXX6oJMTZk
	2aqs25313gXqdU3Ry4l4gY0tWuGX72z5Wg4byJ1wCg3irpM0UEcExlhSSVo83MXqSXDbsJo330R
	IwPW+wkLqDcwN5FB8h3C38VU0FbP60SeajdA9zMMxqZF5udGT5qki4jkU4NAjd4a8dIeqlxAjm1
	wDZzIaYl8+5J+K1qApaNah
X-Received: by 2002:a05:7022:672a:b0:119:e56b:98bf with SMTP id a92af1059eb24-1246aac3151mr600082c88.38.1768885549389;
        Mon, 19 Jan 2026 21:05:49 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10736sm19178432c88.14.2026.01.19.21.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 21:05:48 -0800 (PST)
Date: Tue, 20 Jan 2026 13:05:39 +0800
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
Message-ID: <aW8MJpERR3TmsiKg@inochi.infowork>
References: <20260120043609.910302-1-inochiama@gmail.com>
 <20260120043609.910302-4-inochiama@gmail.com>
 <aW8LAFhCRWlMVemz@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aW8LAFhCRWlMVemz@shell.armlinux.org.uk>

On Tue, Jan 20, 2026 at 04:56:32AM +0000, Russell King (Oracle) wrote:
> On Tue, Jan 20, 2026 at 12:36:08PM +0800, Inochi Amaoto wrote:
> > Adds Spacemit dwmac driver support on the Spacemit K3 SoC.
> 
> Some more information would be useful. E.g. describing why you need to
> fix the RGMII mode.
> 

OK. I will add this.

> > +/* ctrl register bits */
> > +#define PHY_INTF_RGMII			BIT(3)
> > +#define PHY_INTF_MII			BIT(4)
> > +
> > +#define WAKE_IRQ_EN			BIT(9)
> > +#define PHY_IRQ_EN			BIT(12)
> > +
> > +/* dline register bits */
> > +#define RGMII_RX_DLINE_EN		BIT(0)
> > +#define RGMII_RX_DLINE_STEP		GENMASK(5, 4)
> > +#define RGMII_RX_DLINE_CODE		GENMASK(15, 8)
> > +#define RGMII_TX_DLINE_EN		BIT(16)
> > +#define RGMII_TX_DLINE_STEP		GENMASK(21, 20)
> > +#define RGMII_TX_DLINE_CODE		GENMASK(31, 24)
> > +
> > +#define MAX_DLINE_DELAY_CODE		0xff
> > +
> > +struct spacemit_dwmac {
> > +	struct device *dev;
> > +	struct clk *tx;
> > +};
> 
> This structure seems unused.
> 

Yeah, I forgot this, will remove in the next version.

> > +
> > +/* Note: the delay step value is at 0.1ps */
> > +static const unsigned int k3_delay_step_10x[4] = {
> > +	367, 493, 559, 685
> > +};
> > +
> > +static int spacemit_dwmac_set_delay(struct regmap *apmu,
> > +				    unsigned int dline_offset,
> > +				    unsigned int tx_code, unsigned int tx_config,
> > +				    unsigned int rx_code, unsigned int rx_config)
> > +{
> > +	unsigned int mask, val;
> > +
> > +	mask = RGMII_RX_DLINE_STEP | RGMII_TX_DLINE_CODE | RGMII_TX_DLINE_EN |
> > +	       RGMII_TX_DLINE_STEP | RGMII_RX_DLINE_CODE | RGMII_RX_DLINE_EN;
> > +	val = FIELD_PREP(RGMII_TX_DLINE_CODE, tx_config) |
> > +	      FIELD_PREP(RGMII_TX_DLINE_CODE, tx_code) | RGMII_TX_DLINE_EN |
> > +	      FIELD_PREP(RGMII_TX_DLINE_CODE, rx_config) |
> > +	      FIELD_PREP(RGMII_RX_DLINE_CODE, rx_code) | RGMII_RX_DLINE_EN;
> 
> These FIELD_PREP() fields look wrong. Did you mean to use DLINE_CODE
> both tx_config and tx_code, and did you mean to use TX_DLINE_CODE for
> rx_config ?
> 

This should be RGMII_TX_DLINE_CODE. This is a copy paste error, I
will fix it.

> > +	plat_dat->clk_tx_i = devm_clk_get_enabled(&pdev->dev, "tx");
> > +	if (IS_ERR(plat_dat->clk_tx_i))
> > +		return dev_err_probe(&pdev->dev, PTR_ERR(plat_dat->clk_tx_i),
> > +				     "failed to get tx clock\n");
> 
> You set plat_dat->clk_tx_i, but you don't point
> plat_dat->set_clk_tx_rate at anything, which means the stmmac core
> does nothing with this.
> 

Yes, the vendor told me that the internal tx clock rate will be auto
changed when the speed rate is changed. So no software interaction
is needed.

> Given the last two points, has RGMII mode been tested on this
> hardware?
> 

In fact I only tested the rgmii-id, which does not change the internal
id. I will try the rgmii mode.

Regards,
Inochi


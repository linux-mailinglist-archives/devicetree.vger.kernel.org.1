Return-Path: <devicetree+bounces-258163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFkwIo9vcWkPHAAAu9opvQ
	(envelope-from <devicetree+bounces-258163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:30:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 342365FF0D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 835B53A9F7B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 00:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 198FC2D8DCF;
	Thu, 22 Jan 2026 00:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YhC44JoQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5880F2D8399
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 00:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769041801; cv=none; b=uVJ8HkS0fwVsgYZ5ZOs1g4A1uYogRvsck+zhXoju01DHv1LEUEnFgy0SNjKko1xIrFg0KkxEi8xgnI0neh+7GddpIMAxuy/jMHnDB5Lj6Jy+67wUpBKPXUMCJo3sK5Aqaq1TTGltAoJbPmRvD6riUdlCVa56WMyGEubxb/blvP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769041801; c=relaxed/simple;
	bh=lxbS6mXH2DJytQVGlFnthobG4ZmqTQXYckFy549cSX8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TE+B0Sl9C/nnbkwHJk+rt8TfaXlVYmcepu28fSQ2GcIa5DZqtKJgPPR6vxbshijQIg5tLYdv2kDHtL1fSEORa4yt0p1uYxMCnSvi7c62S4GM0VTAAo9IlXQWE+1FtoZBm2KtOrVmQEDQ7ZQiVEP5T/QOzw9GzxBVQdTnH+rut8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YhC44JoQ; arc=none smtp.client-ip=74.125.82.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2b70abe3417so889704eec.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 16:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769041798; x=1769646598; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aLRvrHf0GT+SLm7VDguQ+pvYrJH4LqQuaP1lqxnXl2s=;
        b=YhC44JoQVr0iyA0O3VykimbOCV40j71fYGcbpElOEQNPYJvM+AP206sH1GZspiKNPW
         FTtGvn28GRXJK/68tXjH/NJtQLLlQCQABt1fJN/uiCcBRxC9gA9konYRwZWP5ILjdesG
         rfP+iY6c2jC/9RzYMgbOi0NdsFlNgEdwnqlfJfu3U1GxBrzJrKB3fFSgyp3GBQcV2rT8
         hPBEMnWjIlvB36sI2dFzyvTUKQcrkiOsfv9hgUXJ69dBl0DoOGRJTwe7R50JFR7B+zpx
         ZW4COeoQmh2tdWkefPVo1Im2XgH81xZ0fFzzQZ0M20tTkL4YKCg2/AUvnzOZIDmt1y68
         LL5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769041798; x=1769646598;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aLRvrHf0GT+SLm7VDguQ+pvYrJH4LqQuaP1lqxnXl2s=;
        b=rC5PoAtAlxR3/TM2XwLK77V0AZqPOLuH/WT5/omCay/zP+rJrBHHqiPT2PkvVRFLiq
         UOYbivimfHmzCujpKcR1DLHtgn67xd0tNfKA5WIjFoXhHsozG2GJ6BPNEZNdKkpiFLu8
         2fIzmU31gfu19LeiIA2JnigDZ+PrIcW2vTZ9Hg+Tk9kXPMEI4yqmvoQZIMEXmD52CDBG
         paR2ErAAWg8UQ6X31hl9LIENWweH+z+5miMWnOOCdaxYvGftxh3Y95Bf3EJdwl/6o0C/
         VWrc5qTTU5M/zVVe9JtNJj06xOoGCCdblaNLSLgRqyGhF1K4aqlMrXm+OSaNalOU2nN+
         PGgw==
X-Forwarded-Encrypted: i=1; AJvYcCUd2UbFVlDANYoxPzkLO5bQAZ/dI7GEGwcPqCqFDDbCNSWEmxTePagcJABBCs1G0bJo4K00M7UVUhzq@vger.kernel.org
X-Gm-Message-State: AOJu0YwiMP9NjvOaSXMjP9npVVnEZpGo1dV/jqCljhEaiZJgao1B4Y+s
	OZ/HXmMmiskHclo+YFIAS2EDmw1/NtW+GMZE8rEnaLOhSc01L+2Hrz00
X-Gm-Gg: AZuq6aJ5s2qDStJNWBd6/VwMC+DOjI/0rfWYoa08TLKPvoVQVKOPSvGNQYjJiUILVaQ
	G4eb0EQWIDxlrsE4dPNxs0wJ75RwTB6y6adXfzvUR/+iItBGzABGlf418sxACB9YnpR/lNNGkYV
	ghNO3KzB8xcfrLO/1L7ZASfEJXQryWNPOfTenecrOe1d27YYiLaVqePqgVyVChjJFKioRKN5n+X
	B10CCuUr4DgvAGulfMzjeCLrInWK1k/QP39Ii6l5v5um06olxoHAgsl+R90wPsXDawpVHnUbh2r
	5BzTqVE2RdP37fmc9FbJsDIUKE8K0GPQIlauZ/KUsveSgnyzmQy4O8zIZS9Hgci6GninIqabrGL
	MvH/h3iSsghglpUMnCoQi3SMCxednODNOVtUzHx7Sezr8gF5auVuBZ/unSOk+cGs8SE6WX06wLR
	ETPPzzMVtUrCtlP3i/jEna
X-Received: by 2002:a05:7300:324b:b0:2b0:580b:856c with SMTP id 5a478bee46e88-2b6b41005a9mr13294371eec.28.1769041796817;
        Wed, 21 Jan 2026 16:29:56 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244ac6c2besm29548495c88.5.2026.01.21.16.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 16:29:56 -0800 (PST)
Date: Thu, 22 Jan 2026 08:29:46 +0800
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
	Alexandre Ghiti <alex@ghiti.fr>, Yao Zi <ziyao@disroot.org>, 
	Yanteng Si <siyanteng@cqsoftware.com.cn>, Vladimir Oltean <vladimir.oltean@nxp.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Choong Yong Liang <yong.liang.choong@linux.intel.com>, Shangjuan Wei <weishangjuan@eswincomputing.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Boon Khai Ng <boon.khai.ng@altera.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH net-next v2 3/3] net: stmmac: Add glue layer for Spacemit
 K3 SoC
Message-ID: <aXFvWzw1BlooyG7s@inochi.infowork>
References: <20260121071315.940130-1-inochiama@gmail.com>
 <20260121071315.940130-4-inochiama@gmail.com>
 <aXDBCsfaNrgfGjNK@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXDBCsfaNrgfGjNK@shell.armlinux.org.uk>
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
	TAGGED_FROM(0.00)[bounces-258163-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[armlinux.org.uk,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[39];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,disroot.org,cqsoftware.com.cn,nxp.com,bp.renesas.com,linux.intel.com,eswincomputing.com,altera.com,bootlin.com,cherry.de,st.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com];
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
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 342365FF0D
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 12:05:30PM +0000, Russell King (Oracle) wrote:
> On Wed, Jan 21, 2026 at 03:13:11PM +0800, Inochi Amaoto wrote:
> > +	mask = RGMII_RX_DLINE_STEP | RGMII_TX_DLINE_CODE | RGMII_TX_DLINE_EN |
> > +	       RGMII_TX_DLINE_STEP | RGMII_RX_DLINE_CODE | RGMII_RX_DLINE_EN;
> > +	val = FIELD_PREP(RGMII_TX_DLINE_STEP, tx_config) |
> > +	      FIELD_PREP(RGMII_TX_DLINE_CODE, tx_code) | RGMII_TX_DLINE_EN |
> > +	      FIELD_PREP(RGMII_RX_DLINE_STEP, rx_config) |
> > +	      FIELD_PREP(RGMII_RX_DLINE_CODE, rx_code) | RGMII_RX_DLINE_EN;
> 
> So your reply where you basically stated that all the RGMII.*DLINE.*
> constants here should be the same was nonsense. How can we trust your
> replies?
> 
> > +static int spacemit_dwmac_fix_delay(struct plat_stmmacenet_data *plat_dat,
> > +				    struct regmap *apmu,
> > +				    unsigned int dline_offset,
> > +				    unsigned int tx_delay, unsigned int rx_delay)
> > +{
> > +	bool mac_rxid = rx_delay != 0;
> > +	bool mac_txid = tx_delay != 0;
> > +	unsigned int rx_config = 0;
> > +	unsigned int tx_config = 0;
> > +	int rx_code;
> > +	int tx_code;
> > +
> > +	plat_dat->phy_interface = phy_fix_phy_mode_for_mac_delays(plat_dat->phy_interface,
> > +								  mac_txid,
> > +								  mac_rxid);
> 
> Maybe Andrew can confirm, but this function was to fix up existing
> broken DT, and shouldn't be used by brand new drivers.
> 
> > +	plat_dat->clk_tx_i = devm_clk_get_enabled(&pdev->dev, "tx");
> > +	if (IS_ERR(plat_dat->clk_tx_i))
> > +		return dev_err_probe(&pdev->dev, PTR_ERR(plat_dat->clk_tx_i),
> > +				     "failed to get tx clock\n");
> 
> As stated on the previous series, please don't abuse clk_tx_i for
> soemthing that isn't the dwmac's clk_tx_i signal.
> 

I have seen this comments, I will switch to a local variable in the
next version

Regards,
Inochi


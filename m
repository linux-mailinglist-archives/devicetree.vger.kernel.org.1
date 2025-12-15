Return-Path: <devicetree+bounces-246762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B34DCBFB21
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1C213301CD35
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5BB283CB5;
	Mon, 15 Dec 2025 20:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jOqi23tZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8298225408
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765829472; cv=none; b=jTcEzJO8klCNeS9eqeMOgGx1xGQLSl6Dkn8OdpXvEHi8hP3kHYvgZmGp/EI4wZhyc3OGLfNVBLNxK898FGIu1Nh+H33WgDtHxj+yxGJoyJJnIa5/4tpKLClTcbpIeVtV6W9yO6LYnKjhW9Zr2ceKQ9Iy+BsDzugb8TT6V+mxHWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765829472; c=relaxed/simple;
	bh=bZS2d4r6+t0avva4udbs7u4lgZ+/m7V0Af/OnBnRGOE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WJyvnX1nrSmb+6cG0q/N9ngVblUrborUB8ZQB6sY49TBjsq+QqZl9QEDsLVRFi1vhohar/DjJX9nc+kVql/R74ls+f3yhfHNTKWZMuMySn6J3027V0+EmgqOC9hScqff54xHN635UAcnXKdXnHKtqgym/HkeQ3LrQoC/DS9A2uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jOqi23tZ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477632b0621so28032965e9.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:11:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765829469; x=1766434269; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NVHWp8cheEcClOBV4c/zxK94NkQEphirpcQRQ+Yuj0w=;
        b=jOqi23tZjhnWYfANSp7aHqR9h4Cl2UVq2++5YDlTqyeRgZO5FA/IFliNK5HHPlpnk8
         XxYCC457LWPfw5NrA8tJJm+SXRShgSyveksM9ZhgzpFe2fJ2kdPejjKTAMMWAnASEE5/
         0pKHii+nZK0jdeeh0PpR2+utgrSYWpX9Zk79gJIyZvcuzMoooiPr3pHICJ4Qiz7Q1OEF
         filoKxPXuFLH0WRyCHQcYfClsidBH8+ehN33+KKFxc6HXAuWBK1f6fQJPUrnto1oDgKw
         0fNkrkHJsIgrt14qytMwFg68TyckD/qOZXzFLWU6ZbIHW4TdON4pNKx0xhgIZdgRDrTt
         bJ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765829469; x=1766434269;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NVHWp8cheEcClOBV4c/zxK94NkQEphirpcQRQ+Yuj0w=;
        b=nDhccJ9tHdznRPe7f9M6yyvyY7f/P1I8QxBBq47RAV7FS720JuZgDvx1xSUOEZ6AqF
         SYVsfncf/veKQWHP3I13cLHK5a4Cmy30byVhkrEqm/jysPUplmrEy2LQ/GKjMIwjfYEv
         vAvt2a7cvXaqeSn2Zp0+PBzb019n2PtKzSE4tNFwqp1V110qOMTO3Wjx/gHof58Wq3UQ
         k/nAQmD57d8MqUSzGBL3Lh+jN/BljRU2wlwcsouWl3p3BWZhAXXXGhzDkpiAU30lKzlq
         LkAbiHPZerJGYfTNSWu4xV0pBMd5A/X6wR78VDjbDjj0Qj1l/F362VxSawK2DcEqtP0o
         B7/A==
X-Forwarded-Encrypted: i=1; AJvYcCXopubQf6nEu3+rRPWUIfYtgzU+X8ArPdRd13Kt/TiSLmOjxJdA+FtiQ6xb2BuYWGj4hQGqkD16kUVy@vger.kernel.org
X-Gm-Message-State: AOJu0YyHj4qwMvY03S6r5QHUebKms+zsLscFxgte3d8/87goXBPrMnXS
	MJdA9wAJVqRGc0pBkBF8qIGJigSn+atWpQy0NB3pejuLxMmS9QiBHI0Mur0Iihu44TM=
X-Gm-Gg: AY/fxX5AeV8fJqIJL/ZaXcxMBvCKCHzL0Sqyb4K3ALr0591Z0baP+uZ7EGfHe0zo3CJ
	evK0YDbZohU2gsMeCNo9BW9JFOnAc1xSZp1o0f0ttT8fPs4yGhPVqPjJtf3E02oz4qqo4mVUep2
	t5zoeKudLuNMYn1jnpt5esh3k1U8QFr4SmVJ6Uga45Rz5xLmdsMmJh1bzixOxJlrDP+GMbxn1rm
	PgUAeajZRv/LVkyz2cFkKlVHmnP4pqiApdxMGWgfPmq9FU8OE+nOdtURHOsGOuGGPRq/aEQ9TtY
	g7vW6bExLYe6qwLJTyHfIMYshgwDvIre8yZGrxX8rU5gqIflSTso5X5DoMVdAlXwShpUaa6SNEE
	CcDqe2Z0UBETqvB8wHkreTIXpdzwOanHkTFeZYquMGXp53+wwgfB+hiptvL8l3ekIUgwQJNR2Ck
	EoMycUpnwJOc/IYwpw
X-Google-Smtp-Source: AGHT+IFzTdgd8HuBCRpheWEKJMhw6vXCy8KxXaScp0+GwrnVXW68cCuyCfDLEuzw7wX+ZV30A2XRQg==
X-Received: by 2002:a05:600c:46c4:b0:46e:59bd:f7d3 with SMTP id 5b1f17b1804b1-47a8f9046fcmr137755605e9.20.1765829468100;
        Mon, 15 Dec 2025 12:11:08 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f4ace61sm200864155e9.7.2025.12.15.12.11.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 12:11:07 -0800 (PST)
Date: Mon, 15 Dec 2025 23:11:03 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Chester Lin <chester62515@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@google.com>,
	Fabio Estevam <festevam@gmail.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	imx@lists.linux.dev, Jakub Kicinski <kuba@kernel.org>,
	Jan Petrous <jan.petrous@oss.nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Matthias Brugger <mbrugger@suse.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	NXP S32 Linux Team <s32@nxp.com>, Paolo Abeni <pabeni@redhat.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, linaro-s32@linaro.org
Subject: Re: [PATCH v2 0/4] s32g: Use a syscon for GPR
Message-ID: <aUBrV2_Iv4oTPkC4@stanley.mountain>
References: <cover.1765806521.git.dan.carpenter@linaro.org>
 <aUAvwRmIZBC0W6ql@lizhi-Precision-Tower-5810>
 <aUBUkuLf7NHtLSl1@stanley.mountain>
 <aUBha2/xiZsIF/o5@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aUBha2/xiZsIF/o5@lizhi-Precision-Tower-5810>

On Mon, Dec 15, 2025 at 02:28:43PM -0500, Frank Li wrote:
> On Mon, Dec 15, 2025 at 09:33:54PM +0300, Dan Carpenter wrote:
> > On Mon, Dec 15, 2025 at 10:56:49AM -0500, Frank Li wrote:
> > > On Mon, Dec 15, 2025 at 05:41:43PM +0300, Dan Carpenter wrote:
> > > > The s32g devices have a GPR register region which holds a number of
> > > > miscellaneous registers.  Currently only the stmmac/dwmac-s32.c uses
> > > > anything from there and we just add a line to the device tree to
> > > > access that GMAC_0_CTRL_STS register:
> > > >
> > > >                         reg = <0x4033c000 0x2000>, /* gmac IP */
> > > >                               <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */
> > > >
> > > > We still have to maintain backwards compatibility to this format,
> > > > of course, but it would be better to access these through a syscon.
> > > > First of all, putting all the registers together is more organized
> > > > and shows how the hardware actually is implemented.  Secondly, in
> > > > some versions of this chipset those registers can only be accessed
> > > > via SCMI, if the registers aren't grouped together each driver will
> > > > have to create a whole lot of if then statements to access it via
> > > > IOMEM or via SCMI,
> > >
> > > Does SCMI work as regmap? syscon look likes simple, but missed abstract
> > > in overall.
> > >
> >
> > The SCMI part of this is pretty complicated and needs discussion.  It
> > might be that it requires a vendor extension.  Right now, the out of
> > tree code uses a nvmem vendor extension but that probably won't get
> > merged upstream.
> >
> > But in theory, it's fairly simple, you can write a regmap driver and
> > register it as a syscon and everything that was accessing nxp,phy-sel
> > accesses the same register but over SCMI.
> 
> nxp,phy-sel is not standard API. Driver access raw register value. such
> as write 1 to offset 0x100.
> 
> After change to SCMI, which may mapped to difference command. Even change
> to other SOC, value and offset also need be changed. It is not standilzed
> as what you expected.

We're writing to an offset in a syscon.  Right now the device tree
says that the syscon is an MMIO syscon.  But for SCMI devices we
would point the phandle to a custom syscon.  The phandle and the offset
would stay the same, but how the syscon is implemented would change.

> 
> >
> > > You still use regmap by use MMIO. /* GMAC_0_CTRL_STS */
> > >
> > > regmap = devm_regmap_init_mmio(dev, sts_offset, &regmap_config);
> > >
> >
> > You can use have an MMIO syscon, or you can create a custom driver
> > and register it as a syscon using of_syscon_register_regmap().
> 
> My means is that it is not necessary to create nxp,phy-sel, especially
> there already have <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */
> 

Right now the out of tree dwmac-s32cc.c driver does something like
this:

    89          if (gmac->use_nvmem) {
    90                  ret = write_nvmem_cell(gmac->dev, "gmac_phy_intf_sel", intf_sel);
    91                  if (ret)
    92                          return ret;
    93          } else {
    94                  writel(intf_sel, gmac->ctrl_sts);
    95          }

Which is quite complicated, but with a syscon, then it's just:

	regmap_write(gmac->sts_regmap, gmac->sts_offset, S32_PHY_INTF_SEL_RGMII);

Even without SCMI, the hardware has all these registers grouped together
it just feels cleaner to group them together in the device tree as well.

regards,
dan carpenter



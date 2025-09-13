Return-Path: <devicetree+bounces-216780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D97DB56107
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 15:04:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CDA3C7A203A
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 13:03:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A77A2ECD07;
	Sat, 13 Sep 2025 13:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ROOTANAu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C529D2EC568
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 13:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757768686; cv=none; b=qcsnDXkW0iHrBOu4op+hN/HOzRpcEsm98dJVimwxjlrQxbQx47zdnCHaGDC3b3jgnrcTFFp7LyTlDLXxaRUzn1Ns/S1EXeQzvJCzeS/IFvjaDtPQfNCCYEMMw9ppKEW+jXQAEy+ISlWc0CpLCfS40URx+u3y+qKmNa6koSTXM+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757768686; c=relaxed/simple;
	bh=b7tBpzh15qGN8uVwd9Pr+CjEOhF0/2vXJq5OskdvkFI=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MRzEYoXa1fyK5oORk//waYfAfCH+LoLfN/sireGb4QjXlmJ0w7Jmn1SJggc85LuVfXszbaYTezY1ge81PPfoCwyQHv6LIGyQHSwfj0Q8V+Q/iFg5fXw+RT8OHNu1k1UscCkyXrE9V7NEup4akJA/wzXD2YKQSLGvQkjfwdP2/Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ROOTANAu; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45f29dd8490so725965e9.1
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 06:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757768683; x=1758373483; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Bn5g5etmrQRhW0GOll7653iUOWDP8XBcYnO++0L6iOw=;
        b=ROOTANAuPag/jlv1nGo0RpkMHmO2JTrBDg2Yrw87LzqGxDemmhmp+U5etJ17YVcPl1
         WxCTSa1CnoCQ9h5Y3ID4q+BkPhYPJHWrcj+elvYxZzSJ63kZ/XMjtbDDsAvmbhyKyoxv
         tgS5LtxbLRxKp0B0VKzCg4FTcTnXIrgFLINkSq7uc8DfkaXiOjh8EJZsq0vqyOmjNfS0
         RrcgpJ5Yae/3gol1jHciPc+CP/aPSRyqDTYlNzGfEq8tl+p0H5IrGeUGJ916r0Rw1IoI
         KQ4dHe5K8+mgsBcxZ1A0FMqox0nnqLd5xSjm1r+3ocpoTE+HUVItkSN+4g0V1heE87W6
         ufug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757768683; x=1758373483;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bn5g5etmrQRhW0GOll7653iUOWDP8XBcYnO++0L6iOw=;
        b=BmfYgHQu2D+XDaZooSKKUIK+8dCHH6wKBkaY8S4nVlACi9xi2joyd5Ky1FAq1IdBpR
         y4ZaVd6oyaK4Vn67zkWXDk/KGZXj1mbnB+piSY22JtC3Rsdtj3hR+a4oWAuCUf4nkTqh
         1x5yR3Rex0c9CdT7YSAc9UNLTjypPCJDrUZL0H+hS1NapNgpG3oKbMq5NN+P153Yoc+N
         HhoFJeAD6Qe3s7UMhGSvJJLaoxBxh44ZbS5nzZOaeirrdLn4Ku3B0FaOrWJ6cJ7Etago
         pLzw4edWSjKjY2Ewn16L5suHXlwFGbXU3S07dwh8i7tG3E6uzVjiaRZq4okCJHVO+gAM
         /yCg==
X-Forwarded-Encrypted: i=1; AJvYcCV9hxFp2dkGzurM9XdsMBZ9GhUg5SJXY9mxe5iSkM7FA7/U16o6Hk+4RyP3v95KsZh4bZqSoxvvB6zP@vger.kernel.org
X-Gm-Message-State: AOJu0YxgmSjvCoOyT6yT/Pw/Tzzy2x30Drb41YXRHx6mucn/SeN1RPVe
	zC/2Um48VARrKpeE/fAXwo/QR5H1jOIiktYU3glBYo1N9W9X0IiulFmv
X-Gm-Gg: ASbGncv2gWKzPi4gpTnBpYYSl3eI4J1od9apFUQQJGiaHJuvUs5+ybJiqROfma5Hcmh
	UXLu9boBvdQznfsK5bOpnGy2zCiDKzYWRtJ0ht7JgpEDiRyR0OMMbGmYnSArkrH7alhPmz239wH
	3fjr1N//ndPMtDV2URsgKpo7gvd66fw4mb2jQlPRHaBUsWGdLT137ihcYI9ejLv1PTdUkZWOkVw
	mdem8Bwz7qgQ+tLlWQn77DA6+tPiF6fKUmAduXZuNt5PLGl6SlQZr7gare4a9/EoIZ5DbxBHq0P
	op28nSqXIp5Y7S8TraLrRGdAueNZp/qaTv8FxKyOGSd2Pe17gbSu5RDzOAgTda/8Vyte3wDIHPd
	0aRNVmpHZpU4458jU5xSEzGBJR0vXjCwbPkOWXX2Lk83oB2qecswS3nVJoETGkcMHYIKvM27mVo
	tamYKa
X-Google-Smtp-Source: AGHT+IH7bqCK1wDu540Yv6h59nRCAcKulg0ljt7g6L2IwpwzA60j/nsTl5Zjtr2oKtoo9w4/vWv6Gg==
X-Received: by 2002:a05:600c:a45:b0:45d:dd9c:4467 with SMTP id 5b1f17b1804b1-45f211ca33cmr60235475e9.7.1757768682776;
        Sat, 13 Sep 2025 06:04:42 -0700 (PDT)
Received: from Ansuel-XPS. (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e015784c3sm105911875e9.10.2025.09.13.06.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 06:04:42 -0700 (PDT)
Message-ID: <68c56bea.050a0220.a9dbf.b7c8@mx.google.com>
X-Google-Original-Message-ID: <aMVr6Hkskt5mPfFP@Ansuel-XPS.>
Date: Sat, 13 Sep 2025 15:04:40 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"Chester A. Unal" <chester.a.unal@arinc9.com>,
	Daniel Golle <daniel@makrotopia.org>,
	DENG Qingfang <dqfext@gmail.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [net-next PATCH v17 6/8] mfd: an8855: Add support for Airoha
 AN8855 Switch MFD
References: <20250911133929.30874-1-ansuelsmth@gmail.com>
 <20250911133929.30874-7-ansuelsmth@gmail.com>
 <20250913130137.GL224143@horms.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913130137.GL224143@horms.kernel.org>

On Sat, Sep 13, 2025 at 02:01:37PM +0100, Simon Horman wrote:
> On Thu, Sep 11, 2025 at 03:39:21PM +0200, Christian Marangi wrote:
> > Add support for Airoha AN8855 Switch MFD that provide support for a DSA
> > switch and a NVMEM provider.
> > 
> > Also make use of the mdio-regmap driver and register a regmap for each
> > internal PHY of the switch.
> > This is needed to handle the double usage of the PHYs as both PHY and
> > Switch accessor.
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> 
> ...
> 
> > diff --git a/drivers/mfd/airoha-an8855.c b/drivers/mfd/airoha-an8855.c
> 
> ...
> 
> > +static int an855_mdio_register(struct device *dev, struct an8855_core_priv *priv)
> > +{
> > +	struct device_node *mdio_np;
> > +	int ret;
> > +
> > +	mdio_np = of_get_child_by_name(dev->of_node, "mdio");
> > +	if (!mdio_np)
> > +		return -ENODEV;
> > +
> > +	for_each_available_child_of_node_scoped(mdio_np, phy_np) {
> > +		ret = an8855_phy_register(dev, priv, phy_np);
> > +		if (ret)
> > +			break;
> > +	}
> 
> Hi Christian,
> 
> Maybe it cannot happen, but if the loop above iterates zero times,
> then ret will be used uninitialised below.
> 
> Flagged by Smatch.
>

Do you have hint of how to run smatch on this? Is there a simple arg to
make to enable this?

Anyway yes it goes against schema but it's possible somehow to have a
very broken DT node with no phy in it.

> > +
> > +	of_node_put(mdio_np);
> > +	return ret;
> > +}
> 
> ...

-- 
	Ansuel


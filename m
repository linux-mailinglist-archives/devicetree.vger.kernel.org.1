Return-Path: <devicetree+bounces-246248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5706DCBA825
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 11:27:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5336C3004F2F
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 10:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AC3F2FB0BB;
	Sat, 13 Dec 2025 10:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CU2gPfMt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83B12FB097
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 10:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765621658; cv=none; b=edP21StVdcz0cxTIMl1kY2+JULTd8LI02SOUHA0X3AJTMZ7dGuCIARWxRusu2/07iMRD93YN2VYk7I6iYYCghPlozW3Z06zj3I+7z+7ogq6n7zQrHdYXz4hHJIyoaJSZhv9mL9tAdP2+9TkbijZy3mTY/Nj6cPKeGRD9/NlrHVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765621658; c=relaxed/simple;
	bh=Ga+OtgLv4XXqLeYthfHmQsxLqCuqOInMrZnoEq37VXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F7zS13xq4jd1AwWq46Z85//hWesIdmFP1i4VDzXKme8xUv2Tl7t+Yt8YkUBTL12ycUhESprWQA5WJXggl7JN+15yUAHgpC+FbNcZaMLX32nlTZzZyme0YLBPjaTcKrTrYhPkN+hipKNdWWUtg0fDBEVXz4OTWv30C8pB1tPDAXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CU2gPfMt; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-bc0d7255434so1294567a12.0
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 02:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765621656; x=1766226456; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HZe6fXEstv7pAYGHzZssYL65WuRCRc7rX2Oo6ReALjM=;
        b=CU2gPfMtApkCCGGnWYS5ucB5yVbH400i9b0jQGu0v81FTXUYF14guwqYY/TKJGBfGD
         MwzjGjOpI7EqpcL1xGAiFGWTPAjUpRLbl9XkWE/Ehk3PZGnNCOXW67BS3FqSs2Q9s5Dq
         kYRXF39HLagcNchDkfjLSyo5ClyntPo480GXBgUYmNmq0DuNhPKDDMIciOSa4h9NN6mJ
         4lzcEEF3YnA9wk/TE3MLHs0gSKyCnJk0D0FElKqC9VPa40ZN+1KMHtlPKKt/X7uVp6B0
         Sc/Ruau0iygD2vk3zOxOqBIUYGYukNHgArlKiVe1QkWK9zb1T09M6gw3+yuCSq8wsvs6
         Mz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765621656; x=1766226456;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HZe6fXEstv7pAYGHzZssYL65WuRCRc7rX2Oo6ReALjM=;
        b=o3edqMlWfkcmXN6BCZFYniNciYOWKSq2bAvv6b79qf+E0L1+kYJb8FXAbGyZ75Px2D
         x3OccIewe885/VWFeUAniWU+rZWqhnrjz/GKY/pARfD8TUz+Y2gP1UbuISeSrHyZVRQz
         u3dJvujSiMLFP7xiNdn2tgsnghXvQx4HuKXZgbJ3uwZIdPf+EOGXmKio6pH+AZPj0Qnv
         uCSVBGRbLDoT2anIbGwAqa3xFAmwbnOmr7Poxrx1GwE85hesOkIY5tUnLgfIm2wcm0ee
         9gdCfHtEBOF57mhB1NIJm4csVbDU+SJCgtJOLCjjJfKl1ovii+qRlWMUAPgYdZBAYNX2
         eF8g==
X-Forwarded-Encrypted: i=1; AJvYcCVBB6jWEGadxzVaCO1J4gURXcGNiVKot4vvHvRefBy7mUDGU6o5JNqlLKsmOQsJrG9ncAZ7o0qEi2yS@vger.kernel.org
X-Gm-Message-State: AOJu0YxhRJI7iS9ZrFv5brfLaQiVZdVzhdhFwaPHGl7m5ZocmHnWc/Oq
	ltnmAUxWw0dlC3bI/l7SkNi0eotS+SHJlIJa7fFzL4krMoPvMTs74J0H
X-Gm-Gg: AY/fxX4t/ok5fZesy2R4Yx64IedYgOcje/3FCm02ox3mdPXAu1UN7yMtHM45jcbnjuR
	Fw34rHs/RY1LqVuieyLDGs9v2+rYsAuO5GpG6Z8LladaCLfnsBtZAnWWd0BTmk4Vz8YssE+0gk9
	jfYsnrwNaLWDsMeXUFJmVxHRbsjodFwBBhaG0Rm8v0KArxJ/2aM2frWJ0cmm7VucKg4YvgC4Vge
	NxnN4A6UQ7+Kk1wNQnK0GUJWkNh2pNC8b2YfZnujA6km1WwAzg67IFqhAbu/Q+EQiznKtQzHl2Y
	jE0bNIJ1QKAGR/CvcBj3588zlEnYs/4i5+NaAS9aaco7KPpvP+vB2pDX/G+TngelMChYAhOIfYq
	JabkIORJegA35XwD634Ml/TupNLMh99HViX8JBkHdJgLGsNv3KN/Zdav4GVivDT/RgNR/NScprq
	0zeVCh7jqMvg==
X-Google-Smtp-Source: AGHT+IEgdWNaLErL+Bv/4TEGb6my3L3COg4e3V2Q69toNrJl2ns4dPdMhDJIDV+5TWNQeiqW0B6fPQ==
X-Received: by 2002:a05:7023:a8e:b0:11b:c0db:a5ea with SMTP id a92af1059eb24-11f34c4ef0cmr3404454c88.26.1765621655966;
        Sat, 13 Dec 2025 02:27:35 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2ff624sm26725752c88.12.2025.12.13.02.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 02:27:35 -0800 (PST)
Date: Sat, 13 Dec 2025 18:26:35 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Samuel Holland <samuel.holland@sifive.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: "Anton D . Stavinskii" <stavinsky@gmail.com>, 
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, sophgo@lists.linux.dev, 
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Chen Wang <unicorn_wang@outlook.com>, Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
	Longbin Li <looong.bin@gmail.com>, Yixun Lan <dlan@gentoo.org>, Ze Huang <huangze@whut.edu.cn>
Subject: Re: [PATCH 2/3] dmaengine: dw-axi-dmac: Add support for CV1800B DMA
Message-ID: <aT0_KFNqDraRodyG@inochi.infowork>
References: <20251212020504.915616-1-inochiama@gmail.com>
 <20251212020504.915616-3-inochiama@gmail.com>
 <8a3d3db6-6614-42f7-a271-e6188391daf6@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8a3d3db6-6614-42f7-a271-e6188391daf6@sifive.com>

On Sat, Dec 13, 2025 at 04:55:06PM +0900, Samuel Holland wrote:
> Hi Inochi,
> 
> On 2025-12-12 11:05 AM, Inochi Amaoto wrote:
> > As the DMA controller on Sophgo CV1800 series SoC only has 8 channels,
> > the SoC provides a dma multiplexer to reuse the DMA channel. However,
> > the dma multiplexer also controlls the DMA interrupt multiplexer, which
> 
> typo: controls
> 

Thanks.

> > means that the dma multiplexer needs to know the channel number.
> > 
> > Allow the driver to use DMA phandle args as the channel number, so the
> > DMA multiplexer can route the DMA interrupt correctly.
> > 
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > ---
> >  .../dma/dw-axi-dmac/dw-axi-dmac-platform.c    | 23 ++++++++++++++++---
> >  drivers/dma/dw-axi-dmac/dw-axi-dmac.h         |  1 +
> >  2 files changed, 21 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c b/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
> > index b23536645ff7..62bf0d0dc354 100644
> > --- a/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
> > +++ b/drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c
> > @@ -50,6 +50,7 @@
> >  #define AXI_DMA_FLAG_HAS_APB_REGS	BIT(0)
> >  #define AXI_DMA_FLAG_HAS_RESETS		BIT(1)
> >  #define AXI_DMA_FLAG_USE_CFG2		BIT(2)
> > +#define AXI_DMA_FLAG_HANDSHAKE_AS_CHAN	BIT(3)
> > 
> >  static inline void
> >  axi_dma_iowrite32(struct axi_dma_chip *chip, u32 reg, u32 val)
> > @@ -1361,15 +1362,26 @@ static struct dma_chan *dw_axi_dma_of_xlate(struct of_phandle_args *dma_spec,
> >  					    struct of_dma *ofdma)
> >  {
> >  	struct dw_axi_dma *dw = ofdma->of_dma_data;
> > +	unsigned int handshake = dma_spec->args[0];
> >  	struct axi_dma_chan *chan;
> >  	struct dma_chan *dchan;
> > 
> > -	dchan = dma_get_any_slave_channel(&dw->dma);
> > +	if (dw->hdata->use_handshake_as_channel_number) {
> > +		if (handshake >= dw->hdata->nr_channels)
> > +			return NULL;
> > +
> > +		chan = &dw->chan[handshake];
> > +		dchan = dma_get_slave_channel(&chan->vc.chan);
> > +	} else {
> > +		dchan = dma_get_any_slave_channel(&dw->dma);
> > +	}
> > +
> >  	if (!dchan)
> >  		return NULL;
> > 
> > -	chan = dchan_to_axi_dma_chan(dchan);
> > -	chan->hw_handshake_num = dma_spec->args[0];
> > +	if (!chan)
> 
> When use_handshake_as_channel_number is false, chan is uninitialized here.
> 
> Regards,
> Samuel
> 

Thanks, I also noticed this, will fixed in the V2.

Regards,
Inochi

> > +		chan = dchan_to_axi_dma_chan(dchan);
> > +	chan->hw_handshake_num = handshake;
> >  	return dchan;
> >  }
> > 
> > @@ -1508,6 +1520,8 @@ static int dw_probe(struct platform_device *pdev)
> >  			return ret;
> >  	}
> > 
> > +	chip->dw->hdata->use_handshake_as_channel_number = !!(flags & AXI_DMA_FLAG_HANDSHAKE_AS_CHAN);
> > +
> >  	chip->dw->hdata->use_cfg2 = !!(flags & AXI_DMA_FLAG_USE_CFG2);
> > 
> >  	chip->core_clk = devm_clk_get(chip->dev, "core-clk");
> > @@ -1663,6 +1677,9 @@ static const struct of_device_id dw_dma_of_id_table[] = {
> >  	}, {
> >  		.compatible = "intel,kmb-axi-dma",
> >  		.data = (void *)AXI_DMA_FLAG_HAS_APB_REGS,
> > +	}, {
> > +		.compatible = "sophgo,cv1800b-axi-dma",
> > +		.data = (void *)AXI_DMA_FLAG_HANDSHAKE_AS_CHAN,
> >  	}, {
> >  		.compatible = "starfive,jh7110-axi-dma",
> >  		.data = (void *)(AXI_DMA_FLAG_HAS_RESETS | AXI_DMA_FLAG_USE_CFG2),
> > diff --git a/drivers/dma/dw-axi-dmac/dw-axi-dmac.h b/drivers/dma/dw-axi-dmac/dw-axi-dmac.h
> > index b842e6a8d90d..67cc199e24d1 100644
> > --- a/drivers/dma/dw-axi-dmac/dw-axi-dmac.h
> > +++ b/drivers/dma/dw-axi-dmac/dw-axi-dmac.h
> > @@ -34,6 +34,7 @@ struct dw_axi_dma_hcfg {
> >  	bool	reg_map_8_channels;
> >  	bool	restrict_axi_burst_len;
> >  	bool	use_cfg2;
> > +	bool	use_handshake_as_channel_number;
> >  };
> > 
> >  struct axi_dma_chan {
> > --
> > 2.52.0
> > 
> > 
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
> 


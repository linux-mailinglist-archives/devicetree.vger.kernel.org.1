Return-Path: <devicetree+bounces-6009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A32217B9AA6
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 06:10:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id E1CE0B207DF
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 04:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617801871;
	Thu,  5 Oct 2023 04:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUGQPMVm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2481863
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 04:10:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1BB1C433CB;
	Thu,  5 Oct 2023 04:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696479019;
	bh=tvQ6HmqskzVwBQufXqWAzijK9xLx9i/yIFRHr3dsOjg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cUGQPMVmdNnKQ0RoWKzH79W5T8AWaX52R5iZQaBiaKi+e773J54Ahe6zZ3s7p6pzB
	 WtHdPYGr1LFupPbB+ZUJHOVLwqBeJcNuVaAgf2Vvwwy1uSv28lE6HX9NRGq87B6o7a
	 Zab4J1b51rBp2Dz+Z5xRryrrFhRn5XE6a9VBlk/YCHq2OrREr9bBjDnTIpO2cfd0XP
	 CXadHlD2fzWFoS+FrMbrYO/ncV/jrXyO+QQ354YZO2Bl0VdsYTI7n3L+UO3wc6FAWf
	 F3ZgLzlbZwKm1ej4WRH/RHNWsUY2mPVvDBLyXar3PUyTQ8rrqsg+EQnloOmdkoJbhH
	 +DN+dx1Jhy6Fw==
Date: Thu, 5 Oct 2023 09:40:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Jai Luthra <j-luthra@ti.com>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	niklas.soderlund+renesas@ragnatech.se,
	Benoit Parrot <bparrot@ti.com>, Vaishnav Achath <vaishnav.a@ti.com>,
	nm@ti.com, devarsht@ti.com, a-bhatia1@ti.com,
	Martyn Welch <martyn.welch@collabora.com>,
	Julien Massot <julien.massot@collabora.com>
Subject: Re: [PATCH v9 13/13] media: ti: Add CSI2RX support for J721E
Message-ID: <ZR43Jre2j51j0mFk@matsya>
References: <20230811-upstream_csi-v9-0-8943f7a68a81@ti.com>
 <20230811-upstream_csi-v9-13-8943f7a68a81@ti.com>
 <ad042065-33a2-d42e-ce2e-628464102fc3@ideasonboard.com>
 <wgkjek77bolf5wabki7uhm6cxjy5g5z2ncoc6urr7dv5y6wnaw@yfh7ccogxfea>
 <20230829155513.GG6477@pendragon.ideasonboard.com>
 <ZR1txMVk+4oHLEKU@matsya>
 <20231004200312.GE30342@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004200312.GE30342@pendragon.ideasonboard.com>

On 04-10-23, 23:03, Laurent Pinchart wrote:
> On Wed, Oct 04, 2023 at 07:21:00PM +0530, Vinod Koul wrote:
> > On 29-08-23, 18:55, Laurent Pinchart wrote:
> > > Hi Jai,
> > > 
> > > (CC'ing Vinod, the maintainer of the DMA engine subsystem, for a
> > > question below)
> > 
> > Sorry this got lost
> 
> No worries.
> 
> > > On Fri, Aug 18, 2023 at 03:55:06PM +0530, Jai Luthra wrote:
> > > > On Aug 15, 2023 at 16:00:51 +0300, Tomi Valkeinen wrote:
> > > > > On 11/08/2023 13:47, Jai Luthra wrote:
> > > > > > From: Pratyush Yadav <p.yadav@ti.com>
> > > 
> > > [snip]
> > > 
> > > > > > +static int ti_csi2rx_start_streaming(struct vb2_queue *vq, unsigned int count)
> > > > > > +{
> > > > > > +	struct ti_csi2rx_dev *csi = vb2_get_drv_priv(vq);
> > > > > > +	struct ti_csi2rx_dma *dma = &csi->dma;
> > > > > > +	struct ti_csi2rx_buffer *buf;
> > > > > > +	unsigned long flags;
> > > > > > +	int ret = 0;
> > > > > > +
> > > > > > +	spin_lock_irqsave(&dma->lock, flags);
> > > > > > +	if (list_empty(&dma->queue))
> > > > > > +		ret = -EIO;
> > > > > > +	spin_unlock_irqrestore(&dma->lock, flags);
> > > > > > +	if (ret)
> > > > > > +		return ret;
> > > > > > +
> > > > > > +	dma->drain.len = csi->v_fmt.fmt.pix.sizeimage;
> > > > > > +	dma->drain.vaddr = dma_alloc_coherent(csi->dev, dma->drain.len,
> > > > > > +					      &dma->drain.paddr, GFP_KERNEL);
> > > > > > +	if (!dma->drain.vaddr)
> > > > > > +		return -ENOMEM;
> > > > > 
> > > > > This is still allocating a large buffer every time streaming is started (and
> > > > > with streams support, a separate buffer for each stream?).
> > > > > 
> > > > > Did you check if the TI DMA can do writes to a constant address? That would
> > > > > be the best option, as then the whole buffer allocation problem goes away.
> > > > 
> > > > I checked with Vignesh, the hardware can support a scenario where we 
> > > > flush out all the data without allocating a buffer, but I couldn't find 
> > > > a way to signal that via the current dmaengine framework APIs. Will look 
> > > > into it further as it will be important for multi-stream support.
> > > 
> > > That would be the best option. It's not immediately apparent to me if
> > > the DMA engine API supports such a use case.
> > > dmaengine_prep_interleaved_dma() gives you finer grain control on the
> > > source and destination increments, but I haven't seen a way to instruct
> > > the DMA engine to direct writes to /dev/null (so to speak). Vinod, is
> > > this something that is supported, or could be supported ?
> > 
> > Write to a dummy buffer could have the same behaviour, no?
> 
> Yes, but if the DMA engine can write to /dev/null, that avoids
> allocating a dummy buffer, which is nicer. For video use cases, dummy
> buffers are often large.

hmmm maybe I haven't comprehended it full, would you mind explaining the
details on how such a potential interleaved transfer would look like so
that we can model it or change apis to model this

-- 
~Vinod


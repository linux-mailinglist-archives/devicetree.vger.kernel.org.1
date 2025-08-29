Return-Path: <devicetree+bounces-210297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91179B3B387
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 08:35:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 672F4580DB7
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 06:35:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EA4A24E4C4;
	Fri, 29 Aug 2025 06:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUS4NeEQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669D624678F;
	Fri, 29 Aug 2025 06:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756449326; cv=none; b=tjBlKEr3/BXtgQMKjs+yiCaZzB0MK5tWsQMPGfcxjiBdpBgpyIysQvUu80JMmloLRPNbVh7G8ZK7E92F63fVpiEKFJjqDZ6NxL4z8V1LBguS33jUowufcwhy6qsdTBsXm72cpLfjnYal/w4vEmxCeah1VitcEJTH9o8Lzg+YSPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756449326; c=relaxed/simple;
	bh=0NgMjqXnvtRxxln19R3tS9pI1H20Mq7W/lHIuqdY+uk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VzcgQx2At60iaoWy4xIX5uqSZO+Ty0CbUTRs6fiewzmXG8sOLf+F4JMZHMsHLUdm/qhPzmX3uP60ms9sLc+eND8SPwnamRL7vfZKx9Me1dHZOpv/gX+YRREBmb/47RsQAcanl3erTJk+TkI9VjzowccNkEvCbBqsWPJv8g636dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUS4NeEQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AACDC4CEF5;
	Fri, 29 Aug 2025 06:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756449326;
	bh=0NgMjqXnvtRxxln19R3tS9pI1H20Mq7W/lHIuqdY+uk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mUS4NeEQDHp4RpXIEfmuZNrr7scAypuu9Ptx8sJ0yCP1XNllD61+L5wEEx9ld2LEB
	 IKZ8NbSez9ZALLcZTsa2OTkyVVitVJs4listetsc4sgMlzbfcOo+NQ/i10dA4OGiJV
	 3ypKzqdmOYZWb3FOdXhkzi+F/V959omeAx0IGhpWxCotcvditbNQSMaIyAWjBxbLGL
	 ehOepos0hy2v1fN/9Xx35Nhm+9qoq/NFA2yoic7goQ9zq4YIlODN5rtI/pvCN7LSuF
	 YQ3ja/kZA9aWCCGInZ+/PpGYpePQHhkMO5PozkkNwawFZY/k721wgzp/EBR5bhA4sF
	 U3e5wycRVi74w==
Date: Fri, 29 Aug 2025 08:35:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Paul Chen <paul-pl.chen@mediatek.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	chunkuang.hu@kernel.org, angelogioacchino.delregno@collabora.com, matthias.bgg@gmail.com, 
	p.zabel@pengutronix.de, jason-jh.lin@mediatek.com, nancy.lin@mediatek.com, 
	singo.chang@mediatek.com, xiandong.wang@mediatek.com, sirius.wang@mediatek.com, 
	sunny.shen@mediatek.com, fshao@chromium.org, treapking@chromium.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v4 03/19] dt-bindings: display: mediatek: add EXDMA yaml
 for MT8196
Message-ID: <20250829-solemn-herring-of-conversion-ec5b1a@kuoka>
References: <20250828080855.3502514-1-paul-pl.chen@mediatek.com>
 <20250828080855.3502514-4-paul-pl.chen@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250828080855.3502514-4-paul-pl.chen@mediatek.com>

On Thu, Aug 28, 2025 at 04:06:58PM +0800, Paul Chen wrote:
> From: Paul-pl Chen <paul-pl.chen@mediatek.com>
> 
> Add mediatek,exdma.yaml to support EXDMA for MT8196.
> The MediaTek display overlap extended DMA engine, namely
> OVL_EXDMA or EXDMA, primarily functions as a DMA engine
> for reading data from DRAM with various DRAM footprints
> and data formats.
> 
> Signed-off-by: Paul-pl Chen <paul-pl.chen@mediatek.com>
> ---
>  .../bindings/dma/mediatek,exdma.yaml          | 68 +++++++++++++++++++


Your changelog says NOTHING changed here and this fails tests, so does it
mean you received that warnings before but you keep sending same broken
code?

Last two weeks of contributions from mediatek are absolutely terrible.
Very poor code, basic in-house reviews not done, basic testing not done.

I talked about this at OSSE 25 with some friends and got reasons why
your setup is broken. Well, it's on you.

I was already raising this with Mediatek, but we are now back to square
one.

NAK, because this patch WAS NEVER tested.

Best regards,
Krzysztof



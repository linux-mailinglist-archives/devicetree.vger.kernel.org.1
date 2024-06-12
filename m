Return-Path: <devicetree+bounces-75198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1613905D83
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 23:15:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59B37284026
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 21:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23CCF537F5;
	Wed, 12 Jun 2024 21:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="nAOVUINu"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E2E4175A5
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 21:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718226949; cv=none; b=ovrjhlv7/jTSnKcqwzGS+uoyYqE8OT06QiIkcx0IVsM91vOMjagDXCSjAS/rSgbR03bA2wdULOij4c+BzBH+KcK1j2nR7/s5MXQwmgH8/jQtUu3bzonkNmKikT3eVQgSUCxsQUW85nUDIL+eAdUfiSQ5wLXaakq4tFxv0PSXCMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718226949; c=relaxed/simple;
	bh=q5Bc33cCe1NG1zR7xbVQUt/1VsUNuSgQXpNdRk53CuA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NKW2JYWOQ1Yl79cPkTQOdlYe+uP0/+jMT5NxIQwM0tPaXV/ephxKfFdW5FbEGdBZOOemTaPi/FFoteW1jzSEfDVUDbTqHv+GjzsfogC1O6JevxMOPcdYvj9ml4xCtLEQqRAj8Hv62Kkxl4gnVwk/TEUFHFxtXsYpFzKXzdg3ELA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=nAOVUINu; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 14D77E4;
	Wed, 12 Jun 2024 23:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1718226926;
	bh=q5Bc33cCe1NG1zR7xbVQUt/1VsUNuSgQXpNdRk53CuA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nAOVUINuBJOSyqtM72Qq3J7pu6bLK88dFGFVyVtA67M4oFkBWp3ewD8LspwoJtPfN
	 YKNYZHkmkJsvx9V0E6tnrn8rLACd4pWrBarQWidfOi02i8uaXulBFJbrfPlyzlp9o/
	 4Wjk0uP7OUcnh7kS3EZTZtAKReWGrXZuVb/YvSvA=
Date: Thu, 13 Jun 2024 00:15:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Marek Vasut <marex@denx.de>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	patchwork-lst@pengutronix.de, kernel@pengutronix.de,
	Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: imx8mp-evk: enable HDMI
Message-ID: <20240612211519.GW28989@pendragon.ideasonboard.com>
References: <20220826192932.3217260-1-l.stach@pengutronix.de>
 <20220826192932.3217260-4-l.stach@pengutronix.de>
 <20230302163525.007503e4@booty>
 <20230525122628.13b0f28b@booty>
 <20240608150613.GA13225@pendragon.ideasonboard.com>
 <20240610103136.74ec91fd@booty>
 <20240612122502.38a9a2eb@booty>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240612122502.38a9a2eb@booty>

On Wed, Jun 12, 2024 at 12:25:02PM +0200, Luca Ceresoli wrote:
> On Mon, 10 Jun 2024 10:31:36 +0200 Luca Ceresoli wrote:
> > On Sat, 8 Jun 2024 18:06:13 +0300 Laurent Pinchart wrote:
> > > On Thu, May 25, 2023 at 12:26:28PM +0200, Luca Ceresoli wrote:  
> > > > On Thu, 2 Mar 2023 16:35:25 +0100 Luca Ceresoli wrote:    
> > > > > On Fri, 26 Aug 2022 21:29:32 +0200 Lucas Stach wrote:
> > > > >     
> > > > > > Enable the DT nodes for HDMI TX and PHY and add the pinctrl for the few
> > > > > > involved pins that are configurable.
> > > > > > 
> > > > > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>      
> > > > 
> > > > Any updates to these patches? I haven't found any v2 on the list.    
> > > 
> > > This is the last patch in the series that hasn't made it upstream It
> > > would be really nice to get a new version that could be merged in v6.11.
> > > Pretty please :-)  
> > 
> > It will be my pleasure to rebase, test and resend this week! :)
> 
> Oops, I clearly had misread your e-mail! :)
> 
> You was of course referring to Lucas' patch for the imx8mp-evk and not
> mine for the imx8mp-msc-sm2s, which I thought I had sent previously.

That's right, I was referring to the EVK patch. Luca*s*, would you
consider resubmitting it in time for v6.11 ?

> It must have been the similarity between 'Luca' and 'Lucas' along with
> the 'To:' header, the board names being somewhat similar and the actual
> patch content being almost identical...

So which of you will change his name ? :-)

> But turns out I hadn't sent that patch yet. Sent it right now:
> https://lore.kernel.org/linux-devicetree/20240612-imx8mp-msc-sm2s-hdmi-v1-1-6c808df5205d@bootlin.com/T/#u

-- 
Regards,

Laurent Pinchart


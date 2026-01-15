Return-Path: <devicetree+bounces-255712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BACCD26977
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BE7D3264351
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0AC22C3268;
	Thu, 15 Jan 2026 17:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVtLmSXj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE01E2C08AC;
	Thu, 15 Jan 2026 17:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768497486; cv=none; b=pJif22nBpkivKOkhfcDgQwWvMzPBScBFgb+3F2W1a/BjCoK30K24V1IAU0r+L0aNkwXNoypj6a7rU8dH5/iCghTDbjgphWLWKixOkLXARbdgoRYc7yIuUyqSnVOM2HS5hDZsqVHT8h8CEQgc2+5PyIPY/COhP04DpyTQJRF2h1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768497486; c=relaxed/simple;
	bh=tlBpdMlQBYBLhVmEgUbSIOIS5UI2VXeT9ZB6zSWIxfM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VHQB3E9TQfn0wcDBk3KEp8sPmPL4/4qL9ZoPLfjNkLXjfAXakuH50sJiPfgYKIlVzTiROCq/PKaRgoyF+Sr7rEXd0a9uEiM/R4HF9hdqEuRzefw6xWpgQAChRjX1Wr3x/V1L8uiIR+LQbZNnf1ennJrBevZJmCLwxot7vZofVew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVtLmSXj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59700C116D0;
	Thu, 15 Jan 2026 17:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768497486;
	bh=tlBpdMlQBYBLhVmEgUbSIOIS5UI2VXeT9ZB6zSWIxfM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qVtLmSXjo6FvIftTAePkjMMLYNqnHXAPCPRIa7DqU14V+8o3w+FBwz+BiGQnqr0/2
	 UGqn/mQNnRRVeh2KonGBrK9BEtHlocbBpBsHSksMlFKqnTDIJuVPrzbUwkBrSNdlJV
	 4dcJ8bcNjnXbpFPGzs4XWvfIPjxYcrZWo61PllT94t8xxvcutq6myX3Bj++3oKRGGU
	 8KY7fBXvOliTtwAn9Z7S5zVXgjzCpfUX4D9NtgpxnlPMqGGH7FdV0o5LvmpEXQ6xji
	 h7My1VZziSebUI/weJ0pgoX77FjOCHsTuz5jLlveDNby9+xU1TnktE3QU/bJpqRN3t
	 jxH+XHvLWF+Gg==
Date: Thu, 15 Jan 2026 11:18:05 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Andy Yan <andyshrk@163.com>, heiko@sntech.de,
	dmitry.baryshkov@oss.qualcomm.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, cristian.ciocaltea@collabora.com,
	Laurent.pinchart@ideasonboard.com, mripard@kernel.org,
	hjc@rock-chips.com, tzimmermann@suse.de, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/5] dt-bindings: display: rockchip: Add rk3576
 DisplayPort
Message-ID: <20260115171805.GA907039-robh@kernel.org>
References: <20260109080054.228671-1-andyshrk@163.com>
 <20260109080054.228671-2-andyshrk@163.com>
 <aWa5i52PTNQ_QTQ7@venus>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aWa5i52PTNQ_QTQ7@venus>

On Tue, Jan 13, 2026 at 10:33:52PM +0100, Sebastian Reichel wrote:
> Hi,
> 
> On Fri, Jan 09, 2026 at 04:00:44PM +0800, Andy Yan wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > The DisplayPort found on RK3576 is very similar to that of RK3588,
> > but work in dual pixel mode. And itself does not depend on the I2S
> > clock or the SPDIF clock when transmit audio.
> > 
> > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > 
> > ---
> > 
> >  .../display/rockchip/rockchip,dw-dp.yaml      | 29 +++++++++++++++++--
> >  1 file changed, 26 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> > index 6345f0132d43..1bfe1bd6404a 100644
> > --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> > +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> > @@ -27,13 +27,11 @@ description: |
> >    * Pixel clock up to 594MHz
> >    * I2S, SPDIF audio interface
> >  
> > -allOf:
> > -  - $ref: /schemas/sound/dai-common.yaml#
> > -
> >  properties:
> >    compatible:
> >      enum:
> >        - rockchip,rk3588-dp
> > +      - rockchip,rk3576-dp
> >  
> >    reg:
> >      maxItems: 1
> > @@ -42,6 +40,7 @@ properties:
> >      maxItems: 1
> >  
> >    clocks:
> > +    minItems: 3
> >      items:
> >        - description: Peripheral/APB bus clock
> >        - description: DisplayPort AUX clock
> > @@ -50,6 +49,7 @@ properties:
> >        - description: SPDIF interfce clock
> >  
> >    clock-names:
> > +    minItems: 3
> >      items:
> >        - const: apb
> >        - const: aux
> > @@ -95,6 +95,29 @@ required:
> >    - ports
> >    - resets
> >  
> > +allOf:
> > +  - $ref: /schemas/sound/dai-common.yaml#
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - rockchip,rk3588-dp
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 5
> > +          maxItems: 5
> > +        clock-names:
> > +          minItems: 5
> > +          maxItems: 5
> 
> I think maxItems is not needed, since 6 items would not work for the
> specified items list anyways. Otherwise:

Correct.

Rob


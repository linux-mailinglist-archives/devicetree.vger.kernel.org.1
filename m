Return-Path: <devicetree+bounces-99760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA74796B1FC
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 08:41:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C8711C209FC
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 06:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62372136E30;
	Wed,  4 Sep 2024 06:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfntRqHh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E70E126BE6
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 06:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725432062; cv=none; b=PhemMKLxcAnSXH9m2sF8+nmgQzXJj2cHvwiPb31uvboOW7fhfsSeQiJrSISohbshnG3Rr2BSED2yM+82tpIHTv/GXzUOZdApvatOOM1TWYQk6xESNMY6edDjoLRdbtP3UeJTAsWVbVvbv7E59d++tEXPAuT2qgnblJkXljTCWVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725432062; c=relaxed/simple;
	bh=eiq22ISFTh3GnEYkyoLA51ihfk67BUTzt69jnSPsNV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ruMNFIzTqQuH766aoTgpsPf6oCx1cSzhvkluav8m2km8Sq5I2pSuntsfW+KmvT+jyUsAXHNcnXaNr0Cgt+2czaepg/bbJrp0Nc+FKqFDl9DMxZcwGB9nAy/E1/0sTU7NkIS5Pe44scIR7b4PUvKsktEUWFokoIwGX9WBeAN3X/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfntRqHh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4791C4CEC2;
	Wed,  4 Sep 2024 06:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725432061;
	bh=eiq22ISFTh3GnEYkyoLA51ihfk67BUTzt69jnSPsNV4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QfntRqHhVlZQKTEmmXJG2IDX43TFrBfPq/UEPtSr5Pz1eN+Kn8ZmtXtrfoIcdCyOa
	 U54LN6tTYMt4mVRXGqtdzeuziYV1CvMHS9OiAPaNfB5jTOLzKUkR7vOyOWMLGgZRBi
	 pQy25Wi3EtwJUYXSz5MU8xvgjFULJA/7M4VLk9EMcXXaKS8pD740KT9fID/43rrIHj
	 k6n6d9GKtA9sMNvDo4frzRaBnaLGSH0s0q2dU1nKLkyYnwc/Bw4qfSN9ghS4TDcHy3
	 zeiYRZqNas6ay7yW/0hjy4ym49mP+1sYkRlrr2T6TT1IH20P8HFBW3IcC4bn7WWZel
	 BhUlWv5LiN+BQ==
Date: Wed, 4 Sep 2024 08:40:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: mripard@kernel.org, marex@denx.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: lcdif: Document the dmas/dma-names
 properties
Message-ID: <laht7vjo23axdssodmn2fdd56vtxprahqenropjzkv6qs5he6k@p5emhlf2j6yt>
References: <20240903162729.1151134-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240903162729.1151134-1-festevam@gmail.com>

On Tue, Sep 03, 2024 at 01:27:29PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX28 has an RX DMA channel associated with the LCDIF controller.
> 
> Document the 'dmas' and 'dma-names' properties to fix the following
> dt-schema warnings:
> 
> lcdif@80030000: 'dma-names', 'dmas' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../bindings/display/fsl,lcdif.yaml           | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 0681fc49aa1b..dd462abd61f8 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -50,6 +50,14 @@ properties:
>        - const: disp_axi
>      minItems: 1
>  
> +  dmas:
> +    items:
> +      - description: DMA specifier for the RX DMA channel.
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +
>    interrupts:
>      items:
>        - description: LCDIF DMA interrupt
> @@ -156,6 +164,17 @@ allOf:
>          interrupts:
>            maxItems: 1
>  
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - fsl,imx28-lcdif
> +    then:
> +      properties:
> +        dmas: false
> +        dma-names: false

Missing blank line.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof



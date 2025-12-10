Return-Path: <devicetree+bounces-245672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB403CB40BA
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 22:19:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4368A306635F
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 21:19:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63D0132E720;
	Wed, 10 Dec 2025 21:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZQzKcpT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C15032E6BC;
	Wed, 10 Dec 2025 21:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765401547; cv=none; b=aFabIOFNiDRgv/O4yHIfdUL0mYdx3j7vHKVf/ILtoXXCumimy/jUh4l720GkPNEU56KWDFNT2H5b6iQCcTiYMD+QATHgki8o+yAdL5Yny0j07fe6aHQkwreZfawylGWp+mt/GjOvoTvUanXOeuv0c4VrS1yzB4EsfVq3TAb1Lq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765401547; c=relaxed/simple;
	bh=03sknuYCPkmVcorTKYIKQw77FBLDwfM2hq1bZJa0BtA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e6PrvXny2Pd/VIjlDAI8X/2a7xJN/ukRJBo9b6IR8gI905BoRi59enf7EMamAyTJOrp+mZYlBdnP1LnzP20CimF/jnCyDsD8AR3l4bYV88svfzJ0BaIztkfE3/YkJCls7e3iNY4NTibMaNEWdFOyqvgDxtNpKXzu4lzm1ZYjwDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZQzKcpT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79D8CC4CEF1;
	Wed, 10 Dec 2025 21:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765401546;
	bh=03sknuYCPkmVcorTKYIKQw77FBLDwfM2hq1bZJa0BtA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VZQzKcpTIeBrOqwfcANcuGYiBVT/FqdKyu7Qe100DASv6TZAQqwbMmg/h8/sbQshq
	 MDXbkmvdXbc5pEMMiz+q8R4BnIqFDNmwgCnyKmbPNcUAOCrXUrMswwyWMG+QcWvttM
	 PhED7BkMQRj4c+rUJHAfaIJodgcN59wcQteZDc7/3U724wUabdqem6mXEs16tGujmK
	 nMVEulPcm9Ti83MplBvp48iq07FrCgpq29nnDcYnSlrT0JaX5DOeaE8O5t8ohYpt4m
	 O1JwcrmarbpGLvAcrNWicLX4Dp43PMIOGiWS+KpnOtJa5MrSHUoZahWSJFGLyjMlj5
	 NkwicSt2OojJQ==
Date: Wed, 10 Dec 2025 15:19:03 -0600
From: Rob Herring <robh@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Guillaume Ranquet <granquet@baylibre.com>, kernel@collabora.com,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	=?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>
Subject: Re: [PATCH 03/12] dt-bindings: phy: mediatek,hdmi-phy: Document
 extra clocks for MT8195
Message-ID: <20251210211903.GA3352325-robh@kernel.org>
References: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
 <20251209-mtk-genio-evk-hdmi-support-v1-3-9a6106effba6@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251209-mtk-genio-evk-hdmi-support-v1-3-9a6106effba6@collabora.com>

On Tue, Dec 09, 2025 at 05:34:33PM +0100, Louis-Alexis Eyraud wrote:
> From: "Nícolas F. R. A. Prado" <nfraprado@collabora.com>
> 
> MT8195's HDMI PHY block has 4 clocks instead of just a single one.
> Describe the extra clocks for it.
> 
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 36 +++++++++++++++++++---
>  1 file changed, 32 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
> index cd4ac42ee45e4648ed512f68f6f28d1f3f2e1116..91f8118689d5e838c4d75264822bb09a00fea21b 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
> @@ -38,12 +38,12 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    items:
> -      - description: PLL reference clock
> +    minItems: 1
> +    maxItems: 4
>  
>    clock-names:
> -    items:
> -      - const: pll_ref
> +    minItems: 1
> +    maxItems: 4
>  
>    clock-output-names:
>      maxItems: 1
> @@ -79,6 +79,34 @@ required:
>    - "#phy-cells"
>    - "#clock-cells"
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          const: mediatek,mt8195-hdmi-phy

You just said mt8188 is compatible, but it's excluded here. If mt8188 
can work without knowing about the 3 new clocks (and no driver changes), 
then it is compatible .

> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: PLL reference clock
> +            - description: HDMI 26MHz clock
> +            - description: HDMI PLL1 clock
> +            - description: HDMI PLL2 clock
> +        clock-names:
> +          items:
> +            - const: pll_ref
> +            - const: hdmi_26m
> +            - const: hdmi_pll1
> +            - const: hdmi_pll2

Move all this to the top-level (so just add entries 2-4) and add 
'minItems: 1'. Here, just put 'minItems: 4' except that I assume it did 
work with 1 clock, so requiring 4 breaks the ABI.

Also, drop 'hdmi_'. It's redundant.

> +    else:
> +      properties:
> +        clocks:
> +          items:
> +            - description: PLL reference clock
> +        clock-names:
> +          items:
> +            - const: pll_ref

And here, just 'maxItems: 1'

> +
>  additionalProperties: false
>  
>  examples:
> 
> -- 
> 2.52.0
> 


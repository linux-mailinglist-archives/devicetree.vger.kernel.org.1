Return-Path: <devicetree+bounces-1492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F427A6A6E
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 20:09:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F7731C20AD7
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 18:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49FE3AC20;
	Tue, 19 Sep 2023 18:09:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D3F8460;
	Tue, 19 Sep 2023 18:09:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 307F6C433C8;
	Tue, 19 Sep 2023 18:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695146952;
	bh=NiQhEzZ16sAKsbZx0nSfSfGM+Oqurfn7GL5Vpupl3ME=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qMh1x1eWX1dPxF/rQjU9qyK5jvupSZnFN5lJhRo5QZcgCNgl9DRLJebEn0oTxgxKR
	 6hXm+2Vc4GYKV/b3pcEnNDV7vj7XItmLzQH0Z0Wyswr6f2TSEH5l/khhE/dPQciCUF
	 ha7lAs49r0QPgsLJspD5OKPANA7YmKJuzBQQ8vp2bY/6wBNG9uimXqXNOPDXwAe1AO
	 QGVNfqG68EIyQvEZlC/Gr5vTWv/WqmIHQNYM0rOfI8mBc6zyI5oRGv12W6RqjXCljJ
	 8QSSln7LWmvK+RoftT023Y5CexORitN9iJ2EWYgtfLxPtC1D8CapUTzc9iAfoiJCYR
	 jaXie/FMK4iwg==
Received: (nullmailer pid 4169551 invoked by uid 1000);
	Tue, 19 Sep 2023 18:09:09 -0000
Date: Tue, 19 Sep 2023 13:09:09 -0500
From: Rob Herring <robh@kernel.org>
To: Daniel Golle <daniel@makrotopia.org>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>, Lorenzo Bianconi <lorenzo@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH net-next v2 1/2] dt-bindings: net: mediatek,net: add
 phandles for SerDes on MT7988
Message-ID: <20230919180909.GA4151534-robh@kernel.org>
References: <cover.1695058909.git.daniel@makrotopia.org>
 <35c12a115893d324db16ec6983afb5f1951fd4c9.1695058909.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <35c12a115893d324db16ec6983afb5f1951fd4c9.1695058909.git.daniel@makrotopia.org>

On Mon, Sep 18, 2023 at 11:26:34PM +0100, Daniel Golle wrote:
> Add several phandles needed for Ethernet SerDes interfaces on the
> MediaTek MT7988 SoC.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  .../devicetree/bindings/net/mediatek,net.yaml | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/mediatek,net.yaml b/Documentation/devicetree/bindings/net/mediatek,net.yaml
> index e74502a0afe86..78219158b96af 100644
> --- a/Documentation/devicetree/bindings/net/mediatek,net.yaml
> +++ b/Documentation/devicetree/bindings/net/mediatek,net.yaml
> @@ -385,6 +385,34 @@ allOf:
>            minItems: 2
>            maxItems: 2
>  
> +        mediatek,toprgu:
> +          $ref: /schemas/types.yaml#/definitions/phandle
> +          description:
> +            Phandle to the syscon representing the reset controller.

Use the reset binding

> +
> +        mediatek,usxgmiisys:
> +          $ref: /schemas/types.yaml#/definitions/phandle-array
> +          minItems: 2
> +          maxItems: 2
> +          items:
> +            maxItems: 1
> +          description:
> +            A list of phandle to the syscon node referencing the USXGMII PCS.

Use the PCS binding

> +
> +        mediatek,xfi-pextp:
> +          $ref: /schemas/types.yaml#/definitions/phandle-array
> +          minItems: 2
> +          maxItems: 2
> +          items:
> +            maxItems: 1
> +          description:
> +            A list of phandle to the syscon node that handles the 10GE SerDes PHY.

Use the phy binding (phys, not phy-handle for ethernet PHY).

> +
> +        mediatek,xfi-pll:
> +          $ref: /schemas/types.yaml#/definitions/phandle
> +          description:
> +            Phandle to the syscon node handling the 10GE SerDes clock setup.

Use the clock binding


> +
>  patternProperties:
>    "^mac@[0-1]$":
>      type: object
> -- 
> 2.42.0


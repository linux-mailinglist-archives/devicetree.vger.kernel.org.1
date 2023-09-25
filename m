Return-Path: <devicetree+bounces-3231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E117ADCC5
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:09:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A3F20281B70
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54E1321A0B;
	Mon, 25 Sep 2023 16:09:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D9221115
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 16:09:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB61DC433C8;
	Mon, 25 Sep 2023 16:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695658196;
	bh=gcYDTYUu2Rp4Bf6iNJVLLlvth+kTKaTp+V7uWoNTvk8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hu2v/FnFlxjU8frwOTv6HaE3GhqkL+iRiOrNGXeHONKhx+WqEGulB3iqEsO3IGGEy
	 hgAxAAIBiVgi0fbqtFZJzQoffRDSYG8edHwQHI7nB+R1IdsW+9XyPHFjVb4u2EZiLY
	 JBVpmpogNZg4gAdhy3ntRNlS1U9mG7GoKkWczxIV84y7xqI4WCiRcIQHYtqNhgXRBP
	 704vKdl227PqSW7OAhjhl/wWj4vywJ+yrbw/EzARX1CuDXNFdDm7eSGy1cgYCAjguf
	 aJnuvJGV82DqnjfRPknQoBcOHD90E7VyUwr1ytV1fLcLZgm21GlTTlXPGjygHgL2WS
	 llt0nJ8BZyO4Q==
Received: (nullmailer pid 1450584 invoked by uid 1000);
	Mon, 25 Sep 2023 16:09:53 -0000
Date: Mon, 25 Sep 2023 11:09:53 -0500
From: Rob Herring <robh@kernel.org>
To: Moudy Ho <moudy.ho@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 09/16] dt-bindings: media: mediatek: mdp3: add
 component STITCH for MT8195
Message-ID: <20230925160953.GA1449445-robh@kernel.org>
References: <20230922072116.11009-1-moudy.ho@mediatek.com>
 <20230922072116.11009-10-moudy.ho@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922072116.11009-10-moudy.ho@mediatek.com>

On Fri, Sep 22, 2023 at 03:21:09PM +0800, Moudy Ho wrote:
> Add the fundamental hardware configuration of component STITCH,

STITCH? You mean TCC?

> which is controlled by MDP3 on MT8195.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>  .../bindings/media/mediatek,mdp3-tcc.yaml     | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-tcc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-tcc.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-tcc.yaml
> new file mode 100644
> index 000000000000..245e2134c74a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-tcc.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/mediatek,mdp3-tcc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Media Data Path 3 TCC
> +
> +maintainers:
> +  - Matthias Brugger <matthias.bgg@gmail.com>
> +
> +description:
> +  One of Media Data Path 3 (MDP3) components used to support
> +  HDR gamma curve conversion HDR displays.

Please say what the block does.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - mediatek,mt8195-mdp3-tcc
> +
> +  reg:
> +    maxItems: 1
> +
> +  mediatek,gce-client-reg:
> +    description:
> +      The register of display function block to be set by gce. There are 4 arguments,
> +      such as gce node, subsys id, offset and register size. The subsys id that is
> +      mapping to the register of display function blocks is defined in the gce header
> +      include/dt-bindings/gce/<chip>-gce.h of each chips.
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      items:
> +        - description: phandle of GCE
> +        - description: GCE subsys id
> +        - description: register offset
> +        - description: register size
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - mediatek,gce-client-reg
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/mt8195-clk.h>
> +    #include <dt-bindings/gce/mt8195-gce.h>
> +
> +    display@1400b000 {
> +        compatible = "mediatek,mt8195-mdp3-tcc";
> +        reg = <0x1400b000 0x1000>;
> +        mediatek,gce-client-reg = <&gce1 SUBSYS_1400XXXX 0xb000 0x1000>;
> +        clocks = <&vppsys0 CLK_VPP0_MDP_TCC>;
> +    };
> -- 
> 2.18.0
> 


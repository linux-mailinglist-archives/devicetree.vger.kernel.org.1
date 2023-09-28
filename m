Return-Path: <devicetree+bounces-4355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E94287B221C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:19:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 907F8282233
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9E151225;
	Thu, 28 Sep 2023 16:19:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400564F133
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:19:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8C59C433C8;
	Thu, 28 Sep 2023 16:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695917973;
	bh=mw3dCL34p/b/T6NWnBreYmODuNtO2bUmbCul5IYJSkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lKNi11AdR30o0vP7v+IqY9BF+c+bXg21PvtUJyg0ZXvRYfSTJmIZlNo0YQNfBpqyt
	 R/2OIMD3hx1+8VdppRQc9sdDWqFr18cwB1UweQpBr05RMw6GD4AZarq4N1zQCoqQ9a
	 4ZeMozVxmn6InZKdI4XXdo2pp7VM5S5nbBFpZOPR9pDnONIR/vNX+p/0ZiZ3cWj1a+
	 CBNL/N6xRacq5uLDFogMRIw87JDEHcU7/Z0EKG1yEotyeInQvlG/nunING72HvGO2P
	 VWHNKdjn/bWWfFyLMotPOhoACTycIdPq+jYq7tDMdYxi2ObUhJubIpvu+S9qsfoAC+
	 dC7XjVaANSEXg==
Received: (nullmailer pid 745205 invoked by uid 1000);
	Thu, 28 Sep 2023 16:19:31 -0000
Date: Thu, 28 Sep 2023 11:19:31 -0500
From: Rob Herring <robh@kernel.org>
To: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, alsa-devel@alsa-project.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: rt5616: Convert to dtschema
Message-ID: <20230928161931.GA713974-robh@kernel.org>
References: <20230925165715.34883-1-bragathemanick0908@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925165715.34883-1-bragathemanick0908@gmail.com>

On Mon, Sep 25, 2023 at 10:27:15PM +0530, Bragatheswaran Manickavel wrote:
> Convert the rt5616 audio CODEC bindings to DT schema

> No error/warning seen when running make dt_binding_check

No need to say that. That's the assumption and it should never get 
applied if not.

> 
> Signed-off-by: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
> ---
>  .../bindings/sound/realtek,rt5616.yaml        | 53 +++++++++++++++++++
>  .../devicetree/bindings/sound/rt5616.txt      | 32 -----------
>  2 files changed, 53 insertions(+), 32 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/realtek,rt5616.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/rt5616.txt
> 
> diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml b/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml
> new file mode 100644
> index 000000000000..00ff9b4e3c7e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/realtek,rt5616.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/realtek,rt5616.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek rt5616 ALSA SoC audio codec driver
> +
> +description: |
> +  Pins on the device (for linking into audio routes) for RT5616:
> +
> +      * IN1P
> +      * IN2P
> +      * IN2N
> +      * LOUTL
> +      * LOUTR
> +      * HPOL
> +      * HPOR
> +
> +maintainers:
> +  - Bard Liao <bardliao@realtek.com>
> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: realtek,rt5616
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#sound-dai-cells'

This was not in the original doc. Was that an error? If so, just state 
that in the commit msg.

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;

blank line

> +        codec@1b {

audio-codec@1b

> +            compatible = "realtek,rt5616";
> +            reg = <0x1b>;
> +            #sound-dai-cells = <0>;
> +        };
> +    };


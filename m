Return-Path: <devicetree+bounces-4357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1A57B2241
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:26:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E20F82817B2
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A5E84F140;
	Thu, 28 Sep 2023 16:26:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89F3B3C6BE
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:26:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C143FC433C8;
	Thu, 28 Sep 2023 16:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695918363;
	bh=qBwpoROPKOA1G8tWAKHC0Qyx+Q3++807z1IAA1w0icU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FOve22FScEYTglztVPTZ/zdWTck9y+1xwFqEWHNTY84L6mwYPEoTtFWIdZuHLGMUm
	 XH1D7gv5sToPdwkwkOfOO8vp56m9TCF6KMR8YsCw2thBIx/J3gBZJgDc+vWOTzLR6x
	 HkZqXFRjbUMsYMMgsTHFCH4hj8kvEiqkkwEW+7T2nmOi/KOavPyHYiJM/EF4xGQRUb
	 S+JREpe1eYaKmTxf/g28WpteM0brL+Fl146uGvonw0zNSDXyAWLOApgqlXLAqw9clU
	 4rBAas/zvZ39kfT4JM46bYfUw9HN/D8hJJVoYnR6/RzzbDI0ja2gDzmWVN2DLGqhRd
	 aU34FrlfSEZuw==
Received: (nullmailer pid 811391 invoked by uid 1000);
	Thu, 28 Sep 2023 16:26:00 -0000
Date: Thu, 28 Sep 2023 11:26:00 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Polimera <quic_vpolimer@quicinc.com>, Ryan McCann <quic_rmccann@quicinc.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, Liu Shixin <liushixin2@huawei.com>, Krishna Manikandan <quic_mkrishn@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/6] dt-bindings: display: msm: Add SDM670 MDSS
Message-ID: <20230928162600.GA759245-robh@kernel.org>
References: <20230925232625.846666-9-mailingradian@gmail.com>
 <20230925232625.846666-12-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925232625.846666-12-mailingradian@gmail.com>

On Mon, Sep 25, 2023 at 07:26:30PM -0400, Richard Acayan wrote:
> Add documentation for the SDM670 display subsystem, adapted from the
> SDM845 and SM6125 documentation.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  .../display/msm/qcom,sdm670-mdss.yaml         | 280 ++++++++++++++++++
>  1 file changed, 280 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.yaml
> new file mode 100644
> index 000000000000..839b372759ed
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.yaml
> @@ -0,0 +1,280 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/msm/qcom,sdm670-mdss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SDM670 Display MDSS
> +
> +maintainers:
> +  - Richard Acayan <mailingradian@gmail.com>
> +
> +description:
> +  SDM670 MSM Mobile Display Subsystem (MDSS), which encapsulates sub-blocks
> +  like DPU display controller, DSI and DP interfaces etc.
> +
> +$ref: /schemas/display/msm/mdss-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: qcom,sdm670-mdss
> +
> +  clocks:
> +    items:
> +      - description: Display AHB clock from gcc
> +      - description: Display core clock
> +
> +  clock-names:
> +    items:
> +      - const: iface
> +      - const: core
> +
> +  iommus:
> +    maxItems: 2
> +
> +  interconnects:
> +    maxItems: 2
> +
> +  interconnect-names:
> +    maxItems: 2
> +
> +patternProperties:
> +  "^display-controller@[0-9a-f]+$":
> +    type: object

       additionalProperties: true

Same for the rest. I've sent a patch doing this for all the existing 
ones.

> +    properties:
> +      compatible:
> +        const: qcom,sdm670-dpu
> +
> +  "^displayport-controller@[0-9a-f]+$":
> +    type: object
> +    properties:
> +      compatible:
> +        const: qcom,sdm670-dp
> +
> +  "^dsi@[0-9a-f]+$":
> +    type: object
> +    properties:
> +      compatible:
> +        items:
> +          - const: qcom,sdm670-dsi-ctrl
> +          - const: qcom,mdss-dsi-ctrl

No need to be exact here because the full schema will be. Just contains 
is fine here:

compatible
  contains:
    const: qcom,sdm670-dsi-ctrl

> +
> +  "^phy@[0-9a-f]+$":
> +    type: object
> +    properties:
> +      compatible:
> +        const: qcom,dsi-phy-10nm
> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false
> +


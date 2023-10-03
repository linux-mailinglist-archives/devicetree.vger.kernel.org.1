Return-Path: <devicetree+bounces-5454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 891CB7B6675
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:31:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3B7DB281798
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10903D28F;
	Tue,  3 Oct 2023 10:31:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432E4208BA
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 10:31:55 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8994493
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 03:31:53 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-59f4f80d084so8572387b3.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 03:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696329113; x=1696933913; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/lF9B+2dpTS8/Po6eS2skpxFPjbGsje6xB3H5xe9qeo=;
        b=QPX5dY5A13DHebvAVc4bzMzwSXF1DKShHk5JYX/z3um+355FACGxAtTH82dYd5Pygh
         Bji5Tx9LLKb2fgFPdFX460NVSWY17CL4OpqLVV1hNBlztsWaDNDCdXta0MnORJ76l9wL
         mudQ7CqcFgpR9cIoD9WGmDMVhIsi9uWg4rKfbEcuGzTwghsm7o11v9btnbO29it0d/1b
         SIJ2yfpq2kM6zlvSdC4lCCppfzharxP35oTiSwPaUpAnKdzNG7+uRi4OVbo9kZLbJNgf
         AwcgbFpXgO34tBGiuZVzY5ez1ESXY6K1clu40COmvKxzKhNoDIUPrVh7c1iVNuJSARPr
         WV7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696329113; x=1696933913;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/lF9B+2dpTS8/Po6eS2skpxFPjbGsje6xB3H5xe9qeo=;
        b=h210KPBB7is1x1PImEmPq7GjymmgfPm/qYOtc8Q6qllmz9fcZhIV2E9vmYcnSQgQj7
         aMO/Z0uv8l846NYUl9ca+iqLB7/Gv8omeB99nRUVKqRkhcs7V0T2OM8uuyWe3fMNjGLD
         dKStQ/Law2FAF8+7Cx/6XPbSvDT8OSce1E0Cp1XA6W7ejQUfAsSPRBIiK9MlL5tsW8rY
         V4cC9wXJDapDDGtrlJsdY+bT9rx+UhjeIHy8wWzks5l6jOmedvBjLSog+q7U6Q+oORIi
         EJvtxJqTsbfJEawqFw9A4gvukWKSSDUNsVr04O5QMNtameeCHTAE49ee/IxPNnqQwiDU
         HdwA==
X-Gm-Message-State: AOJu0YwRTqVrYp9Re+GQCCLX4ePZkYaBM+9OlRukDygQA0XbOmh4C1Zt
	lGFXDNAeTNmoj1m+7KTIWifr+Lgj5cTn7lCDjbxkJg==
X-Google-Smtp-Source: AGHT+IFElae2Chizu09rbxtsGekkDJqYVsUMzlbpa3Ag9xBlODTikxqoTX1U/6YW+bG8ZRBAEjRX06W8BzrJ3AzuxAs=
X-Received: by 2002:a81:8356:0:b0:59f:519e:3e7c with SMTP id
 t83-20020a818356000000b0059f519e3e7cmr14992115ywf.24.1696329112725; Tue, 03
 Oct 2023 03:31:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231003012119.857198-9-mailingradian@gmail.com>
 <20231003012119.857198-12-mailingradian@gmail.com> <fa926d91-f748-4886-ae6d-f55541e40f5c@linaro.org>
In-Reply-To: <fa926d91-f748-4886-ae6d-f55541e40f5c@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 3 Oct 2023 13:31:41 +0300
Message-ID: <CAA8EJpqPP=X8-jD_mwSmO8OMaxb_0Yo3j-b9chyChORDyvdWAQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: display: msm: Add SDM670 MDSS
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Richard Acayan <mailingradian@gmail.com>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Vinod Polimera <quic_vpolimer@quicinc.com>, Ryan McCann <quic_rmccann@quicinc.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Liu Shixin <liushixin2@huawei.com>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 3 Oct 2023 at 11:48, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 03/10/2023 03:21, Richard Acayan wrote:
> > Add documentation for the SDM670 display subsystem, adapted from the
> > SDM845 and SM6125 documentation.
> >
> > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > ---
> >  .../display/msm/qcom,sdm670-mdss.yaml         | 287 ++++++++++++++++++
> >  1 file changed, 287 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.yaml
> > new file mode 100644
> > index 000000000000..9995b018cd9e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.yaml
> > @@ -0,0 +1,287 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/msm/qcom,sdm670-mdss.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm SDM670 Display MDSS
> > +
> > +maintainers:
> > +  - Richard Acayan <mailingradian@gmail.com>
> > +
> > +description:
> > +  SDM670 MSM Mobile Display Subsystem (MDSS), which encapsulates sub-blocks
> > +  like DPU display controller, DSI and DP interfaces etc.
> > +
> > +$ref: /schemas/display/msm/mdss-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,sdm670-mdss
> > +
> > +  clocks:
> > +    items:
> > +      - description: Display AHB clock from gcc
> > +      - description: Display core clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: iface
> > +      - const: core
> > +
> > +  iommus:
> > +    maxItems: 2
> > +
> > +  interconnects:
> > +    maxItems: 2
> > +
> > +  interconnect-names:
> > +    maxItems: 2
> > +
> > +patternProperties:
> > +  "^display-controller@[0-9a-f]+$":
> > +    type: object
> > +    additionalProperties: true
> > +
> > +    properties:
> > +      compatible:
> > +        const: qcom,sdm670-dpu
> > +
> > +  "^displayport-controller@[0-9a-f]+$":
> > +    type: object
> > +    additionalProperties: true
> > +
> > +    properties:
> > +      compatible:
> > +        const: qcom,sdm670-dp
> > +
> > +  "^dsi@[0-9a-f]+$":
> > +    type: object
> > +    additionalProperties: true
> > +
> > +    properties:
> > +      compatible:
> > +        contains:
> > +          const: qcom,sdm670-dsi-ctrl
> > +
> > +  "^phy@[0-9a-f]+$":
> > +    type: object
> > +    additionalProperties: true
> > +
> > +    properties:
> > +      compatible:
> > +        const: qcom,dsi-phy-10nm
>
> This does not look right. Why the compatible is generic, not SoC-specific?

Because for 10nm DSI PHY we don't have SoC-specific compatibles other
than the ugly 8998 compat string.

>
> > +
> > +required:
> > +  - compatible
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/qcom,dispcc-sdm845.h>
> > +    #include <dt-bindings/clock/qcom,gcc-sdm845.h>
> > +    #include <dt-bindings/clock/qcom,rpmh.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/power/qcom-rpmpd.h>
> > +
> > +    display-subsystem@ae00000 {
> > +        compatible = "qcom,sdm670-mdss";
> > +        reg = <0x0ae00000 0x1000>;
> > +        reg-names = "mdss";
> > +        power-domains = <&dispcc MDSS_GDSC>;
> > +
> > +        clocks = <&gcc GCC_DISP_AHB_CLK>,
> > +                 <&dispcc DISP_CC_MDSS_MDP_CLK>;
> > +        clock-names = "iface", "core";
> > +
> > +        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> > +        interrupt-controller;
> > +        #interrupt-cells = <1>;
> > +
>
> Please add interconnects. They do not have to be 100% exact with DTS
> (unless interconnect header is not merged?). This is just an example.
>
> > +        iommus = <&apps_smmu 0x880 0x8>,
> > +                 <&apps_smmu 0xc80 0x8>;
>
> > +
> > +        #address-cells = <1>;
> > +        #size-cells = <1>;
> > +        ranges;
> > +
>
> Best regards,
> Krzysztof
>


-- 
With best wishes
Dmitry


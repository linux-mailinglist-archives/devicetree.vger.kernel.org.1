Return-Path: <devicetree+bounces-29171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B676821B5A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 13:05:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1003B1F21ABA
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 12:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CFB1EAE4;
	Tue,  2 Jan 2024 12:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iRzhq4E5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E08F9C4
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 12:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dbd721384c0so7523817276.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 04:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704197120; x=1704801920; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r7dyv4CcIU9mcvBuepSVkLmk0uNvBhGYSbHRwghn+UA=;
        b=iRzhq4E5qXsvFK2f52/mzrj8tkI/EnoNYTeVhNIs2CEZObhBI5z0Ep0NLleuFSHh30
         M2ILvdX3fnKw79aZm0v9owhF/a7Fr1qOhdTPGqfCuoYP6NfEZcTOWxxQew4pZno5+2U+
         cnNk2PdYqDAAEIURo9v00MdVJVuli8nHntMF9qT0nrhHEXvB0cXguAbacxudBnC7cyR7
         gv+/I5+6qtFS4JiMF7YRyqpiI/C9/o3MLCikM+uvEjaKXGs3SHH5kM4ApUf+OG2JnOND
         iSR2HIeEw+dXG6NFXCE8MgRbV3VH50O/JDX4EYQOlBAtZBXvwk1gQjKkbNI32dpPsTOa
         JLZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704197120; x=1704801920;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r7dyv4CcIU9mcvBuepSVkLmk0uNvBhGYSbHRwghn+UA=;
        b=mPqTs7MqktudpY5l2XXoEdoUiA9vd65P1XbCT+YVmB3Y3uhWRvoIlXYvCHRjQRA0ZJ
         BizmjPN07IffmtVP5cPfAA2U+c7YqmFPzaECzRZwWEFiGmq9jg5N4ISTHRVEhAnIMZfF
         bAMSyaNS+/ZhRqYkry5DtTTzuK+tkMsIQcY1BuhHYYPN1uiKtaCbPHwEVfoXfId4P6+P
         RBUdzQ1Yjy+c1RHt9lYXecXpn3GYsErxDfkjiJUms/haqEPBexFKstwi5xGuzek0p/qn
         og3r9oGnYOWvoJxiAk3Q25MJ4TFoe317tDr8+n6h2FR+xE6kHziarrAApq3OOYfkb6fK
         N4Bg==
X-Gm-Message-State: AOJu0YxSdFiE9E3MPjpWVZuIAA8YQ+K5Is+V7wLc+XL7nh+7kGeV1sng
	ImJEa0BElMwdB8k/wwa9fDexB41SezDgXxDJxC4PLq1FqsvlWw==
X-Google-Smtp-Source: AGHT+IEeXcgSMZejIaCJRLPq2x5vR0P7iAZihrqFzc//NjqYOvq4btaXpo77KUSX72yNiNFkRjmDTr0E4xzqSgpOy28=
X-Received: by 2002:a25:b310:0:b0:dbd:986e:2e9f with SMTP id
 l16-20020a25b310000000b00dbd986e2e9fmr8149442ybj.91.1704197120329; Tue, 02
 Jan 2024 04:05:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231231-hfpll-yaml-v1-0-359d44a4e194@z3ntu.xyz> <20231231-hfpll-yaml-v1-1-359d44a4e194@z3ntu.xyz>
In-Reply-To: <20231231-hfpll-yaml-v1-1-359d44a4e194@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 Jan 2024 14:05:09 +0200
Message-ID: <CAA8EJpqF=3n8vUrEzrGGLc4JtQ-s4EcOOr_NKC0rknwE0tuShw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: clock: qcom,hfpll: Convert to YAML
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 31 Dec 2023 at 16:49, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> Convert the .txt documentation to .yaml.
>
> Take the liberty to change the compatibles for ipq8064, apq8064, msm8974
> and msm8960 to follow the updated naming schema. These compatibles are
> not used upstream yet.
>
> Also add a compatible for QCS404 since that SoC upstream already uses
> qcom,hfpll compatible but without an SoC-specific string.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  .../devicetree/bindings/clock/qcom,hfpll.txt       | 63 -----------------
>  .../devicetree/bindings/clock/qcom,hfpll.yaml      | 82 ++++++++++++++++++++++
>  2 files changed, 82 insertions(+), 63 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/qcom,hfpll.txt b/Documentation/devicetree/bindings/clock/qcom,hfpll.txt
> deleted file mode 100644
> index 5769cbbe76be..000000000000
> --- a/Documentation/devicetree/bindings/clock/qcom,hfpll.txt
> +++ /dev/null
> @@ -1,63 +0,0 @@
> -High-Frequency PLL (HFPLL)
> -
> -PROPERTIES
> -
> -- compatible:
> -       Usage: required
> -       Value type: <string>:
> -               shall contain only one of the following. The generic
> -               compatible "qcom,hfpll" should be also included.
> -
> -                        "qcom,hfpll-ipq8064", "qcom,hfpll"
> -                        "qcom,hfpll-apq8064", "qcom,hfpll"
> -                        "qcom,hfpll-msm8974", "qcom,hfpll"
> -                        "qcom,hfpll-msm8960", "qcom,hfpll"
> -                        "qcom,msm8976-hfpll-a53", "qcom,hfpll"
> -                        "qcom,msm8976-hfpll-a72", "qcom,hfpll"
> -                        "qcom,msm8976-hfpll-cci", "qcom,hfpll"
> -
> -- reg:
> -       Usage: required
> -       Value type: <prop-encoded-array>
> -       Definition: address and size of HPLL registers. An optional second
> -                   element specifies the address and size of the alias
> -                   register region.
> -
> -- clocks:
> -       Usage: required
> -       Value type: <prop-encoded-array>
> -       Definition: reference to the xo clock.
> -
> -- clock-names:
> -       Usage: required
> -       Value type: <stringlist>
> -       Definition: must be "xo".
> -
> -- clock-output-names:
> -       Usage: required
> -       Value type: <string>
> -       Definition: Name of the PLL. Typically hfpllX where X is a CPU number
> -                   starting at 0. Otherwise hfpll_Y where Y is more specific
> -                   such as "l2".
> -
> -Example:
> -
> -1) An HFPLL for the L2 cache.
> -
> -       clock-controller@f9016000 {
> -               compatible = "qcom,hfpll-ipq8064", "qcom,hfpll";
> -               reg = <0xf9016000 0x30>;
> -               clocks = <&xo_board>;
> -               clock-names = "xo";
> -               clock-output-names = "hfpll_l2";
> -       };
> -
> -2) An HFPLL for CPU0. This HFPLL has the alias register region.
> -
> -       clock-controller@f908a000 {
> -               compatible = "qcom,hfpll-ipq8064", "qcom,hfpll";
> -               reg = <0xf908a000 0x30>, <0xf900a000 0x30>;
> -               clocks = <&xo_board>;
> -               clock-names = "xo";
> -               clock-output-names = "hfpll0";
> -       };
> diff --git a/Documentation/devicetree/bindings/clock/qcom,hfpll.yaml b/Documentation/devicetree/bindings/clock/qcom,hfpll.yaml
> new file mode 100644
> index 000000000000..2cb4098012bc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/qcom,hfpll.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/qcom,hfpll.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm High-Frequency PLL
> +
> +maintainers:
> +  - Bjorn Andersson <andersson@kernel.org>
> +
> +description:
> +  The HFPLL is used as CPU PLL on various Qualcomm SoCs.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - qcom,apq8064-hfpll
> +          - qcom,ipq8064-hfpll
> +          - qcom,msm8960-hfpll

I think we should drop these entries. On msm8960 / apq8064 / ipq8064
the HFPLLs are a part of GCC, so there is no need for a separate
compat entry.

> +          - qcom,msm8974-hfpll

This one is good, the HFPLL is separate, next to the acc / saw

> +          - qcom,msm8976-hfpll-a53
> +          - qcom,msm8976-hfpll-a72
> +          - qcom,msm8976-hfpll-cci

Ok.

> +          - qcom,qcs404-hfpll
> +      - const: qcom,hfpll
> +
> +  reg:
> +    items:
> +      - description: Base address and size of the register region
> +      - description: Optional base address and size of the alias register region
> +    minItems: 1
> +
> +  '#clock-cells':
> +    const: 0
> +
> +  clocks:
> +    items:
> +      - description: board XO clock
> +
> +  clock-names:
> +    items:
> +      - const: xo
> +
> +  clock-output-names:
> +    description:
> +      Name of the PLL. Typically hfpllX where X is a CPU number starting at 0.
> +      Otherwise hfpll_Y where Y is more specific such as "l2".
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +  - clocks
> +  - clock-names
> +  - clock-output-names
> +
> +additionalProperties: false
> +
> +examples:
> +  # Example 1 - HFPLL for L2 cache
> +  - |
> +    clock-controller@f9016000 {
> +        compatible = "qcom,ipq8064-hfpll", "qcom,hfpll";
> +        reg = <0xf9016000 0x30>;
> +        clocks = <&xo_board>;
> +        clock-names = "xo";
> +        clock-output-names = "hfpll_l2";
> +        #clock-cells = <0>;
> +    };
> +  # Example 2 - HFPLL for CPU0
> +  - |
> +    clock-controller@f908a000 {
> +        compatible = "qcom,ipq8064-hfpll", "qcom,hfpll";
> +        reg = <0xf908a000 0x30>, <0xf900a000 0x30>;
> +        clocks = <&xo_board>;
> +        clock-names = "xo";
> +        clock-output-names = "hfpll0";
> +        #clock-cells = <0>;
> +    };
>
> --
> 2.43.0
>
>


-- 
With best wishes
Dmitry


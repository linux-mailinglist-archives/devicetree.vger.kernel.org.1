Return-Path: <devicetree+bounces-15373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 019787E9D44
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:35:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A676B1F211AB
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37131DA3F;
	Mon, 13 Nov 2023 13:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MJvRt5fb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764881E524
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:35:21 +0000 (UTC)
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F5891A2
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 05:35:19 -0800 (PST)
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-daead9cde1eso4145699276.2
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 05:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699882518; x=1700487318; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WxaBetmt1VHQkxFwpab5NRYOQI6Xx5tYoo4BJzlpyR0=;
        b=MJvRt5fbADU8RJrP8b9qlxdsPqtT6uMryfJBfliBWtKzmnri5+XoL99zl+lI5KRoVd
         nHuBsluSpH4VUf7YlouQ3CQCSWMDbGZz1TDUNPY1GWXEtBDQjXXIVj/qHeWasDWsHYoi
         N2pQfZ1d/oZKsTWMs2lVrW2H5566xhqFCYN0ezQNuwKHvftaKXzJAa5GlofisvdCfCpA
         wI4y0zRDWRU2tZr8OuTdvIeAKiVZp9voA0cIPpCdCSaW4/U0UrHUIko+nWFNFDt9I8ro
         8BAxNtND0UqkJgXbM6H7mdT9HXqyTRDd4GAv1xKjUdruj+omORfcGTmnnKwpXub+2BhA
         V34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699882518; x=1700487318;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WxaBetmt1VHQkxFwpab5NRYOQI6Xx5tYoo4BJzlpyR0=;
        b=PQf9teRZUO8FAQdhcJq5kJ5xDErtM7ilrXQ5VyxmjCdnZLYGeFyqtMLqkhg7xio4eF
         1DNnFupqZqGRVyXGQnpiTKr6z8Ir7sIXPT5OuKAeQQozcMRBONlfdLHiuyLfJYuOsXRs
         MTtax9idyFHj/8iqbMRDg2Ru7i6LCcUQH3+V+jiDtrZJpVPs7fItFJz8ub0Uua+zC4Hs
         db9shAL5sIuKylWLnB8cFCtRSWTFNkC629yuFURHi7YWcpgMZlPAt0qYGWsL8jp3zuo4
         Nu2a5Opss0z8H9Lwv7aYoXytHowI6xTmyLutvN+9HBuVZkmqTeRNFPl/QEnEuO09QA5u
         ItHQ==
X-Gm-Message-State: AOJu0YxN4HCeqvkarGCwUYvOB848oXQ16siZMUVsQkSYU9eQ9BPPD96M
	hs/tagGoAqC91CZBl4UyvRilk8QL9tq/O+DUBwntcw==
X-Google-Smtp-Source: AGHT+IGPu7Rn5TQZs+nbjVZoYL/TJSffa3l5p9Nq+lau/Fo1c7x1h4SnyWxankMCKEl1H6csQ9NB+nxzflMOa4pF/l0=
X-Received: by 2002:a25:c048:0:b0:da0:69e4:29d5 with SMTP id
 c69-20020a25c048000000b00da069e429d5mr3641047ybf.43.1699882518441; Mon, 13
 Nov 2023 05:35:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231112184557.3801-1-krzysztof.kozlowski@linaro.org> <20231112184557.3801-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231112184557.3801-2-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 13 Nov 2023 15:35:07 +0200
Message-ID: <CAA8EJpqGNF=j4Ym-mFGb9XyQkXWd2DWm3MzRKmnQckFkBh1X7w@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: PCI: qcom: correct clocks for SC8180x
 and SM8150
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 12 Nov 2023 at 20:46, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> PCI node in Qualcomm SC8180x DTS has 8 clocks, while one on SM8150 has 7
> clocks:
>
>   sc8180x-primus.dtb: pci@1c00000: 'oneOf' conditional failed, one must be fixed:
>     ['pipe', 'aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'ref', 'tbu'] is too short
>
>   sm8150-hdk.dtb: pci@1c00000: 'oneOf' conditional failed, one must be fixed:
>     ['pipe', 'aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'ref', 'tbu'] is too short
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 58 ++++++++++++++++++-
>  1 file changed, 57 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index 14d25e8a18e4..4c993ea97d7c 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -479,6 +479,35 @@ allOf:
>            items:
>              - const: pci # PCIe core reset
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,pcie-sc8180x
> +    then:
> +      oneOf:
> +        - properties:
> +            clocks:
> +              minItems: 8
> +              maxItems: 8
> +            clock-names:
> +              items:
> +                - const: pipe # PIPE clock
> +                - const: aux # Auxiliary clock
> +                - const: cfg # Configuration clock
> +                - const: bus_master # Master AXI clock
> +                - const: bus_slave # Slave AXI clock
> +                - const: slave_q2a # Slave Q2A clock
> +                - const: ref # REFERENCE clock
> +                - const: tbu # PCIe TBU clock
> +      properties:
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: pci # PCIe core reset
> +
>    - if:
>        properties:
>          compatible:
> @@ -527,8 +556,35 @@ allOf:
>          compatible:
>            contains:
>              enum:
> -              - qcom,pcie-sc8180x
>                - qcom,pcie-sm8150
> +    then:
> +      oneOf:
> +        - properties:
> +            clocks:
> +              minItems: 7
> +              maxItems: 7
> +            clock-names:
> +              items:
> +                - const: pipe # PIPE clock
> +                - const: aux # Auxiliary clock
> +                - const: cfg # Configuration clock
> +                - const: bus_master # Master AXI clock
> +                - const: bus_slave # Slave AXI clock
> +                - const: slave_q2a # Slave Q2A clock

Which actually brings up a question, there is the corresponding clkref
gcc clock.
Mani, do you know if we should use it on sm8150?

> +                - const: tbu # PCIe TBU clock
> +      properties:
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: pci # PCIe core reset
> +
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
>                - qcom,pcie-sm8250
>      then:
>        oneOf:
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry


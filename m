Return-Path: <devicetree+bounces-23063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9754B80A1DD
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 12:09:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5159B281A08
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 11:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A41219BBF;
	Fri,  8 Dec 2023 11:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x1ehbaEm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77FC510C2
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 03:09:38 -0800 (PST)
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-dbc55ebb312so355301276.1
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 03:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702033777; x=1702638577; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W+6I4hiDdnv4ZiBUCigpUef8rfkBrmTbuDLH13/aZAU=;
        b=x1ehbaEm2VR3cEpsz//L5GD9Egd8PhH/A1pQJIzXcgwPRRM13akb9jBGu17FDjbyZk
         DRtKI6Fk3aqQZzZT/9GUFEPwKT5jyDqiY52f5DSuMeohd8h77PwAQ6rgUCVq4jNC6ClO
         BqemzQNalICjVO6KQ72OfbHSioFOQ33fiGIgVHYU7YJIrgJDwLSYaIhgkh5JAUyOmdJS
         fDE3HS6D+QusAUAgnevMYNyZTinUrzMIvqww6NPAeaxpHohqXJEiLHsbUZpLdPO1Z31s
         vqqLLEBaShVaEBMk3AaQR6nwSivd5yM74/ZtJ+Is9KLE7msd92VRyAPjwNZKZqaNlxQF
         eSNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702033777; x=1702638577;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W+6I4hiDdnv4ZiBUCigpUef8rfkBrmTbuDLH13/aZAU=;
        b=VQVuMgAtp+8ST2ga6sD9qaKxUsMMVa7JmAzVKb5KnK4ABDGgv8mMI+jvVgpukQhWRJ
         wSdNHzKWGMmUNwVE1kVbNllFl4OMiqWU5/+b+2J/NRzQE6Eep2riBnz04DMAozJ2ccpd
         WH0XmzHZOroAQVPDGUQwC9VVw0y2ELrvfwLVLH1xtmAj3JeeBMU/krU5KTc3zi8Tjmv/
         9aeVFnXAZke9vLE7xhhpDDqZPx1qEvHnf60ut2Wgyq8O14bGsIYpIUIfXp0RL2AHJX9q
         0LTaRXVZ3jG0YuMDRiCGnl7xiTzEm/lZOZTHNXqJxmpEsGEAr7f1xh8B5hTcDSnx5lRf
         j9Sg==
X-Gm-Message-State: AOJu0Yxrc9m4U7ZQ0DpQtYUZM4/a7udzJj/ngiN7ypCDhtqj/RpppIyb
	FyywSHZ//zaHxEWtMQ1T8qTzgG01A4Ez+xv2yKW4bg==
X-Google-Smtp-Source: AGHT+IE1UQ/9GBLRNmLtO49k8MQX9GWPLfHA1VvWI72wjp9t27xAyw5cLWsq5Zjt6KbfXotzloHsdZhoFr0Qqw9y9KY=
X-Received: by 2002:a25:bfc2:0:b0:db7:dacf:6209 with SMTP id
 q2-20020a25bfc2000000b00db7dacf6209mr3461261ybm.91.1702033777658; Fri, 08 Dec
 2023 03:09:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231208105155.36097-1-krzysztof.kozlowski@linaro.org> <20231208105155.36097-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231208105155.36097-3-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 8 Dec 2023 13:09:26 +0200
Message-ID: <CAA8EJpqKM45=6R0fHjDjNWfZpR-QxRoJo-ioB-t-WT188jpqnA@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: PCI: qcom: correct clocks for SM8150
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 8 Dec 2023 at 12:52, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> PCI node in Qualcomm SM8150 should have exactly 8 clocks, including the
> ref clock.
>
> Suggested-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Please take the patch via PCI tree.
>
> Changes in v3:
> 1. New patch: Split from sc8180x change.
> 2. Add refclk as explained here:
>    https://lore.kernel.org/all/20231121065440.GB3315@thinkpad/
> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index 5214bf7a9045..a93ab3b54066 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -559,6 +559,32 @@ allOf:
>            contains:
>              enum:
>                - qcom,pcie-sm8150
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 8
> +          maxItems: 8
> +        clock-names:
> +          items:
> +            - const: pipe # PIPE clock
> +            - const: aux # Auxiliary clock
> +            - const: cfg # Configuration clock
> +            - const: bus_master # Master AXI clock
> +            - const: bus_slave # Slave AXI clock
> +            - const: slave_q2a # Slave Q2A clock
> +            - const: tbu # PCIe TBU clock
> +            - const: ref # REFERENCE clock

Can we change the order of the tbu and ref clocks and fold this into
the sc810x case?

> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: pci # PCIe core reset
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


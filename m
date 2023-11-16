Return-Path: <devicetree+bounces-16140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E64C27EDB6D
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 07:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22B911C2039F
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 06:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89D9CDDB5;
	Thu, 16 Nov 2023 06:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SC9jUjOh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AC9DDAB;
	Thu, 16 Nov 2023 06:05:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F1E8C433C8;
	Thu, 16 Nov 2023 06:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700114755;
	bh=B36lbKAAn1whA4DTcAjeUDPo5i0BoaQAKk0kLOv7+Mc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SC9jUjOhjj6aTYcTLsK8Zp8lA6m/gFqGEdA2xaOwwzKgwc2utVzaF6Y7VgkE5NvtZ
	 dSpzXaKv0E8DM9RkszoHVYTL8u43nsWL6aRSs9DG9Tnk4OFS/BkWyyKKTtklfdkF6m
	 66VCk4J7zrsY7M+fd9Pik9nwbT4tsotakSnqTxXBfabaB+OD2hM/YWHZOLglpErS9l
	 e18FtbQZ857rzC4MJTwcP0ubzktClDl9nV+RDvVxUQQMJ6+dkP9UiZtr7YjbGWbtE5
	 XirNa9plIfpAnaABkf9OB8xpUdN9Hatg/pzLf0isf8Lk/BWyuBH2CMdoUvzcSsiobO
	 Lz9M7V8Ky3d+g==
Date: Thu, 16 Nov 2023 11:35:41 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: PCI: qcom: correct clocks for SC8180x
 and SM8150
Message-ID: <20231116060541.GC3443@thinkpad>
References: <20231112184557.3801-1-krzysztof.kozlowski@linaro.org>
 <20231112184557.3801-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231112184557.3801-2-krzysztof.kozlowski@linaro.org>

On Sun, Nov 12, 2023 at 07:45:57PM +0100, Krzysztof Kozlowski wrote:
> PCI node in Qualcomm SC8180x DTS has 8 clocks, while one on SM8150 has 7
> clocks:
> 
>   sc8180x-primus.dtb: pci@1c00000: 'oneOf' conditional failed, one must be fixed:
>     ['pipe', 'aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'ref', 'tbu'] is too short
> 
>   sm8150-hdk.dtb: pci@1c00000: 'oneOf' conditional failed, one must be fixed:
>     ['pipe', 'aux', 'cfg', 'bus_master', 'bus_slave', 'slave_q2a', 'ref', 'tbu'] is too short

This error says that SM8150 has 8 clocks defined in DT, but it has only 7. I'm
confused.

> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Anyway, the patch looks good to me.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

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

-- 
மணிவண்ணன் சதாசிவம்


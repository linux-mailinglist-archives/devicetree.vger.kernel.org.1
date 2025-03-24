Return-Path: <devicetree+bounces-160029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE20BA6D579
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 08:53:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71681169D1A
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 07:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B43259C8C;
	Mon, 24 Mar 2025 07:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bjgUCvOc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A19F1662E9
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 07:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742802787; cv=none; b=A2fJWBGAlKMqW6hsp0SWa1dp9wkJdiXjOMKKPAU2B7antIitTZFMwn1aRqk+W4cDRFWv4ShSANUKfNwBu7apIGo3j9e2LhkWC0ryrCWDIgtE90kQCAQexepSqVfFEyLBiu4ggoDCfSKenfNfPh5wsRFa9hKLYAqjtF4gKV9c7Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742802787; c=relaxed/simple;
	bh=4Ea+mxTlq3Ce/OhMKbQU/KOrj+GAvnVEVIu2gZtDLPE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ux3Daxi8ynuFz2GMEVqhJ/GA+LjQ3j0aHA/Lwjvd3x2sMLoFGSBDNaDk6HRX/03BtG3iEcPQmohEjQMfJOg+ak8z6tarXats6Jw/YC6poL9EfWZO8pTPHfnLNnBKr1x9CthWI8U5JcNkCZFLIoq5ii4jv3H7AhNZzy8VbckxDvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bjgUCvOc; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-224100e9a5cso74301435ad.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 00:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742802785; x=1743407585; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pb0coG8ELzx5NL39dsEd5n2HDvAmuNrsLf2r8J2plFk=;
        b=bjgUCvOcCu9+XvK1UCrl6iAAW30Sc1tTagzyq5T821wVV7cyk+nuLE3I9OsjGFmUFh
         yq3XzMtfElpkb0s7R2RgxF/hh9SAr8k+1ysC39RsmkA1Hnm91C3K+Bq7agkKuMWhU6Xs
         9nlsBMhG8zXP0SyONL8WYglj7AFdw2Ax3m0Q628BSSAH3qNjIcz17SH1+XyiOXOxd55m
         qiNkQFY22ETtyqwdf521GWaHJtaXmzRU3tCP3kaUYUk5JbF8fd/5i4Vp/jGrqefMxTOq
         Ds7VYeyg/x+l139LkWljqfakkMoVkUqJSu5qFDKHZV0idoRWfOU3rGNM4aEFm26J9/Ml
         xmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742802785; x=1743407585;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pb0coG8ELzx5NL39dsEd5n2HDvAmuNrsLf2r8J2plFk=;
        b=asvRCKFkZ8U7h7AjnbHQyy4wBH/VfUI1zSOPhqe349oqKbzNrKxMaYgyb6SFOqJa7v
         j1T+LGvl9PUPjaxd52CbZDnVcB5wCrsX31b7FiirHrwcMWYKtQODMa+NFIswtODVdPAO
         K49486b2K7ZgKdgxOZLZxHPzav6mLasHETAg0XmBaWAWTaX3T3wKgibT4BLen6WLYu/0
         brIO1sUHfG4skGg0nWXe+lRbtHQss6EMBF9LwAUsGw+mYZXq8ekWb+TiYAM0wLZLIGEM
         pTrlk9QWYrp15IkJvgzT5u3hLJfq6i0mC1c9JZLr1MELYOyMh2lxRS4xWKf2cdPt6RlO
         xUFA==
X-Forwarded-Encrypted: i=1; AJvYcCXrWFQ8RXun8+RYupM4puS8sRQXaU3D3uaI4YU/o/T/mtVeugD8GSSvcKmpjszKJVxTIn6T4JCo+3IF@vger.kernel.org
X-Gm-Message-State: AOJu0YwF661taMAkfPeUet8DiCHE5wCiq+VZ4zubTnO222k/yGD+q92u
	zLM2DdmVr7/e4HEzVRjrY35Q4ZBOo1c34BiEzn0n73OAEH0+Ii3dtEwHf1knHw==
X-Gm-Gg: ASbGncuScDyeCCUZYcMhfrFz/NW/hzo/lB6NcFQiP/Lym0pr7PTrWfTuKg8uo5nOh1L
	LSZE0yThq81z4rj4bluB0TTCAfNXm8q2vPhZli1gvFlSalBJBZKWfExVdP4wmFcsbmgbDCkMCby
	GHQQ9HegUGAHW+mNd9hqXizETHWEYbddoZgbBtF4fPk9rSklAy86SwCP0sZFhK4ZIj+trmEDRDl
	0W4Z6tuXG53wNlOJK5Pgxc4pG4zSDOKpfl0Jl8q01i8f77h18b1GSM3fcm/mLhBA5WYOtFq7ifI
	v6c7GIkBnC+UoI2SPXA2IGae+oKLNXp3cQOoyxuBCWK/q6uthJQMqTIk
X-Google-Smtp-Source: AGHT+IFuvV2cV8WX5aMgqIPZN8PMDNislgN7gD7Fd0kyz13UcCKy/E1fYKahvWMm/QdrilzlKJE56w==
X-Received: by 2002:a17:902:ebc6:b0:223:39ae:a98 with SMTP id d9443c01a7336-22780d825c4mr224115485ad.22.1742802784591;
        Mon, 24 Mar 2025 00:53:04 -0700 (PDT)
Received: from thinkpad ([220.158.156.91])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-227811f9a68sm64496325ad.241.2025.03.24.00.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 00:53:03 -0700 (PDT)
Date: Mon, 24 Mar 2025 13:22:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-2-quic_varada@quicinc.com, Sricharan Ramabadhran <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
Message-ID: <uenisk2rrlx5sh6xagd7texx3dpxyav6yxpqxmk3fcdq44vb75@tk3pimdajilb>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-3-b7d659a76205@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250321-ipq5018-pcie-v6-3-b7d659a76205@outlook.com>

On Fri, Mar 21, 2025 at 04:14:41PM +0400, George Moussalem via B4 Relay wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add support for the PCIe controller on the Qualcomm
> IPQ5108 SoC to the bindings.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml         | 50 ++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index 469b99fa0f0e..668ff03f2561 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -21,6 +21,7 @@ properties:
>            - qcom,pcie-apq8064
>            - qcom,pcie-apq8084
>            - qcom,pcie-ipq4019
> +          - qcom,pcie-ipq5018
>            - qcom,pcie-ipq6018
>            - qcom,pcie-ipq8064
>            - qcom,pcie-ipq8064-v2
> @@ -168,6 +169,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,pcie-ipq5018
>                - qcom,pcie-ipq6018
>                - qcom,pcie-ipq8074-gen3
>                - qcom,pcie-ipq9574
> @@ -324,6 +326,53 @@ allOf:
>              - const: ahb # AHB reset
>              - const: phy_ahb # PHY AHB reset
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,pcie-ipq5018
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 6
> +          maxItems: 6
> +        clock-names:
> +          items:
> +            - const: iface # PCIe to SysNOC BIU clock
> +            - const: axi_m # AXI Master clock
> +            - const: axi_s # AXI Slave clock
> +            - const: ahb # AHB clock
> +            - const: aux # Auxiliary clock
> +            - const: axi_bridge # AXI bridge clock
> +        resets:
> +          minItems: 8
> +          maxItems: 8
> +        reset-names:
> +          items:
> +            - const: pipe # PIPE reset
> +            - const: sleep # Sleep reset
> +            - const: sticky # Core sticky reset
> +            - const: axi_m # AXI master reset
> +            - const: axi_s # AXI slave reset
> +            - const: ahb # AHB reset
> +            - const: axi_m_sticky # AXI master sticky reset
> +            - const: axi_s_sticky # AXI slave sticky reset
> +        interrupts:
> +          minItems: 9
> +          maxItems: 9
> +        interrupt-names:
> +          items:
> +            - const: msi0
> +            - const: msi1
> +            - const: msi2
> +            - const: msi3
> +            - const: msi4
> +            - const: msi5
> +            - const: msi6
> +            - const: msi7
> +            - const: global
> +
>    - if:
>        properties:
>          compatible:
> @@ -564,6 +613,7 @@ allOf:
>                enum:
>                  - qcom,pcie-apq8064
>                  - qcom,pcie-ipq4019
> +                - qcom,pcie-ipq5018
>                  - qcom,pcie-ipq8064
>                  - qcom,pcie-ipq8064v2
>                  - qcom,pcie-ipq8074
> 
> -- 
> 2.48.1
> 
> 

-- 
மணிவண்ணன் சதாசிவம்


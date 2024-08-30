Return-Path: <devicetree+bounces-98305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EFD965A70
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:36:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE894286D7B
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7D916D4DC;
	Fri, 30 Aug 2024 08:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MWtnQLDE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCEC16D327
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725006962; cv=none; b=BOQHKKGndv5vAiTviEvRsZz4Y+RAmJ+WKT+PIX6WDrSngJQUiSNlmvw5GacIrHuI7p247idDTA981/otWZTadTE6PL4iJl1P+x369xn90t9BCWiIGxPo0Pf/76nKTO4s+z4hp1HPJ9+mG8ljb0uBY/v+kC1P0jZg0vJFEnOnPe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725006962; c=relaxed/simple;
	bh=AQdl9xmsK8ZMt1kvTa1HmFVUzpMAE8Xf7jM0R7oI+ZA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FAJQX3hAAy1ZVBC7NrK2BH18dkAoGXfZwye1aaeOdJ4dLvwbMnsJJcYAsUmufg3erjvavrYvDUa/HTXy+pkasPG+JOw3f+i9FBQogut3t2o93QzzHu2n7rBUaXHtV3x3opCo+7USarRpYLvS4tXrWxi5Fin5xPLvvA6g5y4eOdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MWtnQLDE; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-7cda0453766so533089a12.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725006960; x=1725611760; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HRHmHWrP9aGbtsGBj3sSUa2W5O9vCt0AWItUOkadt2Y=;
        b=MWtnQLDEotjVGwRD8x2jJQlPXUavaLCtAok/8AauIKs8WgpKFuVk5dfUSdnXya6hFb
         7xDyebGN3RKnW0xAbTarnWJjq5CG4LSjmNG7xKybp9ifd2Qo2swh5Qe3oUmdjXNpiBBk
         WJr9vCbtQiBmxt1bAfVNgvcnGbJ+Xo9oO//0csk3YgOQXZfKTi0pnWymStsbVTe8Sww7
         Rg18jgVpcNhV1T/mOV8xNnp7UQU9LNRwN+tmvwe8JjDvvUcfqOag2yD2rAB9O8PzfOSG
         snw1T629O+zDuEbz+DxCZkbGb2pzwr1C9z5WL8Qh8q7KupWuU71XjPtoy1ahvPZ+7oXd
         1NgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725006960; x=1725611760;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HRHmHWrP9aGbtsGBj3sSUa2W5O9vCt0AWItUOkadt2Y=;
        b=aZgS6jWQenDuullrT7H142+CtqGIvwf7FL15BO0WwR9Ccsp/V+EEdPnx8MEPFUwoqQ
         HSL40OgeAYFPYEeXJHJ/PQtPHsc0TuxTXU4xyb5HEojJh1H9/2jLwg5I1j8MrerC40j/
         EyGCuu8ISiNBDX/esYbLvjx8xbiLigDvIpzaCJtu+4XYbsfiwSg9ULUwOueJ1mpopyvP
         t4jBub4yGZHmVtdnvDscm1gVpbm7DZod5kAXILpnpt6xoU9BJcqnZcCDy+aN6NZFbP3A
         K44H2DhGLoF/Rp8KBat0smHGvv/htTEze/rCjfSvLHN0/lQnYpWuo/Vz35EZ2XrjE52B
         TufA==
X-Forwarded-Encrypted: i=1; AJvYcCUztTf+tsR0HXCZKl4NddoOoiiSofXW60sV3RLWZkrYKayvvlqjCnlYIMmcsR+GP4+bjJjGHOnl0sTG@vger.kernel.org
X-Gm-Message-State: AOJu0YyXoflH5HbLj4K1cyGsDuCM0GuTg71Hj0xom8D5jOYcIVCBZw6i
	dl/uxiEUZ3D4tk/0t7vWmjLDyi71B6XyMSDcRvczcimZ0M2esHhrj9GGvet6Eg==
X-Google-Smtp-Source: AGHT+IEg701oVGHlnE52pK3OQhbcRTjhhzAp3dBmqRMQAHDvR10F57i/IZHuH1pve1bxSwuJqV6lAQ==
X-Received: by 2002:a17:90b:4b01:b0:2d3:ce8d:f7f1 with SMTP id 98e67ed59e1d1-2d8561c7556mr6135729a91.25.1725006960007;
        Fri, 30 Aug 2024 01:36:00 -0700 (PDT)
Received: from thinkpad ([117.193.213.95])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d85b39ce64sm3134091a91.39.2024.08.30.01.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 01:35:59 -0700 (PDT)
Date: Fri, 30 Aug 2024 14:05:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sricharan R <quic_srichara@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, robimarko@gmail.com
Subject: Re: [PATCH V2 2/6] dt-bindings: PCI: qcom: Add IPQ5108 SoC
Message-ID: <20240830083551.yazww3kj2shf4ocq@thinkpad>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
 <20240827045757.1101194-3-quic_srichara@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240827045757.1101194-3-quic_srichara@quicinc.com>

On Tue, Aug 27, 2024 at 10:27:53AM +0530, Sricharan R wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add support for the PCIe controller on the Qualcomm
> IPQ5108 SoC to the bindings.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  [v2] Added reviewed by tag
> 
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index f867746b1ae5..c12efa27b8d8 100644
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
> @@ -312,6 +313,39 @@ allOf:
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
> +
>    - if:
>        properties:
>          compatible:
> @@ -503,6 +537,7 @@ allOf:
>                enum:
>                  - qcom,pcie-apq8064
>                  - qcom,pcie-ipq4019
> +                - qcom,pcie-ipq5018
>                  - qcom,pcie-ipq8064
>                  - qcom,pcie-ipq8064v2
>                  - qcom,pcie-ipq8074
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்


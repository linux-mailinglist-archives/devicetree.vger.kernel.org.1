Return-Path: <devicetree+bounces-86716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D54937428
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 09:01:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E565B1C21587
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 07:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B931745003;
	Fri, 19 Jul 2024 07:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qFYWZSma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEDD1799B
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 07:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721372513; cv=none; b=SuSMVXTZ89rlDiHrqJ1FzOWtk7aHm0cdfVeG0Cib7yEecoiXFfmukccQwmNESyHJg21WGKKvdGl/P7A2K2JavB0bAdZKTy6XOwB8Eh36DwPfq5XMEmTV5fnnJPGSFc8u4YBOUNorYcimwHWrZL6VWRzg8JP5DMCCsGpG6hAzPOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721372513; c=relaxed/simple;
	bh=7cefyBQNG0cgw4OpfJkL/lbSpDq46bnSvjHNsSe+3Lc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ITCGgceAt9/n2yIAiDWHvRoYgxN8X7K0mC48kUH/x8jgHoAfmfTx7ekQeziExPjZlOjStrfpsEf/OtBbJUKZQwz6tGIIWkpO2SAxNMoQpPmiL0J2cExb4ccuo1WhQGZYVzR99SDMHUX+LLCLk7SIbW6H8yHuOxy3mhnfZT05Q8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qFYWZSma; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-70af8062039so452777b3a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 00:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721372511; x=1721977311; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fariBq/69Nk7cAbON0jqbcifAGonbb1z1O3eQL8eKBc=;
        b=qFYWZSmamq4TfVr2tRTPi7r0IdDFMbPtT6px3D2e72eMlP2KI4URDKU6ZTQRuTW7xz
         lgeimpBAn42/YrAba7qxaeBVsoruA+MF6Dm5E5U8+M08RGnLYHF7BIWkSDj2Lmh3ASUv
         jOv0IqGeeKGHPbsXqUD5F6TAjQCtXLUAWMPekyQ8GSZy5j7hcWps+sR/ogk/PrgW+ave
         8yMKXn8UORd+bRcGxQas8kE4S6YaB75Xby6ghyKEyq8XZ1TnmW29ls3BLcov6FtY21i1
         msir1vWoGdjahI1R7iJwyS8zr0+H2ZCfnnzNXplBDjrfNunhFknk1NIePB/ScF6VH9r6
         oFww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721372511; x=1721977311;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fariBq/69Nk7cAbON0jqbcifAGonbb1z1O3eQL8eKBc=;
        b=co66WUg1O8gsLOK5/0wAyUE8GEuwRAvj5Gj3iKCC6xDYY61CZm0TWzJVgctSb38+Uu
         yJnqMR9TPzlarRYLQYgLXjopZl2lRu2xsym1WwPYQXw6vYReTNCcH1J61BjqyqQeXHUu
         n7LXNBq1dGtg+4OmJWBjpxehzYbDGaQbWAnlhyMBJX0qTyiIYMMQkRAuGLIivrw+pkgi
         b/HPDtD4sjwNRH741hc/5yQlhiLa4cnEQsqz9WcKwCiLWWnGr4cWDr+2bMpsenDeUVxx
         9a5uCvdP8V8rX9wmTt7S8Sfc1jtFrXJaT+iTukkGWuOp8g+My9KSl93TMyX+GQiPuNUr
         N+QQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlt+mL9ZzgJMVgfDTrVnbPJLCOnE8XLpx8H4rsuLQAHSDkI/z8QYkI7MEzLxHzxng4adtF9272jIdYVNVZjCdscqOCzpw83zWWxw==
X-Gm-Message-State: AOJu0YyNqpjdLZ9b0GDIjraBIIk+nDITSyFjfYbS4nt8QTCUyYcHAT3+
	7FanodmJjOTLJibDPNSawu/NELlhAOMPCdNBbR1vEeOsXj0Cqf5hBvCZTw0PxA==
X-Google-Smtp-Source: AGHT+IEIST7TtOc5AVPxTk2KIx0XN4DalL2EhlIPzC7kXwFVS4vPT7BN83DHIYVpGWEFNADRomXzFA==
X-Received: by 2002:a05:6a00:2315:b0:706:726b:ae60 with SMTP id d2e1a72fcca58-70cfc90d328mr2138923b3a.17.1721372511260;
        Fri, 19 Jul 2024 00:01:51 -0700 (PDT)
Received: from thinkpad ([120.60.142.236])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70cff490e04sm609630b3a.10.2024.07.19.00.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jul 2024 00:01:50 -0700 (PDT)
Date: Fri, 19 Jul 2024 12:31:39 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rayyan Ansari <rayyan.ansari@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: qcom,pcie-sc7280: specify eight
 interrupts
Message-ID: <20240719070139.GA83855@thinkpad>
References: <20240718-sc7280-pcie-interrupts-v1-1-2047afa3b5b7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240718-sc7280-pcie-interrupts-v1-1-2047afa3b5b7@linaro.org>

On Thu, Jul 18, 2024 at 04:20:34PM +0100, Rayyan Ansari wrote:
> In the previous commit to this binding,
> 
> commit 756485bfbb85 ("dt-bindings: PCI: qcom,pcie-sc7280: Move SC7280 to dedicated schema")
> 
> the binding was changed to specify one interrupt, as the device tree at
> that moment in time did not describe the hardware fully.
> 
> The device tree for sc7280 now specifies eight interrupts, due to
> 
> commit b8ba66b40da3 ("arm64: dts: qcom: sc7280: Add additional MSI interrupts")
> 
> As a result, change the bindings to reflect this.
> 
> Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  .../devicetree/bindings/pci/qcom,pcie-sc7280.yaml  | 24 ++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
> index 634da24ec3ed..5cf1f9165301 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sc7280.yaml
> @@ -53,11 +53,19 @@ properties:
>        - const: aggre1 # Aggre NoC PCIe1 AXI clock
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 8
> +    maxItems: 8
>  
>    interrupt-names:
>      items:
> -      - const: msi
> +      - const: msi0
> +      - const: msi1
> +      - const: msi2
> +      - const: msi3
> +      - const: msi4
> +      - const: msi5
> +      - const: msi6
> +      - const: msi7
>  
>    resets:
>      maxItems: 1
> @@ -137,8 +145,16 @@ examples:
>  
>              dma-coherent;
>  
> -            interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>;
> -            interrupt-names = "msi";
> +            interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
> +            interrupt-names = "msi0", "msi1", "msi2", "msi3",
> +                              "msi4", "msi5", "msi6", "msi7";
>              #interrupt-cells = <1>;
>              interrupt-map-mask = <0 0 0 0x7>;
>              interrupt-map = <0 0 0 1 &intc 0 0 0 434 IRQ_TYPE_LEVEL_HIGH>,
> 
> ---
> base-commit: 73399b58e5e5a1b28a04baf42e321cfcfc663c2f
> change-id: 20240718-sc7280-pcie-interrupts-6d34650d9bb2
> 
> Best regards,
> -- 
> Rayyan Ansari <rayyan.ansari@linaro.org>
> 

-- 
மணிவண்ணன் சதாசிவம்


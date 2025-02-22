Return-Path: <devicetree+bounces-149860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 026B1A40A31
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:45:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51BEA18872BA
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 16:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 735532063FF;
	Sat, 22 Feb 2025 16:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kfUqTW/H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E9E142E7C
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 16:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740242728; cv=none; b=K6E25daw4jtSijxzqMv1SKJDEYSHEDChKLIyPYb0/535cjoG9kuOpDDJp4sv3V4WaBPRxvY8jonZoW41JhtlZUeF1KeuIDcZVyU6oIjAG8nIBnXUjXQ3aQhPe3pJdbabj1C63r6e7B5pS+zdb4b+1z9l37xXHVMrzW74Sc1kJdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740242728; c=relaxed/simple;
	bh=JXFsezySFMvH6dWTeipk0QmL7JcopcvOM6ol/N+7mjA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YK/Lc6YIZOlEAxoGhmHo/YErS6D8jCxeFA8ZAAN9da5OHqvD2yfuTnbRQT1Up6t933q2uIWvKOZm5wVVH9eoOzLBjVx+j4TBgJBDI41C/7UOaAK6UxsKNRbkvo3Lq93VyPWFwzVzc7y5CbPRUJFNJsP/CcL8DbhDyv/yHEl50Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kfUqTW/H; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-22113560c57so62819415ad.2
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 08:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740242726; x=1740847526; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LZEW2F8jhxjQK9Q9oSPPUZJG+m/4ROcwe0KKWOIKsKM=;
        b=kfUqTW/H8msq+2eH3LjTGu2tcmY+s3vp0m3rAX/IBWSsrPTVCaPf+6aOJ8UhY6nnvH
         +K5zfLAZoIRl8uyIfjNMoTTU7AZJJ0PmUjvAoysdSheT3GDZmnPLZtuI31iwxp/XFEp2
         P0/VMRdyeElF+n414RIOnM7Gh7S9r1xcNqKbNj+HjULJ6z0ScibGXTo/yzeS791PiRqS
         k3qyfUNsPbd3em7xvPFpT36NzvPf9wFWc3NdGdkAusSvHCQHsdm8ms5OLz6QS0GB5iSx
         UZ7JBqA1mllcNJY1++hdlibqCPtGCjlozIu10YTGXKG4lMyZ0Lr7oXFRBNXbgRE9XbrT
         yXaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740242726; x=1740847526;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LZEW2F8jhxjQK9Q9oSPPUZJG+m/4ROcwe0KKWOIKsKM=;
        b=ZlZQPtknFnES9RqdJf0Frjf/lVSxIW4wXqlO6WseL+WjBnli9Jr6EUMt4n+XLMKjp8
         kqufYhFYi0ymQg5fX5Ao4QfyNvOD/OuxEiQLbuCg76Dtrj6vGQkpgi6wUhetzGcbrOrt
         up9rpbpP/ehA5ZLYm331FfBtlEkLvHQNybDhoFQ7f4qrErW1LoUXtpBfRFEVNF67h0sO
         fqvaJTQ2nYU968dFD0O642mn1Cq2fFAICIXZySs9WET5HaSwKvvwj71FO/e1CW+Kfd1j
         BTQSiIRi7tlbpska4v5eT5resEZ13Iv0fXT2JBnvZRoTicl3Rqj36oFF+qgwiOWy+9Bd
         AVaA==
X-Forwarded-Encrypted: i=1; AJvYcCW13Pj/WliZ5kXCVlgPB8VRafVU3TbGeWU/y5ilrhyBnye0qcg28PkDZ7aDtQ7Cm9/o08o2u0zqU8TC@vger.kernel.org
X-Gm-Message-State: AOJu0YxJL0JFkQKKnRukOOnGWguK9qm9OYlSyaSALgflX/H6eRXBclYg
	+nVWFOEHx6KN5RBHKK/HsjX2J5IWsBAt5FQxA4/nVQjq4FiWwbPu5UMx1L4YKw==
X-Gm-Gg: ASbGncsHrhy75YXyDPUv9Qf55+qpk2Uhax9ZupHJsYV2yC3sTlsj9rpsmog1IIuX/Dw
	Xpd4u5l04/eSSopeCqRHJXg7TI2IUpOG8i60jszuuOrS7JbVwcnLLV1sCYTUm/b7lZ1DImJTggt
	PA7wNkJJ7UPdK7i61pI0/rsTfKJWOJ820HJKxYPL/EZF7UnegsauzAUZcphKlc57jOZEFovKEa/
	BCsLHAV9o7AeFn706azH3LJ1AmzWbEvvSALHEi34LJd3SYIw37UjPlMX/VXORVWHTxiRYPh3qvG
	lDe6Y3bAz5rdOmbRzFbxWJuiqeEcecBFhqtGtg==
X-Google-Smtp-Source: AGHT+IFefW7NdAtgrUtX0UD5D5oBiGvpdHU/yEEJULTisRJfCVMuYZyWxzWgJKzrin6iK0N9uqtPOg==
X-Received: by 2002:a05:6a21:394c:b0:1ee:c8e7:2032 with SMTP id adf61e73a8af0-1eef52f8796mr10968813637.19.1740242726067;
        Sat, 22 Feb 2025 08:45:26 -0800 (PST)
Received: from thinkpad ([120.60.135.149])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73440ea9381sm1325845b3a.157.2025.02.22.08.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 08:45:25 -0800 (PST)
Date: Sat, 22 Feb 2025 22:15:17 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/8] dt-bindings: PCI: qcom-ep: describe optional
 dma-coherent property
Message-ID: <20250222164517.2qkzdwofgjdb4yk5@thinkpad>
References: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
 <20250221-sar2130p-pci-v3-1-61a0fdfb75b4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250221-sar2130p-pci-v3-1-61a0fdfb75b4@linaro.org>

On Fri, Feb 21, 2025 at 05:51:59PM +0200, Dmitry Baryshkov wrote:
> Qualcomm SA8775P supports cache coherency on the PCIe EP controller.
> Allow 'dma-coherent' property to be used for this device. This fixes
> a part of the following error (the second part is fixed in the next
> commit):
> 
> pcie-ep@1c10000: Unevaluated properties are not allowed ('dma-coherent', 'iommus' were unexpected)
> 
> Fixes: 4b220c6fa9f3 ("arm64: dts: qcom: sa8775p: Mark PCIe EP controller as cache coherent")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> index 1226ee5d08d1ae909b07b0d78014618c4c74e9a8..0c2ca4cfa3b190b3fb204f0d7142370734fb3534 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> @@ -91,6 +91,8 @@ properties:
>        - const: pcie-mem
>        - const: cpu-pcie
>  
> +  dma-coherent: true
> +
>    resets:
>      maxItems: 1
>  
> 
> -- 
> 2.39.5
> 

-- 
மணிவண்ணன் சதாசிவம்


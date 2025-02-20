Return-Path: <devicetree+bounces-148706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 415EDA3D208
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 08:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB72C16C18E
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 07:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E45D71E5721;
	Thu, 20 Feb 2025 07:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ad69B3qC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBF01E379B
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 07:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740036029; cv=none; b=t7jHAon6bUqvCZrbCN7By0pp6Kzt/lUpRcGZuic1ATWm++H9f7dFr4Z5k0qOiZKG2q/fgMAn6FprvO2/5IxWg+pJMCo8wJ1oh80IlJX7FTv9BFGVhXhdsen+7d0N5mK3nNzcgz5yzxjgmZnfL21kFLcu7dlwLwzuJZukd5L8bjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740036029; c=relaxed/simple;
	bh=3z3bFkW/fyAsXfeUae+7quyDfO6ipvjNyjoRSl7BG7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jbw786erU/bXVG4MtuJnNpznSEPVKeviSytI1DAccemtzabZUpfy6/4v65p+t016DW8GuTXzSk6j3pM46V+RWSNjw3RP+pnNa4H6HFkiZNohm530fu46TMHTMpdNCeF14G8ZMlAHfPZQWRmGk9eTdLrDfvaKlUhqWkIZcjeMYIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ad69B3qC; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2212a930001so15103075ad.0
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 23:20:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740036027; x=1740640827; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=09LWZQ5e3emn1W6KyZY0f1EZuF11DtnHuRBnesOGMy0=;
        b=ad69B3qC5dR2WEQIgybbHp3CwjTNX1CNdfI/M4EFJrs9eXLoNeoY9+fd7NtKPoOtJC
         KcvwcMdJDlaK7BXXpmiqN/yQPbeo4tiwBS7LUVYgaXOwqvds9lkkyDpa4WA3JMreDhtq
         l6MyUWAMo/psVhvgU1gZbRO7hf+GMJnDxXQ187DxyRxNWswCGIiJQ/SEl3BwL9Q6wmNY
         Fbl5ucdMgwwNklDDj/tPIriWUnTDLq48tTKxFSaTpKrRZKLk0QtnKR04KVnDaTSgRguT
         8imqrIo1iHUFmgGRxrNjGm3Mxz4q51thQePWen3cwAyptqEPNcNRLb/QbzEFVZqtyPtp
         EZfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740036027; x=1740640827;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=09LWZQ5e3emn1W6KyZY0f1EZuF11DtnHuRBnesOGMy0=;
        b=xPUnHHT0JVZuzYaTsZobTYeGI4IP9wTBqRGJxqJd1BT6bcJhVIPLIBH3g8QAmXyj0e
         DBl91jH00esvGoMNZoExZ5AVJpdon22dwHGXeYvRvQ6ZVbPS69CuQj/Qb5x2WYi9gmtI
         lWDn7FMRZe8h5KjT2x5e4ZgUv/FoyNN0Qmdw7noKYCD1/C/4AmRJthWVanixVtXd9A7f
         Uqk0sTdj4SKD4yMVrreqMC9zi1bovQAroXT8OEdjjuoxfNzaq9g1R1d2HyNJW2HFd3ov
         a+jG2yy37VryVcP6GQNV5ZM4UOJ3hGIuZfE0FUNK3Z8m1AyHHboHxsYSby4BXSpIS+Xv
         GylQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQ0h/imchDGbHS3XtI7rn3exNPYbeKVSHzXKi0YP1aLJLtdFd62v2EHYw01hsmt9Hw1unplF2/9hG2@vger.kernel.org
X-Gm-Message-State: AOJu0YwRe6tQcQEEa9EjPNXEqrKNHYaMwhAPcsnps4AlOwrzopm1CyA+
	wxLEhSH6Y+Ic+U3o03KcnfmHg+kuCkkYbsknqSyhdDGlbhReLrRmlS5W95PKHA==
X-Gm-Gg: ASbGnct+kmZhKu66ioH41vVXBT8ATrQuk6Xfq4lNEKZ6VbBPpAbdaoeusqg44HzobbW
	uSQKolmO1jm6QOmntZ84bVOIQUmO3x502tMJF0eUNrDADn4dKkyV5LoiqaftPszAYPq1mjKL1sg
	41qO2CSSdz17vSV0gSIB6VzHAtpydX9YXh/ufGuf5CA4g22EOgPvwCBrD5vrlYbhh5FQnnoeTdq
	z1MMUxNZjMKouqRHLb9fZ5gvR4noM640CpowOyyJW50t0KjQWqebLKDgI7+TwLzM3Rd6MGk0PFP
	NOOXB/fGo/SAtaNtPbmytXz+sw==
X-Google-Smtp-Source: AGHT+IFYaTRFrJf2YGhtVpgfx2oiIlsTNAuzM5/7P2/cYdUCg+S2sl6dwZT2iWA7mQfRcQOfKwNPlw==
X-Received: by 2002:a17:903:32c6:b0:21f:ba96:5de9 with SMTP id d9443c01a7336-221040c09c9mr340960585ad.49.1740036027570;
        Wed, 19 Feb 2025 23:20:27 -0800 (PST)
Received: from thinkpad ([120.60.70.244])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fbf98d3b80sm15090743a91.17.2025.02.19.23.20.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 23:20:27 -0800 (PST)
Date: Thu, 20 Feb 2025 12:50:20 +0530
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
Subject: Re: [PATCH 2/6] dt-bindings: PCI: qcom-ep: enable DMA for SM8450
Message-ID: <20250220072020.sj6grl24bfzwxvh7@thinkpad>
References: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
 <20250217-sar2130p-pci-v1-2-94b20ec70a14@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250217-sar2130p-pci-v1-2-94b20ec70a14@linaro.org>

On Mon, Feb 17, 2025 at 08:56:14PM +0200, Dmitry Baryshkov wrote:
> Qualcomm SM8450 platform can (and should) be using DMA for the PCIe EP
> transfers. Extend the MMIO regions and interrupts in order to acommodate
> for the DMA resources. Upstream DT doesn't provide support for the EP
> mode of the PCIe controller, so while this is an ABI break, it doesn't
> break any of the supported platforms.
> 
> Fixes: 63e445b746aa ("dt-bindings: PCI: qcom-ep: Add support for SM8450 SoC")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> index 800accdf5947e7178ad80f0759cf53111be1a814..460191fc4ff1b64206bce89e15ce38e59c112ba6 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> @@ -173,9 +173,9 @@ allOf:
>      then:
>        properties:
>          reg:
> -          maxItems: 6
> +          maxItems: 7
>          reg-names:
> -          maxItems: 6
> +          maxItems: 7
>          clocks:
>            items:
>              - description: PCIe Auxiliary clock
> @@ -197,9 +197,9 @@ allOf:
>              - const: ddrss_sf_tbu
>              - const: aggre_noc_axi
>          interrupts:
> -          maxItems: 2
> +          maxItems: 3
>          interrupt-names:
> -          maxItems: 2
> +          maxItems: 3
>  
>    - if:
>        properties:
> 
> -- 
> 2.39.5
> 

-- 
மணிவண்ணன் சதாசிவம்


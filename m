Return-Path: <devicetree+bounces-149862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D7455A40A40
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 17:47:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C3A918843D4
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 16:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D3E1D63C5;
	Sat, 22 Feb 2025 16:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a6oC30cj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB4012D758
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 16:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740242858; cv=none; b=Y1PYMiYk3vucT+4i5FM0Fqq5xKmCTfW1mlBpVasGJIS3BMlCzAASV4r0O2vVcrZfghssZ1ie8wyDiFFSbi5+Z6FXF730RrNkEzawqE9OS4qDycpMd1thA88LjCkSKgWgxPqhLvjVuECof4BLTD90biuUMezWfVWiBasBxJ7fWOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740242858; c=relaxed/simple;
	bh=xkRFKhnFEnAD58kFXG3gKfKhJMfoPrLt7gh+o9s6UKA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hy5fnEai2lUH2blzGUqpcQNfkJvvXaSAuQDYPyNojo8fcaOYT78qM927o+Er2IsK1pQ8JQYTr50yETT8HL6EQ9b16W5WEYw3KPLcS8RI/OeC8ZGiebkyQhbxmcCVWaRIqfjb8GUHN8Yv2v6BQo6U8EvgsKBRxcS4X6IZPKD+szc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a6oC30cj; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-220d398bea9so47416055ad.3
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 08:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740242856; x=1740847656; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zJ7NQVTPXTDow2MBFx4sxVbqLZ6Sf0I/R5YTNHSvMMk=;
        b=a6oC30cjXe7cBQQ01oSJlogHV84zCeph/LUBkdyEhOfIUfMFIVM1cPJQznCuLZPUA1
         9s7yRmMh1vvydOERrfaoEvm9EuhxFUlMR0Rj2ZhGnHqCYJHGrI4ERSTligomx4xLsrFB
         5Ll+Ubi0HNgJi+VSSOISSzcCDB4C1NI9G3o6SZnp3N3J+chrm+t9cTpFS3NWvKUyidcX
         +uEK2A9pgyFqS6IXXX+fbjGli6C8AMTCwgXkAjMcDdFGbXFu9D/Dn7mcsyj1CiUEUdyk
         NjNDXcRAGGA3EtG+0/1wzqTyn/tA/q91g+/xnij/167VxBFQSIVKMl7lhEjcxDPezfqm
         o4Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740242856; x=1740847656;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zJ7NQVTPXTDow2MBFx4sxVbqLZ6Sf0I/R5YTNHSvMMk=;
        b=h7tK7L2BgnccqFdbAYkOeTQgexZOpctVY/8hPKwdvQX7jGA9RfmUuwdpVQ2tZMB+HY
         T3mtGTTOlx138dYKhXra04luxUTnaPvsQi35PFfsL7stv+HSinp2biZ9PcZIKt3WzMf8
         +RNnvVKJwXpXidPiV+PTjj0HBr9yXch+Hnrd3y4GioR75IqqmSryngTCQNWHCxKQ3hdU
         Al0/I7VHULWz+XiJfex2YRzGBd3M7Bp9aHTz+oLm6eAsRaFb2FYPh9EmBNP8rWVjpkdi
         g3mjdZxxwf6q9rEUIhvPk6sL1GzsDuNQEvBVK/Xt0WGkZBuItuAwPyBPDCTOgNk9GBft
         DIwg==
X-Forwarded-Encrypted: i=1; AJvYcCVb8S6KlTAUU+/u1MTWsaUTUGn+jTLJUGdyLStDKy2UU6WqoR3ZbCKTNv3sfPa+6jpbMFWIMKbBDArC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/b7kMIelCbjffJLdCDMBTHyFo6zschvMX7Mx/oUV7gjq252wT
	P0IGzItqEr5CWuNZhgkYApWtH+eFZWHe8BseoJJIHiDV16BsHXtBOedbhWOB8g==
X-Gm-Gg: ASbGncuYVSY62FkBqdJizzl6mhE/VfRaawlqylCkOl+0a92r+IGAQavcR3QGMT+1VTG
	5tyesnJcS/lA9RE92Gmxz1O0uS3rkIx96LGnEi1zATiyBXcnaRSMKT9sIfkyWbo5WT8Ieu2U/sm
	i1hO1muT7s4uvTbeEmpGI0BNPGlboZ+zlz2NWvzbeButuyFVTJmnth4gcbNtHxvXW+TIO6+zVz8
	Nh8wxyzjcskYt0uDl1u1zlSARkFkm1y879fztZJxfhlPz0xImiJNOE/I8AUMLsKzwhFILfhDslw
	Y7S2C9iOYX/oUpaNUWUzLaspzGXmlCBwViO+NQ==
X-Google-Smtp-Source: AGHT+IG8mfk9DVO07sEMYxIy/TppsA1X7fgCLQ8dMAl2olyAokABZhmYBGxDPvxrOxubVbPS/Lfn3Q==
X-Received: by 2002:a17:902:e812:b0:21f:4c8b:c4de with SMTP id d9443c01a7336-221a119192fmr118946245ad.42.1740242856520;
        Sat, 22 Feb 2025 08:47:36 -0800 (PST)
Received: from thinkpad ([120.60.135.149])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-220d53491f7sm152955845ad.38.2025.02.22.08.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 08:47:36 -0800 (PST)
Date: Sat, 22 Feb 2025 22:17:30 +0530
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
Subject: Re: [PATCH v3 4/8] dt-bindings: PCI: qcom-ep: consolidate DMA vs
 non-DMA usecases
Message-ID: <20250222164730.kelz4csyvd46onyx@thinkpad>
References: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
 <20250221-sar2130p-pci-v3-4-61a0fdfb75b4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250221-sar2130p-pci-v3-4-61a0fdfb75b4@linaro.org>

On Fri, Feb 21, 2025 at 05:52:02PM +0200, Dmitry Baryshkov wrote:
> On Qualcomm platforms here are two major kinds of PCIe EP controllers:
> ones which use eDMA and IOMMU and the ones which do not (like SDX55 /
> SDX65). It doesn't make sense to c&p similar properties all over the
> place. Merge these two usecases into a single conditional clause.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 68 +++++++++++-----------
>  1 file changed, 35 insertions(+), 33 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> index d22022ff2760c5aa84d31e3c719dd4b63adbb4cf..2c1918ca30dcfa8decea684ff6bfe11c602bbc7e 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> @@ -131,6 +131,7 @@ required:
>  
>  allOf:
>    - $ref: pci-ep.yaml#
> +
>    - if:
>        properties:
>          compatible:
> @@ -140,9 +141,43 @@ allOf:
>      then:
>        properties:
>          reg:
> +          minItems: 6
>            maxItems: 6
>          reg-names:
> +          minItems: 6
>            maxItems: 6
> +        interrupts:
> +          minItems: 2
> +          maxItems: 2
> +        interrupt-names:
> +          minItems: 2
> +          maxItems: 2
> +        iommus: false
> +    else:
> +      properties:
> +        reg:
> +          minItems: 7
> +          maxItems: 7
> +        reg-names:
> +          minItems: 7
> +          maxItems: 7
> +        interrupts:
> +          minItems: 3
> +          maxItems: 3
> +        interrupt-names:
> +          minItems: 3
> +          maxItems: 3
> +      required:
> +        - iommus
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sdx55-pcie-ep
> +    then:
> +      properties:
>          clocks:
>            items:
>              - description: PCIe Auxiliary clock
> @@ -161,11 +196,6 @@ allOf:
>              - const: slave_q2a
>              - const: sleep
>              - const: ref
> -        interrupts:
> -          maxItems: 2
> -        interrupt-names:
> -          maxItems: 2
> -        iommus: false
>  
>    - if:
>        properties:
> @@ -175,12 +205,6 @@ allOf:
>                - qcom,sm8450-pcie-ep
>      then:
>        properties:
> -        reg:
> -          minItems: 7
> -          maxItems: 7
> -        reg-names:
> -          minItems: 7
> -          maxItems: 7
>          clocks:
>            items:
>              - description: PCIe Auxiliary clock
> @@ -201,14 +225,6 @@ allOf:
>              - const: ref
>              - const: ddrss_sf_tbu
>              - const: aggre_noc_axi
> -        interrupts:
> -          minItems: 3
> -          maxItems: 3
> -        interrupt-names:
> -          minItems: 3
> -          maxItems: 3
> -      required:
> -        - iommus
>  
>    - if:
>        properties:
> @@ -218,12 +234,6 @@ allOf:
>                - qcom,sa8775p-pcie-ep
>      then:
>        properties:
> -        reg:
> -          minItems: 7
> -          maxItems: 7
> -        reg-names:
> -          minItems: 7
> -          maxItems: 7
>          clocks:
>            items:
>              - description: PCIe Auxiliary clock
> @@ -238,14 +248,6 @@ allOf:
>              - const: bus_master
>              - const: bus_slave
>              - const: slave_q2a
> -        interrupts:
> -          minItems: 3
> -          maxItems: 3
> -        interrupt-names:
> -          minItems: 3
> -          maxItems: 3
> -      required:
> -        - iommus
>  
>  unevaluatedProperties: false
>  
> 
> -- 
> 2.39.5
> 

-- 
மணிவண்ணன் சதாசிவம்


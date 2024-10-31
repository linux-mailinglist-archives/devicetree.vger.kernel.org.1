Return-Path: <devicetree+bounces-117846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED639B813E
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 18:31:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA6E01F2451C
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 17:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96D2F13A868;
	Thu, 31 Oct 2024 17:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QQpQ/H+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360D52E406
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 17:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730395894; cv=none; b=mQWTKzM+2prYe15VhooV4igug4tpWxwWJYV/8NXkhaB8hn5HlPm7rBRob1O/7Wa+yge8tW8ZqmsdAIgVYHQhzYlzT7coLVASL6kT/jccsZdP/zCVCq7vbWvg80h/9kLBFX1mzNq4pmk76Hp0S2c07CdS5YDvf4n+9QG4FslsgR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730395894; c=relaxed/simple;
	bh=YUJwsZUfrMySM+3vlPmEDu+Z3Es4dZG8lxvoG9MFcLg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Te34+cPExR0aJSZWjX57F1V4a7cSmBnjGDwd7t/UVKLKh96V1AIgR481V3g05RA2UQKK8GQzV9E4d2qrPJxtczbfeypNr7cYe2F39L4d8v6c+2TAtuWgx/EYI7MUx3tcJWi+EByGQOhlbHVTohM0NRDJvhP7s42PxhIa2osmIxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QQpQ/H+j; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fb3ce15172so21692891fa.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 10:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730395890; x=1731000690; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LTCMKqDX862JKvIefb6wqPBDi9r52Z0WGiE4eHxFlOI=;
        b=QQpQ/H+jggS218dQc8c6+1DNmwW9WaUW6IZhCd5rr12/ThWUPJMQMXzst019tbxtxp
         JwfD4dgtHA5/e5MQS4KXw628IgZLLWV3TE9RaIwfxWxJ2U+tfEuVEhqM78u6/g+oMlIA
         GdcXdJ6uRRdooLdYZ4JQunC6Kun2f4qM6Tubgiv1kKcZpXz163HrJB87zuQYBu8o3iXa
         tlvAgobib2Gi3CW/cN0nTlidtGN5gdEw3lUkeXmB0LrdTmpCOCCwRUMhUvhOaAf7Bpi+
         gRaQCrEUZqBIT45TuFdqT5hYNvCDpvoZp3L4FdhSuZS2XIZYX5neCACgb2ZIayUGO00R
         Oi/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730395890; x=1731000690;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LTCMKqDX862JKvIefb6wqPBDi9r52Z0WGiE4eHxFlOI=;
        b=Xrv9i+As8HrgsNjidNTY2A3pwVZdtOPlf0Kux513WjrBq3CF4a2eIF+aMVIu9StyOF
         llr0GPhLmYtIihBqabqAptGB4JZ1X03xZax57B068n6SOTmK74C6S9muO7Mi3taxp1Cf
         k0lFEBlhRxeV2lh/MYs91cfF+dj1Y9UZC2Q5QwXiKt0UDQFDK6I4BgaLywkjzLkiHvqf
         wWCOSZincxZgNax19ooGYDNefHXDSXwe94wuDQclTg8idopfIQbUuPrr+sTCGR1Q1q2q
         iNX2HkaNuwHhS8HBzxZh/OAZq4WnhyysSH1WXoNzmbwbM9W+eoYbdobjYJHuCbRJKJOk
         I/ig==
X-Forwarded-Encrypted: i=1; AJvYcCVKDSJTiJH8Y9nIq1jtHjwDQOV0N7kewP0iwUDzMKdkADQX6yvVKrF39KQl7xoB2RJ3olgyTaWgUhfu@vger.kernel.org
X-Gm-Message-State: AOJu0YyGvAo13dkpZDtvEdNUIsTBjBmnlvbHsH6Jpi1rkEYxIHIY7UB6
	C4peUztjuh/PTB0SklPoGQxZK7FkkCZln1mL48679xp6oRlJmNaIjAVwMLXG4vg=
X-Google-Smtp-Source: AGHT+IGShhZ+/nEIa9+9orhTu9s2pEivwD3IJg+SgKln+wQA1vTjdlK55q1QgE4C95fqmPAPR065Dg==
X-Received: by 2002:a05:651c:19a7:b0:2fb:6243:321d with SMTP id 38308e7fff4ca-2fdef231473mr10982491fa.5.1730395890232;
        Thu, 31 Oct 2024 10:31:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef8c3099sm2677191fa.104.2024.10.31.10.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 10:31:28 -0700 (PDT)
Date: Thu, 31 Oct 2024 19:31:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: qcom,pcie-sm8550: add SAR2130P
 compatible
Message-ID: <dbwd3eioykfugnmspbkgojxukkb5oafhhq77q3k7tncjkfinqt@xwpzhjscrr3t>
References: <20241017-sar2130p-pci-v1-1-5b95e63d9624@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241017-sar2130p-pci-v1-1-5b95e63d9624@linaro.org>

On Thu, Oct 17, 2024 at 09:04:47PM +0300, Dmitry Baryshkov wrote:
> On the Qualcomm SAR2130P platform the PCIe host is compatible with the
> DWC controller present on the SM8550 platorm, just using one additional
> clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Gracious ping, the patch has been acked by DT maintainers, but is still
not present in linux-next and got no other reviews.

> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
> index 24cb38673581d7391f877d3af5fadd6096c8d5be..2b5498a35dcc1707e6ba7356389c33b3fcce9d0f 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
> @@ -20,6 +20,7 @@ properties:
>        - const: qcom,pcie-sm8550
>        - items:
>            - enum:
> +              - qcom,sar2130p-pcie
>                - qcom,pcie-sm8650
>            - const: qcom,pcie-sm8550
>  
> @@ -39,7 +40,7 @@ properties:
>  
>    clocks:
>      minItems: 7
> -    maxItems: 8
> +    maxItems: 9
>  
>    clock-names:
>      minItems: 7
> @@ -52,6 +53,7 @@ properties:
>        - const: ddrss_sf_tbu # PCIe SF TBU clock
>        - const: noc_aggr # Aggre NoC PCIe AXI clock
>        - const: cnoc_sf_axi # Config NoC PCIe1 AXI clock
> +      - const: qmip_pcie_ahb # QMIP PCIe AHB clock
>  
>    interrupts:
>      minItems: 8
> 
> ---
> base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
> change-id: 20241017-sar2130p-pci-dc0c22bea87e
> 
> Best regards,
> -- 
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry


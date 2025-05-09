Return-Path: <devicetree+bounces-175791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CED9AB1D61
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 21:37:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7460A23E49
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 19:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC9C625DCFC;
	Fri,  9 May 2025 19:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sj1SJoyC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9D725DB17
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 19:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746819452; cv=none; b=fuyS593l/SrnwqUWlIBeuPEPcnbku2PS5hoadvzfN8LJMst6bB3qX90cNHS8D6tzsATxjOIKMO8/WXYwP8SYGMmE5ZZZyI9NIwm4KteQxhftV6HHiDHHoC07Ga4i0XUVuCkGInBzBj6FMFXvElXlDVgpfR62bB1YXYVb9aVDr1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746819452; c=relaxed/simple;
	bh=83FRY+Vnw9dJkqYlgDfGaSE9Kj39v0Para6kPePwCfY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W+GMwqscPxGf1D8CZUMaZfwtzhx0ot3VNotNu/pfbtTkGRHvpoPH4EYlnH9MLHieFSlAN28v3P9y2pw8/81d6yBxQYE1XVVKBnGjxayAT3bqskVVT4r8ErDZzKOmJqj18lTIBa3dEStR6QGEPuoOf25yBISgFFhRB//t0Wb7oOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sj1SJoyC; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43ede096d73so17267695e9.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 12:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746819449; x=1747424249; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3oAZerdoqNvoXq669EYro8m/ZBQ7UghYajG9A/pxU8g=;
        b=sj1SJoyCn4CW3AOEPW9sZxaCUUwASKRm1y7R1m08uNBzkIhMCnTMdFgYZ58bB0JybV
         QdDbZKzkb3V5QSVgvy7qaDs033977bnqzR/GGNBis8Y8VyGrpT93zwpW+sNSVJSop/hh
         J9bY/XWd9Y7zY3V1VN6yOnBy2RASdanigNIkLM50YZV4aEa94cw5kZXG3jHxdDunjb9U
         eU9/vo96UP0QLlHcaiqBF5e/ZmHxs4yrILK7U6oc/VYBcG5OpkmUfqPJdDGqBcW8qr3e
         njX0//EBDYLVpcYAe6EfWZpkYCKM1CToLD2nGS1bhpaQ9nJj1RqhONB/HOGslLOD8NGH
         E3Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746819449; x=1747424249;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3oAZerdoqNvoXq669EYro8m/ZBQ7UghYajG9A/pxU8g=;
        b=LJaqfJSYWvkIPpAdJoesZDWAAUJa+GfCO0wjVJYfRhe7uxfBuVDT6VBksRbEYjiouB
         ocMZ43hzkmhO+snLlAXefL16QKWogMkJDMh1mmsddWeSsdlth5w84r1ar1qg5X9Mn1aU
         A98yipL0QY07mK2WGIEetKfU0KNKJmGlQtSr79XWHL/WPlVzmGsFtto2I9peeV9e/VVU
         hbE4HNuzboLbaG5QaIQD7oa+xCoFsLm+9cv+HklgPf1vOJw/lGm6T4XnSuXS01a1vRzY
         H5y1eh3M3DhqUdUDDwfcBP3iD6yf6nWtr+O7AxCAuacNwqpoRMU/pVEaF8H7SXa9vtp1
         tqXA==
X-Forwarded-Encrypted: i=1; AJvYcCVJ0azU3/tybmC6qZ/RCyVpVkne8gUCAoD52x0pbGezkyBTPn/ikoef7gunHvGtHouTEpcTPRGZLYSf@vger.kernel.org
X-Gm-Message-State: AOJu0YwBQ0BPufRuONWpjYyZRHJubmARY07ozh1JvgOIJfbcADfUUAgn
	P5rrnkB2Z+Zo1qQ2BwfsmMBKr5qn4LLI8q5+GAKHKmlcP/UX7aWjpiUTj/ER9Q==
X-Gm-Gg: ASbGnct7eRaFRg5scWRzQp4u8y8RIMrhQ6JTn0lQQVD+E+Pn7V6ibKyqtqbafB5dhTG
	SdKFy3Dwrzmdz2grjoRIxdJA+7dNpdmvWAG123W9yih+izYx2/VCcfUuKQjuN6inobSEKOFFi/A
	eiLxUCcF5G+buVRolzWqZud5sgrt1KLHoZBYzMtpfSZ6K2Meq0z6qhj2tSBVHal219k7HX2Eeza
	uvg9Y9C8iuLlMa4CbFYFgun2SxHV3Oyg2eUBqZpHUH/UqKW1ahyeP8R3CIbAXuHl9EB5PK/097c
	9IFxJtMqsd2CgNJeozbITBG18jc5DLwQ5R2mPk2p+S4PavwkbIyHqsqt2onEGOPCDRMF6wYWZXI
	3jfPCLe5qYWKK1MzTddo1dZ1B/MTv3VFOJEChyTTDEXi1
X-Google-Smtp-Source: AGHT+IHZrI/GvToEb7dCPGeWvlRmWso5d9JAzN2/1ym+EDk2TzhgDNhcO92+4YHwNzODFUBXeeEH/A==
X-Received: by 2002:a05:6000:18a9:b0:39e:cbca:7156 with SMTP id ffacd0b85a97d-3a1f6422625mr4225502f8f.1.1746819448739;
        Fri, 09 May 2025 12:37:28 -0700 (PDT)
Received: from thinkpad (cust-east-par-46-193-69-61.cust.wifirst.net. [46.193.69.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58f33b5sm4223527f8f.54.2025.05.09.12.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 12:37:28 -0700 (PDT)
Date: Sat, 10 May 2025 01:07:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, Aradhya Bhatia <a-bhatia1@ti.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Junhao Xie <bigfoot@classfun.cn>, Kever Yang <kever.yang@rock-chips.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: PCI: rcar-gen4-pci-host: Document
 optional aux clock
Message-ID: <2ny7jhcp2g5ixo75donutncxnjdawzev3mw7cytvhbk6szl3ue@vixax5lwpycw>
References: <20250406144822.21784-1-marek.vasut+renesas@mailbox.org>
 <20250406144822.21784-2-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250406144822.21784-2-marek.vasut+renesas@mailbox.org>

On Sun, Apr 06, 2025 at 04:45:21PM +0200, Marek Vasut wrote:
> Document 'aux' clock which are used to supply the PCIe bus. This
> is useful in case of a hardware setup, where the PCIe controller
> input clock and the PCIe bus clock are supplied from the same
> clock synthesiser, but from different differential clock outputs:

How different is this clock from the 'reference clock'? I'm not sure what you
mean by 'PCIe bus clock' here. AFAIK, endpoint only takes the reference clock
and the binding already has 'ref' clock for that purpose. So I don't understand
how this new clock is connected to the endpoint device.

- Mani

> 
>  ____________                    _____________
> | R-Car PCIe |                  | PCIe device |
> |            |                  |             |
> |    PCIe RX<|==================|>PCIe TX     |
> |    PCIe TX<|==================|>PCIe RX     |
> |            |                  |             |
> |   PCIe CLK<|======..  ..======|>PCIe CLK    |
> '------------'      ||  ||      '-------------'
>                     ||  ||
>  ____________       ||  ||
> |  9FGV0441  |      ||  ||
> |            |      ||  ||
> |   CLK DIF0<|======''  ||
> |   CLK DIF1<|==========''
> |   CLK DIF2<|
> |   CLK DIF3<|
> '------------'
> 
> The clock are named 'aux' because those are one of the clock listed in
> Documentation/devicetree/bindings/pci/snps,dw-pcie-common.yaml which
> fit closest to the PCIe bus clock. According to that binding document,
> the 'aux' clock describe clock which supply the PMC domain, which is
> likely PCIe Mezzanine Card domain.
> 
> Tested-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> NOTE: Shall we patch Documentation/devicetree/bindings/pci/snps,dw-pcie-common.yaml
>       instead and add 'bus' clock outright ?
> ---
> Cc: "Krzysztof Wilczyński" <kw@linux.com>
> Cc: "Rafał Miłecki" <rafal@milecki.pl>
> Cc: Aradhya Bhatia <a-bhatia1@ti.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Junhao Xie <bigfoot@classfun.cn>
> Cc: Kever Yang <kever.yang@rock-chips.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>
> Cc: Magnus Damm <magnus.damm@gmail.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-pci@vger.kernel.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
> V2: - Add TB from Niklas
>     - Document minItems in clock-names
> ---
>  .../devicetree/bindings/pci/rcar-gen4-pci-host.yaml      | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml b/Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml
> index bb3f843c59d91..528b916fdb99b 100644
> --- a/Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml
> +++ b/Documentation/devicetree/bindings/pci/rcar-gen4-pci-host.yaml
> @@ -46,12 +46,15 @@ properties:
>        - const: app
>  
>    clocks:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: core
>        - const: ref
> +      - const: aux
>  
>    power-domains:
>      maxItems: 1
> @@ -105,8 +108,8 @@ examples:
>                           <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH>,
>                           <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>;
>              interrupt-names = "msi", "dma", "sft_ce", "app";
> -            clocks = <&cpg CPG_MOD 624>, <&pcie0_clkref>;
> -            clock-names = "core", "ref";
> +            clocks = <&cpg CPG_MOD 624>, <&pcie0_clkref>, <&pcie0_clkgen>;
> +            clock-names = "core", "ref", "aux";
>              power-domains = <&sysc R8A779F0_PD_ALWAYS_ON>;
>              resets = <&cpg 624>;
>              reset-names = "pwr";
> -- 
> 2.47.2
> 

-- 
மணிவண்ணன் சதாசிவம்


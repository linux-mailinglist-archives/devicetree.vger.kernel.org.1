Return-Path: <devicetree+bounces-72520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 737308FC30A
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 07:29:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 319F128639D
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 05:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D015813AD1D;
	Wed,  5 Jun 2024 05:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zcST5AmE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569FC13AA4D
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 05:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717565347; cv=none; b=U8BuokLODFiG5RtRdHu41uSCkHdy8nueK+CvWMtAjPkHhYZMeBXbW9kLZpVVKfd91YoZ71zZwM4zoI9dAmflForZ3IhQ/Qa5JKKzrESekq+zvGe5fWtvL1XELv8qoaNE8mAgGMoOQerWJVMmd3HZrUBPsRM6D/fgk6qeAph935s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717565347; c=relaxed/simple;
	bh=bo3YB9Y6PGsittK9YRMU0QTYRExtaWEzIpjtb9I71L4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pTQyMSM6y1J53oH3zDy+yYfN1CRpd2Yd7uJUpJT0sINSwNMcdmPxTy8ZzNhVgxQ06z43uiVYUhZfh0fxPvuGzhnf/XOzrT2rDOaKPYtRuay4jgrRvGRRZFrLe6mJPWSNcu4fqqXxaO6FKOKZXgvHi9YiwSxN21kvyL1j/1ZCOYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zcST5AmE; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1f4a0050b9aso43435495ad.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 22:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717565345; x=1718170145; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S4zI4U11BDZNfkZZzEZj6d9Y1BsbhzfMmQs4Vod2x5k=;
        b=zcST5AmEC/IXWl196MaIwcTfOwbGIkY8Bvi4jAOt1C5h+zdjAN3HYubqUwFHJa1Vdo
         HOaUXfBUAdpaz0bdWG/xyQ9ArLMalVPZ4vyCljZn1KP5yrEExzQM/9thm8QFyAuvQu8d
         FWTo/HcBTBkxUA8gTrUE5l1TsBrWBWyUMZheQ1ghzrFUv6J3vOL8gm85qOdv9zfHQnEu
         hCR1ew9xcLa7lWaxV8BtLymdQoXMVVO+mryAPLTCboyZi2c54tqmnf/+0FlUk0hHrVwx
         Bj/Tn6i7CpDr7kwfpxD6XHKewO1sacK/k3U7znruFX1LHib0sWRhtEholQgKP3HOAAq6
         EdCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717565345; x=1718170145;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S4zI4U11BDZNfkZZzEZj6d9Y1BsbhzfMmQs4Vod2x5k=;
        b=PjwFJKG4U+0nbJwhdswLi9UJJ/VCaq0crGhJFZ81pSxN6KV+4iFXDss2jE823J+wGo
         CDNW4Tb/RJ6IcmoPD7XxanhjYSvOHuRxiEu8Hzj/HE610hV6kQrfsl5ME3eQWIkWwP1Q
         2KHcJZSl8/ciDdveUfyqk4z/hF3Dx9XIvE4Bl1Melo6CXAAgA+WmDgOGmpR21gitVx+h
         zWtnFHUKZW7BwCs4WFnKkZCh5kRsflqwNjW64wI+uf+vKCPErdL2IyjEqneyPig+Qgmp
         gElgLqoefbFR3yj3Eskgv0wGC8rcbpflclfZjHV8BZW3o2L6uuZu3asjHvUKjOYTJO/w
         satg==
X-Forwarded-Encrypted: i=1; AJvYcCUBxGMLkxqOIF1R83PtsVzqrquJHjQhKs1kHyBBcW05WuWHNa6u4uCJpVXM3ZjeiDBFistVZ65qSVuElReMbLJqbzvLS56L7FTEBw==
X-Gm-Message-State: AOJu0YxPykF8XZSfmxX7AukzgBe9ic5YVoDlRGyzBBVzHKWPtI/Mu6g8
	EP1vDlnKxahszgi6Ilz/OWao6RADycB5ajmMS7tzVfE8fTklzsZm9jSA3hc74A==
X-Google-Smtp-Source: AGHT+IEzdNCJCRH7yJ0ei0sniJdJNz8MHeUqYp2pu53sf+8Bmyz5pIMjJwrHoIHAL/e8IimnYzpWvA==
X-Received: by 2002:a17:903:182:b0:1f6:6c52:7231 with SMTP id d9443c01a7336-1f6a5a0de72mr20221205ad.20.1717565345495;
        Tue, 04 Jun 2024 22:29:05 -0700 (PDT)
Received: from thinkpad ([120.60.137.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6323dd9dcsm92616585ad.126.2024.06.04.22.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 22:29:05 -0700 (PDT)
Date: Wed, 5 Jun 2024 10:58:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: qcom: Fix register maps items and add
 3.3V supply
Message-ID: <20240605052848.GA2417@thinkpad>
References: <20240604-x1e80100-pci-bindings-fix-v1-1-f4e20251b3d0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240604-x1e80100-pci-bindings-fix-v1-1-f4e20251b3d0@linaro.org>

On Tue, Jun 04, 2024 at 07:05:12PM +0300, Abel Vesa wrote:

Nit: Subject should mention the SoC name

> All PCIe controllers found on X1E80100 have MHI register region and
> VDDPE supplies. Add them to the schema as well.
> 

This is actually 2 patches. One adding the MHI register region for X1E80100 and
another adding the missing 'vddpe-3v3-supply' common to other SoCs as well.

- Mani

> Fixes: 692eadd51698 ("dt-bindings: PCI: qcom: Document the X1E80100 PCIe Controller")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> This patchset fixes the following warning:
> https://lore.kernel.org/all/171751454535.785265.18156799252281879515.robh@kernel.org/
> 
> Also fixes a MHI reg region warning that will be triggered by the following patch:
> https://lore.kernel.org/all/20240604-x1e80100-dts-fixes-pcie6a-v2-1-0b4d8c6256e5@linaro.org/
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> index 1074310a8e7a..7ceba32c4cf9 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
> @@ -19,11 +19,10 @@ properties:
>      const: qcom,pcie-x1e80100
>  
>    reg:
> -    minItems: 5
> +    minItems: 6
>      maxItems: 6
>  
>    reg-names:
> -    minItems: 5
>      items:
>        - const: parf # Qualcomm specific registers
>        - const: dbi # DesignWare PCIe registers
> @@ -71,6 +70,9 @@ properties:
>        - const: pci # PCIe core reset
>        - const: link_down # PCIe link down reset
>  
> +  vddpe-3v3-supply:
> +    description: A phandle to the PCIe endpoint power supply
> +
>  allOf:
>    - $ref: qcom,pcie-common.yaml#
>  
> 
> ---
> base-commit: d97496ca23a2d4ee80b7302849404859d9058bcd
> change-id: 20240604-x1e80100-pci-bindings-fix-196925d15260
> 
> Best regards,
> -- 
> Abel Vesa <abel.vesa@linaro.org>
> 

-- 
மணிவண்ணன் சதாசிவம்


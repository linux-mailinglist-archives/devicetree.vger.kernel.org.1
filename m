Return-Path: <devicetree+bounces-72385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 572E88FB910
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 18:32:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88BFC1C22597
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 16:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDADA1487FF;
	Tue,  4 Jun 2024 16:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qcfP5Nwm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322FF135A51
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 16:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717518748; cv=none; b=G+TYSbTo4Ko+k0CnHcE5l6jn8GqpnrzGITfc03XpH9bDVD5U0BIIo4mbo3QsYnJhgODNcJ/+zqlo8sMhnyH5+QajjIfC+dKzEmvKp6tJ0znGL+oEC1Gy/hf/uQgcOUnu2QvHCvWAR167GvbmaO6dN81/kTIJbe++2E9eu91bOME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717518748; c=relaxed/simple;
	bh=vhN1H/Zne01aMVCWtuHqzGpgEeAz4cXGQxiMxD7JVjw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dE92cIOEgmlet4tM+ADdFHDAckkLBykpk5xBop1acDRWuesT7wDJkXJMEZG0kdKE9I4lcwPL7Om/5uK0i3ujOCU9N5wUkBewHeOwK2sWBzcWdDp1XpV1DOCLvl86hcQohp8GkWSFTmgt0BTJ3+2XUDmuK73Am1Ero1DRBiuLVTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qcfP5Nwm; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a68a4a9946cso380105366b.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 09:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717518745; x=1718123545; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IZl68xNZAGCK8WLU3JtmGvlaBazODQUjqFiGmezC9ZA=;
        b=qcfP5NwmCrjUluhj9DTcXVgp1TSwRv48xwlt/UwKFNiYvV/cwdJ7l1M1bjEM/LWbA1
         zy6FY0XYyfTHzJFQ7wv0CQG0K1xIqw+sV5LOI+waawlmTGNUM7HYEBVFmB45ttQifuqu
         CnDYNzvqP4SsgzdwAnH55hGcM8qFbxF2ggRBcJ0g4a3R17F9koA+J32oUl14waK8VyUY
         8fRZ7qlyVIegRW3y/1fS73phmBIbTwUM61fnLmidFpJSHFNSq8sMcQed5p6Wj3pdA5Bn
         ULfcRzp0uC4xYsoFpPPx+GLMFz81R4jqfL7cANpDr/UZR61wA7GmPc1NVJFqbpj8YZ65
         Snng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717518745; x=1718123545;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IZl68xNZAGCK8WLU3JtmGvlaBazODQUjqFiGmezC9ZA=;
        b=hFLI0/g9ZnVLDV18k4RqLiwV7QPAWtYK0hyPceRpfacLXg1Z/oaPGviTBCMbYIEXPd
         JVMJ6NRtrlyyOs7MI9SvrWh2gorPqu1oM0c922M3HUtLmyrU6uRdw6CPeYC/5a2pAPh4
         RKCeHo2eiQC2qj+WdbX758btiCLZfV93G5ZboLQFklEDCrMbDkK4FF6OGJxCY+AoCa7m
         SL3UTwvuONt36gI1qx9zvX8WYAoppF8TwM9eCePKIYOoxx7p059FxIAe207R86TleQSw
         zv2aCRZjOktPMnzH5rcpdk2JodgVgwdXjld/YNxr80KePChW0CGxpD4Cdn+GMWaUoAFv
         Px1w==
X-Forwarded-Encrypted: i=1; AJvYcCWZbxaauodR807t6hpkTpyYQ5ka55UOhrtOJCzIyyzV/KHWvPCCV+i/GJyQ0yji69cxNS7yt4Ko2PsXWdehKGD4b2LJkZe51D2xRA==
X-Gm-Message-State: AOJu0YwI2UnLP5GMoj5gvtWE2m5lM4cQ2AiNN02Eq/rfXFvJFFHXkPwt
	D7hlSJCROYJP5fc/aE1gOYGPVaRs+Vnf0Y3bnEDiEtPJ43nuz1mmqyAGmrYIXCY=
X-Google-Smtp-Source: AGHT+IFOOVIcN2aRDbb5aHSw3p0bc1NVJmEzyLH4sAbz28u/NJNN0/RgeJtw8+aYC4M+i+BeQktspA==
X-Received: by 2002:a17:906:c383:b0:a62:cef2:5711 with SMTP id a640c23a62f3a-a699fab8c84mr2534766b.6.1717518745428;
        Tue, 04 Jun 2024 09:32:25 -0700 (PDT)
Received: from linaro.org ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68ff23ffa2sm359655266b.67.2024.06.04.09.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 09:32:25 -0700 (PDT)
Date: Tue, 4 Jun 2024 19:32:23 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: qcom: Fix register maps items and add
 3.3V supply
Message-ID: <Zl9Bl3HalMHAsvpY@linaro.org>
References: <20240604-x1e80100-pci-bindings-fix-v1-1-f4e20251b3d0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604-x1e80100-pci-bindings-fix-v1-1-f4e20251b3d0@linaro.org>

On 24-06-04 19:05:12, Abel Vesa wrote:
> All PCIe controllers found on X1E80100 have MHI register region and
> VDDPE supplies. Add them to the schema as well.
> 
> Fixes: 692eadd51698 ("dt-bindings: PCI: qcom: Document the X1E80100 PCIe Controller")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> This patchset fixes the following warning:
> https://lore.kernel.org/all/171751454535.785265.18156799252281879515.robh@kernel.org/
> 
> Also fixes a MHI reg region warning that will be triggered by the following patch:

Correction here. This schema patch will trigger an MHI reg region
warning until the following patch will also be merged.

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


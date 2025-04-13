Return-Path: <devicetree+bounces-166390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEF5A872BE
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 18:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF403189428C
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 16:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 157991E633C;
	Sun, 13 Apr 2025 16:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wEpMHURg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662F91C860E
	for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 16:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744563556; cv=none; b=TiWTGUIinQHhUUDnASE9Ei0gJJyehbtfUi+noa2goTNEpgLD/Tb0jHH0rEi3ygeuGPxdqLZRSPiq2q1gndR0JTEkm61KiFHU6YKZicwzMOzP6ZSUcjFEQHMnYFMKgxYpzcIGhIoeqMHQgj8Ytk9GZK2owXtI9EVDFSJeXyFzCB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744563556; c=relaxed/simple;
	bh=i17QWzXCS6ZCHtMbXDJ6n/FUUDwlQQ1PwIa3RJGSpqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sanjWGQHC2bM8+vzmXA+T1cwDW8F8AoAgk/PCfgcreZKmn3J7yZzRpUi+2tRIYBjsnRWRuijXIFLhX5DjAaWr1PaDtyzC8OkZIDQkxsbAwZlt8tV258e0Tw1aoKCoIEfOIKfM3xXFOzF7M4a1n9eF0ElyqaRy3eBMGqgSkrS3VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wEpMHURg; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-22401f4d35aso39234475ad.2
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 09:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744563553; x=1745168353; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=noK0IP3zHzbpqWrnS3yDqlfS/Gp7WWrDNNCpSJyHX2w=;
        b=wEpMHURg8jAWFtRtGsWPvA1S8ZMGwvnna4BQOC40Fq9b7lXDFuoyeQFLp4VIsxeiQ0
         eAdM6KtX1z1M8XT5KFHR/cw1Q6bZkUuLJ77oFIhZxQJwZsjrTJDfzWCLWtYZbl5OW22B
         HeextLyN1fED2/5hjmplApPOecRkZLCrTYoNuyXjYaL5YMF1bFoeVeDJXasGYmrTaNIO
         nWDYd14clOKoi9C+UYpe+/EMKhNuD56EyJ0N7NPWp2kvhvXJXnpIDHM/gv5zIfaLhC3w
         +lv8we9ONVou7nPzOtx0OxQX9oxD6hu9/qG7sB8VifKID0ccfaVGiOGWNbl2xgbtkwu7
         noEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744563553; x=1745168353;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=noK0IP3zHzbpqWrnS3yDqlfS/Gp7WWrDNNCpSJyHX2w=;
        b=HCYqsCE4AyzOJRM9m66spVKCWRK/gQZLiulYxEcJDKIGKnFVarmRmHQLjEynj+wQpE
         dbn0LZ0J6DgCCnqJ+apDO/sN4LElr6rweL/tqvvB6dG/Ca+LCkyv4EvXTr94YsHhdYvC
         ospne0iql+bv+ZurOntGFfXioxX+92f6zzgDyKD9GkcrKKUkT2hlSq9cBclzc/YQ7sZF
         W7YK/EcJtCtGRjWfOQZ/4McBhf4zsUUhl0pxv7br4ELoBsGlblVVDa4l+gbkAm4yGg1C
         6Awj0IzxPWC6MuvVSE4PSizSeFwTaq0UYEdrsWxEj6xHKafGsq+NKtewaPV5GjcWYMBw
         9hLg==
X-Forwarded-Encrypted: i=1; AJvYcCUgfyq0nrnawCRE2XuZ7H01o8htEXJJAIPy4amwVv3h4vG3f02NOEsYrTb2nCeVKCvZtCl+2iKS7CPW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/I7PJ3bthof1TtGchBB6Eh5JyozV+UVk9j5Hs9GIGsARgBVcS
	bWMAp2BUvoQdsyjMikJrGb8WBjcD6UzvK0SU+Cv2wxfZnQozWINu4vxrF/FH6w==
X-Gm-Gg: ASbGnctcrFCJmGnR+pXb0ELD1QeVKKE29Nqy3BbcQSgYQNGeI3S5cVHZYb3KbUkUZ/6
	wSdrGXYny3WlmqjSpkI+X4PuJmKX9GAXxQneHSce7o+zzpWKSbBkZXL/gziFZ6CRqpCIz0g5QAl
	C3PFq/BsM2B2vaSGzjS1Vs+uB8aWSDTDkbTJg4T3swc0edV2xa4UmjZyix1wrITk72Pw/4bnbHz
	w6GK9MQwhZuq2h4+3ikQ1fy+oMDeJUQ1r8NATo4NJIURJnfSN8wffCp2+s9hGy+utmOqOZVJBpQ
	R6s/kKpAfvcl/D1XpSHClJj/gUbdIbeQp/okdluZgxt2AnQuqvcX
X-Google-Smtp-Source: AGHT+IEuuztzcfI3tZMtG2ip7jalzWCYkQqUAle89wyt0wS3flTIjrnot513jepB3231SBdBpBbheQ==
X-Received: by 2002:a17:903:19ed:b0:224:1eaa:5de1 with SMTP id d9443c01a7336-22bea4ade1fmr126350445ad.18.1744563553536;
        Sun, 13 Apr 2025 09:59:13 -0700 (PDT)
Received: from thinkpad ([120.60.137.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7b8aff9sm84440595ad.79.2025.04.13.09.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 09:59:13 -0700 (PDT)
Date: Sun, 13 Apr 2025 22:29:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH v3 02/13] dt-bindings: pci: apple,pcie: Add t6020
 compatible string
Message-ID: <754d74knq32vrefkukv4ec7id33d6rvhuf5boccynljfgmn6hz@bzxc7uiqdbos>
References: <20250401091713.2765724-1-maz@kernel.org>
 <20250401091713.2765724-3-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401091713.2765724-3-maz@kernel.org>

On Tue, Apr 01, 2025 at 10:17:02AM +0100, Marc Zyngier wrote:
> From: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> 
> t6020 adds some register ranges compared to t8103, so requires
> a new compatible as well as the new PHY registers.
> 
> Thanks to Mark and Rob for their helpful suggestions in updating
> the binding.
> 
> Suggested-by: Mark Kettenis <mark.kettenis@xs4all.nl>
> Suggested-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> Tested-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> [maz: added PHY registers, constraints]
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  .../devicetree/bindings/pci/apple,pcie.yaml   | 33 +++++++++++++++----
>  1 file changed, 26 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/apple,pcie.yaml b/Documentation/devicetree/bindings/pci/apple,pcie.yaml
> index c8775f9cb0713..c0852be04f6de 100644
> --- a/Documentation/devicetree/bindings/pci/apple,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/apple,pcie.yaml
> @@ -17,6 +17,10 @@ description: |
>    implements its root ports.  But the ATU found on most DesignWare
>    PCIe host bridges is absent.
>  
> +  On systems derived from T602x, the PHY registers are in a region
> +  separate from the port registers. In that case, there is one PHY
> +  register range per port register range.
> +
>    All root ports share a single ECAM space, but separate GPIOs are
>    used to take the PCI devices on those ports out of reset.  Therefore
>    the standard "reset-gpios" and "max-link-speed" properties appear on
> @@ -30,16 +34,18 @@ description: |
>  
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - apple,t8103-pcie
> -          - apple,t8112-pcie
> -          - apple,t6000-pcie
> -      - const: apple,pcie
> +    oneOf:
> +      - items:
> +          - enum:
> +              - apple,t8103-pcie
> +              - apple,t8112-pcie
> +              - apple,t6000-pcie
> +          - const: apple,pcie
> +      - const: apple,t6020-pcie
>  
>    reg:
>      minItems: 3
> -    maxItems: 6
> +    maxItems: 10
>  
>    reg-names:
>      minItems: 3
> @@ -50,6 +56,10 @@ properties:
>        - const: port1
>        - const: port2
>        - const: port3
> +      - const: phy0
> +      - const: phy1
> +      - const: phy2
> +      - const: phy3
>  
>    ranges:
>      minItems: 2
> @@ -98,6 +108,15 @@ allOf:
>            maxItems: 5
>          interrupts:
>            maxItems: 3
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: apple,t6020-pcie
> +    then:
> +      properties:
> +        reg-names:
> +          minItems: 10
>  
>  examples:
>    - |
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்


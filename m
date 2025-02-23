Return-Path: <devicetree+bounces-150081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC94A4124B
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 00:45:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16FF4171A29
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 23:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B84362054FE;
	Sun, 23 Feb 2025 23:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f7W5rXcZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4186203710
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 23:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740354237; cv=none; b=SkSHD3Ms4FknZhB7JsUpPABPDwU4g15qSQDC+MWNcqdZqwl8LYuYTe5rrALtrxSoyJ2LrbaLGjx4QJeOr3zXXB1Ai/RemysDjAedtlYhCQ1V88lyd0tstby+X1D2F3cJedJAWNzYOMLfezaruFZY+AsB/mUIOK2he3edeV4VG4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740354237; c=relaxed/simple;
	bh=deTx+omgnbLOs8r75CSTqyV8OyfmK0sMG1fGy+1WAXA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jMsjs0E99oJyEAcPVZ50IIsV/FZMfbytzqIbjfhT9jM68RUH2RMY3BOsxyRxnP2kWMs9A5g+LVZzn+F1pkX+E4J8BpraP0GdhZLEaKuALhRHd2g7nFkzxHsTKsOOWUND6cNg4sLgSoCY067W27f5tmmOs2abNM1jgyPZIUoDwHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f7W5rXcZ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-54622829175so3668899e87.0
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 15:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740354233; x=1740959033; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=28j2oUhHrE0UtIm5Z7Iu9myzi6x7Y72gOBfh9gvCc7A=;
        b=f7W5rXcZfjbLnPu9d2Fjv268Mx56fiFxIf7KMch/7XYFz5jSR8G6VpdD5oxO6TSti9
         ZgLPrEdkKf/2JBZMhBv5BHOrjyvIJu/pNsEr+wS7t1ujiDfvJlNEaXJkNEhbTxX2AmvU
         rQhc657cnWk/CH4/Qie0Vk4zZFHb5F3QdHhX/nOpjlkVkstIRXLcPryCBD+ONifqrpN2
         YZH3dPrWnt4R/Z9SD4yh2wFoV+1vJRRw5mmBgP3kuw0Ej9Dp2AFyUJRpeitI1PCOYRac
         IHO31DPVQImRqq3/jEt8OkWGH3CdKhuMp4mnco9zXXwD75m4U1hu7NUon02d3SKAOcZJ
         5tWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740354233; x=1740959033;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=28j2oUhHrE0UtIm5Z7Iu9myzi6x7Y72gOBfh9gvCc7A=;
        b=QwyHJyv5H0C1hjCHTwmYRF++Nc83204/O1YZfuKWKCCNx63KyUTSsfTUG/6P3uHMle
         7i+AxCtw+Qa4TFAmc2Ip50ONhghx6M7mt7F5BFDWE+LGn1pHwRedbgxh/wpfh5hiPoN5
         im8XeJTRAl3psANCh4Tti/r8PUxP99A7PWU1M6yA/Kv3olYGNzRqCUxmaI1UNlxoA7dy
         65uB0xKq4FyV8kQZ+DhRHoodTZjZrWGanIbsb/ELLmhhZgEGxVXNvscCMpADSWIcOSWF
         xI2fPL6tQZVqt7jhLHpIO/kcWW/XsK9h+U3XXyF2dtk8XA8xzZFbHsIl6W50xqY3nvlY
         1kkQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+m3DkZnktHYuDNWrVx5vkY7mjO78dPtEZ4rwdnb78+YSuDB1uFoo7eLvRDbPbiAqNxLUVKqKtA//v@vger.kernel.org
X-Gm-Message-State: AOJu0YzOiNmwVC9SGqiknSttm+j8+Qe8ZDMcj4upZcOQeO4W2fpHyrrn
	WvJ0lrj2AzPh6nRdeHC8iwsYuEnOwkf7ZG095s52voA8NMg6ewdgKC1Jhp4HATbR3DJojBCiW2w
	4
X-Gm-Gg: ASbGncsyxq+wTJv+JrNWBzP3fII7GYpO/+Rvu+XTX2W7kIsxI83CQTjslkmhCQsmEBF
	NSWLiiyGbSDLfmmz7/Wd/vPaHP9zGj1RdBuun/KzhOLH0ONziMYIPLWBe1p5zqi68XC77gCJiyE
	zaO14JTL9MgJ12mOKD+yTCqJPn+jl4jjc3vryvP4WNkPi3kS5amV6My5+WE/sGW9Y5gScUblzbR
	7v1epVJ9Y/0XFqORHp3osO2qVnk3dVEc72aR+cv9HFyGjF7oiXBsi6COYiPl4gxv7CEnaKyEI7V
	vA/1kjFnW1B8FLAmrR7ZXab8l2cXAoobPZ1fpdV5zsDMk/tGC87xWRIPSZ3C/5ri+ieJk5sCx5D
	pXk3OTA==
X-Google-Smtp-Source: AGHT+IHqDyDmO/r2yjSG30eHo/aZTvnzBBS3IoH2SUfydcMTabalwcojF162vAWAlTXJ3voBa2nsQQ==
X-Received: by 2002:a05:6512:308a:b0:545:296e:ac28 with SMTP id 2adb3069b0e04-54839144ee2mr4857016e87.24.1740354232909;
        Sun, 23 Feb 2025 15:43:52 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54526741fe5sm3065509e87.90.2025.02.23.15.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 15:43:51 -0800 (PST)
Date: Mon, 24 Feb 2025 01:43:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/8] dt-bindings: phy: snps-eusb2: add exynos2200
 support
Message-ID: <4tvpl3pujnuw2qjwu7f7ryrr5dndxow7srkkp2223wmexr23bi@7nmgrpq6znpg>
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-3-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250223122227.725233-3-ivo.ivanov.ivanov1@gmail.com>

On Sun, Feb 23, 2025 at 02:22:21PM +0200, Ivaylo Ivanov wrote:
> Exynos 2200 makes use of the Synposys eUSB2 IP, so document it in the
> binding. Unlike the currently documented Qualcomm SoCs, it doesn't provide
> reset lines for reset control and uses more clocks.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov@gmail.com>
> ---
>  .../bindings/phy/snps,eusb2-phy.yaml          | 64 +++++++++++++++++--
>  1 file changed, 57 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/snps,eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/snps,eusb2-phy.yaml
> index 22c77968f..f4164db71 100644
> --- a/Documentation/devicetree/bindings/phy/snps,eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/snps,eusb2-phy.yaml
> @@ -23,6 +23,7 @@ properties:
>                - qcom,x1e80100-snps-eusb2-phy
>            - const: qcom,sm8550-snps-eusb2-phy
>        - const: qcom,sm8550-snps-eusb2-phy
> +      - const: samsung,exynos2200-snps-eusb2-phy
>  
>    reg:
>      maxItems: 1
> @@ -31,12 +32,12 @@ properties:
>      const: 0
>  
>    clocks:
> -    items:
> -      - description: ref
> +    minItems: 1
> +    maxItems: 3
>  
>    clock-names:
> -    items:
> -      - const: ref
> +    minItems: 1
> +    maxItems: 3
>  
>    resets:
>      maxItems: 1
> @@ -58,11 +59,60 @@ required:
>    - compatible
>    - reg
>    - "#phy-cells"
> -  - clocks
> -  - clock-names

Why? Clocks are required in both if clauses.

>    - vdd-supply
>    - vdda12-supply
> -  - resets
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sm8550-snps-eusb2-phy
> +
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 1
> +
> +        clocks:
> +          items:
> +            - description: ref
> +
> +        clock-names:
> +          items:
> +            - const: ref
> +
> +      required:
> +        - clocks
> +        - clock-names
> +        - resets
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - samsung,exynos2200-snps-eusb2-phy
> +
> +    then:
> +      properties:
> +
> +        clocks:
> +          items:
> +            - description: Reference clock
> +            - description: Bus (APB) clock
> +            - description: Control clock
> +
> +        clock-names:
> +          items:
> +            - const: ref
> +            - const: bus
> +            - const: ctrl
> +
> +      required:
> +        - clocks
> +        - clock-names
>  
>  additionalProperties: false
>  
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry


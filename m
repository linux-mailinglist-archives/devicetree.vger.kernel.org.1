Return-Path: <devicetree+bounces-22215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83945806D41
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:04:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A66421C20A29
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 247FE30CFC;
	Wed,  6 Dec 2023 11:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="La5qusJX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4208119B7
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:03:13 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3316d3d11e1so339596f8f.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 03:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701860589; x=1702465389; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TvIeZKCZ/iXdfcWBsHuAC4swO+sFcgH/SVXdldNcogE=;
        b=La5qusJXRIQ1f/2hmMgrvptru1yS8J/a0K173d9hdZl62NFzJNPdR2CQa3tFGpQZc6
         LYrGBWuBRKCpm+n8QbG/91uc1w9hIKCQynLJR+AjXj2bHJB5p4UuO7gUsQAThAKMUusD
         AmWFGGUl15ckx97PjB3DDa+7ImI9Xe+sYCIlJO6PUtHyiFhAzlc/ZRTWegFAp/y4fnsE
         Aoq9odpZzyPDZ8NUj0I4V+S5uoIQHpVWSzYk1tCM2j9t8TrS82SIiHeNVrW9QG09k+EX
         ZyocERM0hPHX5Asc5jaGWdFKZvrQwJ7pkcN5Q5woKfYKLEzecsg837xzUjljHyQGH/+f
         pC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701860589; x=1702465389;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TvIeZKCZ/iXdfcWBsHuAC4swO+sFcgH/SVXdldNcogE=;
        b=CvKOTOhVFW7E3fQj5ncSqnh8sCBoDvTJUX//zTYOITAnB4mDThPSLGQ3VXwGBAcWuM
         4El1NuLiwr4ik9hK3rjxOBEo9bc0mCxovohi29q9JO/+4movpQzjwh2b2DGPb6/8kDd0
         3JuRRzj4vn6llVMX5pRSIHVurT/14tKJ5eti/wBYOAljRVqVFR2RYmfckGchekTWw/L/
         /3CRm6I6R97CK1WDwPddIBgMs1CmsD06PLkz93xG46/+5UeI7mpWUA+OFJyEi2azXtVl
         yDMR644RPEO84rjK/mE8aN/bhf27APOn+FArNnHj95CQ5xs6OVmV9CEsJL5EIb9/+lAt
         ALqA==
X-Gm-Message-State: AOJu0YxfhjoMWtrFRoOWmVq9l5gOaWS79AXRC8Ds+X4EpTtZ4p0vVSI5
	HhinHDQRSoKWRG+0SlcEF0ATFw==
X-Google-Smtp-Source: AGHT+IF/NEr9Mf6vPGtKJNh2zlrnNAC1iTbKgLOzR4RCuy2YvYdgrjQo7GR5v1BtgWeP7rea7HEKOA==
X-Received: by 2002:a5d:40d0:0:b0:333:411e:3e97 with SMTP id b16-20020a5d40d0000000b00333411e3e97mr418380wrq.57.1701860589130;
        Wed, 06 Dec 2023 03:03:09 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id ba18-20020a0560001c1200b00333479734a7sm8669148wrb.99.2023.12.06.03.03.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 03:03:08 -0800 (PST)
Message-ID: <6d58e60d-c85b-47a7-840e-47711ad208d5@linaro.org>
Date: Wed, 6 Dec 2023 12:03:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ASoC: dt-bindings: fsl,xcvr: Adjust the number of
 interrupts
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>, broonie@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, viorel.suman@nxp.com, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20231205202015.2118980-1-festevam@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231205202015.2118980-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/12/2023 21:20, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Unlike i.MX8MP, i.MX93 has two XCVR interrupts.
> 
> Describe the two interrupts for the i.MX93 to fix the following
> dt-schema warning:
> 
> imx93-11x11-evk.dtb: xcvr@42680000: interrupts: [[0, 203, 4], [0, 204, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/sound/fsl,xcvr.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/sound/fsl,xcvr.yaml    | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/fsl,xcvr.yaml b/Documentation/devicetree/bindings/sound/fsl,xcvr.yaml
> index 799b362ba498..2db69a953afa 100644
> --- a/Documentation/devicetree/bindings/sound/fsl,xcvr.yaml
> +++ b/Documentation/devicetree/bindings/sound/fsl,xcvr.yaml
> @@ -38,7 +38,10 @@ properties:
>        - const: txfifo
>  
>    interrupts:
> -    maxItems: 1
> +    items:
> +      - description: WAKEUPMIX Audio XCVR Interrupt 1
> +      - description: WAKEUPMIX Audio XCVR Interrupt 2
> +    minItems: 1
>  
>    clocks:
>      items:
> @@ -78,6 +81,19 @@ required:
>    - dma-names
>    - resets
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx93-xcvr
> +    then:
> +      properties:
> +        interrupts:
> +          minItems: 2
> +          maxItems: 2

Same comment as your lcdif. Why all devices support now two interrupts?

Best regards,
Krzysztof



Return-Path: <devicetree+bounces-23837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E7380C79E
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:06:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC3482816E2
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FE3C2D63B;
	Mon, 11 Dec 2023 11:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fTYu0DVF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFED7B4
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 03:06:12 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c9f099cf3aso63996891fa.1
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 03:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702292771; x=1702897571; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mmc6jvsGYIPWlSw+mTClkyF2xLO1J2HDgWNHBPjGN24=;
        b=fTYu0DVFvb3E1RXr/1igi/sYvZgc20zzjezJFbYxG7rZkqeOypZbn1DlTsDmHvx1wc
         wF1Lmumk6AHMcT/nBqi9/gErbRfxfvF2nQxBktGnyYxt7NS96yoeR7F4FW8JW6P/pIsf
         HlY1ryMg38lnfcnfJv+RnajcjhJ7wtEelTAwr1RTVnPpH0VBoNwZYyDbqhYal26HJIKX
         C30M/ACW+ot1yU+gJ3BdUTwXZJ+hxox6SR4gz+Cs0Nb5JU5oC3ad3uZb4jDL3pvRyhi5
         Xn7bZADPAG7/uhiw9lQp0NPvw4vCgDn2WdeG1Gb4ga7dB8Sk1xYEFcWNQsCnaLQxvHXa
         Vlzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702292771; x=1702897571;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mmc6jvsGYIPWlSw+mTClkyF2xLO1J2HDgWNHBPjGN24=;
        b=UhibYjdqiVEkQscDlvPadR1BG45hoxtZrlLCUqnr4Ue/7wxtqv6XIL7/YnoLe9kCKU
         IwUcYjwyvhMbtKkN3NCJAJmwVepx9FAjvyjFxdO+l+1vJ/CkvY+cj9kUqWQR5fvBqa8r
         B8zlFoUUc571RyMZcYOlj6lWCauP4KK4MTKgMUEpK1noaJoH94znFghtp/QHOr8upVTC
         Oy7bF99nbhLaZXmlOpiWBXLlTttP0xkBvz5VgyDUjHKdmFSiyn8LYTE6KP5Uby0Rs+Vl
         Rl0BGkg5aRunLhLUhHMPSqdiyxfaLyxVoeRiYPOOhQlAssuce5Xq34HHuQAME6k8XBaH
         NISw==
X-Gm-Message-State: AOJu0Yx3eQDKoWjKFK0z84DuOV+ZS4OvaG4yugYeNPuF9p7HHcxjVd02
	oS/Rw8/x8ChehijDsghAvlJF7Q==
X-Google-Smtp-Source: AGHT+IEws++Z3d2Q8FP87V7anC5cq4gDk2U+0Igu4qvgIVqz1Vmoul4BlyIJEkD+6iAu9qN1fPo8dw==
X-Received: by 2002:a2e:bd89:0:b0:2cc:1cbc:734 with SMTP id o9-20020a2ebd89000000b002cc1cbc0734mr1873966ljq.40.1702292771246;
        Mon, 11 Dec 2023 03:06:11 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id vb2-20020a170907d04200b00a1f72df5617sm4206451ejc.141.2023.12.11.03.06.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 03:06:10 -0800 (PST)
Message-ID: <993b2eb5-7998-4765-9870-b7ad039f8a3e@linaro.org>
Date: Mon, 11 Dec 2023 12:06:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ASoC: dt-bindings: Add tas2563 into yaml
Content-Language: en-US
To: Shenghao Ding <shenghao-ding@ti.com>, broonie@kernel.org,
 conor+dt@kernel.org
Cc: robh+dt@kernel.org, andriy.shevchenko@linux.intel.com,
 devicetree@vger.kernel.org, lgirdwood@gmail.com, perex@perex.cz,
 pierre-louis.bossart@linux.intel.com, 13916275206@139.com,
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
 liam.r.girdwood@intel.com, soyer@irl.hu, tiwai@suse.de, peeyush@ti.com,
 navada@ti.com
References: <20231210234759.1095-1-shenghao-ding@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231210234759.1095-1-shenghao-ding@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/12/2023 00:47, Shenghao Ding wrote:
> Support tas2563.
> 
> Signed-off-by: Shenghao Ding <shenghao-ding@ti.com>
> 
> ---
> Change in v2:
>  - Add devicetree list and other list of necessary people and lists to CC
>  - Express Compatibility in the bindings
>  - Drop driver changes
> ---
>  .../devicetree/bindings/sound/ti,tas2781.yaml | 26 +++++++++++++------
>  1 file changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/ti,tas2781.yaml b/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
> index a69e6c223308..c049fe6b2dad 100644
> --- a/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
> +++ b/Documentation/devicetree/bindings/sound/ti,tas2781.yaml
> @@ -5,17 +5,17 @@
>  $id: http://devicetree.org/schemas/sound/ti,tas2781.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Texas Instruments TAS2781 SmartAMP
> +title: Texas Instruments TAS2781/TAS2563 SmartAMP
>  
>  maintainers:
>    - Shenghao Ding <shenghao-ding@ti.com>
>  
>  description:
> -  The TAS2781 is a mono, digital input Class-D audio amplifier
> -  optimized for efficiently driving high peak power into small
> -  loudspeakers. An integrated on-chip DSP supports Texas Instruments
> -  Smart Amp speaker protection algorithm. The integrated speaker
> -  voltage and current sense provides for real time
> +  The TAS2781/TAS2563 is a mono, digital input Class-D audio
> +  amplifier optimized for efficiently driving high peak power into
> +  small loudspeakers. An integrated on-chip DSP supports Texas
> +  Instruments Smart Amp speaker protection algorithm. The
> +  integrated speaker voltage and current sense provides for real time
>    monitoring of loudspeaker behavior.
>  
>  allOf:
> @@ -23,18 +23,28 @@ allOf:
>  
>  properties:
>    compatible:
> +    description: |
> +      ti,tas2781: 24-V Class-D Amplifier with Real Time Integrated Speaker
> +      Protection and Audio Processing, 16/20/24/32bit stereo I2S or
> +      multichannel TDM.
> +
> +      ti,tas2563: 6.1-W Boosted Class-D Audio Amplifier With Integrated
> +      DSP and IV Sense, 16/20/24/32bit stereo I2S or multichannel TDM.
>      enum:
>        - ti,tas2781
> +      - ti,tas2563

I don't think you tested your DTS. Where is the compatibility / fallback?

Best regards,
Krzysztof



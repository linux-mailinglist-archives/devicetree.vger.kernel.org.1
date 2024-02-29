Return-Path: <devicetree+bounces-47181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5953986C5E6
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:45:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AD5F28896C
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 139C662164;
	Thu, 29 Feb 2024 09:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tsfqKfrE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424966167B
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199895; cv=none; b=gM74RRx7BbA9Z2fL06ZHwXTQK6FJFLtFh2BHMD2e8RG16vLdDfkJdY9WZap6CL1MkD/XA/ALCdgsgR0FQNxe9q5r8d2tQNEmBX58lMg1VWI6iLrdSVmzGn92LOZKvIec0GiZNEr27dqhx7PecWbUkzSNINHkh1vNTWst9P9bxQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199895; c=relaxed/simple;
	bh=EZVqqt0UqTzqDRi0smq5nKxXxfGTiBGsCpugNDhVifU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sG7zRRn3UE9wpu3QsqSPFivwFYANe9LUBCZyx25ae/ETFkI5Qr/nx6lencttGtRa3JZX75btSQtl6dQQ6ZgXKTFPTBZmXCbVIcJfTrYbnt5Wj2W5k/4P1cI4oFingALnGneRMqLvLllw2DTPxamIPjUgzsC75pCo0WbHQEP+JIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tsfqKfrE; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5655c7dd3b1so3435565a12.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199892; x=1709804692; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eZ+itJdAzrTo94ch23AZ1A/oYM7pCYfrgxj/anzUqCs=;
        b=tsfqKfrEH4UAywDJfql0r7cMsCwx/8r6VHuZAmBFpbwJMyKPrWhQpO/f7uFiLJLE8n
         wr05P9F34PFpN3XdIRldBhxhtCYfgdZIs++taW9+V6pqB4Cs3iB7b5qLqd6UNzddQxlJ
         pFCEbosJ3CA0WG4amKX728Vst2CuXfGWou5HdSE68jsZawbMOmCOX7+5rdSaUznDvrNg
         gfxkb8WzntzhFAYl7+Pz/6XFY+JRJiuq5w88hEDvR5z8vrGc4nlDaaZm1iKpefsmySnU
         WTq/3dZ875F70hrkpVqMCg7Eb9f6h6y2aLGCOoUdGEZ84Me6VitUS+5tOxlA0jU5UGlO
         k7xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199892; x=1709804692;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eZ+itJdAzrTo94ch23AZ1A/oYM7pCYfrgxj/anzUqCs=;
        b=hzbUd6mX4khEgU8bPGwXRb0LW+JGr9GZMJfW5cJ7xRT0gmwhea9+kb9ANnvqG7yxqX
         +YwUwOQ9EK/2XFvJmiTakttv01jT4eYvgd51vzirOWvi8SPMxJjqLrBLmI+yNvJ/M92A
         28NuqOmDEKTkno3DwJp9E5EeYx66+saPHb2J9ypnByHz14NmQ+PmIx4sGz8d3/W1Lyo9
         oK4E2lM0YgyztYzw0o+pPZMEQuV+kSBrZAvu9DQu1oqCYQcau0Wf39eMxSjdGI+on9Pk
         lbQUMi5uTTSLBwuQUWS8QO2ClGI4NsDKoQLWBYLZ4HOlXuZjLWi9/sVoe+zXW6UJwaMs
         iOMg==
X-Forwarded-Encrypted: i=1; AJvYcCV/Krl61RB4Pyl/ubinmj9kCoHaeTIdnypA8vs0fUVeh1fk6gW5oGRygb7+OBWbZbr2jesfhJzY8317XOsSEy7PKWBF5Q4XM1qZBQ==
X-Gm-Message-State: AOJu0YyqWzLKmok4bARy9UwymzNaWigbn2bEmZOfhBSd0WueMdqo1edM
	qcjTvxddWrhPvcGkj+i9HZOseS0lhLLX6I/0dmXRQgNtYp3Npnl0Z6C2oX0YTwc=
X-Google-Smtp-Source: AGHT+IGM1Q/68kQTFg/oUlseVpGX5woIKvpJzrmhly6aWU404VVWx3CkT/1eiwnuTX2AaZhFcwpX+Q==
X-Received: by 2002:a05:6402:22c3:b0:566:b1d6:d4c8 with SMTP id dm3-20020a05640222c300b00566b1d6d4c8mr94876edb.16.1709199892825;
        Thu, 29 Feb 2024 01:44:52 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id c8-20020aa7d608000000b0056470bf320asm450487edr.43.2024.02.29.01.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 01:44:52 -0800 (PST)
Message-ID: <3460ecc8-d7d7-4d1c-ad0c-b32efc3b9049@linaro.org>
Date: Thu, 29 Feb 2024 10:44:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] ASoC: dt-bindings: fsl,imx-asrc: update max
 interrupt numbers
Content-Language: en-US
To: Frank Li <Frank.Li@nxp.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240228-asrc_8qxp-v3-0-d4d5935fd3aa@nxp.com>
 <20240228-asrc_8qxp-v3-2-d4d5935fd3aa@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240228-asrc_8qxp-v3-2-d4d5935fd3aa@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/02/2024 20:14, Frank Li wrote:
> fsl,imx8qxp-spdif and fsl,imx8qm-spdif have 2 interrupts. Other platforms
> have 1 interrupt.
> 
> Increase max interrupt number to 2 and add restriction for platforms except
> i.MX8QXP and i.MX8QM.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../devicetree/bindings/sound/fsl,spdif.yaml         | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/fsl,spdif.yaml b/Documentation/devicetree/bindings/sound/fsl,spdif.yaml
> index 82430f1d5e5a2..785f7997eea82 100644
> --- a/Documentation/devicetree/bindings/sound/fsl,spdif.yaml
> +++ b/Documentation/devicetree/bindings/sound/fsl,spdif.yaml
> @@ -31,7 +31,8 @@ properties:
>      maxItems: 1
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    dmas:
>      items:
> @@ -100,6 +101,23 @@ required:
>  
>  additionalProperties: false
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - fsl,imx35-spdif
> +            - fsl,vf610-spdif
> +            - fsl,imx6sx-spdif
> +            - fsl,imx8mq-spdif
> +            - fsl,imx8mm-spdif
> +            - fsl,imx8mn-spdif
> +            - fsl,imx8ulp-spdif
> +    then:
> +      properties:
> +        interrupts:
> +          maxItems: 1

else:
minItems: 2


Best regards,
Krzysztof



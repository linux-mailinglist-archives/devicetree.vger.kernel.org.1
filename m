Return-Path: <devicetree+bounces-57040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D670E89B7BB
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 08:38:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05C701C215CE
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 06:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CD772134B;
	Mon,  8 Apr 2024 06:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hcyQqu84"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AE01CD38
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 06:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712558294; cv=none; b=aKPx8KHKiQHrAppZgkce621gg+noyHShGz/8shH0qYf0VobXi4Rja6GbjNxU1qr2WtMCT7gSqLphDJSagoAN/p38tP/0lf5U8NAQj0fp7WawMAAvL3X0ZbO+MV06pqtSlD6R8/xNDwDxp4AApea/EufTab0HKx4AsnQWIAOHlBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712558294; c=relaxed/simple;
	bh=23vkNTB9fsdX2nB3MrPEHmDEwG6zGXbgyPXrkLcycTY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HbUU2XcxJgUBp5JCfU1LKSnxoWXANOP4Tvph6jVI6xkPTQ63W4nX4NSgKJI1w9i9MrNcFr3C1fWmY6UymTTdd87SUo6HkFQDlWvLOQiYlezvyjDeZgA7kHQYQidak/MxmYtMLMKVADCzsnqnskY1cl1k7bXQk6EHgBJVOI2+RL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hcyQqu84; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a51c6e91793so171763266b.0
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 23:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712558290; x=1713163090; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2w/InBAZl4oWhjZ0Ps1WovnvdcDfPtJEQD8Wh/hdLVE=;
        b=hcyQqu84CLB/LOWgFHF+a3nSfSBg8W88+GUmxDBILQV7cNH/W1mAyWyiwYX7PqRVdK
         fEeCnUN6kNjYGHOtthYnbBobdbGzDJ/npYV+bt4vNMqQjcTVhotwW6N4oWT6P21seIHR
         zeCH9RSJidCHljwvrFljeOCIQowij/hdZrQS6nmpn1JEfAnkDTfpyDU4lemuze9AoAN3
         s4mTY7CP9QFjSA3fq+CjIRnU5AON5QEM4CpJZ0g1XR30KHWVXfumqBwmSdE+4tGZ+rMj
         /KbB5XcJpivv1GCKAs1uUYzO+cdO8A0VXjM97naAe+UzGnTfYLgjQkPFHIOuONs8gA5u
         va8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712558290; x=1713163090;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2w/InBAZl4oWhjZ0Ps1WovnvdcDfPtJEQD8Wh/hdLVE=;
        b=vuYj9t/uw/rnsaVAH0PhQTgnEUGFMlAAg4NtF2is54ItgUZ2TyPuk9Ybs0mKafIg/A
         jI0pI5DSCTmbbWWmubaXQJIjHDAkGTG8k5g8p4C+ND5KpWzvmLydV8JnfXBMDZZh8Ldj
         UvpdMWQG2284OYx9CiX9o97AdKjJL88rLXfycVw2i61pTDWRAV3GB8mZg0Z/IQVVRimB
         c6xSY8qQxnYJkfKScV+WmWYqlR2UYiV38FkGg3WMlXuB7HzPyTwy3nzXjJ1Zye/6P+0J
         lIyfIkGjIb6FUhPqHAAnLbJcXBWYG/Z7WxyZmCwL4DoHoenfPsgjuAeNnNsHtdlIUmsS
         snUg==
X-Forwarded-Encrypted: i=1; AJvYcCUs8RjMIBZaYZJJPhkA1/zaiydcWgKUqSn3wu4pD4WDNbKXQ1Ui5pqcyTYQdwbpMB/4lS7zOvDk2ZzQSeTPADoygXjKCXyj0um5NQ==
X-Gm-Message-State: AOJu0YxFxtZm5iXNV+cVixVodyt6+Sfz+sKSeqNSU+7ejVjJBdAVeCmg
	xAH578rwvH6vSFfe1XXFxr6uIdTTrG+6YUqZbgSv6nqWpeQ22f8YsCksKA1ofTB1WmXEhfynlOh
	y
X-Google-Smtp-Source: AGHT+IFGFoGB9wEcbDwB5hRjnY45bxmlcOVce7oiWq0/ZW53C83YQi+of41gg2gmA7rSpvxjCVYHqw==
X-Received: by 2002:a17:907:1b03:b0:a51:dc1f:b2fb with SMTP id mp3-20020a1709071b0300b00a51dc1fb2fbmr935999ejc.12.1712558289781;
        Sun, 07 Apr 2024 23:38:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id ld11-20020a170906f94b00b00a51d8a3a632sm666159ejb.168.2024.04.07.23.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Apr 2024 23:38:09 -0700 (PDT)
Message-ID: <fd1d99fe-943f-4fcc-a736-9d97dba5a80e@linaro.org>
Date: Mon, 8 Apr 2024 08:38:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: media: imx8-jpeg: Add clocks entries
To: Mirela Rabulea <mirela.rabulea@nxp.com>, shawnguo@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, festevam@denx.de,
 festevam@gmail.com, alexander.stein@ew.tq-group.com, Frank.li@nxp.com,
 ming.qian@nxp.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, mchehab@kernel.org, hverkuil@xs4all.nl,
 linux-media@vger.kernel.org, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20240408030734.1191069-1-mirela.rabulea@nxp.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240408030734.1191069-1-mirela.rabulea@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/04/2024 05:07, Mirela Rabulea wrote:
> From: Fabio Estevam <festevam@gmail.com>
> 
> The JPEG decoder/encoder present in iMX8QXP and iMX8QM SoCs need
> the PER and IPG clocks to be functional, so add the clock entries.
> 
> This also fixes the following schema warning:
> 
> imx8qm-apalis-eval.dtb: jpegdec@58400000: 'assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/media/nxp,imx8-jpeg.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Signed-off-by: Mirela Rabulea <mirela.rabulea@nxp.com>
> ---
> 

Please correct subject. You already got comments on this.
https://lore.kernel.org/linux-devicetree/2fb8c43c-c079-e04e-f727-3bc1dc29996e@linaro.org/

> Changes since v3:
> - Add items for clocks (per Krzysztof's feddback)
> - Add description for clocks (per Conor's feddback to the other similar patch from Alexander)
> - Add "media:" to the subject

Where? It was there before, so what did you change?


> - Add Mirela's signed-off
> - For the similar patches that were sent for this issue, should Co-developed-by/Signed-off-by be added? Alexander Stein? Frank Li?
> 
> Changes since v2:
> - Remove clock-names. (Mirela)
> 
>  .../devicetree/bindings/media/nxp,imx8-jpeg.yaml   | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> index 3d9d1db37040..cc040feb77d7 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> @@ -31,6 +31,14 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  clocks:
> +    description:
> +      The JPEG decoder/encoder requires two clocks for it's wrapper (AXI and APB),
> +      and one clock for it's core engine (AXI, same source as for the wrapper)

Description is now redundant, drop it.

> +    items:
> +      - description: AXI DMA engine clock for fetching JPEG bitstream from memory (per)
> +      - description: IP bus clock for register access (ipg)
> +
>    interrupts:
>      description: |
>        There are 4 slots available in the IP, which the driver may use
> @@ -49,6 +57,7 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - clocks
>    - interrupts
>    - power-domains

Best regards,
Krzysztof



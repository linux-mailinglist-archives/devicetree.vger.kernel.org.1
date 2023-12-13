Return-Path: <devicetree+bounces-24866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CEF81184F
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:50:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C2B8281651
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C96C34197;
	Wed, 13 Dec 2023 15:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hzerjiu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D7F0A6;
	Wed, 13 Dec 2023 07:49:05 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-54c846da5e9so6658619a12.3;
        Wed, 13 Dec 2023 07:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702482544; x=1703087344; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s9iR+5KGML8v1o9tlCUEO5WL6IJXmJpUVhIt0ZphogY=;
        b=Hzerjiu9wo/CrRApXtjWcmD2oFh3n1LrZ3FwJplPytlA99bcW/ZMKjJhTbw2NqAG5s
         S+P8VLXi+nQB4KO/ds+kjaNdB7T4DfjrbAXJEgqnAfHXosOh/kYqcOb3MbQ1kL13HcAY
         YzyUPmUwUE71pDHqaXcnp8WSIOljL400OJNObgdwVwie2EFCU9nuMj+Lnj5jwTzOG3/Z
         vBm+19SwbvLd7Ko1YhJ6HlgqVzgFtfS3uhXdwLkHYVxvqnLquT1wSKPv5RF9iVElNRCN
         3/WbFftUja12e5VrlhrWVYHVqa0Afn0J3q9XKagX/mkvBunC2mghgZTwaEDQlliNHpZH
         g/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702482544; x=1703087344;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s9iR+5KGML8v1o9tlCUEO5WL6IJXmJpUVhIt0ZphogY=;
        b=qTAiRHC/uRFkWn9LJfxp0wBB/sSs6tqUG7ql9Zkqnj+rMwM9kiI6icCea8YGEUloBl
         1fmjZaYdS2A7ivC2RSJ+YgzzEqx5OkyvPdwOgE9E/GX4Cfp19MTBP+KLpJsrYPXR5sYB
         KVcrrtLYo4gJsw2purDJWZ3x0IaZml08OsbpmftlT51QL9my5sdlyAgAUXHk3OymBeKY
         GaaXfEHE9Qp+o+akmelfVTNi0Yx6BI+p6dwguDBpPUGTnJCFQRBViK0l3fwF1xFLkuph
         8V2S/GhI/gA0vPijV8BjebyQoyUbwpYWP+6tp52gF4eTR7BE/4RHNRSGn1jO7C3fUZH/
         bW5g==
X-Gm-Message-State: AOJu0YynuOPKsHw0XKVJ76BOF14TxxzDpeZHCAt/AJgLXM1C5s8hDjLy
	OKDyyEuSYWMIqStOxuDmxoA=
X-Google-Smtp-Source: AGHT+IG3MFsBVaimnIUy8W5UOMpF6dkWeWal9zkx9ktdXSWC3Tuxb+m59yq3kIdwtCqkHtbYALcBGw==
X-Received: by 2002:a50:cd11:0:b0:552:5c27:38c5 with SMTP id z17-20020a50cd11000000b005525c2738c5mr38074edi.38.1702482543681;
        Wed, 13 Dec 2023 07:49:03 -0800 (PST)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id q26-20020a50aa9a000000b0054c6261d245sm6124332edc.37.2023.12.13.07.49.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 07:49:03 -0800 (PST)
Message-ID: <9b7676f4-4922-40cc-98b2-67224c901773@gmail.com>
Date: Wed, 13 Dec 2023 16:49:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: add "data-size" property
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>, Christian Marangi <ansuelsmth@gmail.com>
References: <20231213154721.5037-1-zajec5@gmail.com>
Content-Language: en-US
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20231213154721.5037-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13.12.2023 16:47, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Allow specifying NVMEM device content size in case it differs from
> device total size.
> 
> Cc: Christian Marangi <ansuelsmth@gmail.com>
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

I forgot to link Rob's comment where he suggested we may need such a property:
https://patchwork.ozlabs.org/comment/3154781/

Let's now see if I got it right.


> ---
>   Documentation/devicetree/bindings/nvmem/nvmem.yaml | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> index 4fd015d402ce..095aed4250de 100644
> --- a/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> @@ -26,6 +26,13 @@ properties:
>     "#size-cells":
>       const: 1
>   
> +  data-size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      NVMEM device actual data (content) size. It may be need to be specified
> +      if it differs by design from the total NVMEM device size and it's
> +      impossible to determine it on runtime.
> +
>     read-only:
>       $ref: /schemas/types.yaml#/definitions/flag
>       description:



Return-Path: <devicetree+bounces-22222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A35806D78
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35C0A1F211B4
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2CFD30FBF;
	Wed,  6 Dec 2023 11:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qcW9Pz4O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A246B1702
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:09:27 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a1db6816177so58931966b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 03:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701860966; x=1702465766; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4nbeO7xQl7Fj49ypQe9CyjRhIkz9aO5YPmPBlj7nYEA=;
        b=qcW9Pz4ORT+Eu65DifnxVFUfIphU1nlM2AUDxmpzV1cLbuR2vEnTWqINzHDVVFgVft
         UJemO40x/OeC2xLOlddhTkpW4g3vy+Kg/SYyNrojHyqhjAPbRyw6fOgIQ4+JrTNIMShs
         hVRtJ2vMr/v/VD6q9AmGSqfqpmeRHby81iPMqXUZ8ErG54xUSq9bi5D48JMngoOKIqJF
         maXlnfoEqVZmtdsiJgXB8TbCt+keBT9J0/YNTu9t/SlpG9TYbmshXIIKPEb5a2WC0quz
         t/VxOXevbgYG31wBOKDVAH9ebYLdZYQT4Fu58v6hZ7ElBjDfSkPKGjwX2IX7Du62alTJ
         B3ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701860966; x=1702465766;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4nbeO7xQl7Fj49ypQe9CyjRhIkz9aO5YPmPBlj7nYEA=;
        b=B+9ETrJhNGcV8uCXH8f5l3bNIZVMV//Jyn368wOX12QFCaO/7XNpwr9j0F2yEu7XmK
         U4Wy7RFF8uypJ+ShgERFg6jnzmaowpbN3BqdRDmTfRkQ7tWuoG7rzckxOgdi7Ol2MLsj
         ZseiTBN/MO4q9H+MzcC8NH61fktSZ2/XyzV4HKLfi0l+oCRLt1QhoXgcrowKtWYeCkTI
         l+ivnYcuxAqRl29mmdOkwh9dD9gQTrELON/LD6+xbslkW2bkWmIXNiRLuzMl5sKaK0Dg
         fuTmtrB5qYzKXzSypn6OWPpvE4kzVCHNoQ53R5xa6lszp16Lr/kAA+1qx+vq1hkaH7Ez
         T7fw==
X-Gm-Message-State: AOJu0YzQap5l+5exkDcVK21XOhub3ZpDOZFvPzdr4k8W3uozu9GhZ61k
	WgczVqr3JaccTA+OsntAzkBCCA==
X-Google-Smtp-Source: AGHT+IG7H05f/wBTJrmfN/BdTEacygwKqyz0WEw9Emd4alZciGvGJh3y6dqLMlFcmCZryuyHzbp54g==
X-Received: by 2002:a17:906:c34b:b0:a19:9b79:8b5e with SMTP id ci11-20020a170906c34b00b00a199b798b5emr333373ejb.111.1701860966068;
        Wed, 06 Dec 2023 03:09:26 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id sa12-20020a1709076d0c00b00a0a5a794575sm8086693ejc.216.2023.12.06.03.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 03:09:25 -0800 (PST)
Message-ID: <f17dcd86-7f87-4433-a106-eb7bfdfb05ab@linaro.org>
Date: Wed, 6 Dec 2023 12:09:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: memory: additional compatible strings
 for Broadcom DPFE
Content-Language: en-US
To: Markus Mayer <mmayer@broadcom.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
 <20231205184741.3092376-2-mmayer@broadcom.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231205184741.3092376-2-mmayer@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/12/2023 19:47, Markus Mayer wrote:
> Add versioned compatible strings for Broadcom DPFE. These take the form
> brcm,dpfe-cpu-v<N> where <N> is a number from 1 to 4.
> 
> These API version related compatible strings are more specific than the
> catch-all "brcm,dpfe-cpu" and more generic than chip-specific compatible
> strings.

None of this explains: Why? I don't see any point in this and commit
does not explain.

> 
> Signed-off-by: Markus Mayer <mmayer@broadcom.com>
> ---
>  .../bindings/memory-controllers/brcm,dpfe-cpu.yaml        | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> index 08cbdcddfead..6dffa7b62baf 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
> @@ -16,6 +16,11 @@ properties:
>        - enum:
>            - brcm,bcm7271-dpfe-cpu
>            - brcm,bcm7268-dpfe-cpu
> +      - enum:
> +          - brcm,dpfe-cpu-v1
> +          - brcm,dpfe-cpu-v2
> +          - brcm,dpfe-cpu-v3
> +          - brcm,dpfe-cpu-v4

No, that's just wrong. So you want to say bcm7271 is brcm,dpfe-cpu-v4?

Best regards,
Krzysztof



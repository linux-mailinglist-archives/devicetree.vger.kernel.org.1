Return-Path: <devicetree+bounces-67801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 029CD8C9BA0
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 12:48:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C53C1C21D6B
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 10:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F99535D2;
	Mon, 20 May 2024 10:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZCKcgOwp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1470052F70
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 10:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716202062; cv=none; b=j45jG25q4wBFO9ufPoc62kkrI93BQ/vxyQ1N0FxkGAGFjLAiEJJ6l6fRSh9/vsjP3J1sFrtHbg7EfvtbqvcM5elIExC94bfw9wklHS4rUZw2HKyhXRv1v4aFrn+WzwSxR/GLgSYaQ0AkcpTNkLPIQixDHh0kGXHhPSeVZF+gcbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716202062; c=relaxed/simple;
	bh=tL1bHXt9/YAqmnqPjn/s8RxMKcWc/S/C/wlJtqQ+WVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=pMX3ARB0o3ZMJVLw3b15qxxeiR42iviki+UlBoqWIwrX+7TU23nvFFdhOEVHvPV72RLB8n8ryivb7pxeuNFQ2EgVKRQ5i4LbWdJMmw9Ua5mcg73oJkh0FomFbbvHIPAsok40rp2RsqMPt/DRLOoNiOBObh2lj4QeFQZMILyCukI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZCKcgOwp; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4202c0d316cso11646705e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 03:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716202057; x=1716806857; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X/prEkk7NlB/e4K/D05nDd1aUEil2ACTKtIqCg4p2NQ=;
        b=ZCKcgOwp41+KhJE+b1DEB6HlvosHuSBH/C5utwBNVV6YVYDGrrUHRZDOJWm5c4jGul
         wUukQyZG9BOoWezeaFrB3FJ9LdEHoh3SnoIc8fo1GZJ1qt7EW04bGLSyu69VpLwVH1af
         OzDoZllGY81lR3IvAosDmPhqaYx5fYvAR9Bgq4BZweIPTkE0gz//6Y05A+HwEt3yAcPg
         WCi3rvDUZ4Bwbc6mg0cvJBQa3Lm052XR1JoKpNfP2Rl2Pd8lfvyXaAcVUWbUZdfs7wLG
         6u9BOWyl5CYcWz3HfAdb/vosyhrStRx5nZcuip/13Uo9mFrp9Q2oq257sIB35GsbyRfc
         1DlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716202057; x=1716806857;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X/prEkk7NlB/e4K/D05nDd1aUEil2ACTKtIqCg4p2NQ=;
        b=J6ckgH3w5S01KlNB10cdiE5dV/UD/vjT2kb55qesmFJlvGEuR6aspuQu3KRgWKMk8Y
         fnqU7QEYwNkDRrqJp7x6bE5JaXZ3wV6bHE7c/MNTw/rDjKIuQ45PrvNkjnbVx8k9pfBI
         4jHRJdOV8CYfg9C9DvT/lfV9/UkR795HsP5x3v3Zbigh6Xle2QRXRHoIlCJY9yOboHcd
         38gONoP9UmS40eZmeaiErOFt/8cKAixEOSPub7FRolbm2wA6m/y5mhghDLmhSyNpIYtI
         uE03YIbv5efw7945tlUzM8OwcUcHFpU5/AvFJIT9NpeVyccXf1mrtbyOEyJt+0xcUUrj
         qqhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnL3tXIGYF4yXE5u+IMSKgO3WJi9YZ1Cznd5EU5DbBA0IwLmrx2MUe7XHHKxoN1P2wQVctZl96Ez7Ybai59S1JFz+3j7v6bI+99Q==
X-Gm-Message-State: AOJu0YzqwHYefw87Z05jq9RCMAwlSKxXZDtYLRScec82qqZvw0XwlmMk
	BSRRS+66Wt7UGYht8UvJ+b0jTq2BV1ly8yNdRtJmhUVTjizatgkjPWRqVQaI+Jw=
X-Google-Smtp-Source: AGHT+IF8d/xOk/RNnnP7/4WfSzB76iIM3cflEPGPzlqVTR7AQEzeW1/6VwsH+L7iXQzc7YUlsDhB5A==
X-Received: by 2002:a05:600c:4f49:b0:420:12df:1f7e with SMTP id 5b1f17b1804b1-420e19e46d4mr48893585e9.9.1716202057408;
        Mon, 20 May 2024 03:47:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccfe1277sm405621845e9.42.2024.05.20.03.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 03:47:36 -0700 (PDT)
Message-ID: <4727a091-bc64-46ea-8652-db6797dd93d2@linaro.org>
Date: Mon, 20 May 2024 12:47:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: fsl,mqs: Add i.MX95 platform
 support
To: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com,
 broonie@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, shengjiu.wang@gmail.com, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Xiubo.Lee@gmail.com, festevam@gmail.com, nicoleotsuka@gmail.com,
 perex@perex.cz, tiwai@suse.com, alsa-devel@alsa-project.org,
 linuxppc-dev@lists.ozlabs.org
References: <1715939146-13031-1-git-send-email-shengjiu.wang@nxp.com>
 <1715939146-13031-2-git-send-email-shengjiu.wang@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <1715939146-13031-2-git-send-email-shengjiu.wang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/05/2024 11:45, Shengjiu Wang wrote:
> In order to support the MQS module on i.MX95, a new property
> "fsl,mqs-ctrl" needs to be added, as there are two MQS instances
> on the i.MX95 platform, the definition of bit positions in the
> control register is different. This new property is to distinguish
> these two instances.
> 
> Without this property, the difference of platforms except the
> i.MX95 was handled by the driver itself. But this new property can
> also be used for previous platforms.
> 
> The MQS only has one control register, the register may be
> in General Purpose Register memory space, or MQS its own
> memory space, or controlled by System Manager.
> The bit position in the register may be different for each
> platform, there are four parts (bits for module enablement,
> bits for reset, bits for oversampling ratio, bits for divider ratio).
> This new property includes all these things.

...

>  
>    clocks:
>      minItems: 1
> @@ -45,6 +46,22 @@ properties:
>    resets:
>      maxItems: 1
>  
> +  fsl,mqs-ctrl:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 6
> +    maxItems: 6
> +    description: |
> +      Contains the control register information, defined as,
> +      Cell #1: register type
> +               0 - the register in owned register map
> +               1 - the register in general purpose register map
> +               2 - the register in control of system manager
> +      Cell #2: offset of the control register from the syscon
> +      Cell #3: shift bits for module enable bit
> +      Cell #4: shift bits for reset bit
> +      Cell #5: shift bits for oversampling ratio bit
> +      Cell #6: shift bits for divider ratio control bit

Thanks for detailed explanation in commit msg, but no, please do not
describe layout of registers in DTS. For the syscon phandles, you can
pass an argument (although not 6 arguments...). Usually this is enough.
For some cases, like you have differences in capabilities of this device
or its programming model, maybe you need different compatible.

If these are different capabilities, sometimes new properties are
applicable (describing hardware, not register bits...).

Best regards,
Krzysztof



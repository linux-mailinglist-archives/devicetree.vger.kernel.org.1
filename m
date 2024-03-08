Return-Path: <devicetree+bounces-49301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E79875F11
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 09:05:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A2A31C22381
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 08:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBC2151C33;
	Fri,  8 Mar 2024 08:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wK+xr0gz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E993C51028
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 08:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709885111; cv=none; b=I0yPY1GZ4f+wV1V916YSY7nKFuv5wDSfN45+f/TmdfN4ALbM1BQ5eZRebG58C4i8d5LOHlVO9Vt5zG7hxVMSEbYOHhUcXxSrDhqYmNb9A4wbbU7ujEnpiUo1pSOH5O0ZB4kvGFyGHcLWxTNTY754IO3zJoVPbr3NrPXM8qGaNAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709885111; c=relaxed/simple;
	bh=Yul4Uu9MGsWf29zao1x7ZyDdz96s0c5bzJo3hLnEyW0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=iv9OfO9v1Y3chtchnKVSy7BhXBp+2loGnUvA3hEzld20KdAP+9+NAV+Xo7erxDP+w6Jl6n5NW8vFyBH/y3m45H132fGMy4/GRzAd1dOOy794ecALMovLxWvLNtOGAcfeeP80WE+GmJMTekISHmf7Vsbt8mzHkDonXn5UklnFwHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wK+xr0gz; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5683247fd0fso108154a12.3
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 00:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709885108; x=1710489908; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n+EpUbPTbuqIC7zhR4Qv+Znm2S5fARDet/7aWtGWTno=;
        b=wK+xr0gzr5A9IY5BLEQ4gzUK5RN+N0xPfI+4bHA5NK/zYQY6xC4+ip8nv4qYbCVEFg
         XyMoLozHq5Ia4pVjV6yCqawKrel/RKEqIzCXX2EF8WYv1QMwgkHbfQ+1AW/d7bBzJ58G
         g0lwI69WTHuh8cx+pU4TluWYRdft46xYk3gGaWd9xrVrP28Sy+0xt2msoVBg4LAWvRIm
         evpSbMO6iJop0xsVs5EMzdA0E9rBvz7xdW3uYVgDNeuZWW2rTYUpkV93CyxrwI2L/lki
         DOTSd4xjunUOwv7JCEy7IMQhH/q5e7NktSM3H93DIoY89VqB5H7309Fd1HvgbWz6njxR
         GiMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709885108; x=1710489908;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n+EpUbPTbuqIC7zhR4Qv+Znm2S5fARDet/7aWtGWTno=;
        b=RJOnIG+6fqEkG90k2ijGE2chU76A7kShbhqdvqnLvoVhab/GUGbex8xVR4rJSWhVDe
         kTqZ5gfx0Ge1Brz9K6511fryyIFexHMEbCYFegE5bsVFKN0YsrXZeg9K1aW//AmgSb0m
         tCa1qC8pyHUVGYg2x+N2UM0pmQYvHn7ED5SVTTE9ALfmxo091Ya8ZQyiJih23EmeAVli
         3IUw2ubRz/O0CjQDnFfp31n+oGVf3wgf7Fs+enoNzI3uUPB52vhPtTVA4y6YzqGGOtyW
         POxs/2R/NwzyPUSR52pDLIAS8HrTdi1tzNX0XDSccM0VFP9fsYFVtB1+Y6BLCvUtJvhT
         TYjg==
X-Forwarded-Encrypted: i=1; AJvYcCUeu1wz8o2tvoG5pboPM29jBvg6WbW0ada1xSBr83YWpDqedRu1xzgC8fttPPbd1St1V+tqehye1i/bz09bYkUv/uh5ShAoEDlYeg==
X-Gm-Message-State: AOJu0YycmpNqOrBEeygJg8DXIAUu3LX78H9emhsTjN1QDQ/VYgagAfuR
	RUTinuwNLwDvl0ZlWJ1zAf1VI58COFL90ASUZdszilPEuTO1xhqRh7qonPJ2hB4=
X-Google-Smtp-Source: AGHT+IHBevtBa1oMnTTvQj2GdVOnbsPwbUKQ8ZRKKvjbRMwuLEK6xfBPrUx3pU9Q3S44UejX3WcvEQ==
X-Received: by 2002:a50:d483:0:b0:567:1221:d486 with SMTP id s3-20020a50d483000000b005671221d486mr1482094edi.33.1709885108272;
        Fri, 08 Mar 2024 00:05:08 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id er15-20020a056402448f00b005681486cafesm1681659edb.0.2024.03.08.00.05.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Mar 2024 00:05:07 -0800 (PST)
Message-ID: <53987b65-32f8-433d-beac-007499f0b08b@linaro.org>
Date: Fri, 8 Mar 2024 09:05:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: pct: Convert to dtschema
Content-Language: en-US
To: Dorine Tipo <dorine.a.tipo@gmail.com>, vgupta@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 skhan@linuxfoundation.org, javier.carrasco.cruz@gmail.com
References: <20240308021842.1975-1-dorine.a.tipo@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240308021842.1975-1-dorine.a.tipo@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/03/2024 03:18, Dorine Tipo wrote:
> convert the PCT Arc Performance Counter bindings to DT schema

There is no conversion here!

> 
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---
>  .../devicetree/bindings/arc/pct.yaml          | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arc/pct.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arc/pct.yaml b/Documentation/devicetree/bindings/arc/pct.yaml
> new file mode 100644
> index 000000000000..1f97a7c21b77
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arc/pct.yaml
> @@ -0,0 +1,36 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pct.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARC Performance Counters
> +
> +maintainers:
> +  - Vineet Gupta <vgupta@kernel.org>
> +  - Rob Herring <robh+dt@kernel.org>
> +  - Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>

No, neither me nor Rob have anything to do with Arc. Please choose
someone from the ARC maintainers, if there is no specific device maintainer.

> +
> +description: |


> +  The ARC700 can be configured with a pipeline performance monitor for counting
> +  CPU and cache events like cache misses and hits. Like conventional PCT there
> +  are 100+ hardware conditions dynamically mapped to up to 32 counters
> +
> +properties:
> +  compatible:
> +    const: "snps,arc700-pct"

Drop quotes. I have doubts that you tested it.

> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false

This must be additionalProperties instead. See example schema.

> +
> +examples:
> +  - |
> +    pmu {
> +        compatible = "snps,arc700-pct";

NAK, test your patches.

> 

Best regards,
Krzysztof



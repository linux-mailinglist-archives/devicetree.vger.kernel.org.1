Return-Path: <devicetree+bounces-45841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D04866F5C
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:55:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D167283A91
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 09:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13EFD524BB;
	Mon, 26 Feb 2024 09:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uA7k9Oep"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEE9524B2
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 09:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708939455; cv=none; b=Mnu5ebl8TORd4++JZCP5p3BEbQ1I6ObvyYrfLAGrzu7dOU0Wh1g5EJA5FqBvcoLSiuGqqcBCHHeY3xBOAvjRZ1W01+SDedk2FAFPG77QBOg+S9twnhY6fr2CdlRSQCH6CkjxMd7RZ/a9QBkIWp94+WcJSWhQ3IlCpS4y/bvSx2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708939455; c=relaxed/simple;
	bh=JV2wrawyeXPo4aIOiBpPMHJ26a4I93PUV7/GweGKTec=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=RUHytn5h/ob0g+mlq962txmyjYLOEcZciJQka6OO7sEed2xc3T74r81uelCluCI+zh0GjZJfh2vumNOoOBtEchAsaSdnzU2VRUPDPTki2YZy1bBvmUlUgQx0z1Yyp2tHprQtSZEPsHB2xMDhCY4wShJ/8eSoS7CkZkJKhL6YPXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uA7k9Oep; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-563d32ee33aso3686330a12.2
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 01:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708939451; x=1709544251; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zJf2FW1KV5zcyVzT2YgYrCyTLzGHgmEw6n4q6HDUml8=;
        b=uA7k9OepuNxk5J2K7o6VO0sFrcJRYYt06UsubzP9UDU9TDpOKgLMOAAr1lng1ocaa9
         m7e8Z/bsxCYQWMGE98RdN9d0AgSpK/56MTG9tyPMay0Tl+hr4tLyljd49E+pXj12JdFB
         N/1u+jg6WdfwsLwkQ9/oBZnxAS9oQ+/U6pSGV7KLm6axq8ByfVlgLmFyGMwxuKoPBFKm
         yKO1nPUQMDt+Co3XV1sAjUeJIgYBBzwgxbopNBhoksxRqqDvxkufdJVrQeQo7jQ96FZu
         12l5TKHztfddkVENAN7NgwqklRs7Y6qWgwiQd/fBND0U8erZw2Xi51A2KQZUVgM7RZMN
         sekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708939451; x=1709544251;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zJf2FW1KV5zcyVzT2YgYrCyTLzGHgmEw6n4q6HDUml8=;
        b=H8ORwEcMJoba3WoPk6EnewZubxK44B1/3nS/9mqZMdVVpc+pLJ05mcqnqHjmo2gzU6
         Qx+UXWSWDewXZfq8CZ6DG7EyLSuInS0IlIsvSfpdzejFPUqreIVLHdWfWLIHGymB5bjG
         psXrEeFD97eYcl/5cS2WYq4v+pBsF0zkgjs5IUnpnDIkeRMzyZRNJeyfPss8eT7kiLbs
         NGFL6taUK7YFIAR11QopOtBeIO3JJOjdtn/gBejty1uyaE2/DNfGHs10j4WGfF0yqgIv
         /7m50PzzL6KKUiZWT4vMy2tgiVjIrYLJhlFLhIgiw7iSaZqsgCUlC+bCSvgawKyaMEiv
         sxag==
X-Forwarded-Encrypted: i=1; AJvYcCWKf9nzo+88A8tzXqk56tn8CoNk0DP9NAgn4gBN/u2QYEgu8abJAQKuVfv7gdbMPEiKRay5z6bYuxVogZxre068JJQJgzIVBcTdkg==
X-Gm-Message-State: AOJu0YyAMBcAMwJ6Y/2lBZ12H4CIvqR8zHS+FGynqDQ6envljLQSqovj
	eTeBwDqtxb4mcaYRjmQ9I2/pipS66tZcalVTcwH+7gc+TdAhMNB4qVurldXNSBM=
X-Google-Smtp-Source: AGHT+IFn6o+RexLO13XYps7GlH49YQXHwq9GVtbMl5z7QBcD2ywIAisyJKdBhxCc5k1QxJ6sd1XBEA==
X-Received: by 2002:a05:6402:2c7:b0:565:8e3a:5add with SMTP id b7-20020a05640202c700b005658e3a5addmr4140787edx.15.1708939451603;
        Mon, 26 Feb 2024 01:24:11 -0800 (PST)
Received: from [192.168.0.173] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id q4-20020aa7da84000000b00561c666991csm2162886eds.73.2024.02.26.01.24.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 01:24:11 -0800 (PST)
Message-ID: <0a6fec2f-978c-4290-a189-20120a60d08b@linaro.org>
Date: Mon, 26 Feb 2024 11:24:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/39] dt-bindings: crypto: add sam9x7 in Atmel TDES
Content-Language: en-US
To: Varshini Rajendran <varshini.rajendran@microchip.com>,
 herbert@gondor.apana.org.au, davem@davemloft.net, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 claudiu.beznea@tuxon.dev, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240223171342.669133-1-varshini.rajendran@microchip.com>
 <20240223172445.671783-1-varshini.rajendran@microchip.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240223172445.671783-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 23.02.2024 19:24, Varshini Rajendran wrote:
> Add DT bindings for atmel TDES.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

This would have deserved a better commit message, I (we) spent a lot of
time deciding whether this is the correct approach.
https://lore.kernel.org/linux-arm-kernel/342de8f3-852f-9bfa-39c4-4d820f349305@linaro.org/

Anyway:
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

> ---
> Changes in v4:
> - Updated Acked-by tag
> ---
>  .../devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml  | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml
> index 3d6ed24b1b00..6a441f79efea 100644
> --- a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml
> +++ b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml
> @@ -12,7 +12,11 @@ maintainers:
>  
>  properties:
>    compatible:
> -    const: atmel,at91sam9g46-tdes
> +    oneOf:
> +      - const: atmel,at91sam9g46-tdes
> +      - items:
> +          - const: microchip,sam9x7-tdes
> +          - const: atmel,at91sam9g46-tdes
>  
>    reg:
>      maxItems: 1


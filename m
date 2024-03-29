Return-Path: <devicetree+bounces-54700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F32EF89245D
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 20:39:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B931B2453A
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 19:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9766F139566;
	Fri, 29 Mar 2024 19:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oJ02VNEm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A513B78E
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 19:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711741159; cv=none; b=F+ItGijGh6YTCInRrN/ZpZDNtGuSWAR9MdI7YUfvOKqHXVxAqS0VDIiB9mJJjEYWfXokjLNaihML2yNFZBtJ6Kn/dHIyWiaFdEFWW7XDU72QuPi/VX2NBG8Y5DT74lhUpQdJDkDfPsdmBQCDq+1G4AmG94HJM6cfeCIGcWmChpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711741159; c=relaxed/simple;
	bh=CrStgvXaTGcmXplcd8wi6e4lUZGlX8xL6hhMYZE04tA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SMLXYT3QtZ3rcUH5N+6hUqT5b2HnS07SKZzMR5L75Ka88iYRA0JajdkylE0xPTvfueTDSTSwkaUYTqrpojltn09jtdAAlhN+vcCIafmgZNt8L9R3hVJrb/yYJHub5b4VM+hJGUZXsxlesd7NFgwscfk817WBY0XzmEiG0mh2yGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oJ02VNEm; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3416a975840so1731920f8f.0
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 12:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711741156; x=1712345956; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1TEWjSar5WnoW3LAFrt1vpueSTUj98QnSodEzXmvlKQ=;
        b=oJ02VNEmAi4WEFWRRz6TDOF3ENj1tA5gu4SROuhzQnaZMgdziT4qwP6i2u94vWCx1b
         UT6X6eiPhtrQUzvF/OqEs5SGoBhvJen0yrcWn9thJ9uvLBhd8CP5q8ICQ2gGzOyIxMSH
         +QQamCkhRf6ZLTIXJ91ZpDQUdhTpqVnOOyTfPVGyhiPvN+JULgaeHhRPP/35NuFu45uZ
         E+NqfDtprRqkaduhYSniPsPAOjD8YiRsvhQKlcOEzRGeS/eTN4tp2b1RXputMJ0Za32V
         tGv7dUPKJO64etRdfBZSdZU1XHgk8+KiBRWNZ2J8LXenO5UF65Wcm6qvXYA0sl3SdmgL
         A/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711741156; x=1712345956;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1TEWjSar5WnoW3LAFrt1vpueSTUj98QnSodEzXmvlKQ=;
        b=nUN2AfHvFZZcoXOYTD2BhNiq+Pukycc9j38ssnEYB5CCW8/T5cNp9BtUxXkg/1P3se
         SgeOWAR6PTTdQyuI/7kNwiNGnZlaHfThZuILmOjIs+A64B0pnXvqGhXv54Dhj+QWzPIC
         WoihKlLJtFt41h6a5WgpVMS0iv4Oq1kkS5Kg317v9Amr6T44Mkb0hJlTE4iXDd8VELeT
         uGfjVezPj2ZOtgBEo7yMX1HQEQQ1D3lF6D9zv3qPM6JW2v/cDidQBR+DaM01RYtX9jy2
         MbXQ8axAe4R50DDwfddtgOAtswURShBEzeBfDfpnoV0Qj0xeA7Ysq95urIzeA+XUBH1Q
         pWPw==
X-Gm-Message-State: AOJu0YwBolN8pBCj6/5YWGi3aCQpB0RHYLv862nSlEAGG784Us5NhC57
	L6p9KpMglZkNcGoAwpl14z/Fo6e0on+rn7xJftZh4gdiK2ZYU3pSu2M5Cvz73eM=
X-Google-Smtp-Source: AGHT+IFCe3Mu1Zh5e8D3zZ/2Q8YlZ3Cmb9W8UIRY+BPhjG9i1laMsXQkMJCR84DFSERK3xtlj6jryw==
X-Received: by 2002:a5d:4142:0:b0:343:35ae:e7a3 with SMTP id c2-20020a5d4142000000b0034335aee7a3mr2253745wrq.32.1711741155957;
        Fri, 29 Mar 2024 12:39:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id d13-20020adfe88d000000b0033e5c54d0d9sm4801452wrm.38.2024.03.29.12.39.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Mar 2024 12:39:15 -0700 (PDT)
Message-ID: <927ad2cb-3b41-4eda-b930-856be64ae9ba@linaro.org>
Date: Fri, 29 Mar 2024 20:39:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: reset: Add Amlogic T7 Reset Controller
To: kelvin.zhang@amlogic.com, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zelong Dong <zelong.dong@amlogic.com>
References: <20240329-t7-reset-v1-0-4c6e2e68359e@amlogic.com>
 <20240329-t7-reset-v1-1-4c6e2e68359e@amlogic.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240329-t7-reset-v1-1-4c6e2e68359e@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/03/2024 10:17, Kelvin Zhang via B4 Relay wrote:
> From: Zelong Dong <zelong.dong@amlogic.com>
> 
> Add a new compatible and the related header file
> for Amlogic T7 Reset Controller.
> 
> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
> Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
> ---
>  .../bindings/reset/amlogic,meson-reset.yaml        |   1 +
>  include/dt-bindings/reset/amlogic,t7-reset.h       | 197 +++++++++++++++++++++
>  2 files changed, 198 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> index f0c6c0df0ce3..fefe343e5afe 100644
> --- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> +++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> @@ -19,6 +19,7 @@ properties:
>        - amlogic,meson-a1-reset # Reset Controller on A1 and compatible SoCs
>        - amlogic,meson-s4-reset # Reset Controller on S4 and compatible SoCs
>        - amlogic,c3-reset # Reset Controller on C3 and compatible SoCs
> +      - amlogic,t7-reset # Reset Controller on T7 and compatible SoCs
>  

If there is going to be any resend, please drop the comment. It's not
really helpful and makes it trickier to read.

>    reg:
>      maxItems: 1
> diff --git a/include/dt-bindings/reset/amlogic,t7-reset.h b/include/dt-bindings/reset/amlogic,t7-reset.h
> new file mode 100644
> index 000000000000..ca4a832eeeec
> --- /dev/null
> +++ b/include/dt-bindings/reset/amlogic,t7-reset.h
> @@ -0,0 +1,197 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
> +/*
> + * Copyright (c) 2024 Amlogic, Inc. All rights reserved.
> + */
> +
> +#ifndef _DT_BINDINGS_AMLOGIC_T7_RESET_H
> +#define _DT_BINDINGS_AMLOGIC_T7_RESET_H
> +
> +/* RESET0 */
> +/*					0-3	*/

I assume this matches existing drivers which do not use IDs but map the
binding to hardware value? I remember we talked about changing it, so if
something happened about this and it could be changed: please change.

Otherwise, it's fine:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof



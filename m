Return-Path: <devicetree+bounces-45837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5945866F48
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 10:53:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 127E61C24312
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 09:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1409481AD;
	Mon, 26 Feb 2024 09:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ohczpYfV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1443E210E4
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 09:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708939104; cv=none; b=VoOcJqa3/yKKi49jcwmhKdwRq9o0khWyfdFrromozES9zqAx4RGxKcycbenbLmjO9kL3F/iNF/8sR5gnxJCsZQ6wSlra/SZjFN6oe3CvFJp99dc3o9irRZ7NglnmZ6ZW0FRrrqTwE1Nrb82vPsDe/djaqZzIUwPqykE3xOUWZvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708939104; c=relaxed/simple;
	bh=oSSQbxewwkiCTAJJJjuwTTELqb9roNIFmZQ3BUDDy0Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rC9buNbCvdliypF1G2W94ge37em59o70xUQzxKnmLAI4mO40yprDpFnpSWgTrS1hj3QmUDPgV7RAt+aZ5pupAsajbqYhvOCIszvX0HRhw3KWwHEhJ6Ae9Prw/ysAW0suLJf5CkFTYG/0+30omF1ZfTuCfchYGWEOcESkk0FZ01I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ohczpYfV; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5654f700705so3725878a12.1
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 01:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708939101; x=1709543901; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ucm6vFZxgjviA8ED6AOBXD2ZlZTqDUsseLQUG6Wd3NM=;
        b=ohczpYfVmkJw4S2WTdkmnR4zvvh3hsVidtwPJRXymmBP5UjXUd1LC7pfZDo09U4yYu
         9f8rR4u9kqASFW5Y6DS6YGX1miXcGzmhCh4wTqcBTGywGSelaU5RZ1Zjtom6DpWinX2s
         iMCb7xVYw+Ome+H2J4fLO/zO1F6Y6WUIv0FY4qb5UwUycJoy9L19iIPjEcp83zRBDBpq
         nar66jR5y+uFAqXSiHSSmHIoZwfXt19x70LnYuBrXC/WjIC/cOdetB4dRMmEBs0EH2n7
         KIBPNOyYX2dU3AAK+K3FZbkLsU932me4OIrmtvFhR5X3UoGunBNZiHqfpsY3Ukcqmf8D
         QfLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708939101; x=1709543901;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ucm6vFZxgjviA8ED6AOBXD2ZlZTqDUsseLQUG6Wd3NM=;
        b=hJ59aYT3lXT+rojQSnwvvq6oXT6Qyv2Wk5wWffNpcs4YC7OcwkAZcRq1mxbnmAsjop
         MIfCuCf0M/vVWSIGHab5CbNltQW/hq8cVwukatXJKNSMLXS2r0oiDxi6zyf4i/GvV+Is
         tLob1FBqwv6/2iEtWw4AFyUtCSnR9CTGK/sEu3ROEYi8/rZRl2s2OqD8LJzoAXT6NE1q
         MLqsXsP/95Ff6f7C0ef1xo/fgH4z758SWImTC+5kBGxur6y8OUXnRk1cTxMYYSxz4suC
         0o81gf0p2IVg5MerhBCtnRWrLM4IebWPqdJ2wgKIENwxaoKhQH+VcsDRpqNTxmm7kM8r
         epUA==
X-Forwarded-Encrypted: i=1; AJvYcCWrb/BT2faOXJ+yr6UDnNKiocqh+J67GYAmkK55+Ebt6BB8FHecbDwqfX8eqIIDRVt/5gNqa5SoTY8LZoj33L8l4ksxLubH1wfcZQ==
X-Gm-Message-State: AOJu0YxkIwU8yTJDzVj2evNy14KhlAOrtMd8wufj9mPMwzsMbhhQqDxv
	DZZQQyUrvfmd+cd07iSb7MPyda7w25ZNikgEbQgo3DGc70ZZ8O/L3jVfwaf6ZJY=
X-Google-Smtp-Source: AGHT+IFSzRtV7hUd1SxBY54p3xRGDOmJfide+2i5AKgxhJIMRl1tmf+EwE1va4acICFG9JPe5pEW3w==
X-Received: by 2002:a05:6402:1a5b:b0:564:5c90:f521 with SMTP id bf27-20020a0564021a5b00b005645c90f521mr3995439edb.14.1708939101385;
        Mon, 26 Feb 2024 01:18:21 -0800 (PST)
Received: from [192.168.0.173] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id t9-20020a056402240900b005648745b23bsm2150707eda.90.2024.02.26.01.18.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 01:18:21 -0800 (PST)
Message-ID: <4c1ee741-a0e9-41f0-99e1-5c2a6da06728@linaro.org>
Date: Mon, 26 Feb 2024 11:18:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/39] dt-bindings: crypto: add sam9x7 in Atmel AES
Content-Language: en-US
To: Varshini Rajendran <varshini.rajendran@microchip.com>,
 herbert@gondor.apana.org.au, davem@davemloft.net, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 claudiu.beznea@tuxon.dev, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>
References: <20240223171342.669133-1-varshini.rajendran@microchip.com>
 <20240223172310.671661-1-varshini.rajendran@microchip.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240223172310.671661-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 23.02.2024 19:23, Varshini Rajendran wrote:
> Add DT bindings for atmel AES.
>

This would have deserved a better commit message, I (we) spent a lot of
time deciding whether this is the correct approach.
https://lore.kernel.org/linux-arm-kernel/342de8f3-852f-9bfa-39c4-4d820f349305@linaro.org/

> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> Acked-by: Rob Herring <robh@kernel.org>

Anyway:
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> Changes in v4:
> - Updated Acked-by tag
> ---
>  .../devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml   | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
> index 0b7383b3106b..7dc0748444fd 100644
> --- a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
> +++ b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
> @@ -12,7 +12,11 @@ maintainers:
>  
>  properties:
>    compatible:
> -    const: atmel,at91sam9g46-aes
> +    oneOf:
> +      - const: atmel,at91sam9g46-aes
> +      - items:
> +          - const: microchip,sam9x7-aes
> +          - const: atmel,at91sam9g46-aes
>  
>    reg:
>      maxItems: 1


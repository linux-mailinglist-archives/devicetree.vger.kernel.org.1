Return-Path: <devicetree+bounces-64942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCB58BBB61
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 14:34:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47E481F21AB6
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 12:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F3F1CF8F;
	Sat,  4 May 2024 12:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ruubo49M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0611617C66
	for <devicetree@vger.kernel.org>; Sat,  4 May 2024 12:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714826054; cv=none; b=sgFu3HjCSXcY5/U9WntsXyQjYkb/Dy1fuInvFWv9CS4seTsh6lKug4uQutGok6ckD2Sh9US75R0y/XVGdNe0UlnytJOD60NmC159UtVHNWSfxW5BTo+/1GTJg9JB5iMs91qLGuHqUyjW5yBVo90I+PapKg5LD758lXfWa/Ex2/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714826054; c=relaxed/simple;
	bh=myLHPIhfgFbkH628RIi8WU1vNSV2EUucph5jsKt/cYg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=JY1DNHuOS2pwJ2L7mAUdL3azYqiFXUj3Pp/BqLCG+nUEBEyQ1dSzH5dAEC3ZNgjaKJBrZdHdYCZ02JDYG7NP1IJgX7Slzuyz68w3+WAg2ASpWMjCDyMkWStBHA4VKMR8DrZgpYESkdGmvWQowo/FwXuVa5Wf7oR3UL7gfpdefiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ruubo49M; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2db2f6cb312so8802211fa.2
        for <devicetree@vger.kernel.org>; Sat, 04 May 2024 05:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714826051; x=1715430851; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X+lnXbFYNqLaoHCJuLp3bFaYd/ncglZZGKA3FZx3w8M=;
        b=Ruubo49MlQ3sMnEEjuGJAXNB2FmeOgXd5XVZTOZm5i92HUlw1NQsilKl3MN/Igp4tP
         UFP85z8M+0knhIOB2hQlFzXF7iic5/3szEhKLuum6hhlqmAO1uuH+phvO1NtriVptyyI
         aLv8QoGCCc3LpfRV6d0c/pPS88lXvASz0IeyU+x+eTHyu41VBUHVlfHhrCUFv+xyfTES
         E0hSH4LSDarjDqFudefwI20Z5dZ4WfFF32GJpVWFPDfgcoyp2IJLCDNq35c+m+K1caZQ
         CVlI9XFV1KlFRMoekYXYzDU9fgUylAYnVFe+xSovc2MLuoMDK0YdkNHU7Gair5+0UElM
         tAPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714826051; x=1715430851;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X+lnXbFYNqLaoHCJuLp3bFaYd/ncglZZGKA3FZx3w8M=;
        b=OTQbLX5V1u61XaRjy9H8oiiWeXDj9PKvPUR0vu3ba+454jJVS5WzOZbUU9CSTYm0Nr
         MFmgBNurM8iIAMy3MxrgIa7CWpxTZG6sXMB4GOokruNgVtTwd4Gbd64+SKJ3+xB3c/11
         nQSF/I1d9t/nPRn/M1iPRDbQLgJy+gkdfMzfyr59XxpCvMBbTCenc+P5twMugoVJvNYk
         Bz2r26iEcvOschHh1F1TZ/y151+hPHiUXkZTpXXZKsKyaZXhaeAI8W/WVW6E8/fR7xM9
         pyN7dKgerPR0Va7VIrdm1FaNxaKhh55kdfJEuKsl/9b9dvRgXkv+dBuiWQRUlXfutrpB
         1peQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8F3ew4sxmshjkX+efKpPIL0jTSYTPwwy+D9IUbRHOOotzxn5MCAi4xFNRlXSbq0rI3YwNZTcEfNORLKjFPqX9TxQmSrpOaGUIcQ==
X-Gm-Message-State: AOJu0YzGeIBUnwfimDKkJMCs2p9d1kmavEgsavvdpDopK9Ysf6n9aJN8
	1C3u/m105kKJOTrWK+NNkYtyjxO2cEI0xwPQePbgxmJKC9pM0oFO0kT3wgICL63dMGCB8Cex6LD
	WV6s=
X-Google-Smtp-Source: AGHT+IHmU8PDCbNVzWFd5gY0TJzPZTQqzGLxQZRkrw3sVNBB+IuvDNEduCEBRyYsD8WQ8jue2na0+w==
X-Received: by 2002:a05:6512:ea8:b0:51f:9549:9c0d with SMTP id bi40-20020a0565120ea800b0051f95499c0dmr4855636lfb.48.1714826051126;
        Sat, 04 May 2024 05:34:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id c25-20020a170906155900b00a599a2d9a45sm1601557ejd.100.2024.05.04.05.34.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 May 2024 05:34:10 -0700 (PDT)
Message-ID: <3c2cf6f6-bf57-4fe6-9d79-5419addd6928@linaro.org>
Date: Sat, 4 May 2024 14:34:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: input: touchscreen: himax,hx83112b: add
 HX83100A
To: Felix Kaechele <felix@kaechele.ca>, Job Noorman <job@noorman.info>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240504020745.68525-1-felix@kaechele.ca>
 <20240504020745.68525-2-felix@kaechele.ca>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240504020745.68525-2-felix@kaechele.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/05/2024 04:04, Felix Kaechele wrote:
> This adds a compatible string for the Himax HX83100A touch controller

Please do not use "This commit/patch/change", but imperative mood. See
longer explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> including the AVDD and VDD supply nodes used by this chip family.
> 
> Signed-off-by: Felix Kaechele <felix@kaechele.ca>
> ---
>  .../bindings/input/touchscreen/himax,hx83112b.yaml       | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/himax,hx83112b.yaml b/Documentation/devicetree/bindings/input/touchscreen/himax,hx83112b.yaml
> index f42b23d532eb..5809afedb9a2 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/himax,hx83112b.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/himax,hx83112b.yaml
> @@ -15,6 +15,7 @@ allOf:
>  properties:
>    compatible:
>      enum:
> +      - himax,hx83100a
>        - himax,hx83112b
>  
>    reg:
> @@ -26,6 +27,12 @@ properties:
>    reset-gpios:
>      maxItems: 1
>  
> +  avdd-supply:
> +    description: Analog power supply regulator
> +
> +  vdd-supply:
> +    description: Digital power supply regulator

These should not be allowed for other variant, so either you need
allOf:if:then disallowing them (: false) or just create another binding
file.

Best regards,
Krzysztof



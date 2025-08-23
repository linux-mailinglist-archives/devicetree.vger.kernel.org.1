Return-Path: <devicetree+bounces-208523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBBBB32A79
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 18:11:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D38B81899C13
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 16:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0DC82080E8;
	Sat, 23 Aug 2025 16:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fvxG50VS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DB278F2F
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 16:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755965210; cv=none; b=WqSszBeiO0M6SlAl8Y9tdzDWAW85ck6xisN8/Zhe6IqujLeWphlnDepD3WHzSMHtcIsV58ib45zMqbIkooQRl19SOw23h0LfetCB1Yp8UF0QEP7VmFINrQBMiiuoEC/051tSbfFd6HVZ/V7bVMyxM+5fX3hCcTiuly2rgMw3Tks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755965210; c=relaxed/simple;
	bh=X1TmEq/uHKxFLbVs7AoCOdEDfHSKfGMWoOxHyk317mM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MftQDycJvId9L6GSEJPCKmdfbvYlMb7WVoS5aa/I8ReXSku3nkO4KUH6Q8wvrt9/DNwsAmGcq89zCpd7pim2NW1PV/8/kQ0pcEbgdPr8pEW7ifrsb+UOgczb+m+g5V1ulDl09WlWxk3MDP6c8TMU41lSBj2qJ5zRwYmeEIkx1d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fvxG50VS; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-314bccf2472so1088668fac.3
        for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 09:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755965208; x=1756570008; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4xWDjHy7dybMcTQgi+MIUcku3Kv1UYV6zDqpzfzc0C0=;
        b=fvxG50VSVeM9ApW4J+vb5ZOPnalJ1fnja5kAqzyS4RUoiOpP2DnWLdeC8nhnpP9tAp
         AT+ciptx63xM3vRTzkAbMJHumPXaWFfG/hYngIX/I6xjdWZo1JskawMubFsxPtg0Nh6j
         cRhB6IomqGzDJio11d9TP6XSEuorAqadDFc/jdLSoofqjjupV9EAt00tymj+YMWKqWCr
         w4uLW4zjhQWy3jw69ZS+h3P+GN7pirM7kVDcAmnXE5f9YAtEx/i/2uSauvoqlYDHzkPW
         AM+FSEw6F/wql7UV1SKUv/5uxLDvi2fF+oRxse9IAM8y29WUfSzYbY4h+70tr/5qG/Ir
         vGsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755965208; x=1756570008;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4xWDjHy7dybMcTQgi+MIUcku3Kv1UYV6zDqpzfzc0C0=;
        b=XrLznIayNllAo2Go7xvX4AAnGwLzPgvYN+42ZBa8QzZMwnQ6muY5gaBzelg4b/+RCb
         HSOZqR9kQaMIADO7dVvPzED2RN5O1YqsZ8dumEB0+uCOAII+HghP6zqt64fGXrSZE7ox
         G/QMbIQNtcQQpDC3S2iNsZa+X4ZTbMaMQupI9vqCeHMCRjew1/z+IGpeV9+7JW7dCTpL
         3BL7hAQx6K3LAF43f6ITMuzf4f+mhU8hbZaSGyCQZdVsS2HPmPlv+i9Fk+YgvMxNF1UV
         tFMnyZM3SX8Amsvmt/Calsold8F5csGfwH+c9k8K1lzVkN/5MF2aEgpxSbb8RARzMFGJ
         MVIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtHz2KJWuu31wvMyYDv0zrQnUgrBqG89j6INaWAmmtntvB1lG6sIFgUuHXfmG93WghQQIv+c5ROsg3@vger.kernel.org
X-Gm-Message-State: AOJu0YweMJjcv5x2Rmk8NRjT6MA61zC+PFFRt7GbXoqs1Cnov9BYVh/u
	anFhpBxZjz9gtouNc5bjdzbcmOx6hEMrhuAL2jC5HxYBZckQxh3INm9OMge1nF+PATI=
X-Gm-Gg: ASbGncu84YSRahWEZo5BuuTBckRpbFvygD4iQ1Of66cPFJ0j2Lb1DZ2Go7menaApFpT
	UKcUICkWDU7AvgTL7aVVJoUs8f2EBo4OLzL2T0cCFsJhJtN7hFYrk7s2VnI1OdH68VxseKzaPMl
	iHScTo0xcfpMWvUWfhdRXSroMY35uoT+/ofR53UZ5cNgIejNqnQOlmp6i1QlbmKdnu4tgdKSjMG
	ycjO0LWBHS5Q/7GuRl9iXAPEbPCMTHKXSPYwECA2Zr1XpAg+NbT6AXLvakkYz7OHeEuqNOIRrro
	xSk4XWwVW2a5Y6LRnX5m3BDB0hSxl9fqtj1SDbh88qCwOPbcv2Cq1+U93JTV3ZLbB9hPm89vFpO
	RNfIuXQYJ6urpBvnkxvFHUHehDQOM4wx3C55cOSd+WiHkxCnxRX06PBKs20Ek36OYF5GVLwVk
X-Google-Smtp-Source: AGHT+IFh1RdEOG+NrL+CtSosGlDMB5qW20v9HRwXhWw7QRFD7qwUhzzJWpPfwqdd7bOpnUVWO1bfvQ==
X-Received: by 2002:a05:6808:4fe7:b0:435:8535:c0cd with SMTP id 5614622812f47-4378526c6dbmr2916641b6e.2.1755965208410;
        Sat, 23 Aug 2025 09:06:48 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4d25:af10:67ec:53d? ([2600:8803:e7e4:1d00:4d25:af10:67ec:53d])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-437969221dfsm383033b6e.33.2025.08.23.09.06.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Aug 2025 09:06:48 -0700 (PDT)
Message-ID: <a3f26804-d9fc-4e17-8485-40dfdc4e1eb7@baylibre.com>
Date: Sat, 23 Aug 2025 11:06:46 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/5] dt-bindings: iio: mcp9600: Set default 3 for
 thermocouple-type
To: Ben Collins <bcollins@watter.com>, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andrew Hepp <andrew.hepp@ahepp.dev>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250822-upstream-changes-v8-0-40bb1739e3e2@watter.com>
 <20250822-upstream-changes-v8-1-40bb1739e3e2@watter.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250822-upstream-changes-v8-1-40bb1739e3e2@watter.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/22/25 8:23 AM, Ben Collins wrote:
> As is already documented in this file, Type-K is the default, so make
> that explicit in the dt-bindings.
> 
> Signed-off-by: Ben Collins <bcollins@watter.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
> index d2cafa38a5442e229be8befb26ae3f34bae44cdb..57b387a1accc776683500949a22ef0290fc876e8 100644
> --- a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
> +++ b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
> @@ -37,6 +37,7 @@ properties:
>  
>    thermocouple-type:
>      $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 3
>      description:
>        Type of thermocouple (THERMOCOUPLE_TYPE_K if omitted).
>        Use defines in dt-bindings/iio/temperature/thermocouple.h.
> 

Reviewed-by: David Lechner <dlechner@baylibre.com>


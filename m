Return-Path: <devicetree+bounces-65664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AC88BF7F4
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 10:03:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A59EBB209EB
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 08:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C05D3D96D;
	Wed,  8 May 2024 08:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gz6gkiML"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD6236137
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 08:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715155432; cv=none; b=eSmZtkvosPjJWudyR5xrCXioT3/EvKb03NHWX+TOiU34NzRX1su64oUwVDSGwRtiQnJuPHiZpPXrsHvsLRY2tOBF/MXcX5d/4mnYtqgSa+58GiL6vN64pXcQEo+Z/ReBvgS2ES8z0M/KdTrF4PytuNqXlcB55nmy1hl74I39MR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715155432; c=relaxed/simple;
	bh=jwC9M5BWq2vxWcPd0WqZZUFo5bYUj4aAuO4f1WiU67U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DuWk1CAV6LZRLtj9Z/KIsUERPXb3h7qw+scKuOwNJMZEZ6THv8Koaf5SGoL3DeAsn+nZEyi8BB7V2bRwdqEVbH3LCS6sGRBKkjXnNc7rIQdRmYPC32zd2M4Q4EYcwqsEhTrDPHgIC22AO25lwfsYYdAhXDGWxPSV5Xwn4LiStpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gz6gkiML; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a59a5f81af4so1048177666b.3
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 01:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715155428; x=1715760228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=eu4SeCR/kEFNVAoI9TGLUZ5URLmJpaE5X6aXPMjBCyk=;
        b=Gz6gkiMLJoqAufie/AD/+Z7fNRtHEqzUgB/e+KLdi5fsE3ppSAKRRY06549EZSDekL
         VBGKVV7g9jhTBDSst92QmimIY3B9vcyvxuaMqsG7id+zzsyetz1HbPyrjpFxB+uQ5Oy9
         9LZXizrbnIilCAakIn7fpp4Xc0vbe4ZPCGxR3BiUcDZXoryvNG57hV5QJyI+NH7lMR3v
         myOaxs0fqsJnA5QlEhCQeKf3oCconEhuVsWS2tQTXIZI5rmGg6AfQkdpywfqWt+P8Bv5
         wmcvu84J8ifFCQo7iiBKTeoRjr3HiYkJdzBIsScKlgjcBM0MDJAb4hMTMKHh32HkujCF
         XaAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715155428; x=1715760228;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eu4SeCR/kEFNVAoI9TGLUZ5URLmJpaE5X6aXPMjBCyk=;
        b=rU6TixEStyV37XAr6Fl1A/IFo47SiIRVev0EEwMa6aM6mIx3NW21p2OLNcoci4vf70
         hTSKLwUCKhr5QhXbaBXjwVtH4wVvC0M+Mla6ieBJGaPC/crHe27F45yf1cburZqNOg10
         MOdFi7tIqafy4IJByCdEZrdZTnySYdYA3GspFG+BiFFKWakpgML2KL2JHHbrFLz/SUNT
         5BhFi9sVPEr2swKeUNviCq9qel4xuGz0iq8fFVJkcE4VjsWxUwsE1tSQtEWjEeCy1Ddw
         LcDMffoYpL3IDY91WLLB0IHm+V66mdPjNuL9KR3baIYyewvJKTIxoy62eK8OukHJr9+H
         I74A==
X-Gm-Message-State: AOJu0YzPoYSvqUJe34wysWslIJgj2N/P+Jg8Xy/Owt2U0a7Yrre5g4rZ
	cEyOK/sPWpJCwuZ73i0/pqdXdahEMOsHQLAilOBSsHOeZ2GfTl2bZ+O22rMlL4w=
X-Google-Smtp-Source: AGHT+IHwFPyHnACE6OWnp5/5Gpo7kWNOw0G/J9KE5f4I8SUilDWBJu0uFLQdxEQ7R+clkHHUXEibKQ==
X-Received: by 2002:a17:906:1957:b0:a59:a977:a157 with SMTP id a640c23a62f3a-a59fb9f209dmr116411466b.73.1715155428636;
        Wed, 08 May 2024 01:03:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id fw14-20020a170906c94e00b00a59bf41edbesm4378311ejb.146.2024.05.08.01.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 May 2024 01:03:47 -0700 (PDT)
Message-ID: <0e7496c4-7dfc-404d-944c-a1869389722b@linaro.org>
Date: Wed, 8 May 2024 10:03:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: Add bindings for Cadence I2S-MC
 controller
To: Xingyu Wu <xingyu.wu@starfivetech.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Claudiu Beznea <Claudiu.Beznea@microchip.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor.dooley@microchip.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-sound@vger.kernel.org
References: <20240508070406.286159-1-xingyu.wu@starfivetech.com>
 <20240508070406.286159-2-xingyu.wu@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240508070406.286159-2-xingyu.wu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/05/2024 09:04, Xingyu Wu wrote:
> Add bindings for the Multi-Channel I2S controller of Cadence.
> 
> The Multi-Channel I2S (I2S-MC) implements a function of the
> 8-channel I2S bus interfasce. Each channel can become receiver
> or transmitter. Four I2S instances are used on the StarFive
> JH8100 SoC. One instance of them is limited to 2 channels, two
> instance are limited to 4 channels, and the other one can use
> most 8 channels. Add a unique property about
> 'starfive,i2s-max-channels' to distinguish each instance.
> 
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>


> +
> +  starfive,i2s-max-channels:
> +    description:
> +      Number of I2S max stereo channels supported on the StarFive
> +      JH8100 SoC.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [2, 4, 8]
> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: starfive,jh8100-i2s
> +    then:
> +      required:
> +        - starfive,i2s-max-channels
> +    else:
> +      properties:
> +        starfive,i2s-max-channels: false
> +
> +required:

I asked to put it after properties: block, not after allOf:. See
example-schema for preferred order. Why? Because we are used to it and
it makes reading the schema easier for us.

Rest looks good, so with the re-order:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof



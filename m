Return-Path: <devicetree+bounces-34992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7898283BEBD
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 11:29:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 291AE28DA72
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 10:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83FCC1CD2E;
	Thu, 25 Jan 2024 10:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lfck4IW6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9761CD1D
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 10:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706178424; cv=none; b=hXZeoPzHdzYUNreMKpNwx2pec4PWawMV3Oj8RvDKErq/7NBMaXW4IRg0740DwQr9Xi7GPPca5mGGxK0j3n1/Uz/QIl/5tkP2B9NQtfcHNO72lQ+73JM70/y4iSNY9wOHwT7h3SpWFIQXZKFuEaXRpZxRb5q8CjHOOaHbOr5Hja8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706178424; c=relaxed/simple;
	bh=ilmTokB1LWWWxVbA7PtwOLj5XcOJPhdI5/h6+rHojrY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UsdCnH8+L+uiOn3/HLokPgbNbLhGNRP9Wdma5LnGKnSO9AeL7WL7jIZy7UvYugkHDOgWxJ7wXoa5tiqUlFTzpgyXiLroLzjLNQ1XmTqWrNparqKb4X9gio3saG7n8y87DDOs62w7DJOmIWyG4HPUQ/aBiTTIh65XTff+u1qGoUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lfck4IW6; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a30ed6dbdadso233284066b.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 02:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706178421; x=1706783221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DdPYVs7bVu+QbH/ro/DzVVOcppC61kKhdHn4oYEGLCg=;
        b=Lfck4IW6UD1Sl7w51fvpf2cKvpWWpESDNsBr/dGH4ZOt0Or1yZTY8bDacKpeo6ECvd
         YE87Ewlt4zdN0eJyQtlX4XZOJvzpQndwaTM2lHpmo3kkuO8l7eXvRahdb72p7Dyf88vF
         FP5WpaNhL3Ijq8A/vfagu4TthUgkvTB/ccEylWCjEUB5o7JgDLrA4SSXmiRdyJig2CVX
         f1oyufxI8Ua8T7bP3sWPpbTOoa+LS7zmgd9cRlBueXunhi37znC/3yPVZEF41U2Zbge4
         2taj341KuVFPOMSwc58YI6iFa68lywfizqyJXKtnhfiGeYXjF5onIRZoDWKSGm4ohc+S
         Cyew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706178421; x=1706783221;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DdPYVs7bVu+QbH/ro/DzVVOcppC61kKhdHn4oYEGLCg=;
        b=FoOWP+uRas9hFUXJPs2R3Cjitg8Lg6CsS/9gPWP3DprCqIHzE1yw+bl2MGMfvMVlGj
         uTRGfXtmnfx+0oxKmwLP3m0ygF0sdBM1hmkKzN5E4ZCt/06WifJoofPxE1Dy7RicQ1A2
         ZNCC2kh39Ab18oqOqUQZhuZ1gZRHD8jSbOVhiC/VgWMjHSaY+pj1TuOJRi40xjL4VdHR
         lRkfyABw7nXhkiU5R9nGCBhhHfNBKq8ipH7n3Rq/r34Lgppov6sgFilmKHsaNvU6Auge
         FfvxpwpyrIpDvs52pEcR+5P1hpL4HgNwgg1Ntjj85LfQGXaAS+RrYyEDwPVueRK0yPcP
         R3qA==
X-Gm-Message-State: AOJu0Ywt+WtA1FBbxgXM7Y+5x5P3L6vAnT2YJCcWMklhWAdGVwetcsAb
	RgPnJZ49JccvX7Imf7BkaVBKx3McjcgO+v2ZrpG4HPHECGuzmkXeJsS1DB3K99I=
X-Google-Smtp-Source: AGHT+IG4UOoSz6F19Cw8XbyiXZ1AHJ1p2OZb6yZxP9RwbfKLZ3Yc1sjZ1bM2+ZGZEotHOyH135Ph3Q==
X-Received: by 2002:a17:907:bb8f:b0:a31:5ef5:792f with SMTP id xo15-20020a170907bb8f00b00a315ef5792fmr503015ejc.14.1706178420938;
        Thu, 25 Jan 2024 02:27:00 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id fj5-20020a1709069c8500b00a318504ecadsm386588ejc.10.2024.01.25.02.26.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 02:27:00 -0800 (PST)
Message-ID: <a9d73aae-53ba-4134-84b8-b3da1b10f25b@linaro.org>
Date: Thu, 25 Jan 2024 11:26:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ASoC: dt-bindings: samsung,tm2: Correct "audio-codec"
 constraints
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Sylwester Nawrocki
 <s.nawrocki@samsung.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240124190754.1554899-1-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240124190754.1554899-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/01/2024 20:07, Rob Herring wrote:
> The "audio-codec" constraints define how many entries(2), but not the
> size of each entry. Each entry is a single phandle. Define the size with
> an inner 'items' list.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof



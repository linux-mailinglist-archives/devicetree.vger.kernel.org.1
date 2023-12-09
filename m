Return-Path: <devicetree+bounces-23404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EA580B316
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 09:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F7201F2110F
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 08:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF345746A;
	Sat,  9 Dec 2023 08:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dwMZbdps"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6057C11F
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 00:13:53 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a1d2f89ddabso338343866b.1
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 00:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702109632; x=1702714432; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fjAr92DnrL0zs+si1i+PzqCSe2EUBlULkRf/k0gE4VA=;
        b=dwMZbdpsWxK4d+KAkcNGHy6LCcqAaZwuaGZtZWdifdqYH/XDKZa7vvMIom7uIux5zo
         8wYUjUMq4T+iu2JZh4l4cSR6RO6t4sjQjX5s9vAV0PtGcbFZ8vHY/u+CziUrubAv7YpC
         62EE/CnS2Kiix6Kqhwj0+/o1uFPGEIwEWYo/bsumsu4+4kokKYKbnB7Nd+TpFTLTf09T
         T7/vUt8GdW0KxQJ6uxj78p5CWBIUiAVX26wPJALd4AMS3k99KcZLhJ44UVDWCIzwU47V
         EupxA7iA/Z+cpXt3IeChq+nX2MLhCZE/eReii226i9h4dJwA6bDoiiP2kmbt+EH9i4QK
         UAIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702109632; x=1702714432;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fjAr92DnrL0zs+si1i+PzqCSe2EUBlULkRf/k0gE4VA=;
        b=EZ0H4xgKrC/ZlRf5kiYx7EEnPbMWtFESPqmEILqy72j8NfrX8tjRjgDOwjiDdhLJOj
         XmOpYSGM37E4gOVXfAmY3dKJFvpeuTajyMFqmRtlKuH+QgubBYA7pu1U2F7dbWyIh0Ux
         L5CHX0gfPNy702mN0aYKqQ10RkGGpZI/2bPjHjmAKORcMn+4IC/xaPCAW08OMw7soMkX
         PaZ9b2bu4YdLygIw3G8sc6hNWRUASvOv5ppsxWL9e7DcPAlwima4z5NMCxdo2DSHcOfq
         bmtS8awBi8gL9Y2aPvsk1uMRg74IZAEg3TqKdDYw7dF8RpJJ+sThVm+M4YaY0JEDSPMF
         1y+g==
X-Gm-Message-State: AOJu0YycvqepYwG6MGrNzeBVXy8a/K1g1v2xjowp/M08K68r4EzA2FAM
	xaWOdV4CAeyUHyEJSZogq49SGA==
X-Google-Smtp-Source: AGHT+IHvk8HIFU41nTvKpotEyukpTuRxRqpUH+qfUgaEPXMojyKMGLWAikgk4+jvp23PZRc54sJzxw==
X-Received: by 2002:a17:906:7854:b0:a19:a19b:78b5 with SMTP id p20-20020a170906785400b00a19a19b78b5mr583127ejm.120.1702109631726;
        Sat, 09 Dec 2023 00:13:51 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id uv6-20020a170907cf4600b00a1f699e5217sm1684637ejc.135.2023.12.09.00.13.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Dec 2023 00:13:51 -0800 (PST)
Message-ID: <18264bb4-39da-4777-8aef-5be87f58c2af@linaro.org>
Date: Sat, 9 Dec 2023 09:13:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: display: st7701: Add Anbernic RG-ARC
 panel
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org, linus.walleij@linaro.org, marex@denx.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, neil.armstrong@linaro.org,
 jagan@amarulasolutions.com, Chris Morgan <macromorgan@hotmail.com>
References: <20231208154847.130615-1-macroalpha82@gmail.com>
 <20231208154847.130615-3-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231208154847.130615-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/12/2023 16:48, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The RG-ARC panel is a panel specific to the Anbernic RG-ARC. It is 4
> inches in size (diagonally) with a resolution of 480x640.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof



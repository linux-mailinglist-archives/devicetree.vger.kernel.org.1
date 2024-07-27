Return-Path: <devicetree+bounces-88560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE6C93E150
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2024 00:18:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57A9C1F21836
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 22:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41FF63D966;
	Sat, 27 Jul 2024 22:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ULIjy17M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC7F39FD8
	for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 22:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722118703; cv=none; b=T2lo7qQHObmJ0IQU0v/9oljgRm7FGn1vLmb/uotVUaqqOwIvt9OAg1Ur649a4dD5OmzpORhBrSTdw5m9iGAoVfGyOO7nppls+mqud4vUb78TyGujpORzcGh8QhsMmnfp681YT6fyi1rsaY1VhI7n4fsx45WWKgEu+BN0UB+4EoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722118703; c=relaxed/simple;
	bh=5lFK4MT8kHjxmIDSWsaDwLNDfSAtd1FNjuD5F+3Vnk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=en8xiD/ywjoIWgLd2YfN7K4heS4S11I4XrkWp76Qcub77AaJ9KhDUgyBizANyj35d6x+fX/1CGseRGcMTICm62Vh2gQ7PNcDeJqyeLt3e9W5hvyJh+ZV+phh+8D8MuThH+ICwEUL4IJu4Emfsyx7nUg3Lgm3oIE5C0+0314PILA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ULIjy17M; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52f04b4abdcso3668033e87.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 15:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722118699; x=1722723499; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SRPFdqDNMT5cVtgo5Uruy9LQl2dnULjagrFjzTadsmA=;
        b=ULIjy17M/R2H95Uu386xs3KG3yiU4o4K5fMaJui7hyE3bFbmeJ+pUYdeBrykCfkQJR
         wRfavlKqFlA8E0JdKOhiJlxsg7vXL4Up5cRwHXiOukQm60tbAQ+Q1A5WjLWGOCxZCQk7
         y4iK7FMhsbWelUiWWvWkSMM9C8zeA5fzLeDQ4HCeJdvP8Q0pNWkfVKSjkmgvRvV5uzKU
         obqapUXj4OZohM8+TWVauBwQ/1uDQC1i3kZ1x5tZrYKzSxoQzjGM6KgTiQ4RveMRr3Wk
         t4JCa2KM6MBBcLcwDSLCMAn32AXqpz8K6wC7mwBmvCjL93aeugjGXRAO/i/xZTdG3OYV
         jbvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722118699; x=1722723499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SRPFdqDNMT5cVtgo5Uruy9LQl2dnULjagrFjzTadsmA=;
        b=GWLX1NfzcSXFXXlM4BnHpjTwXNt8bued68AkIwldPUrnEWpYbc4VMtD9se77Sg4Spu
         wUyffUUQcr/gO5u1xlkYoxyWtx7sIAYE9lpVKdD+2bR86rp0NZ3xp+KhlQPaHVgW9kpg
         SWSOEI9gSDLxAkhL/G8lX3JqF+57HhrTpHMmTaq0CDefBlh2sCfFF8g0IiYCAL419mKp
         m74nxsJ4RlAPt5cIZTJ5Xb9NFseBnYQdVTr56chy/nDTUZyIF4qiGleR5jiK0petQ0Qm
         YV/Snbxlh3M/VtPzpoZBhovuNVVVUIz2bUPqYwvNFhh7AXitGHrgdSnHibSK3B9n74dK
         OfAw==
X-Forwarded-Encrypted: i=1; AJvYcCVmY8E9pQ9OYa7U6sC3UWx9tFq37oUKwvu29/G7Sd9I0SDz82miX7sfNCQVPAzj2ZX2lkf4CapX6Y+Yu4oARgDJLJ44FzGeNpHsrg==
X-Gm-Message-State: AOJu0YwBKlWhWDtiIPWZicJECUqUZMv0obk/u4uKjNCbdA07V+IG8TJl
	t057Ic8c3yWLYfMXUlahbAag8bd/y/KXoAuHj3RYULFsT6r3KWIEeYVjPKh2h+M=
X-Google-Smtp-Source: AGHT+IFUBQ6q8OXXKFdSK1WefD+EdS1b4NdGUG2Kdoz2aBuzpXsjNTWAKu80JFuplft0bFTX/L8E5A==
X-Received: by 2002:a05:6512:606:b0:52d:582e:410f with SMTP id 2adb3069b0e04-5309b2c3061mr1949742e87.46.1722118698555;
        Sat, 27 Jul 2024 15:18:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c196e7sm872644e87.190.2024.07.27.15.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 15:18:18 -0700 (PDT)
Date: Sun, 28 Jul 2024 01:18:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Adam Skladowski <a39.skl@gmail.com>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Banajit Goswami <bgoswami@quicinc.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
	Stephan Gerhold <stephan@gerhold.net>, alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	llvm@lists.linux.dev
Subject: Re: [PATCH v2 3/4] ASoC: dt-bindings: apq8016-sbc: Add
 msm8953/msm8976-qdsp6-sndcard
Message-ID: <ctww7q6kmkvke7acubxupsfvi3cmvn3i4h7s7pb6pmzw5hl4ry@w35exuha32k7>
References: <20240727182031.35069-1-a39.skl@gmail.com>
 <20240727182031.35069-4-a39.skl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240727182031.35069-4-a39.skl@gmail.com>

On Sat, Jul 27, 2024 at 08:20:26PM GMT, Adam Skladowski wrote:
> Document MSM8953/MSM8976 QDSP6 cards.
> 
> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> ---
>  .../sound/qcom,apq8016-sbc-sndcard.yaml       | 51 ++++++++++++++++---
>  1 file changed, 45 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,apq8016-sbc-sndcard.yaml b/Documentation/devicetree/bindings/sound/qcom,apq8016-sbc-sndcard.yaml
> index 6ad451549036..1706ce334d2f 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,apq8016-sbc-sndcard.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,apq8016-sbc-sndcard.yaml
> @@ -15,16 +15,16 @@ properties:
>      enum:
>        - qcom,apq8016-sbc-sndcard
>        - qcom,msm8916-qdsp6-sndcard
> +      - qcom,msm8953-qdsp6-sndcard
> +      - qcom,msm8976-qdsp6-sndcard
>  
>    reg:
> -    items:
> -      - description: Microphone I/O mux register address
> -      - description: Speaker I/O mux register address
> +    minItems: 2
> +    maxItems: 3
>  
>    reg-names:
> -    items:
> -      - const: mic-iomux
> -      - const: spkr-iomux
> +    minItems: 2
> +    maxItems: 3
>  
>    audio-routing:
>      $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> @@ -106,6 +106,45 @@ required:
>    - reg-names
>    - model
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,apq8016-sbc-sndcard
> +              - qcom,msm8916-qdsp6-sndcard
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: Microphone I/O mux register address
> +            - description: Speaker I/O mux register address
> +        reg-names:
> +          items:
> +            - const: mic-iomux
> +            - const: spkr-iomux
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,msm8953-qdsp6-sndcard
> +              - qcom,msm8976-qdsp6-sndcard
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: Microphone I/O mux register address
> +            - description: Speaker I/O mux register address
> +            - description: Quinary Mi2S I/O mux register address
> +        reg-names:
> +          items:
> +            - const: mic-iomux
> +            - const: spkr-iomux
> +            - const: quin-iomux

As msm8953 / msm8976 just add one new region it might be better to
move the lists back to top-level definitions (still having mix/maxItems
next to it) and then in the conditional branches just specify maxItems:2
for apq8016/msm8916 and maxItems:3 for msm8953/msm8976.

This way it becomes:

  reg:
    items:
      - description: Microphone I/O mux register address
      - description: Speaker I/O mux register address
    minItems: 2
    maxItems: 3

  # same for reg-names

[....]

  - if:
      properties:
        compatible:
          contains:
            enum:
              - qcom,apq8016-sbc-sndcard
              - qcom,msm8916-qdsp6-sndcard
    then:
      properties:
        reg:
          maxItems: 2
        reg-names:
          maxItems: 2
    else:
      properties:
        reg:
          maxItems: 3
        reg-names:
          maxItems: 3


> +
>  additionalProperties: false
>  
>  examples:
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry


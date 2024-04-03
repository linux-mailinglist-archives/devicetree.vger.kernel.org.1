Return-Path: <devicetree+bounces-56037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DDD897755
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 19:51:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BD29289297
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 17:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10262157A42;
	Wed,  3 Apr 2024 17:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nmjFOq63"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3A7152DFA
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 17:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712165598; cv=none; b=Sh6AiHmbmr2zEg/NIbf410/Lf/qz+d9MwHLgAdG9vLxHlLM7XZqCPzRKOyTCYbUUcWQcLEMqL5ZNm7ykaQkV5gd1ix4CHiC+tKhx7+lDTRso+tekpbDm7JK/7wqiCm5qArwMtL7BOHHXRCC37XPV7Ng7CXd7AnRp3QAMPbF/6eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712165598; c=relaxed/simple;
	bh=+DelBr6m3rNY6z6t5SFfDpdd1llZYLl56cohJPx5B5Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UEYw0x5cwblharOs+Aqio5zQLulYkt/ufiFNvVtrQqzIkNSe/Q9bCwmQF3ZnAgxoH04VTKhVdjgfqbq4uC71ASrTpyI+ZghQs/gazZKrR3zPvS1KEuYH0BhH1TZJrwUyWN13P9TtlJeEmEqnJKGYwsbgK/T7pfdSSLNmSHbBQ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nmjFOq63; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-56e06116eb4so72737a12.3
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 10:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712165594; x=1712770394; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=T33QVeD/UYcwqSgNmsGfgpvXToGKDIKVuMAYVc4EFqI=;
        b=nmjFOq63Utf4UuRd4OMGhUlH6WvKi8ps79ZCvB8dKwIcCKv3JZ8DZDkcI8kZDkn9wD
         Cdibmn+/13GzPJbFhh7G8gc9/GrfYk5M71IOiLYvLpeAXtS5Xh28hQJm8hK/5AYQNJ55
         3aFvZIlGibWhbUmpNvvtHcwvdwNvE8V75n76hq2VTo/lDQxO0dBCDuO30IF1qXB06Sxw
         sr0FQEPV80bM4WhghapvIMC/VljcueZ/hSjeBk9Nvq+wyJNtWjyE0OHYl2T3qY2cM6m3
         H4Kc/3AoKzk4cnqN57BelhqElluNPupwxKoe37pUcazUwOSYpzilPWRNBMOP43oA9XKS
         WHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712165594; x=1712770394;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T33QVeD/UYcwqSgNmsGfgpvXToGKDIKVuMAYVc4EFqI=;
        b=Gv3d70HEx9UFwi7xXXgqEE7SdHWjzrIYaMRr0r2dy7hq4J1x00dEUJwFb+rHFdPG5d
         j/7cbQoIgmqPLLSHUzhF3tSJsGJqgT/Rk/1yY16gpvDLX/YAfXhV1tKX3PXrdrG9V/Dc
         ljYfwuwRaBWxoz3ULEQjhxeTZ5QnnpfhX+fe+1PC0YZXw/qNScqk13y1ERHBaCjDNjjl
         /GuLvM3pqdfNc5zUEIOB7g50Z/YZiiKSfFqYugWYBd8UJ1dY/2nNqhwLSJQb2KBrwgKR
         znQkG5apRyHV+IcOFD6bBkdJxvqahU89dfXx6kD9d0YbPJjJkNt1TdL+D/qsh0CW5yq6
         TyPQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7D7xMpVAQ2tMhvqlx0N2btSBUTG2Q+QqVLCftNSKDGHnI45BArOmtnp40VgoP6CbgZhPXxjsQcTZGAc1hmKT6+W5Ii+lq3lG1fA==
X-Gm-Message-State: AOJu0YzonP+49eyRal9ooPqs2VoLuyyniQqkHDoGIRpsnvgtSzzucaBN
	4uR5UCumPtg0gWSlVDscn4EPOgc10yHq9VeXmKjwGmpDNhqdKW7KZ5PVcPnhUmM=
X-Google-Smtp-Source: AGHT+IEwZo2+JsK5wwSD2DKtwccImfnSRm/+qcrGJ0GmVQH7neZdv0m4zCdwfN/aYbnWlHqeGhL6wQ==
X-Received: by 2002:a50:ab52:0:b0:56b:a565:f8dd with SMTP id t18-20020a50ab52000000b0056ba565f8ddmr60895edc.24.1712165594413;
        Wed, 03 Apr 2024 10:33:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id fe8-20020a056402390800b0056c522d014esm8075468edb.57.2024.04.03.10.33.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Apr 2024 10:33:13 -0700 (PDT)
Message-ID: <85aacb1d-40bd-46fd-8c49-5a682a7adf61@linaro.org>
Date: Wed, 3 Apr 2024 19:33:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: omap-mcpdm: Convert to DT schema
To: Mighty <bavishimithil@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240403165950.75-1-bavishimithil@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240403165950.75-1-bavishimithil@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/04/2024 18:59, Mighty wrote:
> Convert the OMAP4+ McPDM bindings to DT schema.
> 

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

> Signed-off-by: Mighty <bavishimithil@gmail.com>

Is it your full name?


> ---
>  .../devicetree/bindings/sound/omap-mcpdm.txt  | 30 ----------
>  .../devicetree/bindings/sound/omap-mcpdm.yaml | 58 +++++++++++++++++++
>  2 files changed, 58 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/omap-mcpdm.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/omap-mcpdm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/omap-mcpdm.txt b/Documentation/devicetree/bindings/sound/omap-mcpdm.txt
> deleted file mode 100644
> index ff98a0cb5..000000000
> --- a/Documentation/devicetree/bindings/sound/omap-mcpdm.txt
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -* Texas Instruments OMAP4+ McPDM
> -

...

> diff --git a/Documentation/devicetree/bindings/sound/omap-mcpdm.yaml b/Documentation/devicetree/bindings/sound/omap-mcpdm.yaml
> new file mode 100644
> index 000000000..8c9ff9d90
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/omap-mcpdm.yaml

Filename like compatible.

> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/omap-mcpdm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: OMAP McPDM
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> +
> +description:
> +  OMAP ALSA SoC DAI driver using McPDM port used by TWL6040
> +
> +properties:
> +  compatible:
> +    const: ti,omap4-mcpdm
> +
> +  reg:
> +    description: 'Register location and size as an array:
> +       <MPU access base address, size>,
> +       <L3 interconnect address, size>;'

Please open existing bindings and look how it is done there.

> +
> +  interrupts:
> +    description: Interrupt number for McPDM

Same problem. Drop useless description but provide maxItems.

> +
> +  ti,hwmods:
> +    description: Name of the hwmod associated to the McPDM

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

Sorry, this was neither tested nor done in a way matching anything
already in the tree. Please do not invent your own style, but open
existing binding and look how is it done.

Because of above, I did not perform full review.

> +
> +  clocks:
> +    description: phandle for the pdmclk provider, likely <&twl6040>
> +
> +  clock-names:
> +    description: Must be "pdmclk"
> +
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - ti,hwmods
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    mcpdm: mcpdm@40132000 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation



Best regards,
Krzysztof



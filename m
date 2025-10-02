Return-Path: <devicetree+bounces-223386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DE4BB3DE8
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 14:22:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 092163C5BA9
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 12:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C6DF30FF3B;
	Thu,  2 Oct 2025 12:22:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DED730FC26
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759407746; cv=none; b=XRhOUh42vbsBLn5wT3xs1MV2+oLvUop4UJpA53pgWGjnBCYNX3NLnjuqbbtC+er7RMP/ZXDVZpVD2BtLr9EShlht07uJTm+G+GwhHDaRI9rvqS7tXIPBTl5+09Y7CdQKn8TIvxNKF5s34Ib6dv9vognnzcWRTa09+A7u1s5aJoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759407746; c=relaxed/simple;
	bh=ZCLWknI3Oohh8zMZTDOwt7rdXpb2pywh5AbVWLK0g3U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IL0ls1WxWcbpfIklsNiNW31i6BHe2oHUtFMrXSzQmdNCvVsvG3OKCf9t8hbwVXD2lEj8AY+HwI2pOe4vP1LXd/JXIBNHUyhE29PvovItyDvE3fogTJNclMf+Zx7+6ZqpENjuUkWQJaE6I8RGK2z9qiro3H03OwVEwm5tUY4IhSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b3c2db014easo191208266b.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:22:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759407740; x=1760012540;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pY10gBxAlncLft1B4e8e0H+E3DPfeVQijK8Ci3Ekn1c=;
        b=BcutgsmvU2/OMCKVHNyUKEYztApbOx2SXqLzpeaodQ8TesKUMWU7yBgLjMD8neYpWZ
         77B5qytPABFFErnFzjCDJGLgfMpB7wakG0ut0t0ceE4pEuvqUt+X92IDghaOguN0xFEW
         BHzlrxvCIj05npxtHbma22nBtT734kt3TaqugLDEvyIm6VV94peIUjbQ9KevyyZB11h0
         2LaAArVt01RCAzoZCBQHvu+pc7mAYtiTbmX2XzU5yxe7BQxMvZfIx+SGADhAvUHLtktN
         34UjEuBk96Buod3TPp5NWjetUIjV8qZNvI5UCkiNUhpoBWA2Cyf/TNTkBmjoj6t8AKaa
         9bRg==
X-Forwarded-Encrypted: i=1; AJvYcCVQq1de5mw/c710f1pBcsCkumcV1wsq0cvWAO48UcA00tmjhmvqjQfp+veDkcrAHxtHprI1m9SuVKVB@vger.kernel.org
X-Gm-Message-State: AOJu0YxO/YDBVfg2V+vwqh8WzNfHAvm8z5ONwH2oQ20o375G3E9hmd2G
	Lx3CB0fah1PYgZBhD9MJz7UFvAX8RwYELeQPpyYKf6Q/eubZh1d/gMKsFaQdBll4T9U=
X-Gm-Gg: ASbGncsK4sQkCw7ffR7NBsFBTVteNuvymOkkSxCM96NoBmpR1nJZWA8gyzlyFNN1iQo
	Hv3uPahW8jIP3xZYUhiSBU8Z/cZeL2MoYjaH7q4Xw7d/Nrn8ZrSK9j9QbQYEDhDziwNvS2D25M1
	/8iF8H6rU6XfPVeP1Ti87UkZhITD/u20eTk/V9YXPeUM0OXJYX9AgZK0irBzUu9RtnA20T/fDut
	zCDBHOozv4duw9Q6cBJkNQh0ByzfHHfncmZYx6aHyDL4nlD5pSMqUw4gRUOedSvbN2yUHCja13R
	XTCRAr+s7U/JnYODGqNLQsgn5qoRwpnzifP3jqBN0NS7u4r4iA47keki2x3KiYWVU8QFjEinE/9
	H0Zb+/t9SoD/z2yyJ11SGEHoGecBptO2VseFZN+4bBdxEbs1QB/uCV5dmRT7kSE/jRx5veiXZpE
	37LRWMfxKc
X-Google-Smtp-Source: AGHT+IFuJHpMr715TBuwHmB/SCENOyTTDgqYsC60b5nbcfzhGPHD3k0PaLshhkIvFgi87AFopi+byA==
X-Received: by 2002:a17:907:7208:b0:b2b:a56f:5420 with SMTP id a640c23a62f3a-b46e262693emr841246566b.2.1759407739677;
        Thu, 02 Oct 2025 05:22:19 -0700 (PDT)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com. [209.85.208.53])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9ff0sm194076066b.5.2025.10.02.05.22.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 05:22:15 -0700 (PDT)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-636688550c0so1907295a12.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:22:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXob3qcNvYnPT5leHQGyjaZvx7pCxzF+sXIQ19PxQRTz9xaxvQn36WIuc1zGZzJBREDiehbbzp2NkE5@vger.kernel.org
X-Received: by 2002:a05:6402:2748:b0:634:a32f:abbc with SMTP id
 4fb4d7f45d1cf-63678c7876cmr7743508a12.25.1759407734935; Thu, 02 Oct 2025
 05:22:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001122326.4024391-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251001122326.4024391-3-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251001122326.4024391-3-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 2 Oct 2025 14:22:01 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWOWMvyGLz8HGEvosrGY070e2Xtm+dFTcd0EDTq+55nmg@mail.gmail.com>
X-Gm-Features: AS18NWABtGa2D2TwMrIq8k3cqO5ssX-ZOaNtMz3MgD0zeopDW4rX6Xc3PgPqoFQ
Message-ID: <CAMuHMdWOWMvyGLz8HGEvosrGY070e2Xtm+dFTcd0EDTq+55nmg@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] dt-bindings: iio: adc: document RZ/T2H and RZ/N2H ADC
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-iio@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Wed, 1 Oct 2025 at 14:24, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Document the A/D 12-Bit successive approximation converters found in the
> Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs.
>
> RZ/T2H has two ADCs with 4 channels and one with 6.
> RZ/N2H has two ADCs with 4 channels and one with 15.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/renesas,r9a09g077-adc.yaml
> @@ -0,0 +1,160 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/renesas,r9a09g077-adc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/T2H / RZ/N2H ADC12
> +
> +maintainers:
> +  - Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> +
> +description: |
> +  A/D Converter block is a successive approximation analog-to-digital converter
> +  with a 12-bit accuracy. Up to 16 analog input channels can be selected.
> +  Conversions can be performed in single or continuous mode. Result of the ADC
> +  is stored in a 16-bit data register corresponding to each channel.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - renesas,r9a09g077-adc # RZ/T2H
> +      - renesas,r9a09g087-adc # RZ/N2H

Given the number of channels is now handled completely through the
number of subnodes, I wonder if this should be changed to:

    oneOf:
      - items:
          - const: renesas,r9a09g087-adc # RZ/N2H
          - const: renesas,r9a09g077-adc # RZ/T2H
      - items:
          - const: renesas,r9a09g077-adc # RZ/T2H

...

> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a09g077-adc
> +    then:
> +      patternProperties:
> +        "^channel@[6-9a-f]$": false
> +        "^channel@[0-5]$":
> +          properties:
> +            reg:
> +              maximum: 5
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - renesas,r9a09g087-adc
> +    then:
> +      patternProperties:
> +        "^channel@[f]$": false
> +        "^channel@[0-9a-e]$":
> +          properties:
> +            reg:
> +              maximum: 14

... and the SoC-specific restrictions above dropped?
The number of channels is instance-specific anyway.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


Return-Path: <devicetree+bounces-2770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5FA7AC7D8
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 14:00:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AFD262815C4
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 12:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB9D137E;
	Sun, 24 Sep 2023 12:00:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1225D1368
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:00:32 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC865103
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 05:00:30 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-31f71b25a99so4625193f8f.2
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 05:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695556829; x=1696161629; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dBOJish6GxNLMFSFNmns6IL1J0Fi1oU9wxX+89lv5vI=;
        b=AEvynAlCVoVzHb4vIhZBeTWny0QQsN6utP8XZQy1NdM0Wm1Q+w3+jSwNzOv3VRxIc+
         WfRAFdK6JYDbomI7CKwVg52gJR8roDQfoenSNQw05q0aprv3uDSyoYzpdZEUFc/cFA2o
         TZNawIWrF/JjDtsMUBMvZ0M36nlDAHnzMlYtNF48Go35rMc5B3mSw2m+ZnXle6AIQaQp
         N2Wvd+HtgWXEL5TjVgKvq58o86PgAltZNXJjSGh9LZypp6OYCWe5ogLn+uYV7f/LQl3S
         GGDdk/2dLuy3ahcT8cdu0ol1rvlTWumRtDMwPmx3SDEE9wETW1GO1T62PwNwhfknseTx
         HqQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695556829; x=1696161629;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dBOJish6GxNLMFSFNmns6IL1J0Fi1oU9wxX+89lv5vI=;
        b=E2Ho1R1GJQCj1pA41xcdE5qzk9gN84CyU1B2/pEFNxwauOOBUUTvtRWzNJ7alWVW+Q
         CryLADpgq8TQ4yQ/Bx8oZGy8YPc2c74mt54JXxUy84dnKANfTHwWelPBaLO5JNdLlPJd
         XyrW+WD/lBjABBVt4Nk8BrKOd/5O/q9ienv8Eau2bLPM3vGtItQZ2fHS03rDyiu4jtL5
         hRKITZa7qB+xLgPpM2Q6DfVyWgp/oxXHh/2p61kCjthN+GGiHf7zSNPAaZOlCQ3e3frn
         5H3+hdi7pOyA/x1/WSfmR2rD9rk+3gDygz8I96AZ4PTk9lzLZqFAypIvbq6ZXbYPfLW+
         42RA==
X-Gm-Message-State: AOJu0YyylLV3Qxsw0J90246J660Ifc8oQH/LyFhxBdas9Jwy1o2c6ahr
	sFyM6tA3/xnuar8eDLF/z8yyLg==
X-Google-Smtp-Source: AGHT+IGO8bCTbMJp5fVQdgKbNu5/LSlEzUCvJRZBKQ27KJ/4WhcXJ+t6ywp5uxBWqEtgLTT7BspaIw==
X-Received: by 2002:adf:f746:0:b0:31d:db92:31ae with SMTP id z6-20020adff746000000b0031ddb9231aemr3344191wrp.44.1695556829154;
        Sun, 24 Sep 2023 05:00:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id 12-20020a05600c240c00b003fc02e8ea68sm12284948wmp.13.2023.09.24.05.00.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 05:00:28 -0700 (PDT)
Message-ID: <0fd912a9-4aaa-d4bd-4ceb-7319d9f46db8@linaro.org>
Date: Sun, 24 Sep 2023 14:00:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 1/3] dt-bindings: Add beagleplaycc1352
Content-Language: en-US
To: Ayush Singh <ayushdevel1325@gmail.com>, greybus-dev@lists.linaro.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org, vaishnav@beagleboard.org,
 jkridner@beagleboard.org, nm@ti.com, krzysztof.kozlowski+dt@linaro.org,
 vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20230924113725.164948-1-ayushdevel1325@gmail.com>
 <20230924113725.164948-2-ayushdevel1325@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230924113725.164948-2-ayushdevel1325@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 24/09/2023 13:36, Ayush Singh wrote:
> Adds DT bindings for BeaglePlay CC1352 co-processor.

I gave you the link to the exact wording you should use. "Add", not
"Adds". The latter is not a correct English sentences, I believe.

> 
> BeaglePlay has a CC1352 co-processor connected to the main AM62 (running
> Linux) over UART. In the BeagleConnect Technology, CC1352 is responsible
> for handling 6LoWPAN communication with beagleconnect freedom nodes as
> well as their discovery.
> 
> It is used by gb-beagleplay greybus driver.
> 
> Signed-off-by: Ayush Singh <ayushdevel1325@gmail.com>
> ---
>  .../bindings/net/beagle,play-cc1352.yaml      | 25 +++++++++++++++++++
>  MAINTAINERS                                   |  6 +++++
>  2 files changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/beagle,play-cc1352.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/beagle,play-cc1352.yaml b/Documentation/devicetree/bindings/net/beagle,play-cc1352.yaml
> new file mode 100644
> index 000000000000..f8536d1a6765
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/beagle,play-cc1352.yaml
> @@ -0,0 +1,25 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/beagle,play-cc1352.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: BeaglePlay CC1352 co-processor

So this is "Texas Instruments Simplelink CC1352P7 wireless MCU"? Since
you do not have any fixed feature and run general-purpose OS, then this
should be rather compatible matching actual hardware (so ti,cc1352p7).

> +
> +maintainers:
> +  - Ayush Singh <ayushdevel1325@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: beagle,play-cc1352

> +
> +required:
> +  - compatible

Still no resources? I asked about it last time and you did not answer
anything.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    mcu {
> +      compatible = "beagle,play-cc1352";
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 37b9626ee654..9d1b49a6dfad 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8969,6 +8969,12 @@ F:	drivers/staging/greybus/sdio.c
>  F:	drivers/staging/greybus/spi.c
>  F:	drivers/staging/greybus/spilib.c
>  
> +GREYBUS BEAGLEPLAY DRIVERS
> +M:	Ayush Singh <ayushdevel1325@gmail.com>
> +L:	greybus-dev@lists.linaro.org (moderated for non-subscribers)
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/serial/beaglecc1352.yaml

That's not a correct path.


Best regards,
Krzysztof



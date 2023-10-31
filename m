Return-Path: <devicetree+bounces-13036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EA67DC624
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 06:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7ACE3B20DA9
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 05:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCFDCD534;
	Tue, 31 Oct 2023 05:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v4E+L0go"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F334D2EE
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 05:54:23 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80AABC1
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 22:54:21 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53e08e439c7so8938572a12.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 22:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698731649; x=1699336449; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2xhFLjwtVvK6+n9TMcKsvUMKJQSm2sfqgVI/mImUnJM=;
        b=v4E+L0goOjqhExWmrGME6vhpF3FNxpih8VHtCHjkmYadzModIuKu9dbK9ThPRhkzYt
         0U+AHqa4WpgEgXGJP8DMzWot/Ep33HL+4hWVBr2VXTgIrMrE/tBXG0zZu+1Gf1nP6Cs8
         FrVbcrprp9WNCbCPsilfHcXk597Dh0Vujt5j/nvQPdFR1sVjkHhLhIhiFygRs5zKZMUv
         Q2sZyDWNCC82waS9KXeXeYixRQNrlj3oVSp73IBzAFTRVEMaEGcOSl6/q6KA5m7tIKiR
         La6rbvi36K67xw22mTar2OiENxlIalZvK0Ub3m9zpogW8VRA61E6Rjgcmtbz+Tg6GVlV
         9aiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698731649; x=1699336449;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2xhFLjwtVvK6+n9TMcKsvUMKJQSm2sfqgVI/mImUnJM=;
        b=d826FtM8g4Ox9OSkTj3Xm+E9+D2pVb0x/2nYkXY6YumRb3XajvbsnnaRwxffYnCyDT
         hUSr83ND8eKsZbPJ+Y80r4HlOT+4rS0xUFCW8c5nOhK07j8TFdJXAicj8ReG4M5fyJL2
         RofDeLeja7Twrc4oNKrqIwPmdABMCpCfiLVcmzomYSgdyUbGe27sLXydy0WwxkUXDlUQ
         9WSYiUsdFLDHorZ+MJK/iPYDm2Ik6aMZiGiwVDZK06mJDZk9YjTKzLT6q/3zcZOVXemT
         NaPH6lk637Ys14q7mHPHbW2iNqq/xYiWcICzJhBNpcludYQqqzLvWmmiNirSqhF+S+KM
         cy0Q==
X-Gm-Message-State: AOJu0Yyn06qAkfd8XWmzOQ4khCa3Nmno2YWX/fmvVcITDSJT80aKNVGe
	ChaPydtShRUFcK53zwRb5P1wtg==
X-Google-Smtp-Source: AGHT+IGfi6zbBV2ALB09yK5iPRN0y4tq7NDfkYgNb1IAHDoWKjOr9rck0/WHmVtlko+a7b+h9P/bcw==
X-Received: by 2002:a50:c304:0:b0:543:714b:5368 with SMTP id a4-20020a50c304000000b00543714b5368mr567693edb.20.1698731648814;
        Mon, 30 Oct 2023 22:54:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id q19-20020a056402033300b0054354da96e5sm497333edw.55.2023.10.30.22.54.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 22:54:08 -0700 (PDT)
Message-ID: <a0742798-982d-4461-9731-aac41fcf8be3@linaro.org>
Date: Tue, 31 Oct 2023 06:54:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: mfd: brcm,bcm59056: Add compatible for
 BCM59054
Content-Language: en-US
To: Artur Weber <aweber.kernel@gmail.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Stanislav Jakubek <stano.jakubek@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20231030-bcm59054-v1-0-3517f980c1e3@gmail.com>
 <20231030-bcm59054-v1-2-3517f980c1e3@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231030-bcm59054-v1-2-3517f980c1e3@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/10/2023 20:36, Artur Weber wrote:
> The BCM59054 MFD is fairly similar to the BCM59056, and will use
> the same driver. Add compatible and specify the allowed regulator
> nodes.
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
> ---
>  .../devicetree/bindings/mfd/brcm,bcm59056.yaml     | 125 +++++++++++++++------
>  1 file changed, 88 insertions(+), 37 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/brcm,bcm59056.yaml b/Documentation/devicetree/bindings/mfd/brcm,bcm59056.yaml
> index 6d6acc9fd312..5b5044867eca 100644
> --- a/Documentation/devicetree/bindings/mfd/brcm,bcm59056.yaml
> +++ b/Documentation/devicetree/bindings/mfd/brcm,bcm59056.yaml
> @@ -12,6 +12,7 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> +      - "brcm,bcm59054"

Where do you see syntax with quotes?

>        - "brcm,bcm59056"
>  
>    reg:
> @@ -24,43 +25,93 @@ properties:
>      type: object
>      description: Container node for regulators.
>  
> -    # The valid regulator node names for BCM59056 are:
> -    #   rfldo, camldo1, camldo2, simldo1, simldo2, sdldo, sdxldo,
> -    #   mmcldo1, mmcldo2, audldo, micldo, usbldo, vibldo,
> -    #   csr, iosr1, iosr2, msr, sdsr1, sdsr2, vsr,
> -    #   gpldo1, gpldo2, gpldo3, gpldo4, gpldo5, gpldo6,
> -    #   vbus
> -    patternProperties:
> -      "^(cam|sim|mmc)ldo[1-2]$":
> -        type: object
> -        $ref: /schemas/regulator/regulator.yaml#
> -        unevaluatedProperties: false
> -
> -      "^(rf|sd|sdx|aud|mic|usb|vib)ldo$":
> -        type: object
> -        $ref: /schemas/regulator/regulator.yaml#
> -        unevaluatedProperties: false
> -
> -      "^(c|m|v)sr$":
> -        type: object
> -        $ref: /schemas/regulator/regulator.yaml#
> -        unevaluatedProperties: false
> -
> -      "^(io|sd)sr[1-2]$":
> -        type: object
> -        $ref: /schemas/regulator/regulator.yaml#
> -        unevaluatedProperties: false
> -
> -      "^gpldo[1-6]$":
> -        type: object
> -        $ref: /schemas/regulator/regulator.yaml#
> -        unevaluatedProperties: false
> -
> -    properties:
> -      "vbus":
> -        type: object
> -        $ref: /schemas/regulator/regulator.yaml#
> -        unevaluatedProperties: false
> +allOf:

No. We do not define properties in allOf:if: block. If there are just
few differences, define all at the top level and disallow few (foo-bar:
false). If there are more, just create separate bindings.



Best regards,
Krzysztof



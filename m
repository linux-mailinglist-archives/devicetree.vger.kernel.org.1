Return-Path: <devicetree+bounces-23803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7834280C63C
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E1C42817AC
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92E4F24B21;
	Mon, 11 Dec 2023 10:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZJjVECif"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04159CB
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 02:19:54 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a1e35c2807fso566279566b.3
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 02:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702289992; x=1702894792; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pbJH3swBnrwAhmGqDMGSc/B4DsQizuTOvVJjLJU1KRI=;
        b=ZJjVECifJzRvIQ0eghQt83qMMpJgIquXfd8M/1kI+ZLFrbcRC+mauB/D5oNBGllhwQ
         GJFhT2nYp22kRgq0vPExjiiMR31Twk+8vXjNOKUy54FJfGGg/cdKbWL49sZMaXbub20k
         6dMa+6kfJAN1X46Z/O/YS6yoMwKR5Nb8cJghsqkH5fLKcW2HXJc2opQird3ABfKqLLwG
         nHavD5P17l6KOou1JVnVdnsroDx/sN0UHgwTbq6FQbgI18YZRkbnHyvlMQBjstDw+1F/
         zDeuVXPPwLGtWxIAT5epDvcYyIuSIQGAPgWdcx+ill4D4K76alsIZCoIa5EtuMmwdCUf
         aOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702289992; x=1702894792;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pbJH3swBnrwAhmGqDMGSc/B4DsQizuTOvVJjLJU1KRI=;
        b=WDDKwFhJKsPjIBUiRsaORPKAWZHIBP6P9wK/tolBWaPW1lDYnRLhK+Q8Uf+9nLRqx7
         rVGH4CaU9B7lwM3wY76U6LxeBTb87gmDMdT5jhyhuFMHwZPU+8lb6IfqD0gX0kE2WZDe
         cTj0WESNjRoAgPr4NARa+ucq79Papm6228jzIKZRWULmzz/RupqslMJnLWA7N/BF9q4i
         B553UeNMvAhjv0OnpXxCDTvl9/IBAqQ0tiTb8TsRoq/MEtsZv3Cl5JAWH9gHh2ngibSi
         st/ySY3pOoZ/DIjGZT1d0okrliVOx+SqtRXY+EvtR6unyAKMpfVbcJ/cb9iQrPYgjuWM
         FdZA==
X-Gm-Message-State: AOJu0Yw0xaZeW/j0lqgOyESa5+egeez+Pe1tRus4cy0fyqn8w03kYnui
	pdm2vTIEKTyS0elLbWCjp2ksiQ==
X-Google-Smtp-Source: AGHT+IG2DDH8vlUb7UxXrRJZyEl0POduE9xN32zkG/2NBiYALr8zaWt6hqMSOtiX0vvQzOohG/ym7Q==
X-Received: by 2002:a17:906:116:b0:a1b:7df6:11dd with SMTP id 22-20020a170906011600b00a1b7df611ddmr2147250eje.80.1702289992450;
        Mon, 11 Dec 2023 02:19:52 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id mm15-20020a1709077a8f00b00a1b6ec7a88asm4581996ejc.113.2023.12.11.02.19.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 02:19:52 -0800 (PST)
Message-ID: <b855eceb-05f4-4376-be62-2301d42575e7@linaro.org>
Date: Mon, 11 Dec 2023 11:19:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next PATCH 1/2] dt-bindings: Document QCA808x PHYs
Content-Language: en-US
To: Christian Marangi <ansuelsmth@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231209014828.28194-1-ansuelsmth@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231209014828.28194-1-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/12/2023 02:48, Christian Marangi wrote:
> Add Documentation for QCA808x PHYs for the additional property for the
> active high LED setting and also document the LED configuration for this
> PHY.
> 

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  .../devicetree/bindings/net/qca,qca808x.yaml  | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/qca,qca808x.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/qca,qca808x.yaml b/Documentation/devicetree/bindings/net/qca,qca808x.yaml
> new file mode 100644
> index 000000000000..73cfff357311
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/qca,qca808x.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: GPL-2.0+

Dual license as checkpath and writing-bindings ask.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/qca,qca808x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Atheros QCA808X PHY
> +
> +maintainers:
> +  - Christian Marangi <ansuelsmth@gmail.com>
> +
> +description:
> +  Bindings for Qualcomm Atheros QCA808X PHYs

Drop "Bindings for" and then entire sentence seems not useful.

> +
> +  QCA808X PHYs can have up to 3 LEDs attached.
> +  All 3 LEDs are disabled by default.
> +  2 LEDs have dedicated pins with the 3rd LED having the
> +  double function of Interrupt LEDs/GPIO or additional LED.
> +
> +  By default this special PIN is set to LED function.
> +
> +allOf:
> +  - $ref: ethernet-phy.yaml#
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - ethernet-phy-id004d.d101

I have impression that this is continuation of some other patchset...
Anyway, id004d.d101 is specific to QCA808x?

> +  required:
> +    - compatible
> +
> +properties:
> +  qca,led-active-high:
> +    description: Set all the LEDs to active high to be turned on.
> +    type: boolean


Best regards,
Krzysztof



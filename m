Return-Path: <devicetree+bounces-17061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A68657F10D6
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 11:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D34511C20B12
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 10:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8684820EE;
	Mon, 20 Nov 2023 10:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MGtBrwdn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93DD89D
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 02:52:58 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5482df11e73so4160250a12.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 02:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700477577; x=1701082377; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GVHz7iDj1twatMFKk7CmjoZLFR4dceEUmjEQmn4BDrg=;
        b=MGtBrwdnfdDO2EXe7t66/oruQqsIU+U7e2E+PYFicUs7ENuSQTnwozZRTf6X1w9t71
         zWItVA/xC7w0l8PoIa77vuig+f7tzGh2zFTQVPnow/bHGHzrQoDtwLof/ZeH1i5TrUce
         Qi++1INH3iqXbodRhH9MMA+xZvuR7XuNBz7cedIwmsoLveml3Zw5R+qkRayBG13d/NHS
         eKmhcVL5NOdK0wbkPbCH6u2CCdgNs4tCXSNfOqu521pCIu91i+9p/JhKjB7DTiZkq9+C
         0Z2X6RZs7eaL4LXY454s+c17Z1VIIPJQWfE3zQlKo3IQWuken01k7+/eb3mi/zgWweSY
         zZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700477577; x=1701082377;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GVHz7iDj1twatMFKk7CmjoZLFR4dceEUmjEQmn4BDrg=;
        b=pf8KM7hvmp6POzpJyO1GjGWlznNc6VccEk2BxKZnOV8GKwjC/9wGQriw3lHYEJV/AF
         BE4vceuscE/rYmpN0w6LdiSQjNhMIdK4Bx4q+TlbqUkRFX93BZxXBvgWugue1viJ38Q5
         0pU8n+ArBVmCGRmteb3l3KdTj0WGA5+gy9ZK3tf+N/GfGR1QiY/gi0YaZB3cnRF+2Fri
         KxV2Ek7RL4Mlnl+vbXxgtr1Z2xVOZ3H60qHn7BMqvRp32XkYtTLczFnQ+71S/d0DUsIf
         7fgbNrga++6Xz383HhQbGfLML3KHx4fwRWS1qjl/oK6+oPgNJ/E8AgTYrkyH7hf4tgoi
         /qhA==
X-Gm-Message-State: AOJu0Yx5cWzOwx/ZT+flEuHWIDJm5TFFYFdWsUeA9oNAhxuaynnP2G1A
	i1prg3d1B7cynLOVhODUlBpx5o1dOvhUfCDKmKU=
X-Google-Smtp-Source: AGHT+IFvg5D+LznvoBHAXQ384vKHBpCfdz2gkyLbpRrpXTMphOYllp+eOE6Gu1gTkRhhSPhXaKuOLg==
X-Received: by 2002:a17:907:718e:b0:9e6:8bb5:8d65 with SMTP id zv14-20020a170907718e00b009e68bb58d65mr3767411ejb.61.1700477577055;
        Mon, 20 Nov 2023 02:52:57 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.11])
        by smtp.gmail.com with ESMTPSA id h23-20020aa7c957000000b0053dff5568acsm3528018edt.58.2023.11.20.02.52.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 02:52:56 -0800 (PST)
Message-ID: <79d78b39-e537-4143-af2e-44539cc6448c@linaro.org>
Date: Mon, 20 Nov 2023 11:52:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: power: reset: Convert mode-.* properties
 to array
Content-Language: en-US
To: Elliot Berman <quic_eberman@quicinc.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Cc: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Melody Olvera <quic_molvera@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <florian.fainelli@broadcom.com>
References: <20231117-arm-psci-system_reset2-vendor-reboots-v1-0-03c4612153e2@quicinc.com>
 <20231117-arm-psci-system_reset2-vendor-reboots-v1-1-03c4612153e2@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231117-arm-psci-system_reset2-vendor-reboots-v1-1-03c4612153e2@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/11/2023 22:18, Elliot Berman wrote:
> PSCI reboot mode will map a mode name to multiple magic values instead
> of just one. Convert the mode-.* property to an array with default
> number of items limited to 1.
> 
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
>  Documentation/devicetree/bindings/power/reset/reboot-mode.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml b/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
> index ad0a0b95cec1..2c786e783464 100644
> --- a/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
> +++ b/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
> @@ -28,13 +28,16 @@ description: |
>  
>  properties:
>    mode-normal:
> -    $ref: /schemas/types.yaml#/definitions/uint32
> +    $ref: "#/patternProperties/^mode-.*$"
>      description:
>        Default value to set on a reboot if no command was provided.
>  
>  patternProperties:
>    "^mode-.*$":
> -    $ref: /schemas/types.yaml#/definitions/uint32
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    # Default to one value. Bindings that reference this schema could override.
> +    minItems: 1
> +    maxItems: 1

I don't understand. Array with one value is the same as uint32.

Best regards,
Krzysztof



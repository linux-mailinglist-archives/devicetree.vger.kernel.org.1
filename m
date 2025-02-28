Return-Path: <devicetree+bounces-152885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 741E6A4A617
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 23:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41DAD3B103E
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 22:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D1DE1DED57;
	Fri, 28 Feb 2025 22:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kL77e3Mw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F5323F39A
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 22:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740782496; cv=none; b=nh07KYHS3BDqbd8yaUo9MQW2du21YxRLKRdHC487iEn0bR0vkRc1c0hY/vzJqX+QyZEEreE1j9cLqk17vJrqOXXWMYSRkMaCzEKQLIFawd6CXTQuZnkcIV1FoJSoTyBfunMvgdQ7l8KVKFxMPYxcTjPt8VXvVh+jZxf4Wnv5ZFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740782496; c=relaxed/simple;
	bh=FLBHwO+nFllKVwfKJACF4L2HeRUbXtlCor+SO7tOf+w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pXt+pye0R68De+Qy16QiLN9bedE925W2BXa+uRaXeLf6fj6aE/G7epyiDy28x9TCkEGS595DAGth/7oTRX2/DecP87dBm7+N3+LzM1FNeqPBMf+IHcbTZepxQBpZWwnwA58MvdCeNL703Al0xdfhVxKJoHnxrpe8XR9aIVjtr/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kL77e3Mw; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5fcd509468eso1172478eaf.2
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 14:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740782492; x=1741387292; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y9VA0oblCg0Xc+d3Sx56RfFjCCmOWiRbgOPbTv313JQ=;
        b=kL77e3MwsaRLeH+6oezvDPr6jgHY9ZebP82Heqs0OFRIMLkftOrqlbaSAPnA3sxwQd
         6+ic/j2xMkY3a4uVmOViPSAzAtXXZdYFuY9FzwBge3/3OqM67PMAhUTaJvpW25DVwAiS
         PMj/PNA8pRhxQdjd6N4UgJYQ+FOR7JZ2Bg6fZDXpAh640wxXx59lWq7qQ9U6N2b3SoSL
         cdyzvTAfjWh+/OzmCcyhhJ2PvJbU6xtL49/niJYuCRd7/RQNEi0jnU9lGghh9ohwG7gx
         6S7WC7x0uFc/JF23M+tf9r7aO7i9NR85zZWcUfiMRNYSqTn4qkedhEv/GElu5pKGoQun
         slDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740782492; x=1741387292;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9VA0oblCg0Xc+d3Sx56RfFjCCmOWiRbgOPbTv313JQ=;
        b=UCQpfVLXLh4EowUizUbgI0Jb2uuln9HYErKw5c7qZ6JwOBvSAxVqQePQnV0HcrJxQB
         /JiSM3YAD1DPEPjOSQKsWwZQP8DMvqDw8pEZmxUCynsPY9F89q+1D89AoRyeKOIvUGH9
         WnK6heLoexU17OIcxnW3hOlp6cRmAUmLqgYdjyuyqF00REQUr3RpC8aCcgvtMr9TxI+v
         nLV+bZuaTmXf5RiwezbEP4+qKqhrXM/4RE5ohJKXQk9TS/XM3xe9/nkhgMbO18l8p37k
         wf4JuHO9Yoh5RkdFHkXnZE8YUczXE4iGP1pcsq5OpExRKzbqMwM+f8FVY3DB+5kK9OiE
         LAFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOx4RZm3E3A/l4d+RlOpVYQB9awKY+ScigM2qfq+c0onez8gORjb41FSoFejnxwNrcGaG1b8voyTcS@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrqfs0d9BHcXmjbU6rTRvO3+ngQQs42I8PGcN8NKBf7vVFzJGJ
	ALGq8Y3wn49q9tsU1Yp8KoxEzFBTM3oB+mWUbMnOqgfAs09EVOhQa4VKnK6YxPI=
X-Gm-Gg: ASbGncvUsRTJEjKY/CMCbkUJJCdv2CwXL32nJ1QRAmPowluASdZg0FcFATA1U9lvjVb
	uQtUewSyURls2bfkeZYL5ck5uA7H/WnUBCq4Gw6oFbKG5D1NYMR4Ox6yUHuEgW6zbpWyC60Pl/5
	32nNo3RCO3VwV7sET45xubbtCb+MFIzLH2AEwJYg+LxU+Cl3Cqo3NLDctF9SIkjtQwu8UhtpKvT
	iO2pqlXr8JdoN5HZRPmV9qtGdxM9cPbDU+gDd+gFqSAgnM0uBO+Evgajf7Kgt3YSkp2KaOw8Y7K
	/6evwqvyRmhiBqMKMeoD2EG9Frp11AzsJulKDptD4N+J/dQtX84ZhmU9xBS+epjAO8mVQmUdumX
	w/d6h0Q==
X-Google-Smtp-Source: AGHT+IEceEwYejaDDNX0Vuw40LNIKav7t/w6trGAq65H0rdXXXH9+Wnxu7YXOtX/U2cJOjXP8F/3TQ==
X-Received: by 2002:a05:6820:151a:b0:5fd:a01:4834 with SMTP id 006d021491bc7-5feb3668d88mr3486224eaf.7.1740782491972;
        Fri, 28 Feb 2025 14:41:31 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5feaad43e80sm788380eaf.35.2025.02.28.14.41.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 14:41:30 -0800 (PST)
Message-ID: <8db96db5-c258-4c42-a70a-56fdf24ecdc6@baylibre.com>
Date: Fri, 28 Feb 2025 16:41:29 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 7/7] dt-bindings: motion: Add motion-simple-pwm
 bindings
To: David Jander <david@protonic.nl>, linux-kernel@vger.kernel.org
Cc: linux-iio@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org, Nuno Sa <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Oleksij Rempel <o.rempel@pengutronix.de>
References: <20250227162823.3585810-1-david@protonic.nl>
 <20250227162823.3585810-8-david@protonic.nl>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250227162823.3585810-8-david@protonic.nl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/27/25 10:28 AM, David Jander wrote:
> Add device-tree bindings for simple Linux Motion Control devices that
> are based on 1 or 2 PWM outputs.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> ---
>  .../bindings/motion/motion-simple-pwm.yaml    | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/motion/motion-simple-pwm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/motion/motion-simple-pwm.yaml b/Documentation/devicetree/bindings/motion/motion-simple-pwm.yaml
> new file mode 100644
> index 000000000000..409e3aef6f3f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/motion/motion-simple-pwm.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/motion/motion-simple-pwm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Simple PWM based motor controller

I think it has been said many times before, in DT, there is no such thing as
a simple device! It will be much more future-proof if we write bindings for
actual individual motor controller chips than try to generalize all in a single
binding. The chip you gave as an example is far from the simplest H-bridge I
have seen!

> +
> +maintainers:
> +  - David Jander <david@protonic>
> +
> +description: |
> +   Simple motor control device based on 1 or 2 PWM outputs
> +
> +properties:
> +  compatible:
> +    enum:
> +      - motion-simple-pwm

This should be e.g. ti,drv8873-q1. This device has much more pins that is given
in these bindings.

If we find more devices that have similar functionality/pinout we can add them
to the same bindings, but we will likely find that trying to cram all H-bridges
into a single binding is too much.

For starters, every H-bridge chip is going to have one or more power supplies.
ti,drv8873-q1 would need dvdd-supply and vm-supply properties for the DVDD and
VM pins.

Many have inputs for disabling the chip, e.g. for power management. And some
have outputs to indicate faults.

The TI DRV8873 in particular has an nSLEEP, DISABLE, nOL, SR, MODE and nITRIP
inputs in addition to the IN1 and IN2 that would be connected to the PWMs.
So we would have properties for all of these to either say how the pin is
hardwired or a *-gpios property if it needs to be controlled by the driver.

The fault output would generally be an interrupts property.

The IPROPI1 and IPROPI2 output pins look like they would be connected to an
ADC, so it would make sense to have an io-channels property show that
connection.

This chip also has a SPI interface. So it needs to have the possibility of
being a SPI peripheral node.

And even if the Linux driver doesn't implement all of these features, we still
want the DT bindings to be as complete as possible, so we shouldn't be leaving
these out, at least for the trivial ones where there is an obvious correct
binding (which I think is the case for most of what I suggested).

> +
> +  pwms:
> +    maxItems: 2
> +
> +  pwm-names:
> +    maxItems: 2

Specifying what is wired up to the IN pins can be tricky. Using two PWMs is
the most sensible. But I've also seen devices where there was a single PWM
gated by two gpios. And for very basic H-bridges, there might not even be a
PWM. Just gpios to turn it on or off.

> +
> +  motion,pwm-inverted:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      If present, this flag indicates that the PWM signal should be inverted.
> +      The duty-cycle will be scaled from 100% down to 0% instead 0% to 100%.
> +
> +required:
> +  - compatible
> +  - pwms
> +
> +allOf:
> +  - $ref: /schemas/motion/common.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    // This example shows how to use the TI DRV8873 or similar motor controllers
> +    // with this driver
> +    motion-simple-pwm0 {
> +      compatible = "motion-simple-pwm";
> +      pwms = <&hpdcm0_pwm 0 50000 0>,
> +             <&hpdcm0_pwm 1 50000 0>;
> +      pwm-names = "left", "right";
> +      motion,pwm-inverted;


> +      motion,speed-conv-mul = <3600>;
> +      motion,speed-conv-div = <100000>;
> +      motion,acceleration-conv-mul = <3600>;
> +      motion,acceleration-conv-div = <100000>;

This H-bridge controller doesn't have any kind of speed sensors that I can see
so these properties don't make sense to me. The H-bridge can control the voltage
sent to the motor, but there are more variables involved to convert voltage to
speed. It isn't a constant.

> +    };



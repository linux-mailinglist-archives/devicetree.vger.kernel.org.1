Return-Path: <devicetree+bounces-239569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EA841C66939
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 00:44:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C03344EB159
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 23:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116EF3254A2;
	Mon, 17 Nov 2025 23:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NID8ih42"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA1832143D
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763422932; cv=none; b=C85HiOne5SazRlKZwEtALwcKd1O7FhPP3wEC93/mWOF9Y7fTudhe/YFgFschy3nbxDmE2iCxfQrd9KXR9Wq2SEnLEIh19cbsW2HWtoezbVl78VmtcY0D8bYQzKQMMRSmn8WGTRe4k05kNNS0+doQmdU8iDL5uV5J26XfNwfnCzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763422932; c=relaxed/simple;
	bh=C1CiXSMjr1ONnvgc8yNUoBYht2QInAElu2Jdtm3VvzE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Lf0yk+8EahJ2bh12qseYAbyByo7BrelChtkDnkdVfjTWu+rtpcuWeIitucTKu2ViUBO0TxTFxsnlw90aJLlPgDvqubBgJFvUIsS4S5wLNC+fXOffrZBp+l7VIlPs7M4KLu2rIOhArNrTQAORQcEnKyCg9xwsrGfn8hVsp71ZJ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NID8ih42; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-30cce892b7dso2507003fac.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 15:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763422927; x=1764027727; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tg/jgZzk5xK45ykGPR1yuuEKOuJiixva9naVUDB32NY=;
        b=NID8ih42Js4E6N3Yy7hnGf2vR9sitn8A5fW+/cOaYdlhq1oWYsuq9PeeqyMzDhS6af
         2j1ZTp8ww0YLM5aOd8g9x8lC4lUsquGJVDZ35e8fWCzRcrhr8cx8AWtWUCwMRQkJ9rDG
         QVfX1DIy9XB05VkSIxMKZlAWHw7Wy7yaLUNIDuiBnL6cf3Ef57ONvqGGbCzrF2YeYD5h
         7ws2kIfX7LlRX3rAzJritg6+f9TrRV68jSXKvtX9Yio3SRWprLgGvyrdP/+FlIUKvh9t
         cQdmVxdZL01xQffud9F+X0Ic1vUd6WwAaM2lgxIMg2EiKWMYnY/QsaCOtVTISw7mE7Vb
         RhoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763422927; x=1764027727;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tg/jgZzk5xK45ykGPR1yuuEKOuJiixva9naVUDB32NY=;
        b=FsYRzMh9W0Bvm1UIC9HSwk4vqgtYOL1eoR7RbprjQeu/t0WY4koJUyvkWhqhWPJhbR
         sqIOOhwrtC2IB3Te8IXP4R/pU3yu5p47Jg8pkwXSGsrYj6siJGbiyfHLuHKug5L7KWRh
         yeqeRsDqv86gVBZOzNoyb+cW3oSVsYHvYmmmVhn+z7H7Iz8pPjkIw7RHrAEyOWE8Xp73
         KrlLeH8QxLwg4qU+NTc3pLEUDbahqIScMlZTVfc4GKZvvumvTpO1shPuxjrRD0FAi0ST
         k/uWokYTYdz6MNY/u68SCd7RYwWokpd0Bwg9DfOieIqUtwS1Mwq7m436ZMEuh33vAgkN
         1mvg==
X-Forwarded-Encrypted: i=1; AJvYcCVMMI7OsNsQpcUY6JxV82uUU5LiY9e9oHHT8AMGxfE6l7xZ8WhwGuy95sA7Zlt3aBDpgE/OI+g294R3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/QzQODcf93JAND3i/fVjAceUgDwYPuUUvwvokYIuCtZS5JOt/
	rEbK0q/2rZDbQjgFE41eVxLX4i3USSbZp4E0R5QlZQ27vGA/BMN2LsQAQVSmECL0BRI=
X-Gm-Gg: ASbGncsKccrT/dy2l49byHFcT0fdT6qkpEBM0cCQxA4GZhuzuR11If4SswvxmRPPcFn
	eIQ9jYTBSmfSvP1DrET9m4jPFFw15kTn/oEqKAHuOMB1+yVW+Fz/bOp8MGgBzEDjunBtCmHUXaN
	DijPrAUI8PHa5A2fsaqBZ0QGPG4pNCovYF0J2V8iRSPmV/kt4mE3IZzg/LJc430CArU8SoEH8R4
	Kw19eapvUCn3pXcNOnaNtYRr6tY9yi+3+BeF1rHe9iEBq3sLl+ZUILu1ETr7AR65j817bSdy9Ky
	jkDko1zNZkALGUewSHEmpwUA9Wl80DWPIzZMtoEt8nlfGgHo5mXluriGMIJuso1wE9pL5HxrhCg
	FvTzYUpPUxAeCEBLYMR9+VQj67i6wmE/r3XF1dCspocsVcGcJ6iSDtwthnTL3pRi/6ydfer209Y
	/x3jh13hFC7PPZP2mT5oDnaxLh5Gmebre4OoC1THXwagCGONPXRw==
X-Google-Smtp-Source: AGHT+IF9rsbj2v0migbUw/0QbebZ9MvOA2t7vDRnUBel/lU5OuvNJRbNK6ZCXzUCdjPOQXjEWKGxuw==
X-Received: by 2002:a05:6808:4f6b:b0:450:bb4e:8395 with SMTP id 5614622812f47-450bb4e89e9mr3417672b6e.53.1763422927119;
        Mon, 17 Nov 2025 15:42:07 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:8e86:179b:44b8:cc2b? ([2600:8803:e7e4:500:8e86:179b:44b8:cc2b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a3bd060sm5970941a34.24.2025.11.17.15.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 15:42:05 -0800 (PST)
Message-ID: <bf45b26e-2cd1-464f-a180-46120b4b0473@baylibre.com>
Date: Mon, 17 Nov 2025 17:42:04 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: iio: amplifiers: add adl8113
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251114115725.5660-1-antoniu.miclaus@analog.com>
 <20251114115725.5660-2-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251114115725.5660-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/14/25 5:57 AM, Antoniu Miclaus wrote:
> Add devicetree bindings for adl8113.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> 
> Changes in v3:
> - Remove extra blank line from YAML file for cleaner formatting
> ---
>  .../bindings/iio/amplifiers/adi,adl8113.yaml  | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/amplifiers/adi,adl8113.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/amplifiers/adi,adl8113.yaml b/Documentation/devicetree/bindings/iio/amplifiers/adi,adl8113.yaml
> new file mode 100644
> index 000000000000..0ad83a01ee37
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/amplifiers/adi,adl8113.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/amplifiers/adi,adl8113.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices ADL8113 Low Noise Amplifier with integrated bypass switches
> +
> +maintainers:
> +  - Antoniu Miclaus <antoniu.miclaus@analog.com>
> +
> +description: |
> +  The ADL8113 is a 10MHz to 12GHz Low Noise Amplifier with integrated bypass
> +  switches controlled by two GPIO pins (VA and VB). The device supports four
> +  operation modes:
> +    - Internal Amplifier: VA=0, VB=0 - Signal passes through the internal LNA
> +    - Internal Bypass: VA=1, VB=1 - Signal bypasses through internal path
> +    - External Bypass A: VA=0, VB=1 - Signal routes from RFIN to OUT_A and from IN_A to RFOUT
> +    - External Bypass B: VA=1, VB=0 - Signal routes from RFIN to OUT_B and from IN_B to RFOUT
> +
> +    https://www.analog.com/en/products/adl8113.html
> +
> +properties:
> +  compatible:
> +    const: adi,adl8113
> +
> +  vdd1-supply: true
> +
> +  vdd2-supply: true
> +
> +  vss2-supply: true
> +
> +  va-gpios:
> +    description:
> +      GPIO connected to the VA control pin. Must be specified as GPIO_ACTIVE_HIGH.
> +    maxItems: 1
> +
> +  vb-gpios:
> +    description:
> +      GPIO connected to the VB control pin. Must be specified as GPIO_ACTIVE_HIGH.
> +    maxItems: 1


Could make things simpler to make a single property and use it as
a gpio array. I would call it switch-gpios.

> +
> +required:
> +  - compatible
> +  - va-gpios
> +  - vb-gpios
> +  - vdd1-supply
> +  - vdd2-supply
> +  - vss2-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    amplifier {
> +        compatible = "adi,adl8113";
> +        va-gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
> +        vb-gpios = <&gpio 23 GPIO_ACTIVE_HIGH>;

Seems like we would also want some binding to describe what is
connected to each of the bypasses. Maybe io-channels that link
to other amplifier channels?

> +        vdd1-supply = <&vdd1_5v>;
> +        vdd2-supply = <&vdd2_3v3>;
> +        vss2-supply = <&vss2_neg>;
> +    };
> +...



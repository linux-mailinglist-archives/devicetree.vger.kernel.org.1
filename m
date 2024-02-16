Return-Path: <devicetree+bounces-42413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 091AA857753
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 09:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CE241C20E12
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1AF81D541;
	Fri, 16 Feb 2024 08:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wHjEQmLI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD37C1CFA7
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 08:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708070635; cv=none; b=SSdFjn5T5wKzBUPzVyuuPlpqGFlr3+y8mLhhD+hbDw2KNNogdUWCpiLasSYKf6VLhX5k5D8pm4H8B91+sXgN21EB1ifjKc38W7nUAtYy5OK+TtHmdY9/zcPmagS8r3cUdaM3ZA4GuckTjMDh/P0XvTEMOP1K+rZaVO1HwMZVTJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708070635; c=relaxed/simple;
	bh=KZDWUMc28HnXVWIA7gKDerC2qjrNOVEGrEGrYofsrjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sXC+m26knkicc8jQmKvY75lhL7Q2sUp0DIXsazTEixfRN81AuNwl6mzzlSn0mPKoKWWHERZfqNTaWHeBUe1/Qcq4VdVcTl1wlnm9VOAX9D3EFFl1+8GcOSzyb8Th/15JLVCRK3yIjwmg8px3+QpjDutfYrBOz9kaeywfZ3QfQ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wHjEQmLI; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a2a17f3217aso218320666b.2
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 00:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708070631; x=1708675431; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9XlviNGlfye5b5FhOzomMB3qJJr+2c27MjUoq+iKVh0=;
        b=wHjEQmLIQWQYHJaiYbihA9PQMsu5iX31gm1Pdv28i6bRPLW6PmfCjb81NX/09H76Z6
         WC4L0wbmN74VZBQLp/WPSN3d0qeg6hcRPRkA8eDYLS6XIB9SVcyyexbNjg3yzZmgEoh+
         1jqHhAhWYv2CQtYJ+vQbWmR+ZwYx1PCf/UxfNwFBH/0JAd7OoaYouGwPtY8ZP55Uf3NJ
         XQUi/XgZvEUw/OJatHat28GnFjrzqQv9u+9AtdcfpwwYcZ6iHJWJv/dFsCcv8JvaytXE
         67Cp66xKlx5elHATd0JitcSEhyXDDk0FidJ5GZ+CjJxqb3gcjoP8LHXScwL8daFs/ssm
         NqBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708070631; x=1708675431;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9XlviNGlfye5b5FhOzomMB3qJJr+2c27MjUoq+iKVh0=;
        b=DuQcx1jlardRX6Lm2goIYTY5+awzG6RpIIgtUDK3GB8IrA/ypTTwYQrQjXML9nI3GB
         q3ELM6I/jAbRd46Ls53b8kBJLqr+xva1t7RS0bnrKtzXR+wy/HB37U8vhGnFR0Uj0Uo5
         h1yheONjpAVST3/gK+hm193a3Gv/KBtIs9OZZ4WYDGsgqBNfVewtyMctnLA47FTTW/ay
         XrQai0unQccpX2p63CklYEP5KlyYBIXGAspt02VXsb8lX7N1U7Ut3x6/iLTUXipmAYDU
         F9ZmsyvdRIOdSZAtUIfHFBpGFia1yOg23pxjG8KSaQC3EI8Z9mmNLNL0Zy8hlKKAFtN9
         uVug==
X-Forwarded-Encrypted: i=1; AJvYcCUsQZiBZPHdKJTq8Hc2+TJT5kLX+/p87CL3bwvYZOR+Oz4H9ILj4pAk/KAl8S2QLwJOKk9YO65VUJUQAuWMx24uYfnd2yxxbGEzMQ==
X-Gm-Message-State: AOJu0YweZDQekIE022Ti/ikhxrP3avwvyO6x1AgI59fnWaNwZPLNNI4I
	+WcGnpwEl7Zrizo9WzqaWqFiNugx9IIaGDUfos/xUey+oeSLhyz4dZiZ7AhRATpunoqt9ZjUkkf
	o
X-Google-Smtp-Source: AGHT+IHL67gbeKJqLOFsYa/DD7gGMYcf+0g6s5TM3rNXMVSE7CtEMQzvR9pTy+FT2ImA1HMJc7OsiA==
X-Received: by 2002:a17:906:e255:b0:a3d:605b:f54 with SMTP id gq21-20020a170906e25500b00a3d605b0f54mr3087106ejb.58.1708070630925;
        Fri, 16 Feb 2024 00:03:50 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id vh11-20020a170907d38b00b00a3cbbaf5981sm1303918ejc.51.2024.02.16.00.03.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Feb 2024 00:03:50 -0800 (PST)
Message-ID: <55d41858-b567-4e23-8d84-3af81b52d018@linaro.org>
Date: Fri, 16 Feb 2024 09:03:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] media: dt-bindings: media: Add bindings for IMX283
Content-Language: en-US
To: Umang Jain <umang.jain@ideasonboard.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 willl will <will@willwhang.com>, Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20240215204436.9194-1-umang.jain@ideasonboard.com>
 <20240215204436.9194-2-umang.jain@ideasonboard.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240215204436.9194-2-umang.jain@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/02/2024 21:44, Umang Jain wrote:
> - Add dt-bindings documentation for Sony IMX283 sensor driver
> - Add MAINTAINERS entry for Sony IMX283 binding documentation
> 
> Signed-off-by: Umang Jain <umang.jain@ideasonboard.com>
> ---

Due to lack of testing limited review.

>  .../bindings/media/i2c/sony,imx283.yaml       | 100 ++++++++++++++++++
>  MAINTAINERS                                   |   8 ++
>  2 files changed, 108 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx283.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx283.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx283.yaml
> new file mode 100644
> index 000000000000..3cf46429b282
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx283.yaml
> @@ -0,0 +1,100 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2024 Ideas on Board Oy
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/sony,imx283.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sony IMX283 Sensor
> +
> +maintainers:
> +  - Kieran Bingham <kieran.bingham@ideasonboard.com>
> +  - Umang Jain <umang.jain@ideasonboard.com>
> +
> +description:
> +  IMX283 sensor is a Sony CMOS active pixel digital image sensor with an active
> +  array size of 5472H x 3648V. It is programmable through I2C interface. The
> +  I2C client address is fixed to 0x1a as per sensor data sheet. Image data is
> +  sent through MIPI CSI-2.
> +
> +properties:
> +  compatible:
> +    const: sony,imx283

Blank line

> +  reg:
> +    description: I2C address

Drop description

> +    maxItems: 1
> +
> +  assigned-clocks: true
> +  assigned-clock-parents: true
> +  assigned-clock-rates: true

Drop all three, not really needed, just mention them in example.

> +
> +  clocks:
> +    description: Clock frequency from 6 to 24 MHz.
> +    maxItems: 1
> +
> +  vana-supply:
> +    description: Analog power supply (2.9V)
> +
> +  vdig-supply:
> +    description: Interface power supply (1.8V)
> +
> +  vddl-supply:
> +    description: Digital power supply (1.2V)
> +
> +  port:
> +    additionalProperties: false
> +    $ref: /schemas/graph.yaml#/$defs/port-base

Please reverse above lines, first ref, then additionalprops.

> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false

Ditto

> +
> +        properties:
> +          data-lanes: true

Provide constraints - which lanes/how many.

> +          link-frequencies: true
> +
> +        required:
> +          - data-lanes
> +          - link-frequencies
> +
> +    required:
> +      - endpoint
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - port
> +
> +additionalProperties: false
> +

Best regards,
Krzysztof



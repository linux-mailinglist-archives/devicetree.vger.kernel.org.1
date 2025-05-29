Return-Path: <devicetree+bounces-181628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BCDAC81FC
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 20:13:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32A781C033D8
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 18:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0278E22F75E;
	Thu, 29 May 2025 18:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qtn+t/7D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A250413AC1
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 18:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748542422; cv=none; b=C9jQ/Dvj9BrHv4glamghTAnmcAsEYdKUFcgUrPQfCF3y6m/pgvou6CPSHXbdiOaFbsXMqmjUC56XS6Uyx+I7Gz6juGLVlHWAHZ07lANPjxNyjQVnnQ6DizHWKmGFwdA8GZa64Vvls1MMbHkJ455olN7IyxaGZWKQpI/snqimKKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748542422; c=relaxed/simple;
	bh=MiWWjUV+Ur6QMNowl1v2KJhrXiPtPWdJtLDj4AYK0Q8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Aq8WTOoZ7YVzgf6M//DHJNwrxsmD/E8pj/mNIPMIOojT+LDrGFyOxQYH4IzZYt8fC6/5lFKEi6GNYu2ZLGXLtgAr9BnzF7R/1T+gf/xaFr/jygO2lIOYs7pU2ltfiRGb4jPfwS9qOWGfacg0DZGPypJKrVUIivbcqLlSY5vIWZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qtn+t/7D; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3fcfc85f1f5so353126b6e.2
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 11:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748542419; x=1749147219; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=043Jp5EcRDA5R8SzLQJWVLO4suKAlppL59pZhcna+98=;
        b=qtn+t/7DRyewkXu77fGTub0PNlw7CoeWI0RKsL7sRLAUMgT1a8mZ8JC5Y5l386q+qS
         vQbF6NgU57KwcO7mYNmwwKHplxTz3SlejeR11KjOttsbdF4IskgbXMF55Ft2hfmzRe3u
         tKcQomdJR9pDJJruVPMpNoWnwFpsT/PtJa5hkJyJgplR2mTsUIumE2NUy4KKhTDUHOMO
         uu0wwDgupeWkIY/BG6LLIZP1hQrWtQniZzNpxZnn1LhSAuu48QDk21Vl1YoOO1GZZ5IP
         kyVNeb6YHxxs0Kc8+KIs+jX7711ctejsCg0PrrTDDumNV/sqPm70TwUQwF2TkASBRgZc
         zi4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748542419; x=1749147219;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=043Jp5EcRDA5R8SzLQJWVLO4suKAlppL59pZhcna+98=;
        b=VyXsO31NzVa8m7Mr9e4/LV75yBkIa3KhHtfE0VBhp9owqUDNN7YR511F/B095UP1xT
         EeaB1qUn6LFTDoIoL+FS6zGc6UK1TOCBGtR8h0uVHHGq/tVjsUBMGDZYBGla1htay1bO
         Lwn83kE+ZkMzaTs86z1wn0kjXSAfYgHdPdC0U3X1twR9DpwHq2w0oJHmu7HuHTby/m6B
         ahy9Q3E/BzggYn+m/521utn0uZKwtbdrKzsMYgVjOzrqeEhNJbTrA6B2qYUEcG/ynbeE
         FL1s7ZvpKT2Gmjq3HrbKGpr3KKh6aVR1K77EJLRTcBY/eXbm8Z5vaSsYJHBcVJ7Cclgl
         8rSA==
X-Forwarded-Encrypted: i=1; AJvYcCVGrayTrHnGVK6/50SYQGOB+BvHxYrGS+4cqIO6z3PpwH7P+xYChsDHxoyoHsx8SEHOwYMvNgiKGbL9@vger.kernel.org
X-Gm-Message-State: AOJu0YxDCSemEvNyie9SDuxXrqJP6Y6MQ2cJUhx/3uQrHsucEcUXU7oq
	u/w227DO2duTbTu7wT0n26ytLC38bVedUon1AiIl8i6xCnwan6i5KFJ5SO6mBaKI+3o=
X-Gm-Gg: ASbGncvBJZ1DyjsSHDF0qg7Odi7L5kF2IBW9v49RwHyWTkRWa5HVCAAvY53uc84sqzF
	D/lHfnfV+obzM8kcTodqOhY9ROeri6LBYsQahJvFMWQyagcf7Zd2pVD3Bk4RykjkDrJ0M5x88au
	xeFxrO5ZLiVKdfTI92sP59AP0IAvveeSOWDx3wX5Y5TVGmMljNhZrmt+4K8vTO/nm/n3PWFpunq
	V+YcB6cjFXtEwga3uDRuJrmxyfe2ZYncpTYw0MjS/nFySunIVgZzzyPyXnDIGUF1mZ7RgrMxepe
	GA05K0BbNli7ynKdRAgkETnG2M233sQ/pn3uKvxDPUXcjSSiQk/56do9+MKD5oUFaK64V0PZTl1
	Dabso2+WH/Ak7ySKnqHDWn0TVCQ==
X-Google-Smtp-Source: AGHT+IF9qDNiI68tD25d2AY6iheECh5dKkb5WqNqrJ0p/gfKm4n+RKZ+xk94cJn/b90epZzkGSUPjg==
X-Received: by 2002:a05:6808:6b8d:b0:406:6fd3:ff14 with SMTP id 5614622812f47-406797d6954mr287702b6e.25.1748542419569;
        Thu, 29 May 2025 11:13:39 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:928b:5d5c:6cd9:1a4? ([2600:8803:e7e4:1d00:928b:5d5c:6cd9:1a4])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40678c1eb17sm81589b6e.18.2025.05.29.11.13.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 May 2025 11:13:39 -0700 (PDT)
Message-ID: <0f68e3f9-cba5-4df3-8e56-2cccbccf35ce@baylibre.com>
Date: Thu, 29 May 2025 13:13:38 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: temperature: add support for
 MCP998X
To: victor.duicu@microchip.com, jic23@kernel.org, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: marius.cristea@microchip.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250529093628.15042-1-victor.duicu@microchip.com>
 <20250529093628.15042-2-victor.duicu@microchip.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250529093628.15042-2-victor.duicu@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/29/25 4:36 AM, victor.duicu@microchip.com wrote:
> From: Victor Duicu <victor.duicu@microchip.com>
> 
> This is the devicetree schema for Microchip MCP998X/33 and
> MCP998XD/33D Multichannel Automotive Temperature Monitor Family.
> 
> Signed-off-by: Victor Duicu <victor.duicu@microchip.com>
> ---
>  .../iio/temperature/microchip,mcp9982.yaml    | 174 ++++++++++++++++++
>  1 file changed, 174 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/temperature/microchip,mcp9982.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9982.yaml b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9982.yaml
> new file mode 100644
> index 000000000000..249470c8953b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9982.yaml
> @@ -0,0 +1,174 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/temperature/microchip,mcp9982.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip MCP998X/33 and MCP998XD/33D Multichannel Automotive
> +       Temperature Monitor Family
> +
> +maintainers:
> +  - Victor Duicu <victor.duicu@microchip.com>
> +
> +description: |
> +  The MCP998X/33 and MCP998XD/33D family is a high-accuracy 2-wire multichannel
> +  automotive temperature monitor.
> +  The datasheet can be found here:
> +    https://ww1.microchip.com/downloads/aemDocuments/documents/MSLD/ProductDocuments/DataSheets/MCP998X-Family-Data-Sheet-DS20006827.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - microchip,mcp9933
> +      - microchip,mcp9933d
> +      - microchip,mcp9982
> +      - microchip,mcp9982d
> +      - microchip,mcp9983
> +      - microchip,mcp9983d
> +      - microchip,mcp9984
> +      - microchip,mcp9984d
> +      - microchip,mcp9985
> +      - microchip,mcp9985d
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 2
> +
> +  interrupt-names:
> +    description:
> +      alert1 indicates a HIGH or LOW limit was exceeded.
> +      alert2 indicates a THERM limit was exceeded.

I think we need minItems: 1 here.

> +    items:
> +      - const: alert1
> +      - const: alert2

Typically, interrupts are named after the pin they are wired to, not
the signal. This is especially true when a single pin can be configured
for different signals as is the case here.

There is a /ALERT//THERM pin on all chips and a /THERM//ADDR pin on some
chips.

So I would expect the names to match that:

    items:
      - const: alert-therm
      - const: therm-addr

And then extra descriptions probably aren't needed.

If we want to be extra careful, we could also add an -if: below to set
maxItems: 1 for interrupts and interrupt-names on chips that only have
the one pin.

And I assume that the /SYS_SHDN pin would never be wired up as an interrupt?

> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  microchip,apdd-state:
> +    description:
> +      Enable anti-parallel diode mode operation.
> +      MCP9984/84D/85/85D and MCP9933/33D support reading two external diodes
> +      in anti-parallel connection on the same set of pins.
> +      Omit this tag to disable anti-parallel diode mode.
> +    type: boolean
> +
> +  microchip,recd12:
> +    description:
> +      Enable resistance error correction for external channels 1 and 2.
> +      Omit this tag to disable REC for channels 1 and 2.
> +    type: boolean
> +
> +  microchip,recd34:
> +    description:
> +      Enable resistance error correction for external channels 3 and 4.
> +      Omit this tag to disable REC for channels 3 and 4.
> +    type: boolean
> +
> +  label:
> +    description: Unique name to identify which device this is.
> +
> +  vdd-supply: true
> +
> +patternProperties:
> +  "^channel@[1-4]$":
> +    description:
> +      Represents the external temperature channels to which
> +      a remote diode is connected.
> +    type: object
> +
> +    properties:
> +      reg:
> +        items:
> +          minimum: 1
> +          maximum: 4
> +
> +      microchip,ideality-factor:
> +        description:
> +          Each channel has an ideality factor.
> +          Beta compensation and resistance error correction automatically
> +          correct for most ideality errors. So ideality factor does not need
> +          to be adjusted in general.
> +          Omit this tag in order to set the default value.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        default: 18
> +
> +      label:
> +        description: Unique name to identify which channel this is.
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - microchip,mcp9982
> +              - microchip,mcp9982d
> +              - microchip,mcp9983
> +              - microchip,mcp9983d
> +    then:
> +      properties:
> +        microchip,apdd-state: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - microchip,mcp9982
> +              - microchip,mcp9982d
> +              - microchip,mcp9933
> +              - microchip,mcp9933d
> +    then:
> +      properties:
> +        microchip,recd34: false
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        temperature-sensor@4c {
> +            compatible = "microchip,mcp9985";
> +            reg = <0x4c>;
> +
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            label = "temperature-sensor";

This is the same as the node name, so probably not the best
example of a label.

> +
> +            microchip,apdd-state;
> +            microchip,recd12;
> +            microchip,recd34;
> +            vdd-supply = <&vdd>;
> +
> +            channel@1 {
> +                reg = <0x1>;

Why 0x here?

> +                label = "CPU Temperature";
> +            };
> +
> +            channel@2 {
> +                reg = <0x2>;
> +                label = "GPU Temperature";
> +            };
> +        };
> +    };
> +
> +...



Return-Path: <devicetree+bounces-220249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 96686B936A6
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 23:59:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 48F024E1F3F
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 21:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7C63168F6;
	Mon, 22 Sep 2025 21:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PTyUHbk0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998DD31194D
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 21:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758578363; cv=none; b=bazOIjSUuenQGy2zAvEuUPTBBuRnsELV/GN9MJ+Kv6997c0V7WKUn459YQWblcGVDvLIt4DYe7ano6TVwzYb8cHSO+pbTWujqC8qYoU2m86i3cce/nJ/qnz4gMk74LK/ghKa5O2//591p+wnwj4vSP3AfQzDKBvxi6f5XYcaxxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758578363; c=relaxed/simple;
	bh=lPFkSA4urPrryk0oH1I0ODDGcpZpW1YuO+eJG87x5/U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mgXFYM3TF9b8DcVnzDTxOYYny82LqHVkg/d/tmlxqp98lOxJ0NTfD4g6YZDWCLSwdBMONvAWqwDcbsTvrSGg6ulijLcpLG/oIc5arElKb7Q49Lpkl7nhOgbVVq20LuFUXwyO+unTCl+8oUH/8RwvZXbhItckGlsGUCo0RoqVhUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PTyUHbk0; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7827025e548so861499a34.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 14:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758578358; x=1759183158; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yQFriecXyyC8g9C9fp+Jbl0vuN1bPs3xTfIEODghZ8c=;
        b=PTyUHbk0hnTFMTiS5xqcPzXH7ZViHucV3IImNPaqo0atHVmPB0pV1tw4Ghr/ZOn54K
         gwaUKO9GMYTaZ32/Cws3DzVOLOf5FSZ9XWEw9TEHvB+L/BBJt4rtxEDPqAxMHFAEF/QH
         Fg7oZ6Zt7nTpnjE3A/j0SSvpZD3cs/LDaKwSEgEsyYGNtHXP3bxMC0CJHl4Rf3ajOlmr
         D+eSm95//F0az9tQEuHf4WIK1rP0VtRde4f4JYv8JwPKU5A7EuwTlO0WOzJJppjQ4oYs
         +Yk9ElvqYZYoXq7sng7TczN9+/JD6DJyCRNMyzk/b2+dVXpanIrwl6Nax6f3CgpldaQM
         6ZsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758578358; x=1759183158;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yQFriecXyyC8g9C9fp+Jbl0vuN1bPs3xTfIEODghZ8c=;
        b=nc1VVDcs7LpDsWsj7/qScnaDPzCLwEK0aGmbh2Q/0CNwGHsJTg03IkTQ4o3XFhB9Bs
         gUcA/v+6FtcBXjP2VFt9xlM526HegwX2kYlMW39RnZULEhy+I2N2czd+BCFm2/hoNLoR
         w/ODZDXH3oBNGZmsoKoi722y6G+UwHbFFl7PNgq+Ce4SCiGqy55DL5oSNPFfuuqOgv7f
         lLYcvkSssI3kfM8YSijH5HaJWFKyB0PPoZJwCD4YlKjVGHM6QKoVDi7272Thov0FvgZ/
         R56+J6+Qb0L3ZM8DmmpWue7o5sMKKUt77m9mnl6WE8j0bf57Uqk0B6V94KaUI7UdgJRn
         ngFw==
X-Forwarded-Encrypted: i=1; AJvYcCUrVf3ogAm0XErw1cLCfe7Fa7uYBIiYsjFX7bnIyS2DB43vJhTd/z1//KJcr1sZRT+EjCO9mdHZ+4Hb@vger.kernel.org
X-Gm-Message-State: AOJu0YwQb2pRcL/G6mHdQJRxzn6whCR0ReAKc1WjPzQfl9yx1V6ZqqEA
	2Es4U+iRhdSi9/UIo+CpxXK3oN31WQ9AaTb6y5eT2S2hWJQ7rYVtn/DkajgD/04ScSY=
X-Gm-Gg: ASbGncuRGSgQ/dbeAhzoHnTTfbk34uGAjvstN0LQKjfOrO2htQW60w6xhJwCLfJniLg
	bPnYqmhZ0wOl7NH/tLjBOcqH+FAE1IB+69JrUXSkLF1ECY1C+qoKstbhbnGqniQBejcfU37oxfC
	ehjzp3FKoMjwB3ss6l7yShpdi9Gfe/2aoyKKj9YkJ8KS7mMlVbpr2h/qGB7BYv7yMRaFhciSq5q
	blbQ6lDP3B+tCvvfXSbt+HsKnB+hAAxyQx9kzxnsil+Y3uJWzxckJ9JiHgxjzl7Fh0od/QwDPtg
	9tgFdwYDjOPkXt7J6nkxPeQPUkvf3VAk5HMJjgFFnAYV6mlsj6lH4+k1eV8e7u8FIbiDssTm/PO
	B8DTZcEIzTEibQwtGFBrbYvZyfjCJApObnSWd8IJpmuEZlNF1py4GSIDdV6NpUEyoJpvoTkKHS7
	0=
X-Google-Smtp-Source: AGHT+IF4Zg64S4aMZbd52FqAlHa6Y4jsFMYO1DZaZDxK8iMMiuU2UfjpCvAUqb8C14Wa5++Dt4DliQ==
X-Received: by 2002:a05:6830:3784:b0:749:fac2:92fe with SMTP id 46e09a7af769-7912f920a14mr216371a34.0.1758578358464;
        Mon, 22 Sep 2025 14:59:18 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:505f:96cd:1359:fff4? ([2600:8803:e7e4:1d00:505f:96cd:1359:fff4])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-625dbab5cf1sm4209952eaf.22.2025.09.22.14.59.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 14:59:18 -0700 (PDT)
Message-ID: <7836f862-5320-4a81-b15b-4ada08e78077@baylibre.com>
Date: Mon, 22 Sep 2025 16:59:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: dac: adding support for Microchip
 MCP47FEB02
To: Ariana Lazar <ariana.lazar@microchip.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250922-mcp47feb02-v1-0-06cb4acaa347@microchip.com>
 <20250922-mcp47feb02-v1-1-06cb4acaa347@microchip.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250922-mcp47feb02-v1-1-06cb4acaa347@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/22/25 6:30 AM, Ariana Lazar wrote:
> This is the device tree schema for iio driver for Microchip
> MCP47F(E/V)B(0/1/2)1, MCP47F(E/V)B(0/1/2)2, MCP47F(E/V)B(0/1/2)4 and
> MCP47F(E/V)B(0/1/2)8 series of buffered voltage output Digital-to-Analog
> Converters with nonvolatile or volatile memory and an I2C Interface.
> 
> The families support up to 8 output channels.
> 
> The devices can be 8-bit, 10-bit and 12-bit.
> 
> Signed-off-by: Ariana Lazar <ariana.lazar@microchip.com>
> ---
>  .../bindings/iio/dac/microchip,mcp47feb02.yaml     | 305 +++++++++++++++++++++
>  MAINTAINERS                                        |   6 +
>  2 files changed, 311 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml b/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..d05ddafa37540bc1f6b6ce65a466b95913925c10
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml
> @@ -0,0 +1,305 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/dac/microchip,mcp47feb02.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip MCP47F(E/V)B(0/1/2)(1/2/4/8) DAC with I2C Interface Families
> +
> +maintainers:
> +  - Ariana Lazar <ariana.lazar@microchip.com>
> +
> +description: |
> +  Datasheet for MCP47FEB01, MCP47FEB11, MCP47FEB21, MCP47FEB02, MCP47FEB12,
> +  MCP47FEB22 can be found here:
> +    https://ww1.microchip.com/downloads/aemDocuments/documents/OTH/ProductDocuments/DataSheets/20005375A.pdf
> +  Datasheet for MCP47FVBXX can be found here:
> +    https://ww1.microchip.com/downloads/aemDocuments/documents/OTH/ProductDocuments/DataSheets/20005405A.pdf
> +  Datasheet for MCP47FEB04, MCP47FEB14, MCP47FEB24, MCP47FEB08, MCP47FEB18,
> +  MCP47FEB28, MCP47FVB04, MCP47FVB14, MCP47FVB24, MCP47FVB08, MCP47FVB18,
> +  MCP47FVB28 can be found here:
> +    https://ww1.microchip.com/downloads/aemDocuments/documents/MSLD/ProductDocuments/DataSheets/MCP47FXBX48-Data-Sheet-DS200006368A.pdf
> +
> +  +------------+--------------+-------------+-------------+------------+
> +  | Device     |  Resolution  |   Channels  | Vref number | Memory     |
> +  |------------|--------------|-------------|-------------|------------|
> +  | MCP47FEB01 |     8-bit    |      1      |      1      |   EEPROM   |
> +  | MCP47FEB11 |    10-bit    |      1      |      1      |   EEPROM   |
> +  | MCP47FEB21 |    12-bit    |      1      |      1      |   EEPROM   |
> +  |------------|--------------|-------------|-------------|------------|
> +  | MCP47FEB02 |     8-bit    |      2      |      1      |   EEPROM   |
> +  | MCP47FEB12 |    10-bit    |      2      |      1      |   EEPROM   |
> +  | MCP47FEB22 |    12-bit    |      2      |      1      |   EEPROM   |
> +  |------------|--------------|-------------|-------------|------------|
> +  | MCP47FVB01 |     8-bit    |      1      |      1      |      RAM   |
> +  | MCP47FVB11 |    10-bit    |      1      |      1      |      RAM   |
> +  | MCP47FVB21 |    12-bit    |      1      |      1      |      RAM   |
> +  |------------|--------------|-------------|-------------|------------|
> +  | MCP47FVB02 |     8-bit    |      2      |      1      |      RAM   |
> +  | MCP47FVB12 |    10-bit    |      2      |      1      |      RAM   |
> +  | MCP47FVB22 |    12-bit    |      2      |      1      |      RAM   |
> +  |------------|--------------|-------------|-------------|------------|
> +  | MCP47FVB04 |     8-bit    |      4      |      2      |      RAM   |
> +  | MCP47FVB14 |    10-bit    |      4      |      2      |      RAM   |
> +  | MCP47FVB24 |    12-bit    |      4      |      2      |      RAM   |
> +  |------------|--------------|-------------|-------------|------------|
> +  | MCP47FVB08 |     8-bit    |      8      |      2      |      RAM   |
> +  | MCP47FVB18 |    10-bit    |      8      |      2      |      RAM   |
> +  | MCP47FVB28 |    12-bit    |      8      |      2      |      RAM   |
> +  |------------|--------------|-------------|-------------|------------|
> +  | MCP47FEB04 |     8-bit    |      4      |      2      |   EEPROM   |
> +  | MCP47FEB14 |    10-bit    |      4      |      2      |   EEPROM   |
> +  | MCP47FEB24 |    12-bit    |      4      |      2      |   EEPROM   |
> +  |------------|--------------|-------------|-------------|------------|
> +  | MCP47FEB08 |     8-bit    |      8      |      2      |   EEPROM   |
> +  | MCP47FEB18 |    10-bit    |      8      |      2      |   EEPROM   |
> +  | MCP47FEB28 |    12-bit    |      8      |      2      |   EEPROM   |
> +  +------------+--------------+-------------+-------------+------------+
> +
> +properties:
> +  compatible:
> +    enum:
> +      - microchip,mcp47feb01
> +      - microchip,mcp47feb11
> +      - microchip,mcp47feb21
> +      - microchip,mcp47feb02
> +      - microchip,mcp47feb12
> +      - microchip,mcp47feb22
> +      - microchip,mcp47fvb01
> +      - microchip,mcp47fvb11
> +      - microchip,mcp47fvb21
> +      - microchip,mcp47fvb02
> +      - microchip,mcp47fvb12
> +      - microchip,mcp47fvb22
> +      - microchip,mcp47fvb04
> +      - microchip,mcp47fvb14
> +      - microchip,mcp47fvb24
> +      - microchip,mcp47fvb08
> +      - microchip,mcp47fvb18
> +      - microchip,mcp47fvb28
> +      - microchip,mcp47feb04
> +      - microchip,mcp47feb14
> +      - microchip,mcp47feb24
> +      - microchip,mcp47feb08
> +      - microchip,mcp47feb18
> +      - microchip,mcp47feb28
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  vdd-supply:
> +    description: |

Don't need `|` unless formatting needs to be preserved, like for the table in
the description above or the bullet lists below.

> +      Provides power and it will be used as the reference voltage if vref-supply
> +      is not provided.
> +
> +  vref-supply:
> +    description: |
> +      Vref pin is used as a voltage reference when this supply is specified.
> +      Into the datasheet it could be found as a Vref0.
> +      If it does not exists the internal reference will be used.

It looks like there is also the possibility to use V_DD as the reference
voltage. Not sure the best way to handle that though.

> +      This will be used as a reference voltage for the following outputs:
> +        - for single-channel device: Vout0;
> +        - for dual-channel device: Vout0, Vout1;
> +        - for quad-channel device: Vout0, Vout2;
> +        - for octal-channel device: Vout0, Vout2, Vout6, Vout8;
> +
> +  vref1-supply:
> +    description: |
> +      Vref1 pin is used as a voltage reference when this supply is specified.
> +      If it does not exists the internal reference will be used.
> +      This will be used as a reference voltage for the following outputs:
> +        - for quad-channel device: Vout1, Vout3;
> +        - for octal-channel device: Vout1, Vout3, Vout5, Vout7;
> +
> +  lat-gpios:
> +    description: |
> +      LAT pin to be used as a hardware trigger to synchronously update the DAC
> +      channels and the pin is active Low. It could be also found as lat0 in
> +      datasheet.
> +    maxItems: 1
> +
> +  lat1-gpios:
> +    description: |
> +     LAT1 pin to be used as a hardware trigger to synchronously update the odd
> +     DAC channels on devices with 4 and 8 channels. The pin is active Low.
> +    maxItems: 1
> +
> +  microchip,vref-buffered:
> +    type: boolean
> +    description: |
> +      Enable buffering of the external Vref/Vref0 pin in cases where the
> +      external reference voltage does not have sufficient current capability in
> +      order not to drop it’s voltage when connected to the internal resistor
> +      ladder circuit.
> +
> +  microchip,vref1-buffered:
> +    type: boolean
> +    description: |
> +      Enable buffering of the external Vref1 pin in cases where the external
> +      reference voltage does not have sufficient current capability in order not
> +      to drop it’s voltage when connected to the internal resistor ladder
> +      circuit.
> +
> +  microchip,output-gain-2x:
> +    type: boolean
> +    description: |
> +
> +patternProperties:
> +  "^channel@[0-7]$":
> +    $ref: dac.yaml
> +    type: object
> +    description: Voltage output channel.
> +
> +    properties:
> +      reg:
> +        description: The channel number.
> +        minimum: 1
> +        maximum: 7
> +
> +      label:
> +        description: Unique name to identify which channel this is.
> +
> +    required:
> +      - reg
> +
> +    unevaluatedProperties: false
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
> +              - microchip,mcp47feb01
> +              - microchip,mcp47feb11
> +              - microchip,mcp47feb21
> +              - microchip,mcp47fvb01
> +              - microchip,mcp47fvb11
> +              - microchip,mcp47fvb21
> +    then:
> +      properties:
> +        lat-gpios: true
> +        lat1-gpios: false
> +        vref-supply: true
> +        vref1-supply: false
> +        microchip,vref-buffered: true

Everything is already true, so we can leave out all of those
lines. It make it hard to see what is actually being modified.

> +        microchip,vref1-buffered: false
> +      patternProperties:
> +       "^channel@[1]$":
> +        properties:
> +         reg:
> +          items:

No items: here.

> +            maximum: 1
> +        "^channel@[2-7]$": false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - microchip,mcp47feb02
> +              - microchip,mcp47feb12
> +              - microchip,mcp47feb22
> +              - microchip,mcp47fvb02
> +              - microchip,mcp47fvb12
> +              - microchip,mcp47fvb22
> +    then:
> +      properties:
> +        lat-gpios: true
> +        lat1-gpios: false
> +        vref-supply: true
> +        vref1-supply: false
> +        microchip,vref-buffered: true
> +        microchip,vref1-buffered: false
> +      patternProperties:
> +       "^channel@[1-2]$":
> +        properties:
> +         reg:
> +          items:
> +            maximum: 1

Isn't maximum 2 in this case?

> +        "^channel@[3-7]$": false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - microchip,mcp47fvb04
> +              - microchip,mcp47fvb14
> +              - microchip,mcp47fvb24
> +              - microchip,mcp47fvb08
> +              - microchip,mcp47fvb18
> +              - microchip,mcp47fvb28
> +              - microchip,mcp47feb04
> +              - microchip,mcp47feb14
> +              - microchip,mcp47feb24
> +              - microchip,mcp47feb08
> +              - microchip,mcp47feb18
> +              - microchip,mcp47feb28

Should the 8-channel chips be include here? This
limits the channel@ to 1-4, so that doesn't jive
with having 8 channels.

> +    then:
> +      properties:
> +        lat-gpios: true
> +        lat1-gpios: true
> +        vref-supply: true
> +        vref1-supply: true
> +        microchip,vref-buffered: true
> +        microchip,vref1-buffered: true
> +      patternProperties:
> +       "^channel@[1-4]$":
> +        properties:
> +         reg:
> +          items:
> +            maximum: 1

And 4 here?

> +       "^channel@[5-7]$": false
> +  - if:
> +      not:
> +        required:
> +          - vref-supply
> +    then:
> +      properties:
> +        microchip,vref-buffered: false
> +  - if:
> +      not:
> +        required:
> +          - vref1-supply
> +    then:
> +      properties:
> +        microchip,vref1-buffered: false
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        dac@0 {
> +          compatible = "microchip,mcp47feb02";
> +          reg = <0>;
> +          vdd-supply = <&vdac_vdd>;
> +          vref-supply = <&vref_reg>;
> +
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +          channel@0 {
> +            reg = <0>;
> +            label = "DAC_OUTPUT_0";

These aren't particularly useful labels. It gives
the same info as the register number.

> +          };
> +
> +          channel@1 {
> +            reg = <0x1>;
> +            label = "DAC_OUTPUT_1";
> +          };
> +      };
> +    };
> +...



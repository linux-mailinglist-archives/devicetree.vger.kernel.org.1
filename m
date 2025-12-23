Return-Path: <devicetree+bounces-249261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBA0CDA433
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 19:26:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D48930115CB
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 18:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F02852D0C85;
	Tue, 23 Dec 2025 18:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="S0G+kzVJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FDC6276038
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 18:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766514374; cv=none; b=Au/+5/ja3bMr/mUECWfwktuSlqvHMIVEtIChY+1zU+1A3ZXJX+rofwcWicbBJz3iKNcl/zVdOrEL7MdHmL0NthqZvkO2PKzTAHieByTCdufE7yx8GQ4yO5HtOGsvfWFgTfhG5alVSguY7+ie+Dtrym6TJEJtkg9hqIVk43a8ZBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766514374; c=relaxed/simple;
	bh=RoHBsR2d7Q7GCEaIb6tf03AqPf/851ZIscm+O+20wZU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CblFcmNwxeBH9DqXC9wIoELmMj4TgYaWOSPp4AK6E0mftFCyIUN239HbfA5qnC8GQRtLW0pvJDPFpaC0Kud1E+SNuii9P2zTrzgcfxLiGD/ejnaqKRsyv89k1I1NR5Tptdxg7e0o0cOmmpvIAzqRJAdWieuF3COP7Lib/Xo79DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=S0G+kzVJ; arc=none smtp.client-ip=209.85.210.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f67.google.com with SMTP id 46e09a7af769-7c7aee74dceso2018862a34.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 10:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1766514371; x=1767119171; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rUORSJ39qI0pVVDF1Dm7SJIUnfZq9zH2suoH4Wp242g=;
        b=S0G+kzVJ8g9f8KRpI+195+U7anLS1emPBc5PnYGgYbYg4cCP0al8BzDvEnl6zF9LQ6
         lRDO3SDhOpgsu9sZIKl5OMPl+++zEq8pQ7hp/ZcRjEshd7/oO3KdYWhq3gFH6Z6nb1EE
         HZLAKwSaTa0lRr0zUr4QYuhqkRMQdiKbVDtLO1Wu5FlSrfjv+9njSrF9se0T1z70XQ74
         2Wz2wcCdkOlSHi0sD8Fev9QYL4xbgTK7aVp+a1p0/VBCavRgN89ZZqbHOLExJ+rP860e
         Z6+vZI5uAIzxpu6p8TMcyMlcchak+WLHHoepTpf3vYQSDPndtwiz8sJNg0XXRR6REi8n
         dw2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766514371; x=1767119171;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rUORSJ39qI0pVVDF1Dm7SJIUnfZq9zH2suoH4Wp242g=;
        b=KD6gqia16iRhMYWnK/yE4ctlhKu3MDoBi+UFyR9csCFIpoUhwSl6Qoe54VzBYjkiET
         vkdUgBRPUf1Ww6Mvf6mNTvnrZe1d6TLaMMTTXkOAjV0IUIX0CttSr9rSSPGV4JrzC7Yb
         dI1tkaEnbiCUtKhwj+epzY6MjKnqFTM6h/GkSD4pa5n5xZdND3sY0cjiMz8xnRAgUp7E
         AFUK4arx2QdK6YPpkkbztabL6MIUwhxwNSR02Y256CymoRb54xb2twluxyqHHyJ1+dcl
         tx2Km+Rn/8hTHUVWCRoRWBYR7/cPuExUM3wWlBCuJh2MXqdqDgT4FrCDuP9w5h9nKNqZ
         +59A==
X-Forwarded-Encrypted: i=1; AJvYcCVgf+IGyK9Rq0N8w2FFHfco30zW809Ac9tbgi1fg71bDpntCvM7dLX3v7aQU+lEtdWHUQB2zpg79Ox5@vger.kernel.org
X-Gm-Message-State: AOJu0YzmRUU7OjLsS4C4q5Wtk22A7hueuqtfuGGgglWQZ/Q+LZH1L6BB
	oQUvqD4UhbXnpLXevrD62+7WMrvtpO24SS/E+hRFMbp+WGnaKNEMbBE3GQ/2BMx6VKg=
X-Gm-Gg: AY/fxX5Slx5SIP5s7dABVo2vqr+On+9rNA2WNW4CYn5zA+nbIBEATW3J4uCwxPEXP7x
	X4+oyiHYtcV82MLaAlyDWRq6gK8T+cHUWpw7218gDMVZFRwxyNQxRHlSKxY1rMlZ1b4c13XdFgc
	FirdZz4gXfdf/wAuM0mOCnvCvAGUHn4ZKxA3s03iwb6SyoS3XYeeUYTSRjzD403O6c5AXCAfvp3
	EcbWooc68ELaFIzFKbGwhhWmAv/qBqTTXQeCg7fxcF0Y1+5PHFEB+txIztlOj5OYViLJz0RO9L5
	znMMwEGg9fjpmbMhj4BYTz2bVQPo7/NJSOUoIKx7McvOwhC4RbHhkeTlH7jj+JMgzoYi6Qp4s/Y
	RKC1gKR84zR/3imBinbrWn/ldyfHnagwwm9N+ejwdsyuSEsn0D8tm3MJ++KQaDVI06ezW/i5jWc
	AHOviQX/ZxWLfRj0MMoZQVO7a7NS9MHsK9ed5TC9MLX1lwk7RGZc9W2nYgewYU
X-Google-Smtp-Source: AGHT+IFWB9BxicOq7wmIDOM/3f0UNSdBE+rFuZQtSZ+yjTAo0rb918LQDr9/t4N17Ri1ZdbA1IFJXg==
X-Received: by 2002:a05:6830:230e:b0:7c7:731:7905 with SMTP id 46e09a7af769-7cc66a4b7a2mr6616842a34.24.1766514371411;
        Tue, 23 Dec 2025 10:26:11 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:fe29:88f1:f763:378b? ([2600:8803:e7e4:500:fe29:88f1:f763:378b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cc6673bdabsm9706228a34.10.2025.12.23.10.26.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 10:26:10 -0800 (PST)
Message-ID: <56c03c7f-1e5b-4586-beb0-47a1fa3bc86c@baylibre.com>
Date: Tue, 23 Dec 2025 12:26:09 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: add Texas Instruments TLA 2528
To: Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Jonathan Cameron <jic23@kernel.org>, nuno.sa@analog.com,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Angelo Dureghello <adureghello@baylibre.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Eason Yang <j2anfernee@gmail.com>,
 Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
 Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>,
 duje@dujemihanovic.xyz, herve.codina@bootlin.com,
 Rodolfo Giometti <giometti@enneenne.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com
References: <20251223155534.220504-1-maxime.chevallier@bootlin.com>
 <20251223155534.220504-2-maxime.chevallier@bootlin.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251223155534.220504-2-maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/23/25 9:55 AM, Maxime Chevallier wrote:
> The TI TLA 2528 is a simple 8 channel, 12-bit ADC? Add a binding

TLA2528 (no space). Also, why the "?"?

> documentation for it.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
>  .../bindings/iio/adc/ti,tla2528.yaml          | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,tla2528.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,tla2528.yaml b/Documentation/devicetree/bindings/iio/adc/ti,tla2528.yaml
> new file mode 100644
> index 000000000000..0ee326d77014
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/ti,tla2528.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/ti,tla2528.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments TLA2528 8-channel 12bit I2C ADC

12-bit

> +
> +maintainers:
> +  - Maxime Chevallier <maxime.chevallier@bootlin.com>
> +
> +description: |
> +  12bit 8-channel I2C ADC.

The title already says this. Either drop it or add new info.

Also, don't need the |.

> +
> +properties:
> +  compatible:
> +    const: ti,tla2528
> +
> +  reg:
> +    maxItems: 1
> +
> +  vref-supply:
> +    description: Supply for 2.35V to 5.5V reference voltage

According the the datasheet, there are AVDD and DVDD supplies.
Nothing named VREF or REF.

So instead:

avdd-supply: true
dvdd-supply: true


It looks like inputs can also be used as GPIOs, so

gpio-controller: true
#gpio-cells:
  const: 2

would be appropriate (it doesn't matter if the driver doesn't
implement it, we know what the correct bindings are).

> +
> +  "#io-channel-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - vref-supply
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@17 {
> +            compatible = "ti,tla2528";
> +            reg = <0x17>;
> +            vref-supply = <&reg_adc_supply>;
> +            #io-channel-cells = <1>;
> +        };
> +    };
> +...



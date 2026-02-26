Return-Path: <devicetree+bounces-268980-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GonCAGWoGnhkwQAu9opvQ
	(envelope-from <devicetree+bounces-268980-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:50:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 853A71AE01D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B19C30ABB87
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B013F23A4;
	Thu, 26 Feb 2026 18:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MwBHuBlb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com [209.85.161.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89903D4103
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 18:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772130822; cv=none; b=C8bBPaADpYX/BTrZ5Ff0Rn0xExXCoN5xrlXG05JKoCUtANN1WeptsG+ATOVGuW2keNBt2k5gu9uXDDjX/FtyUnLQAvi1UiBzhI9WaCCS/6JMjjmcMF37WMmwWTzWbnMFunbWoX7XByosBiGzd5NjLc62vRDOYPlxtmNqNKlUy3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772130822; c=relaxed/simple;
	bh=1tGyrjrefZFBFYuiY5W3I580PT+gFhCEdxPhb7EAQk4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZNV3fByXDyZikzAmCRpMMqlveBkQ7cqfKn0Y5Ns+X/dy2N2LwVDM9kTTd7bF5QMd+4YFfX1F74vduO79Il0xd8HkqAi08TnoxX9zASYNbxnAihZ5vvg6pMAAZGeIFNICxmDzx5K/lQyeb/Hr2H9Flp9dXkK63LJofRKKxiWtgT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MwBHuBlb; arc=none smtp.client-ip=209.85.161.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f65.google.com with SMTP id 006d021491bc7-662f2fa7e67so512256eaf.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 10:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772130820; x=1772735620; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4/5cjoh5WVMRBP0Xk9oZ5/S0VwEnukyl5VAKVEVtxPQ=;
        b=MwBHuBlbF9+gKD3Swr0h9tKoz8F0AMLOvz9VM1eElSmLIETVX+sqAHoKTJixs2HusX
         5WlZsSd3neg22xMVY/ZwiG/7/cymosZa6Rz0AQJ+xCkdlmW7i72KrhfKpR6Vye/CoMSO
         aJvRLwarcrau2pOblxD4Dv5zqad41zNTq2GJOg9q0qrD/Eo/D/m+3iBhZxveygjbZtZV
         NkCpst40r2TXGQpD6bq4J65l+NUQVmdnvGOWqDDMppJYmxGkvB4pGUvF+rL7zKVpJ76/
         ff3oenNpzZjkNJu8mJCsZd3pU6UW8j8W8xts9qUNeTBZst1npnWmIjEw609Vr6zLNR3k
         aOig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772130820; x=1772735620;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4/5cjoh5WVMRBP0Xk9oZ5/S0VwEnukyl5VAKVEVtxPQ=;
        b=SbtDZXd/SEpYrhcK8OUNPTEBTcEDqZ8+C9cI9dhwq9a5rCFYNUcOw6t6keNnLjhSs9
         KF39MyN7Dz7xAUtQg/92ABM5jsxqZLbqplktZKn1+LQ82Q4h93+T+ge5HTbEPhoJqsJR
         iPaje9UMwKU9JoadJFxqSHM0I2Wib4Lre8c+OPBwM//miO0OxrHXub9IT0gdFQzqVyb4
         rygiqNOCLfAwDlM0T6Ae/oJhYB+8ASzzjbZcmyIY1IYoIcSlHnyFYWv6J7XZ5R0+HuX4
         KhKg2rS1psZ0S043stbbDRSlWhNYLwbs5vcOVNeuCnj3cvwODhhIoUA8RgM7IxoMAf8e
         Usgg==
X-Gm-Message-State: AOJu0Yz8GWXYBTTZQdwKX8r/cSu/cQ15KE3H6N4TkFtx90l2ddNC7ig1
	v1CnBi3WsR82BPkXgQee6ZskiYSDhKCYFPS91jYrGOmGnZxXpnVWSwHuPVVGuOQcNjU=
X-Gm-Gg: ATEYQzyKWq/ebCtRpudJiAkbv0biYKiJPIzkIpDqlpT4nZrOyo3mKH4bu9YqW1CQLuI
	/c8p9hnu1wpZKgwr2nugkm2kYcujOOX+wMxTR2eC/XeXHqoEGMyRk06hVEL+8zd+uj4jmG0zwCq
	s1lftQCnxLWEcGsfyUob2ei5w3sJgzRBKikUVOatss0MagUjARnr+VlQpXIKpAxuv6pSNRnuA6P
	jyl2WX1ijve4XFXgHHX09F9F0a/0kXf8pTDIsAfabAlInP/XAlaoTaGCqtWgjp4t81AOIz3zHB+
	f4RBp7x3bWj3S/MUJp0sjB0IIh1e/eNaquYL4b5v4KHV16yY+IohRZNrPl2LKtzh9XD6/i3ENH+
	L/mxJZZapWRDVByPkuASw8cd5QDPTcJC3ao6nSpszp6yrDSC0UepVJDFLMn7uz5+tJ9achjc3Es
	3jHC/QgA9Hw4zin8gwINgNGaRRSTfVxDuOncIviW8/bBi0Qqe2QMn9+7FqYui7aVJiU9fVOmoN9
	Q==
X-Received: by 2002:a05:6820:20e:b0:672:a49f:1291 with SMTP id 006d021491bc7-679fadbf66amr168019eaf.15.1772130819691;
        Thu, 26 Feb 2026 10:33:39 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:602c:a8f4:3667:524c? ([2600:8803:e7e4:500:602c:a8f4:3667:524c])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160cf239e0sm2680245fac.1.2026.02.26.10.33.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 10:33:39 -0800 (PST)
Message-ID: <8ff054f9-c22a-4108-8a9b-6ddb49e18dcc@baylibre.com>
Date: Thu, 26 Feb 2026 12:33:38 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: temperature: add ADI MAX30210
To: John Erasmus Mari Geronimo <johnerasmusmari.geronimo@analog.com>,
 linux-iio@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20260226163041.169786-1-johnerasmusmari.geronimo@analog.com>
 <20260226163041.169786-2-johnerasmusmari.geronimo@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260226163041.169786-2-johnerasmusmari.geronimo@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268980-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.40:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:url,analog.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 853A71AE01D
X-Rspamd-Action: no action

When there is more than one patch in a series, please include a cover letter.

On 2/26/26 10:30 AM, John Erasmus Mari Geronimo wrote:
> Add device tree binding documentation for the Analog Devices
> MAX30210 temperature sensor.
> 
> Signed-off-by: John Erasmus Mari Geronimo <johnerasmusmari.geronimo@analog.com>
> ---
>  .../iio/temperature/adi,max30210.yaml         | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/temperature/adi,max30210.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/temperature/adi,max30210.yaml b/Documentation/devicetree/bindings/iio/temperature/adi,max30210.yaml
> new file mode 100644
> index 000000000000..80aeae23e0a5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/temperature/adi,max30210.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2026 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/temperature/adi,max30210.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices MAX30210 Low-Power I2C Digital Temperature Sensor
> +
> +maintainers:
> +  - John Erasmus Mari Geronimo <johnerasmusmari.geronimo@analog.com>
> +
> +description: |
> +  The MAX30210 operates from 1.7V to 2.0V supply voltage, and is a low-power,

This voltage range doesn't match the one below.

We don't really need all of the tech specs here anyway, we have the link
to the datasheet.

> +  high-accuracy digital temperature sensor with ±0.1°C accuracy from +20°C to
> +  +50°C and ±0.15°C accuracy from -20°C to +85°C.
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/max30210.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max30210
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: |

"|" is not needed here or below. It is only needed to preserve formatting or if
the text contains ":".

> +      Analog Supply Voltage Input. Must have values in the interval (1.7V; 5.5V)
> +      in order for the device to function correctly.
> +
> +  powerdown-gpios:
> +    description: |
> +      GPIO spec for CVT/PDB pin. Should be configured with GPIO_ACTIVE_LOW.
> +    maxItems: 1
> +
> +  interrupts:
> +    description: |
> +      Connected to INT pin. Should be configured with type IRQ_TYPE_EDGE_BOTH.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply

> +  - powerdown-gpios

Is this pin really required? Seems like it would still work with this pin
hard-wired by using autonomous mode.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/pwm/pwm.h>

pwm is unused.

> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        status = "okay";
> +
> +        temperature-sensor@40 {
> +            compatible = "adi,max30210";
> +            reg = <0x40>;
> +            vdd-supply = <&vdd>;
> +            powerdown-gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
> +
> +            interrupt-parent = <&gpio>;
> +            interrupts = <17 IRQ_TYPE_EDGE_BOTH>;
> +        };
> +    };
> +...



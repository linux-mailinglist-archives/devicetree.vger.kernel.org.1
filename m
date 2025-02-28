Return-Path: <devicetree+bounces-152884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7828BA4A611
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 23:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F8E3178624
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 22:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B026B1DED78;
	Fri, 28 Feb 2025 22:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kQlLOZH+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31AD1DE4FE
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 22:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740782337; cv=none; b=qhOzOkDJBQrNfEhd/eUzFNgr0LzNzoYqaPO+XGLCMWYKo9DF5Ri5BzQblJrjOdG+0KORZHMKzSt25Me2cHS6g+izKCTHSAnmZGmpBHWZcpfFRSqpiczpCOl7n1rZfsm8VkkYdBUReVdHFPjLCmCUCH402kxlr+03Q/85g2Fyh8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740782337; c=relaxed/simple;
	bh=OinG4oFMJYhN2xIT5Za/iKY0tkNoEgtL1o8V6/QHk+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qKlwGndarpKtsVkfpfljLXrIdEfUvO+Y6UWRKxjAktpOcXenpahsNdY3sVbjepx8DNJwainhnGJy65o7o66AyLuTn4TEVvUo2s3PIWxFUM2t/386eCjsjAAI6gdIknd3yD16P6KIRlcOP8VGRD4WRpZinXHczJKCJNPTuVJpU+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kQlLOZH+; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7275bc6638bso593176a34.2
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 14:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740782334; x=1741387134; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E+fYjTnDelyv2wmiBt70nsk1L4cOdcyvqKIdaQXfSpE=;
        b=kQlLOZH+VLYos7eF2JQ2MUR2nB9xlpqpcN1JPEf1n+JxLmnm7/bsAElguFC1lEG0Jx
         SuEA3/q9BtbMJnqJaxBkl8ZjZXpRr1+NLR86bG5f7+DcXD3aFzFssZ0TIfKO/fm7vIr8
         5EtuWnTW7eeDYuDJu28XjWB08sz/Gk6+JAKMULOyXBxb0Mtc4lUv/n4icczHciGF4d5b
         cKP/U1PfwJYYrwbwteRRRmLLkpoQ/fBW0o9dyTujqU2t7Py9juqnJMh+h0j66Dk16TNw
         povdWYJByPeTGvWnwuUxvuYpB6PZO7zX7lhee8jz5LEtnExBQM3Fiwygf3NmyY+xBX32
         ZwXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740782334; x=1741387134;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E+fYjTnDelyv2wmiBt70nsk1L4cOdcyvqKIdaQXfSpE=;
        b=WeeykZAlmnX4jUUGqlO9rzc3enEWa9uvVRgh866fvP7KQ5CDFTTPM4hs3eWZPzTool
         LoAMepo2aruZtJvclQfwbID/BuFf4UpoWiaQ7relHxCyQa67ifY2fKh2TgQCEoc3zOBo
         YtjpNBBWSpTAiyckE3NrzFatHnsFxEPrr4JY5tOoeK8QvIxWh3iA4+DkxX45qbzmMetS
         7uVG6vXIRMU7qXxklDbgPN+9pGjh445K1sDR/LvhTCOaZXzF0FsUV4u1QvE+/0gWL1eq
         WOwN5fxhye/CtTYOXsZmHb3szSyRX7ShLzy6Y3bUAC2N9i1u4VZVvPCGkh297RGoJSmA
         jgVw==
X-Forwarded-Encrypted: i=1; AJvYcCVZLw8lXhgoehnWI+vgxs5Xv98fEvgirYgTfk6HOdOqQSIxMpJgs//7TQmT5KIe7bTIaTXlFzr3o8uJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyzyY2uoTWpv2ht2oLAvFXqcFU4DI+PSVXdtR66/yibsJIKl5nL
	FIBBoriKzDcDh3QlBd7tcCSIkB/JT+40UG2JJZDS+Ii9q3NOiOnpAQkkBuHQaUg=
X-Gm-Gg: ASbGnctTlTk71hr7yTlDjoxwXZel50F4pur1RuXMYp0vYSzVpRxu+iolJvIiqXbigqk
	IWcjsVZpIzxhkpl4JH/sSkq4UPTIjJTbsXDGdfZ4Ovo+IkiPZgN6C7nGe50s/dctBKCewfKTcwF
	bXRONt/9g1g7SVUgnSlWz+ugeM2bLHnE8jzh9/z8IPpCe1wFemH1lMVQ+yPJw1czHEPNmVSa7vL
	KtWdDVx+IgYRMebOLr1UveCS0UgaKJJpoylnc0qU7QpAnQG2INSrtAeOXytxTer/FMQD3SkKqcg
	ogmOn+CF2suZNCSWG6QkAzbKxgp5iLpCZL52JU6AhtnSVWrvb5YT3paaFqGD4l+qSHzmilZOyRK
	EEoGYAg==
X-Google-Smtp-Source: AGHT+IHbvfCuPkEVbuAzfOLEf30m1LTbxhXs0FiEuN9bvvhhqT4lDEN6K7BISal6NU3hSK59m2FbIg==
X-Received: by 2002:a05:6830:6684:b0:727:421e:43db with SMTP id 46e09a7af769-728b8261559mr3476276a34.6.1740782334001;
        Fri, 28 Feb 2025 14:38:54 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-728afd0047csm825497a34.22.2025.02.28.14.38.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 14:38:53 -0800 (PST)
Message-ID: <7b2a8d71-9d83-4d40-903b-ba7ef1c686f3@baylibre.com>
Date: Fri, 28 Feb 2025 16:38:51 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 6/7] dt-bindings: motion: Add adi,tmc5240 bindings
To: David Jander <david@protonic.nl>, linux-kernel@vger.kernel.org
Cc: linux-iio@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org, Nuno Sa <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Oleksij Rempel <o.rempel@pengutronix.de>
References: <20250227162823.3585810-1-david@protonic.nl>
 <20250227162823.3585810-7-david@protonic.nl>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250227162823.3585810-7-david@protonic.nl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/27/25 10:28 AM, David Jander wrote:
> Add device-tree bindings for Analog Devices TMC5240 stepper controllers.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> ---
>  .../bindings/motion/adi,tmc5240.yaml          | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/motion/adi,tmc5240.yaml
> 
> diff --git a/Documentation/devicetree/bindings/motion/adi,tmc5240.yaml b/Documentation/devicetree/bindings/motion/adi,tmc5240.yaml
> new file mode 100644
> index 000000000000..3364f9dfccb1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/motion/adi,tmc5240.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/motion/adi,tmc5240.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices TMC5240 Stepper Motor controller
> +
> +maintainers:
> +  - David Jander <david@protonic>
> +
> +description: |
> +   Stepper motor controller with motion engine and SPI interface.

Please include a link to the datasheet.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,tmc5240
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1

I assume that this is the overvoltage output (OV pin). Would be nice to have
a description here saying that. There are also NAO and DIAG0/1 output pins, so
it's a bit ambiguous otherwise.

> +
> +  enable-supply:
> +    description: Optional external enable supply to control SLEEPn pin. Can
> +      be shared between several controllers.
> +

This doesn't look like a supply, but krzk already discussed that. But there
should be actual power supplies: vs-supply, vdd1v8-supply, vcc-io-supply. And
a reference voltage supply: iref-supply

And if there are any pins would make sense to connect to a gpio, we can add
those even if the driver doesn't use it currently.

> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +  - $ref: /schemas/motion/common.yaml#

If we need to know about what is connected to the output of a motor controller
I would expect it to be done with child node for each output. That way each
output can be unique, if needed. Basically, similar to iio/adc.yaml is used to
provide common properties for channel@ child nodes on iio devices.

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        motor@0 {

motor-controller@ or actuator-controller@

The chip is the controller/driver, it is not a motor.

> +            compatible = "adi,tmc5240";
> +            reg = <0>;
> +            interrupts-extended = <&gpiok 7 0>;
> +            clocks = <&clock_tmc5240>;
> +            enable-supply = <&stpsleepn>;
> +            spi-max-frequency = <1000000>;
> +        };
> +    };
> +



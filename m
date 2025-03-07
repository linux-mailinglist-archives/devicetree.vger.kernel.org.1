Return-Path: <devicetree+bounces-155363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 047C7A565BD
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 11:52:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E72BB3B16C5
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 10:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93A9620DD71;
	Fri,  7 Mar 2025 10:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZtArpcoG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5071AA1EC
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 10:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741344732; cv=none; b=MMcVSGNYy6KGVcKYcRFDPor4tVz1rLTg41FAVvCFkI6nLKvZiHG/LWE0ihgfTtldvVCyIF5zqIRZ3T+reZweQ1dH/ChiHK7dRTrJ0TQOrFo2D3cY8X3pUG1qb7M0NHLVyX7AAqFAMp+1GADkx6dhFW03o8FlVl0ZYVFGGUoSjoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741344732; c=relaxed/simple;
	bh=2yrl245pQFYTteb+/aA4r5Ui0KBjICUD+1rxdgPp0wA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GoVkmNRFoTtreoGK3ho6VAzQltRBdyHA0BGysBQ3T+g+Bak9Ve19N/qhdRDUJB0pVGKt/j5vzksGox8pWQqMnVR2X0cDpL5SfaKR117Rs82g3j6jxnt5vQZClkx0anFSAFpLlaUFcUnIOFyDj+OS+Xk8Y9eAusOM554WpUFmX3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZtArpcoG; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30bf251025aso8086871fa.1
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 02:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741344728; x=1741949528; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VRsjrYylaGqHOYSS2Im8OTeS/8b87MG8RUTJovWmnVs=;
        b=ZtArpcoG4xHxWeEYG8wOl/3hi3Tzm3qdOwHW2xTnK/WVdHb0RLYpcy7dcpfp4fEt1I
         4wgkWBRyLhdlERz0dfGu35NYoqSUEj4Rwxb7smcVVBN83u75ZI++K8xMsAG16HnYdnwr
         u6iBzCJZO1ELuz1qpEyqrRJycZrU5FEEAnatTk2jUzXEw/R3lfqWwJiyEM3FKo/XLCAZ
         L+bgFTD2j/YLzgn3yzfXgDL5f5xk1FfI5RGSR8QKRaFldJsIwLVH3yK1Xs+/kFhqhMwK
         tkP6+ZFIK63Lm8HgpECxWD0rB6zwXtx8b/af1tQ6PGEaaj8ZNGxXWJ2NeRbHby2TYPuV
         kf2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741344728; x=1741949528;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VRsjrYylaGqHOYSS2Im8OTeS/8b87MG8RUTJovWmnVs=;
        b=cIsnS2u29hc15voQnPqAfExwOM6XCeC9pNrcSbt7NrXVzQ0ZykDS7Cqq0OqlGUQnoM
         +YjT+TyPiJOr0P5vMLqQPJvKeyLQjUTqEVGFBfA2SpBRufS0sacILolzHFytezYd6lz7
         8ggGOM/sB8duXSRm+yvkS9sr4XdGnwGa/Wyz2YIwTaQ+VWNktZS/a/hU252vWIuA+5sw
         1BJyEJSWNmMIfKGc+L1KlfxP7RlAX+lGjTYbHNZtUB9KdPhOnLnUJNFR1mC1GkdC5+Go
         YeyYnk7NBlTPvzpsxdf02eDeHDiPgdLzFURc9xS3HLxi7H7AZmn+8ZOfwNrp5KeI2xPv
         r8Dw==
X-Forwarded-Encrypted: i=1; AJvYcCVGUzQPYbpV2B36c1qaXd2Qph6dOSspKlhxn8WWRpatsKI4PaVelAVFEBkD6tl4qYvs5uOZDxIeygCF@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdcy1zOa89ELJVkE17PPVh3RjPgav4tEjtzyQCQC9bJaGCY2Dv
	4rB4e3kpPYPh0yX0AbK3z6sJBMn2MY8f+s2FoNozcCL84U6MM7BpR5i4170p8cK+hwVAxsYFI9O
	tN7rkyCTm+8ZKXgVgo8saCqOwL6Kuz4CCatB+8Q==
X-Gm-Gg: ASbGncspWYa8g+GIDJg3SHxSWB0G5jxhR+Wnzq/GkybED7e02mitOuzQX/KCeMCPBLB
	tfVmL75vuEpjGFkT7EDqC2cn6sp9qHLYpnL4zEzHy9OVsqKf17Zf4bPnkCbJKW+znQ4BqY5mIu+
	xr0O/KMs7wBr8SCrcsaGg5UZTybw==
X-Google-Smtp-Source: AGHT+IGTv8b2iGGJntdmFYPrxn5rBDY0hEoMs3EOIxh9tMQRsB5GFmoHIuYXVfRwM0Is+sU2gQz8J72mVJX/HKidY/U=
X-Received: by 2002:a2e:3a15:0:b0:308:eb34:103a with SMTP id
 38308e7fff4ca-30bf45f4820mr8917921fa.28.1741344728194; Fri, 07 Mar 2025
 02:52:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250306-iio-driver-ad4052-v1-0-2badad30116c@analog.com> <20250306-iio-driver-ad4052-v1-2-2badad30116c@analog.com>
In-Reply-To: <20250306-iio-driver-ad4052-v1-2-2badad30116c@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 7 Mar 2025 11:51:57 +0100
X-Gm-Features: AQ5f1Jo2uhYB71XpyIkYmXnZs7v-ATTx9ln-Jijl_UCZHNfpilpA8uAirwbAS44
Message-ID: <CAMknhBHeqhkGaSM0S_zahC1ZrKTfoYj87fFEwL362FhhjNOfpA@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: iio: adc: Add adi,ad4052
To: Jorge Marques <jorge.marques@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 6, 2025 at 3:04=E2=80=AFPM Jorge Marques <jorge.marques@analog.=
com> wrote:
>
> Add dt-bindings for AD4052 family, devices AD4050/AD4052/AD4056/AD4058,
> low-power with monitor capabilities SAR ADCs.

> Contain selectable oversampling and sample rate, the latter for both
> oversampling and monitor mode.
> The monitor capability is exposed as an IIO threshold either direction
> event.

These sounds like they are describing the driver so aren't appropriate
for this commit message. Here we should only be talking about the
bindings.

>
> Signed-off-by: Jorge Marques <jorge.marques@analog.com>
> ---
>  .../devicetree/bindings/iio/adc/adi,ad4052.yaml    | 80 ++++++++++++++++=
++++++
>  MAINTAINERS                                        |  6 ++
>  2 files changed, 86 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4052.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad4052.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..4602f1f0184d58f33883852ff=
6d76933758825f1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4052.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2025 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,ad4052.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD4052 ADC family device driver
> +
> +maintainers:
> +  - Jorge Marques <jorge.marques@analog.com>
> +
> +description: |
> +  Analog Devices AD4052 Single Channel Precision SAR ADC family
> +
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ad=
4050.pdf
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ad=
4052.pdf

The links above don't work for me. Instead...

https://www.analog.com/media/en/technical-documentation/data-sheets/ad4050-=
ad4056.pdf
https://www.analog.com/media/en/technical-documentation/data-sheets/ad4052-=
ad4058.pdf

> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad4050
> +      - adi,ad4052
> +      - adi,ad4056
> +      - adi,ad4058
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    description:
> +      Reference clock
> +    maxItems: 1

I don't see any pins in the datasheet about a "reference clock" input.
Is this for the CNV pin? If this is for the internal clock, then we
don't need a property for it.

> +
> +  interrupts:
> +    items:
> +      - description: threshold events.
> +      - description: device ready and data ready.
> +

Since there are multiple interrupts, we should also have an
interrupt-names property. Also, the interrupts should be named after
the pin they are connected to, not the function. So the interrupt
names should be "rdy", "gp0", and "gp1".

> +  cnv-gpios:
> +    maxItems: 1

Not necessary, but I would not mind having a description that says
that the CNV pin may also be connected to the CS line of the SPI
controller if it is not connected to a GPIO.

> +
> +  spi-max-frequency:
> +    maximum: 62500000
> +
> +  vdd-supply: true

> +  vdd_1_8-supply: true

This one seems redundant and should be dropped.

But there is also a possible separate reference voltage supply, so we
should have a ref-supply property.

> +  vio-supply: true

These chips also have GPIO pins, so we can add the gpio-controller and
#gpio-cells properties to the bindings even if we don't implement this
in the driver.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts

The chip won't work without vcc-supply and vio-supply so they should
be required. ref-supply is clearly optional though.



> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    spi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        adc@0 {
> +            compatible =3D "adi,ad4052";
> +            reg =3D <0>;
> +            spi-max-frequency =3D <25000000>;
> +
> +            interrupt-parent =3D <&gpio>;
> +            interrupts =3D <0 0 IRQ_TYPE_EDGE_RISING>,
> +                         <0 1 IRQ_TYPE_EDGE_RISING>;
> +            cnv-gpios =3D <&gpio 2 GPIO_ACTIVE_HIGH>;
> +        };
> +    };
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 06f122cb8bbd15a0076c229dfc89be0b5126f237..fef8adaee888d59e1aa3b3592=
dda5a8bea0b7677 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1317,6 +1317,12 @@ F:       Documentation/devicetree/bindings/iio/adc=
/adi,ad4030.yaml
>  F:     Documentation/iio/ad4030.rst
>  F:     drivers/iio/adc/ad4030.c
>
> +ANALOG DEVICES INC AD4052 DRIVER
> +M:     Jorge Marques <jorge.marques@analog.com>
> +S:     Supported
> +W:     https://ez.analog.com/linux-software-drivers
> +F:     Documentation/devicetree/bindings/iio/adc/adi,ad4052.yaml
> +
>  ANALOG DEVICES INC AD4130 DRIVER
>  M:     Cosmin Tanislav <cosmin.tanislav@analog.com>
>  L:     linux-iio@vger.kernel.org
>
> --
> 2.48.1
>


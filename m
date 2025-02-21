Return-Path: <devicetree+bounces-149489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DCEA3FA14
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B5FC19E2113
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F5C9217F36;
	Fri, 21 Feb 2025 15:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nCm95x30"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8125D216E11
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740153419; cv=none; b=GqpsJg4oV7q2wtptFQTsTtn7EF+bAtL7FBkbMpqjPeFkZTNOaM52/f1ibUNjTg0wW2MfTwgIaIVjNF+oheXoh4k0rDlYMpmRKbi8+KQiw1Pn7r1d89NShMI55Kmg7zqCdQBGaPgiu7aaNaGxP4+mMHlKhkvL5DVSBWDWcIVA5HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740153419; c=relaxed/simple;
	bh=q1YypdFaIEW0l2AnCJNdwusc6OIgP+r4ECVjew046co=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EdEmxpBSd6rDMPz6LwbUgiQzO+pM43PAHCDzGynRo/LaSFnmMGJ5b0HRmeSKKAF8RIj/caCIukU8K8KoStdRZIrNKt5oILUN0HWcJwiVMZaV8Cx5v0GbbW1du6cBEQurD5XRIBbv2KNrQU84Erkf3Cvuc4lqDpQBdHHcAS+cdLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nCm95x30; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-72716c75f20so631864a34.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:56:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740153415; x=1740758215; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l9F5nxMmTnOLDqUzVG81NMqrRzPg/w7BaJ+m4JpJ2SY=;
        b=nCm95x303AsBW0HSPMeOs5O4aYC4RiEzac8Y19XfOg50026k8TiRwTskN+Hr3RS7Un
         ItJ4o7q7ZhU70jwvFzOAqmv4P0smnPmZsyH8GI+PiHzvMmlugXuYkNy0QpWzN15xC5Qi
         lJlUdy3+5hXozXLA5eHQO34MhuyUuCNkD8mKKV9ylkZ5qEPo4c/qK0VFpLPN34MfXjy7
         XV6IKIdX+S2WVcwd1ixccgjn4LL5f5plKFwXqmlwoYTnwkEoqJJeVEI2VzWZocRnQeKX
         zrBjLTZ3fkWXdyLMBPZ7ZQBASLY8U3bGa/pwtd2VnOyRPk4qCowJy8HYWqwljEjGMJcC
         vhFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740153415; x=1740758215;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l9F5nxMmTnOLDqUzVG81NMqrRzPg/w7BaJ+m4JpJ2SY=;
        b=riSpwJpix38uWElrQEKEPDKEWeOmut+5IwlY0yMlqarAUemjRlMhE00zIFF6p0kmDe
         vhKxaSR7F9f7Dxzxz7gqeOEpSIPfhG32Q0IMpRahErXnN9WgffEQzBjTuscu6iocNtL1
         9kqbwPJpC59UpZ99lpCerWm/l3HGwMirknBwz6QEaXBjUa32sjcoGPgUCxJOGG6rmar6
         GgkzdQTWYwV3KqXLfmPcHtSp54JURlh4HpfSZ6WLcvseLGX8hYzctYOmVby8Vbnk0Q+f
         qSM26k9GjT/oxQuFx8jS7q0choSQquNJ/AJyXsDVZfbPIqw3nDAYMnWH4fD2ln+TX2Vu
         NI/g==
X-Forwarded-Encrypted: i=1; AJvYcCVqHlA5AEdDJ0atQrB+Szb3uOCoIrncG9hpy8uVQhL4mSRXWeRKGdFCAyHCediGtsft5XQs2zaqMV1Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6ewVcntTZPdt5ZtZmB79wfxZsAySDE2pTOaNAy7d6Uozbrtha
	XWjBPZ4LoqnAquwvwEY6Ek9VV8wGmvhjERUgDvU0McC0/037Wy2obDRfW82FhJ4=
X-Gm-Gg: ASbGnctOe/geBXmT4+/70lQJIlrGX3yCnVB4UPxeKUBqrqpVISfbQfwNtfDkTHaVAx6
	MWENeSJRZFfIZeA7cw5CeK5zDirufPxIT6jgY1F3yanjmsjhAl1bW9qRoPNGmv5C9bCthmjXOGT
	F+hKYI6fa3t75Ok6O2/3fYZl6KK1g94Gmf+6PIhi469dIivbA1GRI/u53ymqZ7Ln+YjvfMbP7K5
	gTsg4i+9yXX0kIJBv8vMvzAahKFoRXpiP70ZOGE/zty7lAGdbfPN1lPbztFXHtGBWKrhmjqCq6d
	Uk9vF/ORZoQoD8LWGhA5HsLMLoTqDqp+ih40coYApPS6Nw+wRxOL6FlcLPvZgo0=
X-Google-Smtp-Source: AGHT+IGwdePluqvFd8Q0eiG58yiq9bE9z1fiRut+KTbsys8KsALDylQjaPnt2SvRTO0/s/20Lz6iig==
X-Received: by 2002:a05:6830:6685:b0:727:2681:731 with SMTP id 46e09a7af769-7274c27b78bmr3002665a34.26.1740153415309;
        Fri, 21 Feb 2025 07:56:55 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2bc9edca34esm4833893fac.18.2025.02.21.07.56.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 07:56:53 -0800 (PST)
Message-ID: <8975b119-fe24-463a-b163-dce702df3cdd@baylibre.com>
Date: Fri, 21 Feb 2025 09:56:51 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: adc: add NCT7201 ADCs
To: Eason Yang <j2anfernee@gmail.com>, avifishman70@gmail.com,
 tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com, jic23@kernel.org,
 lars@metafoo.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nuno.sa@analog.com, javier.carrasco.cruz@gmail.com,
 andriy.shevchenko@linux.intel.com, gstols@baylibre.com,
 olivier.moysan@foss.st.com, mitrutzceclan@gmail.com, tgamblin@baylibre.com,
 matteomartelli3@gmail.com, marcelo.schmitt@analog.com,
 alisadariana@gmail.com, joao.goncalves@toradex.com,
 thomas.bonnefille@bootlin.com, ramona.nechita@analog.com,
 herve.codina@bootlin.com, chanh@os.amperecomputing.com, KWLIU@nuvoton.com,
 yhyang2@nuvoton.com
Cc: openbmc@lists.ozlabs.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250221090918.1487689-1-j2anfernee@gmail.com>
 <20250221090918.1487689-2-j2anfernee@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250221090918.1487689-2-j2anfernee@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/21/25 3:09 AM, Eason Yang wrote:
> Add a binding specification for the Nuvoton NCT7201/NCT7202 up to 12-bit
> ADCs with I2C interface.
> 
> Signed-off-by: Eason Yang <j2anfernee@gmail.com>
> ---
>  .../bindings/iio/adc/nuvoton,nct7201.yaml     | 57 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/nuvoton,nct7201.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/nuvoton,nct7201.yaml b/Documentation/devicetree/bindings/iio/adc/nuvoton,nct7201.yaml
> new file mode 100644
> index 000000000000..830c37fd9f22
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/nuvoton,nct7201.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/nuvoton,nct7201.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Nuvoton nct7201 and similar ADCs
> +
> +maintainers:
> +  - Eason Yang <j2anfernee@gmail.com>
> +
> +description: |
> +  The NCT7201/NCT7202 is a Nuvoton Hardware Monitor IC, contains up to 12 voltage
> +  monitoring channels, with SMBus interface, and up to 4 sets SMBus address
> +  selection by ADDR connection. It also provides ALERT# signal for event
> +  notification and reset input RSTIN# to recover it from a fault condition.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nuvoton,nct7201
> +      - nuvoton,nct7202
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reset-gpios:
> +    maxItems: 1
> +

Maybe this was brought up before, but no power supply?

> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@1d {
> +            compatible = "nuvoton,nct7202";
> +            reg = <0x1d>;
> +            interrupt-parent = <&gpio3>;
> +            interrupts = <30 IRQ_TYPE_LEVEL_LOW>;
> +            reset-gpios = <&gpio3 28 GPIO_ACTIVE_LOW>;
> +        };
> +    };
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3864d473f52f..fdc4aa5c7eff 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2831,6 +2831,7 @@ L:	openbmc@lists.ozlabs.org (moderated for non-subscribers)
>  S:	Supported
>  F:	Documentation/devicetree/bindings/*/*/*npcm*
>  F:	Documentation/devicetree/bindings/*/*npcm*
> +F:	Documentation/devicetree/bindings/iio/adc/nuvoton,nct7201.yaml

This (ARM/NUVOTON NPCM ARCHITECTURE) doesn't look like the right place for
adding a stand-alone chip. You will need to start a new section like:

NUVOTON NCT7201 IIO DRIVER

>  F:	Documentation/devicetree/bindings/rtc/nuvoton,nct3018y.yaml
>  F:	arch/arm/boot/dts/nuvoton/nuvoton-npcm*
>  F:	arch/arm/mach-npcm/



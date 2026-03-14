Return-Path: <devicetree+bounces-275726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMkDBPh+tWmK1AAAu9opvQ
	(envelope-from <devicetree+bounces-275726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:30:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 968F728DB05
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:29:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0B44B3012E46
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 15:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69CD02FFFB8;
	Sat, 14 Mar 2026 15:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AmPw74tL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A362F747A
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 15:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773502194; cv=none; b=qIftD/95r+1H7l311R/pzQXRLxC/UGEB7QiuSjSocvrtTZljBlN9TKYu+xXvSTMVVRO5IcsrYlr2nSFqBYgjrUrYW0OGzRKZQsK/NDjUnGopJYuoYkfJSGAG484jKNY53vjH6NLPOGgQF/TxYhT2mJxu3aira9qNwwtvX3UNFhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773502194; c=relaxed/simple;
	bh=qx/loJ+nJsLs+1vSgg0MO76kHfZg2hNO2DOfOaemHwA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fJgx0ggYlVh5o4bY2ywYji22UZ8BQV6V2RkAhVlH4wjzBx+3UW0ezA62mIcaI2y7atiIgUo5XRKthoM9LHaoWLVlWK2ux8RKpJb+OUKbnOqtUf9EE+Uu5wn/4zTb9mOIcrD/rmEJFXF78KvEEqgN1Qfg+JT5R5Lnkc1/0Q9ig8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AmPw74tL; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-4138136f02eso2247481fac.2
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 08:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773502190; x=1774106990; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7uFlD08MptP0EXYCAMvyKNjPMZade8ZdNS7/hJcx2vI=;
        b=AmPw74tL1EEmrxKL9jRVvFNQbbeqdOtR+IfwOnp4NeSCy1BaELsJQ08KCZMVCsdvd2
         8kzlMagJY7yuLaN3pdL6L4X+Y4O54LpuFNaALdycHIUdH1pv3LjKvWwx3H5mvYtbY2+S
         sXRzmIvFsd6fDUFDgIqeRP8QM5Z+Fi7JxtuRdKqV9O89BNXu7T+TBDUsNkJF1HWnXjD0
         ojjfPCcuv92LC12L6rpbo7tpmS4cf1OntWgf3YxKlSWCzGVkV1Bsf85NjIxsFo8Hv2K8
         RdkNeAO+54LfhHvuhLAhfOQQZKcJf4DskeXJf6t9eKXVevpOrVkOJ1iIfN4vuPbbZqMX
         7YIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773502190; x=1774106990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7uFlD08MptP0EXYCAMvyKNjPMZade8ZdNS7/hJcx2vI=;
        b=oltpQOmiV+bE4r5tSehTsvL5uioFAxit3xiJITQy2aXF+AxH+dNhuD8TR0lFA1o2il
         HqfWjRbrWOTacGecQpLXdY7x+FyZNmg5ftBA7e1uFhvvxwcc5kgFEIs5bOtOtDBxWnvC
         PALAdd4es24XVNgLAwTbPisA9tdD7mqg6YqhGkmH2S3Xx9eZfAsNSZgK3KzdkKdzgwg7
         G6+FfYB6/XE8qaQlBl7dSv8L0Endsw4UyY3CbwRphvP0TW3N2Ekvo7Dz8DYNHoh0Qwdr
         wXg4Pfv6+jemGRnCL0uv96CJwP13cl7TuqLguW1FKNf+qvkoJmCSY/GzweNz9OhD0iYY
         o20Q==
X-Forwarded-Encrypted: i=1; AJvYcCVJdzpDLCXcWEeo7orrHa5OFjSo1OiSZt0e1A3o8VhRifu+lh059FqmPbitnvDNpL3uMk495+dpc65M@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7zamZzk0d2EJ88A2EodpAthSX6Fq9RmsmG15c+cSnguB11Aco
	P1K8ZtvT/FHU0hnuLUz5SWXL2mi4tCvADZ/t/5VtIBkuwrmfJI5WR7cIm2brFBN4ryg=
X-Gm-Gg: ATEYQzyEt7ktELReVMLKbSgSYAxh7Nf/CtY610Dk6Ge8yGGIlhCLIgdBlDWtWOGZUqw
	/ULQ/PfivAtq8VCKC9wFSwqaT09FsLEJEiVIHZNhbXeHpwhLEiOxUZsOCc5QoX9rbowN0EB1MHH
	CfvMiTnlx/vqJg2HTcWkILidl89zecZD2m1Kwb4h1wRXbco43DxH83hPw0GLSvcNRI1EuM9wdOB
	cxS4Z4M4bRuVYCLNDTQKF9iTrM95LaBltAhtwvpfni7G8MyecPztwEtjfwUd2j2z+V+5sD5/ydu
	FwE/S8xtWZmlATykM6PpssUel1ST0wZS9enQoBG13j+/Pe5SbvkvnZMBaCBoR5u1zSO0ukg6FRT
	pFvTY9L5/9mto53RkpbvUqeCyTnI0ESI6pA4rCGxElSplUx7viCwRcU/AwV6kwK9LyVWjw5FWqZ
	T6op0k/5xePfPBP/0NM7lUP6FzskUm4wLrVhckZC2VYOS1k58IH3WqSRWv8zKXxbn/cDEHArOD6
	zf1v3tR8k8Y
X-Received: by 2002:a05:6870:30a:b0:417:33b7:8c3c with SMTP id 586e51a60fabf-417b93ef429mr3929979fac.36.1773502189651;
        Sat, 14 Mar 2026 08:29:49 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:14a9:db6c:e65a:4287? ([2600:8803:e7e4:500:14a9:db6c:e65a:4287])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4177e5e94b4sm10487225fac.11.2026.03.14.08.29.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2026 08:29:49 -0700 (PDT)
Message-ID: <a1824f39-3925-4e94-ac98-52dcdfbaa0d2@baylibre.com>
Date: Sat, 14 Mar 2026 10:29:48 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: iio: adc: add bindings for AD4691
 family
To: radu.sabau@analog.com, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linusw@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20260313-ad4692-multichannel-sar-adc-driver-v3-0-b4d14d81a181@analog.com>
 <20260313-ad4692-multichannel-sar-adc-driver-v3-1-b4d14d81a181@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260313-ad4692-multichannel-sar-adc-driver-v3-1-b4d14d81a181@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275726-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[analog.com,metafoo.de,kernel.org,gmail.com,pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,analog.com:url,0.0.0.0:email]
X-Rspamd-Queue-Id: 968F728DB05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 5:07 AM, Radu Sabau via B4 Relay wrote:
> From: Radu Sabau <radu.sabau@analog.com>
> 
> Add DT bindings for the Analog Devices AD4691 family of multichannel
> SAR ADCs (AD4691, AD4692, AD4693, AD4694).
> 
> The binding describes the hardware connections: an optional PWM on
> the CNV pin selects CNV Clock Mode; when absent, Manual Mode is used
> with CNV tied to SPI CS. GPIO pins, voltage supplies, and the
> trigger-source interface for SPI Engine offload operation are also
> described.
> 
> Signed-off-by: Radu Sabau <radu.sabau@analog.com>
> ---
>  .../devicetree/bindings/iio/adc/adi,ad4691.yaml    | 180 +++++++++++++++++++++
>  MAINTAINERS                                        |   8 +
>  include/dt-bindings/iio/adc/adi,ad4691.h           |  13 ++
>  3 files changed, 201 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4691.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4691.yaml
> new file mode 100644
> index 000000000000..a9301e0ca851
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4691.yaml
> @@ -0,0 +1,180 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,ad4691.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD4691 Family Multichannel SAR ADCs
> +
> +maintainers:
> +  - Radu Sabau <radu.sabau@analog.com>
> +
> +description: |
> +  The AD4691 family are high-speed, low-power, multichannel successive
> +  approximation register (SAR) analog-to-digital converters (ADCs) with
> +  an SPI-compatible serial interface. The ADC supports CNV Clock Mode,
> +  where an external PWM drives the CNV pin, and Manual Mode, where CNV
> +  is directly tied to the SPI chip-select.
> +
> +  Datasheets:
> +    * https://www.analog.com/en/products/ad4692.html
> +    * https://www.analog.com/en/products/ad4691.html
> +    * https://www.analog.com/en/products/ad4694.html
> +    * https://www.analog.com/en/products/ad4693.html
> +
> +$ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad4691
> +      - adi,ad4692
> +      - adi,ad4693
> +      - adi,ad4694
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 40000000
> +
> +  spi-cpol: true
> +  spi-cpha: true
> +
> +  vio-supply:
> +    description: I/O voltage supply (1.71V to 1.89V or VDD).
> +

Missing avdd-supply and ldo-in-supply.


> +  vref-supply:
> +    description: External reference voltage supply (2.4V to 5.25V).
> +
> +  vrefin-supply:
> +    description: Internal reference buffer input supply.
> +

It always confuses me when "v" is added to the pin name. Generally, "VREF"
is an internal signal and "REF" is the actual pin name. So it makes more
sense to me to call these ref-supply and refin-supply.

> +  reset-gpios:
> +    description: GPIO connected to the RESET pin (active high).

Datasheet says "Active Low".

> +    maxItems: 1
> +
> +  clocks:
> +    description: Reference clock for PWM timing in CNV Clock Mode.
> +    maxItems: 1

I feel like I asked this already, but which pin is this clock connected to?
It sounds like it is the clock for the PWM, not the ADC. So it does not belong
here.

> +
> +  pwms:
> +    description:
> +      PWM connected to the CNV pin. When present, selects CNV Clock Mode where
> +      the PWM drives the conversion rate. When absent, Manual Mode is used
> +      (CNV tied to SPI CS).
> +    maxItems: 1
> +
> +  pwm-names:
> +    items:
> +      - const: cnv

Usually, we don't have a name when there is only one.

> +
> +  interrupts:
> +    description:
> +      Interrupt line connected to the ADC GP0 pin. GP0 must be physically
> +      wired to an interrupt-capable input on the SoC. The ADC asserts GP0 as
> +      DATA_READY at end of conversion, used both for non-offload CNV Clock Mode
> +      operation and for SPI Engine offload triggering via '#trigger-source-cells'.
> +      Not used in Manual Mode, where CNV is tied to SPI CS and no DATA_READY
> +      signal is generated.
> +    maxItems: 1
> +
> +  '#trigger-source-cells':
> +    description: |
> +      For SPI Engine offload operation, this node acts as a trigger source.

I don't think we need to call out SPI offload here. In theory, this could
also also be used for synchronization with something else.

> +      Two cells are required:
> +        - First cell: Trigger event type (0 = BUSY, 1 = DATA_READY)

I'm wondering if we really need to specify the event type. For interrupts,
we we just specify the pin and not the function when the pin has more than
one possible function.

I know that we have done something like this on some of the previous SPI
offload devices. So maybe there was a good reason for it. Or maybe I just
had tunnel vision at the time.

I suggest we try implementing this with just one cell that specifies the
physical pin. In the driver, when SPI_OFFLOAD_TRIGGER_DATA_READY is
requested in the driver, we can use that to program the function of the
pin accordingly. 

> +        - Second cell: GPIO pin number (only 0 = GP0 is supported)

If GP0 is the only possible pin for an output, we should omit the cell. If
there are more possible pins, we should document them (even if the driver
doesn't support it).

> +
> +      Macros are available in dt-bindings/iio/adc/adi,ad4691.h:
> +        AD4691_TRIGGER_EVENT_BUSY, AD4691_TRIGGER_EVENT_DATA_READY
> +        AD4691_TRIGGER_PIN_GP0
> +    const: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - vio-supply
> +  - reset-gpios
> +
> +allOf:
> +  # vref-supply and vrefin-supply are mutually exclusive, one is required
> +  - oneOf:
> +      - required:
> +          - vref-supply
> +      - required:
> +          - vrefin-supply
> +
> +  # CNV Clock Mode requires a reference clock.
> +  - if:
> +      required:
> +        - pwms
> +    then:
> +      required:
> +        - clocks
> +
> +  # CNV Clock Mode (pwms present) without SPI offload requires a DRDY interrupt.
> +  # Offload configurations expose '#trigger-source-cells' instead.
> +  - if:
> +      required:
> +        - pwms
> +      not:
> +        required:
> +          - '#trigger-source-cells'
> +    then:
> +      required:
> +        - interrupts
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    /* Example: AD4692 in CNV Clock Mode (pwms present) with standard SPI */
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@0 {
> +            compatible = "adi,ad4692";
> +            reg = <0>;
> +            spi-cpol;
> +            spi-cpha;
> +            spi-max-frequency = <40000000>;
> +
> +            vio-supply = <&vio_supply>;
> +            vref-supply = <&vref_5v>;
> +
> +            reset-gpios = <&gpio 10 GPIO_ACTIVE_HIGH>;

I would expect reset to be active low to match the hardware.

> +
> +            clocks = <&ref_clk>;
> +
> +            pwms = <&pwm_gen 0 0>;
> +            pwm-names = "cnv";

Should we also include the trigger in this example?

> +
> +            interrupts = <12 4>;
> +        };
> +    };
> +
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    /* Example: AD4692 in Manual Mode (no pwms) with SPI Engine offload */
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@0 {
> +            compatible = "adi,ad4692";
> +            reg = <0>;
> +            spi-cpol;
> +            spi-cpha;
> +            spi-max-frequency = <31250000>;
> +
> +            vio-supply = <&vio_supply>;
> +            vrefin-supply = <&vrefin_supply>;
> +
> +            reset-gpios = <&gpio 10 GPIO_ACTIVE_HIGH>;
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 61bf550fd37c..9994d107d88d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1484,6 +1484,14 @@ W:	https://ez.analog.com/linux-software-drivers
>  F:	Documentation/devicetree/bindings/iio/adc/adi,ad4170-4.yaml
>  F:	drivers/iio/adc/ad4170-4.c
>  
> +ANALOG DEVICES INC AD4691 DRIVER
> +M:	Radu Sabau <radu.sabau@analog.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Supported
> +W:	https://ez.analog.com/linux-software-drivers
> +F:	Documentation/devicetree/bindings/iio/adc/adi,ad4691.yaml
> +F:	include/dt-bindings/iio/adc/adi,ad4691.h
> +
>  ANALOG DEVICES INC AD4695 DRIVER
>  M:	Michael Hennerich <michael.hennerich@analog.com>
>  M:	Nuno Sá <nuno.sa@analog.com>
> diff --git a/include/dt-bindings/iio/adc/adi,ad4691.h b/include/dt-bindings/iio/adc/adi,ad4691.h
> new file mode 100644
> index 000000000000..294b03974f48
> --- /dev/null
> +++ b/include/dt-bindings/iio/adc/adi,ad4691.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +
> +#ifndef _DT_BINDINGS_ADI_AD4691_H
> +#define _DT_BINDINGS_ADI_AD4691_H
> +
> +/* Trigger event types */
> +#define AD4691_TRIGGER_EVENT_BUSY	0
> +#define AD4691_TRIGGER_EVENT_DATA_READY	1
> +
> +/* Trigger GPIO pin selection */
> +#define AD4691_TRIGGER_PIN_GP0		0

Could probably do without a macro to give GP0/1/2/3 names since
it will be pretty obvious that 0 = GP0, etc.

> +
> +#endif /* _DT_BINDINGS_ADI_AD4691_H */
> 



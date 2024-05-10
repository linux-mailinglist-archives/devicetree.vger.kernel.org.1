Return-Path: <devicetree+bounces-66357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4C68C2938
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 19:28:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2415E2871E7
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 17:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BC1C182C3;
	Fri, 10 May 2024 17:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NwdxzvCv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A584818030
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 17:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715362116; cv=none; b=IxW+Q0sdVlCuRzCR4Ehv9EJWQQYLTFTUqbx08H2g8EgTiETNtINKKFWbZtmxreD6jluAWN1GGVEv3Ap6W6xryRPCoXlzKtTziFdKVgjuFiyuW/7EWKkJxE26bEffsSAZl6+aTrBE5r7KcyhANPtk2F/Byn3lnfQNeQhF+jYq7Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715362116; c=relaxed/simple;
	bh=qf8oKr6WwamfpnpYFNCQqPVeWG4DFXu0MVvhKXbSr5Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QFo/e8YPWaFxJBGKB0itfKNxevspigapLuC01RELAJTHIbCD+W8JpZB0yq7fmupoWcOToqIklACQqVlX49LqWr7Ri3l/dd+mLeAhuBkaPJZXfYNicTXfhV18lQkKn3aKdkmjzh7Lj+mISAY8hDTvSP/twkUDw1dndY6oTIAGm/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NwdxzvCv; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e564cad1f1so3045661fa.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 10:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715362111; x=1715966911; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T3rbohNuOg29gHEbrkJJS5rW7/8AkwQEBcxPdlAaH+o=;
        b=NwdxzvCvSYkZWtXUm1h0wXCioq734I5bnshzbtHQLyjiHJtWgejmrinMFOqZFPCkKW
         7FB4QKCLbu/8Q+ZgWCVpO41NoPRhu0+K4M8tizRhuG4A10Z7HtxZJztObzsjaTV+fO/m
         n2O84BWhFYG+VU3wJ0gvVOOF1UPnHIYnsyf2j2d8RT0QuzL4cXay2iKuBeumQsCMA7iT
         yjj9YtsYoz53ZLMZ/9Ov+4md3zDariQNcs95/LzGREo7bC67Et9E/vU+iZzwpS8cQ7Fx
         C3zXv0Tb1zAnzA1aQkregal1bAZeG6ShN1SRz6nQa2AazBbkN2f4kPlQWrv0Tb7ZqVct
         EBaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715362111; x=1715966911;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T3rbohNuOg29gHEbrkJJS5rW7/8AkwQEBcxPdlAaH+o=;
        b=ujCCHBBWYBQ0MJecq3EfPurj8+sHceagipbLyHH4joe5ypXi1102g3NFDS8lDLNncQ
         gnQiIF1xN5z0ClOLOmgUStfKOkq1HdI79HXOGqQohV49xls32DANPHCoAAz4v1Bds/lt
         srwlaG53NVqK8ZlJGw7s4qNn6UgWg6wB85PK0E/SDNjar1qekmLjJldzUShrCj6M2nGX
         /iSguxI4kU3pEY+dvq6go1GNeRt7R6aapZPsuWQBSYFP15/HWQeFXtQs1IdbvDBhyjRb
         l/h9VnsFdcIGOIFgoTpVBSFJmpiE3iA0CvKYNmJWqxgoUFAx4TE/SLWcE8mjZX61aeLl
         F/KA==
X-Forwarded-Encrypted: i=1; AJvYcCVAmdYJOmSmiB36ZJEpb9VW0bx1wDjgtuR4V+skaNhp1JQWOHsvZO5c2x5BP7D0m0KlrmoL/w1sBsSs3gCCfHq6iZ9f+CCK1rOIig==
X-Gm-Message-State: AOJu0YyynxHpzeBjLPHOGehQQBPGJuXl7v423XFZL3mKQ/xoNOWV1L+9
	UAW7YGBu/La8FitEBuglD4KW7oKgbLN9FE1pjK0YVQgCfF7t8QjuLeLyEuhdjgtgoP+U5QZ3rOW
	6L0DMBtGlrB2WnxjFuWW4c5ZZ0oSIWCtbqWq50A==
X-Google-Smtp-Source: AGHT+IFMvUPgTMGdHDvPMkxljT5mGM8cFkPuvoW6GLn0zBzdmPBKzcNovEPni24+gskmvrblYDYdOBqIoJzuri6qSfk=
X-Received: by 2002:a2e:8847:0:b0:2e2:2791:983e with SMTP id
 38308e7fff4ca-2e51fd451femr20534891fa.13.1715362110805; Fri, 10 May 2024
 10:28:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240510064053.278257-1-Mariel.Tinaco@analog.com> <20240510064053.278257-2-Mariel.Tinaco@analog.com>
In-Reply-To: <20240510064053.278257-2-Mariel.Tinaco@analog.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 10 May 2024 12:28:19 -0500
Message-ID: <CAMknhBFXk07HbP_pPg5wkW-9Ah2-66kGzZFvcvBNrbjfguHb4g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: dac: add docs for ad8460
To: Mariel Tinaco <Mariel.Tinaco@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Marcelo Schmitt <marcelo.schmitt1@gmail.com>, 
	Dimitri Fedrau <dima.fedrau@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 10, 2024 at 1:42=E2=80=AFAM Mariel Tinaco <Mariel.Tinaco@analog=
.com> wrote:
>
> This adds the bindings documentation for the 14-bit
> High Voltage, High Current, Waveform Generator
> Digital-to-Analog converter.
>
> Signed-off-by: Mariel Tinaco <Mariel.Tinaco@analog.com>
> ---
>  .../bindings/iio/dac/adi,ad8460.yaml          | 67 +++++++++++++++++++
>  MAINTAINERS                                   |  7 ++
>  2 files changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/dac/adi,ad8460.=
yaml
>
> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad8460.yaml b/=
Documentation/devicetree/bindings/iio/dac/adi,ad8460.yaml
> new file mode 100644
> index 000000000..924f76209
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad8460.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2024 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/dac/adi,ad8460.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD8460 DAC
> +
> +maintainers:
> +  - Mariel Tinaco <mariel.tinaco@analog.com>
> +
> +description: |
> +  Analog Devices AD8460 110 V High Voltage, 1 A High Current,
> +  Arbitrary Waveform Generator with Integrated 14-Bit High Speed DAC
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ad=
8460.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad8460
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 20000000
> +
> +  vref-supply:

It would be nice to make the property name match the pin name since
there is more than one reference voltage input.

refio-1p2v-supply:

> +    description: Drive voltage in the range of 1.2V maximum to as low as
> +      low as 0.12V through the REF_IO pin to adjust full scale output sp=
an

I don't seen anything in the datasheet named REF_IO. Is this a typo
and it should be REFIO_1P2V?

> +
> +  clocks:
> +    description: The clock for the DAC. This is the sync clock
> +
> +  adi,rset-ohms:
> +    description: Specify value of external resistor connected to FS_ADJ =
pin
> +      to establish internal HVDAC's reference current I_REF
> +    minimum: 2000
> +    maximum: 20000
> +

I see lots more pins on the datasheet, many of which should be trivial
to add bindings for (we prefer to have the bindings as complete as
possible even if the driver doesn't implement everything). Potential
candidates:

sdn-reset-gpios: (active high)
reset-gpios: (active low)
sdn-io-gpios: (active high)

hvcc-supply:
hvee-supply:
vcc-5v-supply:
vref-5v-supply:
dvdd-3p3v-supply:
avdd-3p3v-supply:

It also looks like there is a parallel interface for data, so I would
expect to see an io-backends property that links to the PHY used for
handling that.


> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +
> +    spi {
> +        dac@0 {
> +            compatible =3D "adi,ad8460";
> +            reg =3D <0>;
> +            spi-max-frequency =3D <8000000>;
> +            adi,rset-ohms =3D <2000>;
> +
> +            vref-supply =3D <&vrefio>;
> +            clocks =3D <&sync_ext_clk>;
> +        };
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 758c202ec..dae93df2a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1234,6 +1234,13 @@ W:       https://ez.analog.com/linux-software-driv=
ers
>  F:     Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
>  F:     drivers/iio/adc/ad7780.c
>
> +ANALOG DEVICES INC AD8460 DRIVER
> +M:     Mariel Tinaco <Mariel.Tinaco@analog.com>
> +L:     linux-iio@vger.kernel.org
> +S:     Supported
> +W:     https://ez.analog.com/linux-software-drivers
> +F:     Documentation/devicetree/bindings/iio/dac/adi,ad8460.yaml
> +
>  ANALOG DEVICES INC AD9739a DRIVER
>  M:     Nuno Sa <nuno.sa@analog.com>
>  M:     Dragos Bogdan <dragos.bogdan@analog.com>
> --
> 2.34.1
>
>


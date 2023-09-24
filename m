Return-Path: <devicetree+bounces-2783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD517AC828
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 14:54:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AF6C1281611
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 12:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32A1E1C36;
	Sun, 24 Sep 2023 12:54:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EFE1C13
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:54:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCA06C433CA;
	Sun, 24 Sep 2023 12:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695560047;
	bh=+KJTNe7SX1C846OXhqBOW9J0oFXf6Klu6aNARt8yEtE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jrj+8gLBFMHzjAX/N5/KB0zqflFiw5Smp0riZKiF0c/cHSKQoSnPU8y+qqHcwuiNM
	 zwt4UbULvgWo0royp2zwndMZB5jRkOdALC+chxETE+Ce2IDQ0EuVR6l6e/DWu1IhOD
	 nfZZFynTiDIXfuNP1b/6/IvL5ZCUQkZVqAip+5+kViMLwEW2xXBKWUCKhUNN6P+opo
	 B+FHiAi1o9ybXasq1Zzo0s1WQVtHkhJ9fiUG21zrAlY4sYiB5zAHxVAIF2bAnVU51H
	 rQsCJJ0A/qgvA3ImrJvtn5UHrmJNhu2kArMrVJQU9YzoMFiymzOSnKHiTUKLScYxhs
	 RgElrux9ojrlQ==
Date: Sun, 24 Sep 2023 13:53:59 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ivan Mikhaylov <fr0st61te@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: adc: provide max34408/9 device tree
 binding document
Message-ID: <20230924135359.6404a867@jic23-huawei>
In-Reply-To: <20230917211143.7094-2-fr0st61te@gmail.com>
References: <20230917211143.7094-1-fr0st61te@gmail.com>
	<20230917211143.7094-2-fr0st61te@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 18 Sep 2023 00:11:42 +0300
Ivan Mikhaylov <fr0st61te@gmail.com> wrote:

> The i2c driver with Rsense option for current monitoring.
>=20
> Signed-off-by: Ivan Mikhaylov <fr0st61te@gmail.com>

Hi Ivan,

Welcome to IIO!

Looks good, but there are a few things I'd add to make this describe the de=
vice
a little more fully and flexibly.  Ideally we want a binding to fully descr=
ibe
a device, even if the particular driver for Linux doesn't use all the featu=
res.
Some are easy though such as enabling regulators (that are probably turned =
on
already on your board)

Thanks,

Jonathan

> ---
>  .../bindings/iio/adc/maxim,max34408.yaml      | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max34=
408.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yam=
l b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> new file mode 100644
> index 000000000000..ae7c6ddb13d8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/maxim,max34408.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Two- and four-channel current monitors with overcurrent control.
> +
> +maintainers:
> +  - Ivan Mikhaylov <fr0st61te@gmail.com>
> +
> +description: |
> +  The MAX34408/MAX34409 are two- and four-channel current monitors that =
are
> +  configured and monitored with a standard I2C/SMBus serial interface. E=
ach
> +  unidirectional current sensor offers precision high-side operation wit=
h a
> +  low full-scale sense voltage. The devices automatically sequence throu=
gh
> +  two or four channels and collect the current-sense samples and average=
 them
> +  to reduce the effect of impulse noise. The raw ADC samples are compare=
d to
> +  user-programmable digital thresholds to indicate overcurrent condition=
s.
> +  Overcurrent conditions trigger a hardware output to provide an immedia=
te
> +  indication to shut down any necessary external circuitry.
> +
> +  Specifications about the devices can be found at:
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/MA=
X34408-MAX34409.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - maxim,max34408
> +      - maxim,max34409
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  maxim,rsense-val-micro-ohms:
=46rom the datasheet you link, it looks like this could be different for
the inputs?

> +    description:
> +      Adjust the Rsense value to monitor higher or lower current levels.
> +    enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000, 500000]

These come from Table 18 which is example values I think?  Not sure there
is anything limiting us to those particular values given the equation given
just above that table should apply more generally.

> +    default: 1000

Please add regulator definitions.

supply-vdd: true
and add it to the required properties. It might be provided by a stub regul=
ator
but we still list that as required.

Also good to add bindings for the other control pins that might be wired to=
 be
in the binding from the start - no need for the driver to use them though.
Looks like we have SHTDN and ENA here that could be wired to GPIOs on the h=
ost.

> +
> +required:
> +  - compatible
> +  - reg
> +  - maxim,rsense-val-micro-ohms
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        adc@1e {
> +              compatible =3D "maxim,max34409";
> +              reg =3D <0x1e>;
> +              maxim,rsense-val-micro-ohms =3D <1000>;
> +        };
> +    };



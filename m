Return-Path: <devicetree+bounces-7284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 228B07BFE69
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:51:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1DE82813D8
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B1681DFF9;
	Tue, 10 Oct 2023 13:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouUpsJv3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102B71DFF7
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:51:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B44E4C433C8;
	Tue, 10 Oct 2023 13:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696945881;
	bh=EpXqTphoLKu37K9NdPvllSGp61XV715UYGlavQy1hmM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ouUpsJv3gGrhyQ/2AcycBVMVM1BLgNdajK0z4aJoVCjvCcjfq3LXXlZ661XHX8m5Q
	 ATnKAwdODd+KWQIHEte0mMFeqqPRA+kSwu7/1C44Ci/Kab3OOSzMV+aaG4sHjrl1E+
	 6TZVM/QxDPxkhJPPydAMhoOBSCQHaDLkg16R6VS9Banse7fdooiAsgAMe5q5prVuwE
	 FwAH1fp4WKNRtuBV2ORZlfR39F0ToQ9KJ5y5CU+OiJQ+b2A3E84DEXFouOtisEoLW4
	 PTpXnsysSMMJf9fOh6fF2f0ChYhr8kHl+rY4kIiHJkvBiHrboWVX8hDXHDf/RsMP/F
	 ZcmCoYMSlvPsg==
Date: Tue, 10 Oct 2023 14:51:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Matti Vaittinen
 <mazziesaccount@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Paul Gazzillo
 <paul@pgazz.com>, Conor Dooley <conor+dt@kernel.org>, Stefan
 Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: light: Avago APDS9306
Message-ID: <20231010145130.3d5ff9c7@jic23-huawei>
In-Reply-To: <20231008154857.24162-2-subhajit.ghosh@tweaklogic.com>
References: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
	<20231008154857.24162-2-subhajit.ghosh@tweaklogic.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon,  9 Oct 2023 02:18:56 +1030
Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:

> Add devicetree bindings for Avago APDS9306 Ambient Light Sensor.
> 
> Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
> ---
>  .../bindings/iio/light/avago,apds9306.yaml    | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml
> new file mode 100644
> index 000000000000..e8bb897782fc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/light/avago,apds9306.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/light/avago,apds9306.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Avago APDS9306 Ambient Light Sensor
> +
> +maintainers:
> +  - Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
> +
> +description:
> +  Datasheet at https://docs.broadcom.com/doc/AV02-4755EN
> +
> +properties:
> +  compatible:
> +    const: avago,apds9306
> +
> +  reg:
> +    maxItems: 1
> +
> +  vin-supply:
> +    description: Regulator supply to the sensor

Why vin?  It seems to be vdd on the datasheet.
We tend to match the datasheet naming for power supplies as that is normally
what is seen on circuit board schematics.


> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        light-sensor@52 {
> +            compatible = "avago,apds9306";
> +            reg = <0x52>;
> +            interrupt-parent = <&gpiof>;
> +            interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
> +        };
> +    };
> +...



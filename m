Return-Path: <devicetree+bounces-12605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DB97DA73F
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 15:30:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 978FCB210E8
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 13:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BF414F9B;
	Sat, 28 Oct 2023 13:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQLY0nc5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DBE3C1E
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 13:30:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A968C433C8;
	Sat, 28 Oct 2023 13:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698499835;
	bh=WkdNOEVhRrZD1+qlH9V+lIII5rGeKECmjOho1RRiBUo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=IQLY0nc5Xwk3K6NsD/0KMQetNlS2TIjCGPfgLIEq4SFrtIv3iq2KpgEP18aApLC7Z
	 qb8D8WY8sjP2B3w0XhKfqDh/iKsfHNiTDXMsUEB+a1z/SUZcUiyQToYyvisP0v9pkh
	 G2kXMz8K+jCUmIH5D7orXEtTXxrKV+prlEHTrytwHJ1dcuiATsdDyzHpFYtTVJ/cXU
	 1s6VE4M7aNxrukL5hNZT0BYkHZSPZBSSsGEwwE10H7pNBIFyxLuVMkwqFzN0Hn0TG+
	 FTCxDyW7H4F28cu1sHkRhHMNIO6tnumjrdVW44tIFEqGUdjOlqH46CrxtQ7wPtlLuE
	 h//SAI8nuBc8A==
Date: Sat, 28 Oct 2023 14:29:44 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Matti Vaittinen <mazziesaccount@gmail.com>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>, Paul Gazzillo
 <paul@pgazz.com>, Matt Ranostay <matt@ranostay.sg>, Stefan Windfeldt-Prytz
 <stefan.windfeldt-prytz@axis.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: light: Avago APDS9306
Message-ID: <20231028142944.7e210eb6@jic23-huawei>
In-Reply-To: <20231027074545.6055-2-subhajit.ghosh@tweaklogic.com>
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
	<20231027074545.6055-2-subhajit.ghosh@tweaklogic.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 27 Oct 2023 18:15:44 +1030
Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:

> v1 -> v2
> - No change
> 
> v0 -> v1
> - Squashing Avago (Broadcom) APDS9300 and APDS9960 schemas into one as
>   they look similar
> - Adding support for APDS9306 in the same schema file
The fact this belongs below the --- has already been mentioned.

These first two things are different types of change.
Patch 1: Combine bindings.
Patch 2: Add new device entry to combined binding
Patch 3: Add driver support.

> - Adding mandatory interrupt property requirement for APDS9960 as per the
>   driver's probe method which fails if interrupt bindings are not defined.
>   Both APDS9300 and APDS9306 (this patch set) supports sensors with and
>   without hardware interrupt bindings
> - In the device tree example, replacing interrupt type number with macro
>   from irq.h
> - Updated the vin to vdd which is the same for all the three sensors
> - Used proper "Datasheet:" tags
> 
> Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
> ---
>  .../bindings/iio/light/avago,apds9300.yaml    | 35 ++++++++++++---
>  .../bindings/iio/light/avago,apds9960.yaml    | 44 -------------------
>  2 files changed, 30 insertions(+), 49 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> index 206af44f2c43..7a24a97d0594 100644
> --- a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> +++ b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
> @@ -4,17 +4,26 @@
>  $id: http://devicetree.org/schemas/iio/light/avago,apds9300.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Avago APDS9300 ambient light sensor
> +title: Avago Gesture, RGB, ALS and Proximity sensors
>  
>  maintainers:
>    - Jonathan Cameron <jic23@kernel.org>
> +  - Matt Ranostay <matt@ranostay.sg>
> +  - Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
>  
>  description: |
> -  Datasheet at https://www.avagotech.com/docs/AV02-1077EN
> +  Avago (Broadcom) optical and proximity sensors with I2C interfaces.
> +  Datasheet: https://docs.broadcom.com/doc/AV02-1077EN
> +  Datasheet: https://docs.broadcom.com/doc/AV02-4191EN
> +  Datasheet: https://docs.broadcom.com/doc/AV02-4755EN
>  
>  properties:
>    compatible:
> -    const: avago,apds9300
> +    oneOf:
Don't need the oneOf.  Lots of examples of this in tree!

       enum:
         - ...

> +      - enum:
> +          - avago,apds9300
> +          - avago,apds9306
> +          - avago,apds9960
>  
>    reg:
>      maxItems: 1
> @@ -22,14 +31,30 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> -additionalProperties: false
> +  vdd-supply: true
>  
>  required:
>    - compatible
>    - reg
>  
> +allOf:
> +  - $ref: ../common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - avago,apds9960
> +    then:
> +      required:
> +        - interrupts

It is very rare that a binding for a sensor 'requires' interrupts.
They are more commonly a nice to have.

Note that the driver failing doesn't mean the binding should change.
Unless there is a very strong requirement (polling can't be done for
some reason - or device is largely pointless with out the interrupt)
then we normally keep it optional in the binding.

Someone can fix the driver later if they care about it!

Also, if this fix is correct, it needs to be a precursor patch handing
just this tightening of the binding.  The rest of the series then goes
on top of that.

Jonathan


> +
> +additionalProperties: false
> +
>  examples:
>    - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
>      i2c {
>          #address-cells = <1>;
>          #size-cells = <0>;
> @@ -38,7 +63,7 @@ examples:
>              compatible = "avago,apds9300";
>              reg = <0x39>;
>              interrupt-parent = <&gpio2>;
> -            interrupts = <29 8>;
> +            interrupts = <29 IRQ_TYPE_EDGE_FALLING>;
>          };
>      };
>  ...
> diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
> deleted file mode 100644
> index f06e0fda5629..000000000000
> --- a/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> -%YAML 1.2
> ----
> -$id: http://devicetree.org/schemas/iio/light/avago,apds9960.yaml#
> -$schema: http://devicetree.org/meta-schemas/core.yaml#
> -
> -title: Avago APDS9960 gesture/RGB/ALS/proximity sensor
> -
> -maintainers:
> -  - Matt Ranostay <matt.ranostay@konsulko.com>
> -
> -description: |
> -  Datasheet at https://www.avagotech.com/docs/AV02-4191EN
> -
> -properties:
> -  compatible:
> -    const: avago,apds9960
> -
> -  reg:
> -    maxItems: 1
> -
> -  interrupts:
> -    maxItems: 1
> -
> -additionalProperties: false
> -
> -required:
> -  - compatible
> -  - reg
> -
> -examples:
> -  - |
> -    i2c {
> -        #address-cells = <1>;
> -        #size-cells = <0>;
> -
> -        light-sensor@39 {
> -            compatible = "avago,apds9960";
> -            reg = <0x39>;
> -            interrupt-parent = <&gpio1>;
> -            interrupts = <16 1>;
> -        };
> -    };
> -...



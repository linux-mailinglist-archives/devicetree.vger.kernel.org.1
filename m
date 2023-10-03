Return-Path: <devicetree+bounces-5291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A60247B5E53
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 02:42:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id A9719B20951
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 00:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CA03634;
	Tue,  3 Oct 2023 00:42:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D32632
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 00:42:05 +0000 (UTC)
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0C66B0
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:42:03 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3a707bc2397so58650b6e.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 17:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696293723; x=1696898523; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6NUDE2+H89he6BS9I3HNkP9B+FIe1jpB9GTuSekloXo=;
        b=vBL9U+8nnThHF7jmPYJB9EkvqZL2i7Nu1Ayg8VDxn4pNVMnJMlHeRmXe1i0KYdIh5D
         7fpmzF/73jQinW2lL4rG4Sv3HZK4cwDbcYACZxBpOyGWo/R9NlZgMtMy1uKXK+aW+Uew
         aIoE7hzrOtYOxZkEfLLY5MNpr+6iJO10cLkk+OjdnWSmG85GQuHC0ozkXna4HnblhL11
         /iG1jtqIIgHSNjI2ZSkMJ/XumEn84TMNj5bDJ3KFsukcNz493xbfcG3dXpFGHZA7aZRl
         DD/v/fpnOwsQXECQIbcy5FALWHzN3lN1iF2P5+CDQbvhZIFMgnhbu9qnTl10siywpBr9
         K0TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696293723; x=1696898523;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6NUDE2+H89he6BS9I3HNkP9B+FIe1jpB9GTuSekloXo=;
        b=oGHC/Ql0D/3TKibxEmAbHzVd98sOFWl/SRnodyVBYPWbQkmDEs0g2BYabs9kZNyn3n
         HDrtthfNu/nZdisTegmOcgYeK+yby3gkzE8G1YLLdFZ6qy+T6MmB6wwCUg93abI5w2Ty
         Y8+C+/YuV8WQoaXEERgnd2i0fe8bWbap/cq59mNzYUeeLhEOvPoUNYRvhfTEHCWjFHwk
         MYXJRptb7A6Xx1Aod/r2MzfKR9PQSkp7ANUdRlqMFYQcVtqbkqvsXkfmaVhnmVFYAxXX
         4+d5uIOFDYgL/Ss/hj7nIalbh2Wgqy847r27O2r/4ZPxMIhn8OcomZJSSKN6rl7QC0oT
         15NQ==
X-Gm-Message-State: AOJu0YwUse/IloasoaX3HGHgSHpeCxLNk/HLE1Ljhu8daXk1UqJ9/CZy
	KsD2lltzd00rYDnGm1cE/u2bnQ==
X-Google-Smtp-Source: AGHT+IGlw1kZKdt+UyAH31lC9JsO/OzHGFTE0E91BQ34s5sGYXbhHt7x/H/hFaTuM1t44AIWZKwO6w==
X-Received: by 2002:a05:6808:3614:b0:3ad:f5d8:2da9 with SMTP id ct20-20020a056808361400b003adf5d82da9mr10798904oib.4.1696293722812;
        Mon, 02 Oct 2023 17:42:02 -0700 (PDT)
Received: from octopus ([2400:4050:c3e1:100:783d:e8bb:e013:a869])
        by smtp.gmail.com with ESMTPSA id a20-20020a637f14000000b0057d86bb613esm75006pgd.45.2023.10.02.17.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 17:42:02 -0700 (PDT)
Date: Tue, 3 Oct 2023 09:41:58 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linus.walleij@linaro.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [RFC 4/4] dt-bindings: gpio: Add bindings for SCMI pinctrl based
 gpio
Message-ID: <ZRtjVnWhAK2CZaRM@octopus>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Rob Herring <robh@kernel.org>, sudeep.holla@arm.com,
	cristian.marussi@arm.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linus.walleij@linaro.org,
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
References: <20231002021602.260100-1-takahiro.akashi@linaro.org>
 <20231002021602.260100-5-takahiro.akashi@linaro.org>
 <20231002144155.GA1675188-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002144155.GA1675188-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

On Mon, Oct 02, 2023 at 09:41:55AM -0500, Rob Herring wrote:
> On Mon, Oct 02, 2023 at 11:16:02AM +0900, AKASHI Takahiro wrote:
> > A dt binding for SCMI pinctrl based gpio driver is defined in this
> > commit. It basically conforms to generic pinctrl-gpio mapping framework.
> 
> What is "generic pinctrl-gpio mapping framework"? DT doesn't have 
> frameworks.

I meant to refer to section 2.1-2.3 in "Documentation/devicetree/bindings/gpio/gpio.txt". The semantics is implemented in drivers/gpio/gpiolib(-of).c.

> > 
> > Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> > ---
> >  .../bindings/gpio/arm,scmi-gpio.yaml          | 71 +++++++++++++++++++
> >  1 file changed, 71 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml b/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
> > new file mode 100644
> > index 000000000000..2601c5594567
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/gpio/arm,scmi-gpio.yaml
> > @@ -0,0 +1,71 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/gpio/arm,scmi-gpio.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: SCMI pinctrl based generic GPIO controller
> > +
> > +maintainers:
> > +  - AKASHI Takahiro <akashi.takahiro@linaro.org>
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^scmi_gpio(@[0-9a-f]+)$"
> 
> Not the correct name.

How not?

> > +
> > +  compatible:
> > +    const: arm,scmi-gpio-generic
> 
> What makes it generic? No such thing. Just drop '-generic'.

I will discuss this issue in following Cristian's comment.

> 
> > +
> > +  gpio-controller: true
> > +
> > +  "#gpio-cells":
> > +    const: 2
> > +
> > +  gpio-ranges: true
> > +
> > +  gpio-ranges-group-names: true
> > +
> > +patternProperties:
> > +  "^.+-hog(-[0-9]+)?$":
> > +    type: object
> > +    properties:
> > +      gpio-hog: true
> > +      gpios: true
> > +      input: true
> > +      output-high: true
> > +      output-low: true
> > +      line-name: true
> > +
> > +    required:
> > +      - gpio-hog
> > +      - gpios
> 
> You don't need all this just 'required: [ gpio-hog ]'. Then the hog 
> schema will check the rest.

Okay.

> > +
> > +    additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - gpio-controller
> > +  - "#gpio-cells"
> > +  - gpio-ranges
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    scmi_gpio_0: scmi_gpio@0 {
> 
> gpio {
> 
> But doesn't SCMI have protocol numbers?
> 
> > +        compatible = "arm,scmi-gpio";
> > +        gpio-controller;
> > +        #gpio-cells = <2>;
> > +        gpio-ranges = <&scmi_pinctrl 0 10 5>,
> > +                      <&scmi_pinctrl 5 0 0>;
> > +        gpio-ranges-group-names = "",
> > +                                  "pinmux_gpio";
> > +    };
> > +
> > +    // Consumer:
> 
> Outside the scope of this binding. Drop this node.

Even though it's in an example?
"#gpio-cells" has a meaning in consumer side.

-Takahiro Akashi


> > +    sdhci0_pwrseq {
> > +        compatible = "mmc-pwrseq-emmc";
> > +        reset-gpios = <&scmi_gpio_0 0 GPIO_ACTIVE_LOW>;
> > +    };
> > -- 
> > 2.34.1
> > 


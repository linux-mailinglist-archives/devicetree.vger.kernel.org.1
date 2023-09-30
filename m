Return-Path: <devicetree+bounces-4801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5961C7B40B6
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 16:09:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D21FD281E5C
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 14:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62446134BF;
	Sat, 30 Sep 2023 14:09:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527CA2F49
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 14:09:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C917C433C8;
	Sat, 30 Sep 2023 14:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696082966;
	bh=hk3AhPgtuY5Ipeir8PTEBRwQE9bjMtb3/FCCgihi7II=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=K7pxfGkEQh8MeyGFqQ5h986qm2vtG+qycbl0qGkwQGD/FWzMKhwvb44aNA4PEITUH
	 7McwyDKHNOhCR4Rdwf9NwglznPkAa+wsNMbuFkyOjjpd7Np2vBcBc58VWY4Aeqi6Kn
	 as3m9ez6hT9Bg6YfAOdq0AwjKrLPoCRPB8RsYtpiXh/qKLK4nfU2orKyHvEi5qnm4R
	 L3fWk+rb6MvPYiOzg58QQNYyDbaeHspe8MJb3//YwOjbL/icDBjOdrirG9a/UD3bG4
	 /ovHG48XpnXf4Qsi6rgwedgX0FRDfS1n81tT6gssIgxmLnYTE/TE9Sibn+n5Vdw+E5
	 VUqQY/m8JBCYQ==
Date: Sat, 30 Sep 2023 15:09:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Ivan Mikhaylov <fr0st61te@gmail.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: adc: provide max34408/9 device tree
 binding document
Message-ID: <20230930150926.47c1e6eb@jic23-huawei>
In-Reply-To: <20230930-lusty-antihero-f381434ab682@spud>
References: <20230929200844.23316-1-fr0st61te@gmail.com>
	<20230929200844.23316-2-fr0st61te@gmail.com>
	<20230930-lusty-antihero-f381434ab682@spud>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 30 Sep 2023 10:37:09 +0100
Conor Dooley <conor@kernel.org> wrote:

> Hey,
> 
> On Fri, Sep 29, 2023 at 11:08:43PM +0300, Ivan Mikhaylov wrote:
> > The hardware binding for i2c current monitoring device with overcurrent
> > control.
> > 
> > Signed-off-by: Ivan Mikhaylov <fr0st61te@gmail.com>
> > ---
> >  .../bindings/iio/adc/maxim,max34408.yaml      | 101 ++++++++++++++++++
> >  1 file changed, 101 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > new file mode 100644
> > index 000000000000..cdf89fa4c80e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > @@ -0,0 +1,101 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iio/adc/maxim,max34408.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Two- and four-channel current monitors with overcurrent control
> > +
> > +maintainers:
> > +  - Ivan Mikhaylov <fr0st61te@gmail.com>
> > +
> > +description: |
> > +  The MAX34408/MAX34409 are two- and four-channel current monitors that are
> > +  configured and monitored with a standard I2C/SMBus serial interface. Each
> > +  unidirectional current sensor offers precision high-side operation with a
> > +  low full-scale sense voltage. The devices automatically sequence through
> > +  two or four channels and collect the current-sense samples and average them
> > +  to reduce the effect of impulse noise. The raw ADC samples are compared to
> > +  user-programmable digital thresholds to indicate overcurrent conditions.
> > +  Overcurrent conditions trigger a hardware output to provide an immediate
> > +  indication to shut down any necessary external circuitry.
> > +
> > +  Specifications about the devices can be found at:
> > +  https://www.analog.com/media/en/technical-documentation/data-sheets/MAX34408-MAX34409.pdf
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - maxim,max34408
> > +      - maxim,max34409
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  maxim,input1-rsense-val-micro-ohms:
> > +    description:
> > +      Adjust the Rsense value to monitor higher or lower current levels for
> > +      input 1.
> > +    enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000, 500000]
> > +    default: 1000
> > +
> > +  maxim,input2-rsense-val-micro-ohms:
> > +    description:
> > +      Adjust the Rsense value to monitor higher or lower current levels for
> > +      input 2.
> > +    enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000, 500000]
> > +    default: 1000
> > +
> > +  maxim,input3-rsense-val-micro-ohms:
> > +    description:
> > +      Adjust the Rsense value to monitor higher or lower current levels for
> > +      input 3.
> > +    enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000, 500000]
> > +    default: 1000
> > +
> > +  maxim,input4-rsense-val-micro-ohms:
> > +    description:
> > +      Adjust the Rsense value to monitor higher or lower current levels for
> > +      input 4.
> > +    enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000, 500000]
> > +    default: 1000  
> 
> Having 4 almost identical properties makes it seem like this should have
> some channel nodes, each containing an rsense-micro-ohms type property.
Agreed.  That is most flexible route if there is any chance of ending up
with more channel specific stuff in future.

There should also be some magic in here to rule out the input3 and input4
for the devices with only two channels. (lots of examples in tree)

Otherwise, in theory this could be an array I guess, but I'd also prefer
channel nodes.

> 
> > +
> > +  maxim,shtdn:
> > +    description:
> > +      Shutdown Output. Open-drain output. This output transitions to high impedance
> > +      when any of the digital comparator thresholds are exceeded as long as the ENA
> > +      pin is high.
> > +    type: boolean  
> 
> I don't understand what this property is used for. The description here,
> and below for "ena", read like they are the descriptions in the
> datasheet for the pin, rather than how to use the property.
> 
> The drivers don't appear to contain users either - what is the point of
> these properties?
> 
> > +
> > +  maxim,ena:
> > +    description:
> > +      SHTDN Enable Input. CMOS digital input. Connect to GND to clear the latch and
> > +      unconditionally deassert (force low) the SHTDN output and reset the shutdown
> > +      delay. Connect to VDD to enable normal latch operation of the SHTDN output.
> > +    type: boolean
> > +
> > +  supply-vdd: true  
> 
> As pointed out by the bot, this is not correct. You need to use a
> -supply affix, not a supply-prefix.
My error in earlier review (not enough coffee that day I guess :)

Anyhow it does show that the tests weren't run which isn't a good thing to see.

Jonathan

> 
> Thanks,
> Conor.
> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c {
> > +
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        adc@1e {
> > +              compatible = "maxim,max34409";
> > +              reg = <0x1e>;
> > +              maxim,input1-rsense-val-micro-ohms = <5000>;
> > +              maxim,input2-rsense-val-micro-ohms = <10000>;
> > +        };
> > +    };
> > -- 
> > 2.42.0
> >  



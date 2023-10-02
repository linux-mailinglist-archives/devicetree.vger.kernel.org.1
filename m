Return-Path: <devicetree+bounces-5048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4714E7B4EF3
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 11:22:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4C36B1C20864
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2EBE468B;
	Mon,  2 Oct 2023 09:22:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77C579DB
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:22:00 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7CF699;
	Mon,  2 Oct 2023 02:21:58 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.207])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Rzb7K3QN6z6K6dl;
	Mon,  2 Oct 2023 17:21:49 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Mon, 2 Oct
 2023 10:21:56 +0100
Date: Mon, 2 Oct 2023 10:21:55 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Ivan Mikhaylov <fr0st61te@gmail.com>
CC: Conor Dooley <conor@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, <linux-iio@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: adc: provide max34408/9 device tree
 binding document
Message-ID: <20231002102155.000030bb@Huawei.com>
In-Reply-To: <591e8c9a4018938df17cdfb55306813858904d9d.camel@gmail.com>
References: <20230929200844.23316-1-fr0st61te@gmail.com>
	<20230929200844.23316-2-fr0st61te@gmail.com>
	<20230930-lusty-antihero-f381434ab682@spud>
	<591e8c9a4018938df17cdfb55306813858904d9d.camel@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500006.china.huawei.com (7.191.161.198) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, 30 Sep 2023 22:38:58 +0300
Ivan Mikhaylov <fr0st61te@gmail.com> wrote:

> On Sat, 2023-09-30 at 10:37 +0100, Conor Dooley wrote:
> > Hey,
> >=20
> > On Fri, Sep 29, 2023 at 11:08:43PM +0300, Ivan Mikhaylov wrote: =20
> > > The hardware binding for i2c current monitoring device with
> > > overcurrent
> > > control.
> > >=20
> > > Signed-off-by: Ivan Mikhaylov <fr0st61te@gmail.com>
> > > ---
> > > =A0.../bindings/iio/adc/maxim,max34408.yaml=A0=A0=A0=A0=A0 | 101
> > > ++++++++++++++++++
> > > =A01 file changed, 101 insertions(+)
> > > =A0create mode 100644
> > > Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > >=20
> > > diff --git
> > > a/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > > b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > > new file mode 100644
> > > index 000000000000..cdf89fa4c80e
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > > @@ -0,0 +1,101 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iio/adc/maxim,max34408.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Two- and four-channel current monitors with overcurrent
> > > control
> > > +
> > > +maintainers:
> > > +=A0 - Ivan Mikhaylov <fr0st61te@gmail.com>
> > > +
> > > +description: |
> > > +=A0 The MAX34408/MAX34409 are two- and four-channel current monitors
> > > that are
> > > +=A0 configured and monitored with a standard I2C/SMBus serial
> > > interface. Each
> > > +=A0 unidirectional current sensor offers precision high-side
> > > operation with a
> > > +=A0 low full-scale sense voltage. The devices automatically sequence
> > > through
> > > +=A0 two or four channels and collect the current-sense samples and
> > > average them
> > > +=A0 to reduce the effect of impulse noise. The raw ADC samples are
> > > compared to
> > > +=A0 user-programmable digital thresholds to indicate overcurrent
> > > conditions.
> > > +=A0 Overcurrent conditions trigger a hardware output to provide an
> > > immediate
> > > +=A0 indication to shut down any necessary external circuitry.
> > > +
> > > +=A0 Specifications about the devices can be found at:
> > > +=A0
> > > https://www.analog.com/media/en/technical-documentation/data-sheets/M=
AX34408-MAX34409.pdf
> > > +
> > > +properties:
> > > +=A0 compatible:
> > > +=A0=A0=A0 enum:
> > > +=A0=A0=A0=A0=A0 - maxim,max34408
> > > +=A0=A0=A0=A0=A0 - maxim,max34409
> > > +
> > > +=A0 reg:
> > > +=A0=A0=A0 maxItems: 1
> > > +
> > > +=A0 interrupts:
> > > +=A0=A0=A0 maxItems: 1
> > > +
> > > +=A0 maxim,input1-rsense-val-micro-ohms:
> > > +=A0=A0=A0 description:
> > > +=A0=A0=A0=A0=A0 Adjust the Rsense value to monitor higher or lower c=
urrent
> > > levels for
> > > +=A0=A0=A0=A0=A0 input 1.
> > > +=A0=A0=A0 enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000,
> > > 500000]
> > > +=A0=A0=A0 default: 1000
> > > +
> > > +=A0 maxim,input2-rsense-val-micro-ohms:
> > > +=A0=A0=A0 description:
> > > +=A0=A0=A0=A0=A0 Adjust the Rsense value to monitor higher or lower c=
urrent
> > > levels for
> > > +=A0=A0=A0=A0=A0 input 2.
> > > +=A0=A0=A0 enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000,
> > > 500000]
> > > +=A0=A0=A0 default: 1000
> > > +
> > > +=A0 maxim,input3-rsense-val-micro-ohms:
> > > +=A0=A0=A0 description:
> > > +=A0=A0=A0=A0=A0 Adjust the Rsense value to monitor higher or lower c=
urrent
> > > levels for
> > > +=A0=A0=A0=A0=A0 input 3.
> > > +=A0=A0=A0 enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000,
> > > 500000]
> > > +=A0=A0=A0 default: 1000
> > > +
> > > +=A0 maxim,input4-rsense-val-micro-ohms:
> > > +=A0=A0=A0 description:
> > > +=A0=A0=A0=A0=A0 Adjust the Rsense value to monitor higher or lower c=
urrent
> > > levels for
> > > +=A0=A0=A0=A0=A0 input 4.
> > > +=A0=A0=A0 enum: [250, 500, 1000, 5000, 10000, 50000, 100000, 200000,
> > > 500000]
> > > +=A0=A0=A0 default: 1000 =20
> >=20
> > Having 4 almost identical properties makes it seem like this should
> > have
> > some channel nodes, each containing an rsense-micro-ohms type
> > property. =20
>=20
> Conor, I'll look through.
>=20
> >  =20
> > > +
> > > +=A0 maxim,shtdn:
> > > +=A0=A0=A0 description:
> > > +=A0=A0=A0=A0=A0 Shutdown Output. Open-drain output. This output tran=
sitions
> > > to high impedance
> > > +=A0=A0=A0=A0=A0 when any of the digital comparator thresholds are ex=
ceeded
> > > as long as the ENA
> > > +=A0=A0=A0=A0=A0 pin is high.
> > > +=A0=A0=A0 type: boolean =20
> >=20
> > I don't understand what this property is used for. The description
> > here,
> > and below for "ena", read like they are the descriptions in the
> > datasheet for the pin, rather than how to use the property.
> >=20
> > The drivers don't appear to contain users either - what is the point
> > of
> > these properties? =20
>=20
> ena and shtdn physical pins of hardware, in the previous version
> Jonathan asked about adding them into yaml even if it's not used in
> code. should I do it in some other way?

Yes, use the gpio bindings.

enable-gpios, isshutdown-gpios=20
perhaps - though try and find a similar example for the naming.

The shutdown one is a bit unusual in that it indicates the device
has shutdown for one of several possible reasons (IIRC)

Jonathan

>=20
> >  =20
> > > +
> > > +=A0 maxim,ena:
> > > +=A0=A0=A0 description:
> > > +=A0=A0=A0=A0=A0 SHTDN Enable Input. CMOS digital input. Connect to G=
ND to
> > > clear the latch and
> > > +=A0=A0=A0=A0=A0 unconditionally deassert (force low) the SHTDN outpu=
t and
> > > reset the shutdown
> > > +=A0=A0=A0=A0=A0 delay. Connect to VDD to enable normal latch operati=
on of
> > > the SHTDN output.
> > > +=A0=A0=A0 type: boolean
> > > +
> > > +=A0 supply-vdd: true =20
> >=20
> > As pointed out by the bot, this is not correct. You need to use a
> > -supply affix, not a supply-prefix. =20
>=20
> Oops.
>=20
> Thanks.
>=20
>=20



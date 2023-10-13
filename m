Return-Path: <devicetree+bounces-8415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B74957C8181
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:10:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E13BC1C20A63
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 09:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E50210976;
	Fri, 13 Oct 2023 09:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD3C10A00
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 09:09:57 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD6FB138;
	Fri, 13 Oct 2023 02:09:34 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.201])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4S6LKc3xjVz6K8sf;
	Fri, 13 Oct 2023 17:09:08 +0800 (CST)
Received: from localhost (10.126.172.163) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Fri, 13 Oct
 2023 10:09:31 +0100
Date: Fri, 13 Oct 2023 10:09:30 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: Ivan Mikhaylov <fr0st61te@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, <linux-iio@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: adc: provide max34408/9 device tree
 binding document
Message-ID: <20231013100930.000043b2@Huawei.com>
In-Reply-To: <2eafa89c-7c95-4bc1-85cb-a6d7417dcea8@linaro.org>
References: <20231007234838.8748-1-fr0st61te@gmail.com>
	<20231007234838.8748-2-fr0st61te@gmail.com>
	<20231010154042.2ef667b2@jic23-huawei>
	<383064a5b0863a4a616cd60cff8d4bc18e397fd7.camel@gmail.com>
	<20231012084052.504ac930@jic23-huawei>
	<e7b74daa9d0131246fd10f47aa4128bc8f8f3177.camel@gmail.com>
	<20231013091952.00002573@Huawei.com>
	<2eafa89c-7c95-4bc1-85cb-a6d7417dcea8@linaro.org>
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
X-Originating-IP: [10.126.172.163]
X-ClientProxiedBy: lhrpeml100002.china.huawei.com (7.191.160.241) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 13 Oct 2023 10:35:49 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 13/10/2023 10:19, Jonathan Cameron wrote:
> > On Thu, 12 Oct 2023 19:27:33 +0300
> > Ivan Mikhaylov <fr0st61te@gmail.com> wrote:
> >  =20
> >> On Thu, 2023-10-12 at 08:40 +0100, Jonathan Cameron wrote: =20
> >>> On Tue, 10 Oct 2023 23:22:48 +0300
> >>> Ivan Mikhaylov <fr0st61te@gmail.com> wrote:
> >>>    =20
> >>>> On Tue, 2023-10-10 at 15:40 +0100, Jonathan Cameron wrote:   =20
> >>>>> On Sun,=A0 8 Oct 2023 02:48:37 +0300
> >>>>> Ivan Mikhaylov <fr0st61te@gmail.com> wrote:
> >>>>> =A0    =20
> >>>>>> The hardware binding for i2c current monitoring device with
> >>>>>> overcurrent
> >>>>>> control.
> >>>>>>
> >>>>>> Signed-off-by: Ivan Mikhaylov <fr0st61te@gmail.com>
> >>>>>> ---
> >>>>>> =A0.../bindings/iio/adc/maxim,max34408.yaml=A0=A0=A0=A0=A0 | 141
> >>>>>> ++++++++++++++++++
> >>>>>> =A01 file changed, 141 insertions(+)
> >>>>>> =A0create mode 100644
> >>>>>> Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> >>>>>>
> >>>>>> diff --git
> >>>>>> a/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> >>>>>> b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> >>>>>> new file mode 100644
> >>>>>> index 000000000000..9749f1fd1802
> >>>>>> --- /dev/null
> >>>>>> +++
> >>>>>> b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> >>>>>> @@ -0,0 +1,141 @@
> >>>>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>>>>> +%YAML 1.2
> >>>>>> +---
> >>>>>> +$id:
> >>>>>> http://devicetree.org/schemas/iio/adc/maxim,max34408.yaml#
> >>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>>>> +
> >>>>>> +title: Two- and four-channel current monitors with overcurrent
> >>>>>> control
> >>>>>> +
> >>>>>> +maintainers:
> >>>>>> +=A0 - Ivan Mikhaylov <fr0st61te@gmail.com>
> >>>>>> +
> >>>>>> +description: |
> >>>>>> +=A0 The MAX34408/MAX34409 are two- and four-channel current
> >>>>>> monitors
> >>>>>> that are
> >>>>>> +=A0 configured and monitored with a standard I2C/SMBus serial
> >>>>>> interface. Each
> >>>>>> +=A0 unidirectional current sensor offers precision high-side
> >>>>>> operation with a
> >>>>>> +=A0 low full-scale sense voltage. The devices automatically
> >>>>>> sequence
> >>>>>> through
> >>>>>> +=A0 two or four channels and collect the current-sense samples
> >>>>>> and
> >>>>>> average them
> >>>>>> +=A0 to reduce the effect of impulse noise. The raw ADC samples
> >>>>>> are
> >>>>>> compared to
> >>>>>> +=A0 user-programmable digital thresholds to indicate overcurrent
> >>>>>> conditions.
> >>>>>> +=A0 Overcurrent conditions trigger a hardware output to provide
> >>>>>> an
> >>>>>> immediate
> >>>>>> +=A0 indication to shut down any necessary external circuitry.
> >>>>>> +
> >>>>>> +=A0 Specifications about the devices can be found at:
> >>>>>> +=A0
> >>>>>> https://www.analog.com/media/en/technical-documentation/data-sheet=
s/MAX34408-MAX34409.pdf
> >>>>>> +
> >>>>>> +properties:
> >>>>>> +=A0 compatible:
> >>>>>> +=A0=A0=A0 enum:
> >>>>>> +=A0=A0=A0=A0=A0 - maxim,max34408
> >>>>>> +=A0=A0=A0=A0=A0 - maxim,max34409
> >>>>>> +
> >>>>>> +=A0 "#address-cells":
> >>>>>> +=A0=A0=A0 const: 1
> >>>>>> +
> >>>>>> +=A0 "#size-cells":
> >>>>>> +=A0=A0=A0 const: 0
> >>>>>> +
> >>>>>> +=A0 reg:
> >>>>>> +=A0=A0=A0 maxItems: 1
> >>>>>> +
> >>>>>> +=A0 interrupts:
> >>>>>> +=A0=A0=A0 maxItems: 1
> >>>>>> +
> >>>>>> +=A0 powerdown-gpios:
> >>>>>> +=A0=A0=A0 description:
> >>>>>> +=A0=A0=A0=A0=A0 Shutdown Output. Open-drain output. This output
> >>>>>> transitions
> >>>>>> to high impedance
> >>>>>> +=A0=A0=A0=A0=A0 when any of the digital comparator thresholds are
> >>>>>> exceeded
> >>>>>> as long as the ENA
> >>>>>> +=A0=A0=A0=A0=A0 pin is high.
> >>>>>> +=A0=A0=A0 maxItems: 1
> >>>>>> +
> >>>>>> +=A0 shtdn-enable-gpios:=A0    =20
> >>>>>
> >>>>> I guess the review crossed with you sending v5.=A0 There is some
> >>>>> feedback on v4 you need
> >>>>> to address here.=A0    =20
> >>>>
> >>>> Jonathan, I thought I did, I've changed ena to powerdown-gpios from
> >>>> Krzysztof's comments but about this one pin I'm still not sure, it
> >>>> looks like *-enable-gpios (like in *-enable-gpios pins in
> >>>> iio/frequency/adi,adf4377.yaml) pin or is it not? Or maybe any
> >>>> other
> >>>> suggestions about naming of this one?
> >>>>
> >>>> Thanks.   =20
> >>>
> >>> shutdown-gpios and make the sense (active high / low) such that
> >>> setting
> >>> it results in teh device being shut down.
> >>> Or treat it as an enable and enable-gpios
> >>>
> >>> Something that indicates both shutdown and enable is confusing ;)
> >>>
> >>> Jonathan   =20
> >>
> >>
> >> Jonathan, then I make these changes:
> >>
> >> powerdown-gpios: -> output-enable: =20
> > Needs to retain the gpios bit as we want the standard gpio stuff to pick
> > them up. I'm not that keen on output-enable-gpios though.  The activity
> > here is very much 'shutdown because of error or not enabled' I think.
> > So perhaps we flip the sense and document that it needs to be active lo=
w?
> >  =20
> >> shtdn-enable-gpios: -> enable-gpios:
> >>
> >> Is it ok? =20
> >=20
> > Conor, Rob, Krzysztof - you probably have a better insight into this th=
an
> > I do.
> >  =20
>=20
> "enable-gpios" are for turning on a specific feature, not powering
> on/off entire device. For example to enable regulator output.
>=20
> "powerdown-gpios" are for turning device on/off.
>=20
> I don't know what do you have in your device.
Ok. Sounds like that what is enable-gpios above should be shutdown-gpios.

The other case is a device output indicating whether the device is
shutdown.  That can happen because it was told to do so (via the other gpio=
),
or because it is in an error state. What's a good naming convention for tha=
t?

Thanks,

Jonathan

>=20
> Best regards,
> Krzysztof
>=20
>=20



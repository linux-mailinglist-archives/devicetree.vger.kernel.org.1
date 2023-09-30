Return-Path: <devicetree+bounces-4871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0367B41F4
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 18:05:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0CCDC2835CD
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 16:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06CDB1775B;
	Sat, 30 Sep 2023 16:05:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E956815A6
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 16:05:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E349C433C9;
	Sat, 30 Sep 2023 16:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696089929;
	bh=B8HApJopjsGysG9kMK09Fn76dse5FPqZB8+iLH4XQ9k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MW/xi37n3fWl9V2XhRxzTzTA9IlsIcZ+hZ026aJlzXomNzVUAsKiWgwE1q/WfuGXC
	 R+1+DrB6tq2irZbtOQ4u6A7mUa14uvPb6z8Atthbuw2Xw4ga/L2e35oFDD+aIuwhwE
	 LojBMWQXl0xYTtCJ0vc1XkgMdW83wpSA3TUrEYDoaoCKXiTWF27BMC0h5Bss1qAvfI
	 IEtPriVDRafde9CQNjeWMYN0KTwK62YNjESG9Sq7N6FA5JQMLF9p98g5rJugoq4Nvm
	 uHHKYln4Fxo6pwuCBNF7UG6ERcAXCLoLAGnVWvye4ydzg8R/q1/bR4XyTKqljdvubA
	 FCpSOqurrF7ig==
Date: Sat, 30 Sep 2023 17:05:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jagath Jog J <jagathjog1996@gmail.com>
Cc: andriy.shevchenko@linux.intel.com, lars@metafoo.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC 1/2] dt-bindings: iio: imu: Add DT binding doc for BMI323
Message-ID: <20230930170530.0b8f185c@jic23-huawei>
In-Reply-To: <CAM+2EuJ8o5X2ucph8gic2=03bbLQmUCX=j3SFLrqD4Y6rwXs9A@mail.gmail.com>
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
	<20230918080314.11959-2-jagathjog1996@gmail.com>
	<20230924143710.7c6edc4a@jic23-huawei>
	<CAM+2EuJ8o5X2ucph8gic2=03bbLQmUCX=j3SFLrqD4Y6rwXs9A@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 28 Sep 2023 03:07:22 +0530
Jagath Jog J <jagathjog1996@gmail.com> wrote:

> HI Jonathan,
>=20
> On Sun, Sep 24, 2023 at 7:07=E2=80=AFPM Jonathan Cameron <jic23@kernel.or=
g> wrote:
> >
> > On Mon, 18 Sep 2023 13:33:13 +0530
> > Jagath Jog J <jagathjog1996@gmail.com> wrote:
> > =20
> > > Add devicetree description document for Bosch BMI323, a 6-Axis IMU.
> > >
> > > Signed-off-by: Jagath Jog J <jagathjog1996@gmail.com>
> > > ---
> > >  .../bindings/iio/imu/bosch,bmi323.yaml        | 81 +++++++++++++++++=
++
> > >  1 file changed, 81 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/iio/imu/bosch,b=
mi323.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/iio/imu/bosch,bmi323.y=
aml b/Documentation/devicetree/bindings/iio/imu/bosch,bmi323.yaml
> > > new file mode 100644
> > > index 000000000000..9c08988103c5
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/imu/bosch,bmi323.yaml
> > > @@ -0,0 +1,81 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iio/imu/bosch,bmi323.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Bosch BMI323 6-Axis IMU
> > > +
> > > +maintainers:
> > > +  - Jagath Jog J <jagathjog1996@gmail.com>
> > > +
> > > +description:
> > > +  BMI323 is a 6-axis inertial measurement unit that supports acceler=
ation and
> > > +  gyroscopic measurements with hardware fifo buffering. Sensor also =
provides
> > > +  events information such as motion, steps, orientation, single and =
double
> > > +  tap detection.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: bosch,bmi323
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  interrupt-names:
> > > +    enum:
> > > +      - INT1
> > > +      - INT2
> > > +    description: |
> > > +      set to "INT1" if INT1 pin should be used as interrupt input, s=
et
> > > +      to "INT2" if INT2 pin should be used instead =20
> >
> > Why not both?  Sure driver might elect to use only one, but the binding
> > describes the hardware not the driver and both might be wired. =20
>=20
> If both interrupt pins are wired, should the DTS file need to define
> both of the pins?

Yes it should. + we need the names to know which is which.
You could rely on order, but it's more flexible to not do so, particularly
when you also need to support case where only one is wired.


Jonathan




Return-Path: <devicetree+bounces-4870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2BE7B41EE
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 18:04:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CAD362835CD
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 16:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304B1171D3;
	Sat, 30 Sep 2023 16:04:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9ED16400
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 16:04:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67C38C433C7;
	Sat, 30 Sep 2023 16:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696089844;
	bh=uy+s2jrSaGO7rlv5j1HDB4iBkZhkxdyHSs6a8nZrnvI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=WlY+Qbc6QW4pVr2HwYC/satbNiuDKVSmaXTfyXcHh9hJDKsYgRa24Be10WA89AVTp
	 gwW84YfhFLhUAQDfS3F8umAhIdR0fvLQqPPsZYJNlPWILqV/U8z9R+k3IqMqHwaUMH
	 CCCsz61/r8eVvD1h1U8x/6/KkxDZ4fqpthm04c345w1jmIYlj9zFc7kFx+M4PIYQOX
	 GvBi9/Epq4SsT+XFYK25bq/IgT+A0yzMVhqE+Vjvo7GI8WKkx9NdOn4bnZPfDcpinb
	 9o/NoshcW0Jc5whsKb11PoDrJXUiYw6YTp3LCFolELgh42gREsSspoLcaYXTWz/RPw
	 BwHtl3phKZf4g==
Date: Sat, 30 Sep 2023 17:04:04 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ivan Mikhaylov <fr0st61te@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: adc: provide max34408/9 device tree
 binding document
Message-ID: <20230930170404.515395b1@jic23-huawei>
In-Reply-To: <f8735a6d81d485eb8e822e4fd55a00269ae688c2.camel@gmail.com>
References: <20230917211143.7094-1-fr0st61te@gmail.com>
	<20230917211143.7094-2-fr0st61te@gmail.com>
	<20230924135359.6404a867@jic23-huawei>
	<f8735a6d81d485eb8e822e4fd55a00269ae688c2.camel@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 25 Sep 2023 19:48:39 +0300
Ivan Mikhaylov <fr0st61te@gmail.com> wrote:

> On Sun, 2023-09-24 at 13:53 +0100, Jonathan Cameron wrote:
> > On Mon, 18 Sep 2023 00:11:42 +0300
> > Ivan Mikhaylov <fr0st61te@gmail.com> wrote:
> >  =20
> > > The i2c driver with Rsense option for current monitoring.
> > >=20
> > > Signed-off-by: Ivan Mikhaylov <fr0st61te@gmail.com> =20
> >=20
> > Hi Ivan,
> >=20
> > Welcome to IIO!
> >=20
> > Looks good, but there are a few things I'd add to make this describe
> > the device
> > a little more fully and flexibly.=C2=A0 Ideally we want a binding to fu=
lly
> > describe
> > a device, even if the particular driver for Linux doesn't use all the
> > features.
> > Some are easy though such as enabling regulators (that are probably
> > turned on
> > already on your board)
> >=20
> > Thanks,
> >=20
> > Jonathan
> >  =20
> > > ---
> > > =C2=A0.../bindings/iio/adc/maxim,max34408.yaml=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 63
> > > +++++++++++++++++++
> > > =C2=A01 file changed, 63 insertions(+)
> > > =C2=A0create mode 100644
> > > Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > >=20
> > > diff --git
> > > a/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > > b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > > new file mode 100644
> > > index 000000000000..ae7c6ddb13d8
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> > > @@ -0,0 +1,63 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iio/adc/maxim,max34408.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Two- and four-channel current monitors with overcurrent
> > > control.
> > > +
> > > +maintainers:
> > > +=C2=A0 - Ivan Mikhaylov <fr0st61te@gmail.com>
> > > +
> > > +description: |
> > > +=C2=A0 The MAX34408/MAX34409 are two- and four-channel current monit=
ors
> > > that are
> > > +=C2=A0 configured and monitored with a standard I2C/SMBus serial
> > > interface. Each
> > > +=C2=A0 unidirectional current sensor offers precision high-side
> > > operation with a
> > > +=C2=A0 low full-scale sense voltage. The devices automatically seque=
nce
> > > through
> > > +=C2=A0 two or four channels and collect the current-sense samples and
> > > average them
> > > +=C2=A0 to reduce the effect of impulse noise. The raw ADC samples are
> > > compared to
> > > +=C2=A0 user-programmable digital thresholds to indicate overcurrent
> > > conditions.
> > > +=C2=A0 Overcurrent conditions trigger a hardware output to provide an
> > > immediate
> > > +=C2=A0 indication to shut down any necessary external circuitry.
> > > +
> > > +=C2=A0 Specifications about the devices can be found at:
> > > +=C2=A0
> > > https://www.analog.com/media/en/technical-documentation/data-sheets/M=
AX34408-MAX34409.pdf
> > > +
> > > +properties:
> > > +=C2=A0 compatible:
> > > +=C2=A0=C2=A0=C2=A0 enum:
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - maxim,max34408
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - maxim,max34409
> > > +
> > > +=C2=A0 reg:
> > > +=C2=A0=C2=A0=C2=A0 maxItems: 1
> > > +
> > > +=C2=A0 interrupts:
> > > +=C2=A0=C2=A0=C2=A0 maxItems: 1
> > > +
> > > +=C2=A0 maxim,rsense-val-micro-ohms: =20
> > From the datasheet you link, it looks like this could be different
> > for
> > the inputs? =20
>=20
> Hi Jonathan, "maxim,input1-rsense-val-micro-ohms", "maxim,input2-
> rsense-val-micro-ohms" and etc would be better?

Sorry, missed this during the week (too many emails at work!)

Anyhow, I'd have suggested an array, but a better suggestion was
made anyway in reply to your v2.


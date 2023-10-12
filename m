Return-Path: <devicetree+bounces-8204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 605517C71CC
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:47:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91EDD1C209E0
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7015B28DB5;
	Thu, 12 Oct 2023 15:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LevFwFpy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E354273D7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:46:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9CD7C433C7;
	Thu, 12 Oct 2023 15:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697125617;
	bh=REtBZa8reasxyEfgbRlAa7AZo0WSj8gv4icvTE1IL6g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LevFwFpylTDyPIuMI4Jzt/nZXRVMSHT9pnY6QL5k2+EHdeoccGOJFp9AgM8w48saq
	 MHg1OtvfhdpP0gy7b1NR7FE/riKA0PKhcu86ibkx4j9sBlpfJ6eQB4TdDnZlUuzjTS
	 Tn7rJhKEA1AttdQDJXw4PCTgXKehMPE8TFWhdNBvluK95enI7sJOsTOozH12f3ihFN
	 sWCa3gwEx58XlbEPBcMZwoLwaW2BmbQ4bgMYAELkZXKGnuhXX+CgwL9o/39Oi9w3KY
	 6LQeuZ2p88j15QBwTVxGacM+jMR+eS/Owp5hLDVJZCunUSYJ30900SKFWGGHqaYlH9
	 fbK0kAyDRuoiA==
Date: Thu, 12 Oct 2023 16:46:53 +0100
From: Conor Dooley <conor@kernel.org>
To: Anshul Dalal <anshulusr@gmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: input: bindings for Adafruit Seesaw
 Gamepad
Message-ID: <20231012-woof-fit-8f5c163f07b0@spud>
References: <20231010184827.1213507-1-anshulusr@gmail.com>
 <20231011-powdering-recycled-71608e794eaa@spud>
 <f1796d1a-bcd0-414d-b4e1-806e93eb202b@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+Ch3KXm3gkqlOD2K"
Content-Disposition: inline
In-Reply-To: <f1796d1a-bcd0-414d-b4e1-806e93eb202b@gmail.com>


--+Ch3KXm3gkqlOD2K
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 12, 2023 at 12:29:58AM +0530, Anshul Dalal wrote:
> Hello,
>=20
> On 10/11/23 21:45, Conor Dooley wrote:
> > Hey,
> >=20
> > On Wed, Oct 11, 2023 at 12:18:23AM +0530, Anshul Dalal wrote:
> >> Adds bindings for the Adafruit Seesaw Gamepad.
> >>
> >> The gamepad functions as an i2c device with the default address of 0x50
> >> and has an IRQ pin that can be enabled in the driver to allow for a ri=
sing
> >> edge trigger on each button press or joystick movement.
> >>
> >> Product page:
> >>   https://www.adafruit.com/product/5743
> >> Arduino driver:
> >>   https://github.com/adafruit/Adafruit_Seesaw
> >>
> >> Signed-off-by: Anshul Dalal <anshulusr@gmail.com>
> >> ---
> >>
> >> Changes for v4:
> >> - Fixed the URI for the id field
> >> - Added `interrupts` property
> >>
> >> Changes for v3:
> >> - Updated id field to reflect updated file name from previous version
> >> - Added `reg` property
> >>
> >> Changes for v2:
> >> - Renamed file to `adafruit,seesaw-gamepad.yaml`
> >> - Removed quotes for `$id` and `$schema`
> >> - Removed "Bindings for" from the description
> >> - Changed node name to the generic name "joystick"
> >> - Changed compatible to 'adafruit,seesaw-gamepad' instead of
> >>   'adafruit,seesaw_gamepad'
> >>
> >>  .../input/adafruit,seesaw-gamepad.yaml        | 59 +++++++++++++++++++
> >>  1 file changed, 59 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/input/adafruit,s=
eesaw-gamepad.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/input/adafruit,seesaw-g=
amepad.yaml b/Documentation/devicetree/bindings/input/adafruit,seesaw-gamep=
ad.yaml
> >> new file mode 100644
> >> index 000000000000..e8e676006d2f
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/input/adafruit,seesaw-gamepad.=
yaml
> >> @@ -0,0 +1,59 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/input/adafruit,seesaw-gamepad.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Adafruit Mini I2C Gamepad with seesaw
> >=20
> > Binding mostly looks good to me. My main question is what is a seesaw?
> >=20
>=20
> Seesaw is a universal framework that enables extending I/O capabilities
> of the i2c master devices with a compatible breakout board. As it
> relates to the binding, this gamepad uses an AVR ATtiny816
> microcontroller that reads the data from the buttons and the joystick
> and sends the data to the master over i2c using the Seesaw framework.

Right. Not a framework I was aware of, thanks for explaining.

>=20
> >> +
> >> +maintainers:
> >> +  - Anshul Dalal <anshulusr@gmail.com>
> >> +
> >> +description: |
> >> +  Adafruit Mini I2C Gamepad
> >> +
> >> +    +-----------------------------+
> >> +    |   ___                       |
> >> +    |  /   \               (X)    |
> >> +    | |  S  |  __   __  (Y)   (A) |
> >> +    |  \___/  |ST| |SE|    (B)    |
> >> +    |                             |
> >> +    +-----------------------------+
> >> +
> >> +  S -> 10-bit percision bidirectional analog joystick
> >> +  ST -> Start
> >> +  SE -> Select
> >> +  X, A, B, Y -> Digital action buttons
> >> +
> >> +  Product page: https://www.adafruit.com/product/5743
> >> +  Arduino Driver: https://github.com/adafruit/Adafruit_Seesaw
> >=20
> > I'm not really sure what the arduino driver has to do with the binding.
> > Why is a link to it more relevant than the freebsd driver, or the linux
> > driver etc? Is there info about how the pad works in the arduino driver
> >=20
> > Otherwise, this seems good to me.

> The Arduino driver I linked was the only resource that had the
> implementation of the seesaw framework as well as the example code
> specific to this device:
> https://github.com/adafruit/Adafruit_Seesaw/tree/master/examples/Mini_I2C=
_Gamepad_QT
> On further thought, a link to the accompanying document from the
> manufacturer (https://cdn-learn.adafruit.com/downloads/pdf/gamepad-qt.pdf)
> might be more relevant for the binding which includes the hardware
> description as well as links to the above-mentioned Arduino driver.

A link to the manufacturer docs would be nice & if, as you say, the
arduino driver was a useful resource for understanding the hardware then
I suppose it can stay too :)

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--+Ch3KXm3gkqlOD2K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSgU7QAKCRB4tDGHoIJi
0qBbAQDkXpWdZQqk8AnLNCXjpHuzqn8N1ak3hT2yNwWlJI5MMAEAgeaWoOrvEHEi
GkHd0KtNDCVE2jKKyCIyF7/N2eOYuwA=
=rbZ4
-----END PGP SIGNATURE-----

--+Ch3KXm3gkqlOD2K--


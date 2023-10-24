Return-Path: <devicetree+bounces-11343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7713E7D54E7
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:11:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3885B281A7A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EEA32E65E;
	Tue, 24 Oct 2023 15:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W83XrDyJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418401170F
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:11:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81735C433C8;
	Tue, 24 Oct 2023 15:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698160299;
	bh=i3lEmr2804Re0R8BC/B+Wz81u5KMi4oOTUkxC/heGVk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W83XrDyJOKyT6S6VLNOjrOxU5Ac7Y20mPs1IVs/CzLIAk3UAnHl7q8NPubqOFMLYk
	 lwNGhkVY09SMBJ+kej6OBXOHypHzyy6YU5KT636cForgUFLZRWQg7UzndJMDW28kE4
	 D4FtNUShbcCOWROXAGdvYx9EpR53M80SjyjG9aNnvwT4GD0Y2GmUcuGFndixEcA5rV
	 qNM2USGw3khqy0okLuqr9Pc6F0nGfhDJPAzNpRA4gBStgbrS/8Hio7jLdQ6wsEh5t/
	 H2QMa8SHbOWmfGIKrUTZx6oFlfhY8gLkfp9XxivpJhxNrUM6udi9aFMv5CRahhuooz
	 YA/JytV7GprhQ==
Date: Tue, 24 Oct 2023 16:11:35 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Nuno =?iso-8859-1?Q?S=E1?= <noname.nuno@gmail.com>,
	Ramona Gradinariu <ramona.gradinariu@analog.com>, jic23@kernel.org,
	nuno.sa@analog.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: adis16460: Add
 'spi-cs-inactive-delay-ns' property
Message-ID: <20231024-backache-unranked-c4905d8944b7@spud>
References: <20231023140534.704312-1-ramona.gradinariu@analog.com>
 <20231023140534.704312-4-ramona.gradinariu@analog.com>
 <e97ac024cb2654507ed8f7af715f3604efefbdbb.camel@gmail.com>
 <20231023-repost-coma-2f67ea8b95af@spud>
 <5c600a6db6173a56251302da8d2f438435959bd2.camel@gmail.com>
 <8391fb67-e575-49e6-9857-806cb85e9e59@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AVu1vVpv5euJ77HU"
Content-Disposition: inline
In-Reply-To: <8391fb67-e575-49e6-9857-806cb85e9e59@linaro.org>


--AVu1vVpv5euJ77HU
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 03:47:16PM +0200, Krzysztof Kozlowski wrote:
> On 24/10/2023 08:53, Nuno S=E1 wrote:
> > On Mon, 2023-10-23 at 17:06 +0100, Conor Dooley wrote:
> >> On Mon, Oct 23, 2023 at 04:27:48PM +0200, Nuno S=E1 wrote:
> >>> On Mon, 2023-10-23 at 17:05 +0300, Ramona Gradinariu wrote:
> >>>> The adis16460 device requires a stall time between SPI
> >>>> transactions (during which the chip select is inactive),
> >>>> with a minimum value equal to 16 microseconds.
> >>>> This commit adds 'spi-cs-inactive-delay-ns' property, which should
> >>>> indicate the stall time between consecutive SPI transactions.
> >>>>
> >>>> Signed-off-by: Ramona Gradinariu <ramona.gradinariu@analog.com>
> >>>> ---
> >>>> changes in v2:
> >>>> =A0- added default value
> >>>> =A0- updated description
> >>>> =A0- updated commit message
> >>>> =A0.../devicetree/bindings/iio/imu/adi,adis16460.yaml=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 | 6 ++++++
> >>>> =A01 file changed, 6 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/iio/imu/adi,adis16460=
=2Eyaml
> >>>> b/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml
> >>>> index 4e43c80e5119..f10469b86ee0 100644
> >>>> --- a/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml
> >>>> +++ b/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml
> >>>> @@ -25,6 +25,12 @@ properties:
> >>>>
> >>>> =A0=A0 spi-cpol: true
> >>>>
> >>>> +=A0 spi-cs-inactive-delay-ns:
> >>>> +=A0=A0=A0 minimum: 16000
> >>>> +=A0=A0=A0 default: 16000
> >>>> +=A0=A0=A0 description:
> >>>> +=A0=A0=A0=A0=A0 Indicates the stall time between consecutive SPI tr=
ansactions.
> >>>> +
> >>>
> >>> You should drop the description...=20
> >>>
> >>> Also, give more time before posting a v2 so others get a chance to re=
view
> >>> your
> >>> patches. It's also better for you since you can gather more change re=
quests.
> >>
> >> Further, I don't see an answer to Krzysztof's question of why the stall
> >> time would not just be set to 16,000 ns in the driver, based on the
> >> compatible.
> >=20
> > Hi Conor,
> >=20
> > Regarding that, I'm the one to blame since I was the one asking for the=
 property
> > during internal review... The reason is that "spi-cs-inactive-delay-ns"=
 is
> > already part of spi-peripheral-props.yaml which we already reference. S=
o my
> > question would be why not using it?
> >=20
> > These devices are a bit sensitive regarding these timings. Not in devic=
es
> > supported by this driver but I already experienced having to set timing=
s bigger
> > than defined in the datasheet for spi to be reliable. this was true on =
a RPI but
> > might not be in another platform.
> >=20
> > Hence having the flexibility to change the time in an already supported=
 property
> > does sound good to me. If not set, we still use the default value based=
 on the
> > compatible. Now, if you tell me "let's just add this if we really get t=
he need
> > for it", I get it but I also don't understand why not add it now...

I don't object to having the property, it'd just be good for the commit
message to have mentioned that the minimum time may not be sufficient
for all configurations.

Cheers,
Conor.

> I think it is okay to document specific SPI peripheral constraints in
> each device. Just like we document sometimes SPI frequency. The v1 did
> not explain this, but I see in this commit msg some rationale.
>=20
> Best regards,
> Krzysztof
>=20

--AVu1vVpv5euJ77HU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTfepwAKCRB4tDGHoIJi
0m47AP9JuRzFY22arJqLQuWt5Tr58NL/3Hj7VXErM+HcZoe+/QD/Wrag8T3+WCAM
dWFxFeGkzqJcrP3fPRV3nAAtLUNslg4=
=u8oN
-----END PGP SIGNATURE-----

--AVu1vVpv5euJ77HU--


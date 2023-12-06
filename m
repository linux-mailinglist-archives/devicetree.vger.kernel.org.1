Return-Path: <devicetree+bounces-22372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8030F8073D7
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:40:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 109F0B20D8D
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E6AC405F8;
	Wed,  6 Dec 2023 15:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifIjbAQt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4171B381AE
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 15:40:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 427C5C433C7;
	Wed,  6 Dec 2023 15:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701877228;
	bh=AMfzvAO5OXH7nthn1R2FWxGUEIQNak/21Kw8bnyNgfg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ifIjbAQt4c0JQ0Whbh7WRkimSenj+lzCI+0M+g4SFIXKtK/TZcn1q7/wWd8QnpEC1
	 Gh7l6Z+0y+BjoWzH7rn4IBamREKsAYuMT3ZT9OzUJRYNRMQp0hEtA0oz2Gnuluefou
	 NV9Y7dZgKjlMaCtqRw6tkLSoOY0hSdCDZCrzcitli1IGw4uxHSW7/TiIrPXiCxDITj
	 O2fkNL6gAs0b3/5fyHFgZKPXdd9YWSHNMmNkmuII2Wy95pNamN5OvtxfdNr/ZuQekn
	 zj/OsVAKYMt1ndRpMjPverChTzUGXMyikSKJBNJKFVVWlUOzjuyRmcuQKF1/J1DJ7q
	 mvbq4G0nF1/HQ==
Date: Wed, 6 Dec 2023 15:40:21 +0000
From: Conor Dooley <conor@kernel.org>
To: Shengyang Chen <shengyang.chen@starfivetech.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	neil.armstrong@linaro.org, quic_jesszhan@quicinc.com,
	sam@ravnborg.org, airlied@gmail.com, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com, eric@anholt.net,
	thierry.reding@gmail.com, changhuang.liang@starfivetech.com,
	keith.zhao@starfivetech.com, jack.zhu@starfivetech.com,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: display: panel: raspberrypi: Add
 compatible property for waveshare 7inch touchscreen panel
Message-ID: <20231206-isolating-smoked-b490952029d0@spud>
References: <20231124104451.44271-1-shengyang.chen@starfivetech.com>
 <20231124104451.44271-2-shengyang.chen@starfivetech.com>
 <20231124-lesser-sinister-7f9cd7b80e35@spud>
 <2d48e460-e46e-431f-bd7b-e34ebe73a40c@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4u5wDHCnw45IR5T9"
Content-Disposition: inline
In-Reply-To: <2d48e460-e46e-431f-bd7b-e34ebe73a40c@starfivetech.com>


--4u5wDHCnw45IR5T9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 06, 2023 at 05:43:48PM +0800, Shengyang Chen wrote:
> Hi, Conor
>=20
> On 2023/11/24 20:31, Conor Dooley wrote:
> > On Fri, Nov 24, 2023 at 06:44:50PM +0800, Shengyang Chen wrote:
> >> The waveshare 7inch touchscreen panel is a kind of raspberrypi pi
> >> panel
> >=20
> > Can you be more specific about what "is a kind of rpi panel" means?
> > Are they using identical chips as controllers or something like that?
> >=20
>=20
> Wareshare panel has same i2c slave address and registers address with=20
> the original raspberry pi panel. They both use Atmel firmware and they
> got same reg id. It can be operated by using the driver of raspberry pi d=
river
> after some change of the code. So I suppose it may be a kind of raspberry=
 pi panel=20
> and discribe it in this way. It's my own judgement. Sorry about that.
> Maybe just like Dave said, It cloned the behaviour of the raspberri pi pa=
nel.
> I will change the discribtion in next version to not make other confused.
>=20
> By the way, we will try Stefan's method before next version.=20
> The method we used in this patch may be abandoned if Stefan's method is v=
erified in our platform.
> At that time yaml may also be changed to fit new method.

I don't know what Stefan's approach is, but I do not think that a
bindings patch should be dropped. The waveshare might be a clone, but it
is a distinct device. If the same driver can control both, then the
compatible setups that should be permitted are:
compatible =3D "raspberrypi,7inch-touchscreen-panel";
and
compatible =3D "waveshare,7inch-touchscreen-panel", "raspberrypi,7inch-touc=
hscreen-panel";

Cheers,
Conor.

> >> and it can be drived by panel-raspberrypi-touchscreen.c.
> >> Add compatible property for it.
> >>=20
> >> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> >> Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
> >> ---
> >>  .../bindings/display/panel/raspberrypi,7inch-touchscreen.yaml | 4 +++-
> >>  1 file changed, 3 insertions(+), 1 deletion(-)
> >>=20
> >> diff --git a/Documentation/devicetree/bindings/display/panel/raspberry=
pi,7inch-touchscreen.yaml b/Documentation/devicetree/bindings/display/panel=
/raspberrypi,7inch-touchscreen.yaml
> >> index 22a083f7bc8e..e4e6cb4d4e5b 100644
> >> --- a/Documentation/devicetree/bindings/display/panel/raspberrypi,7inc=
h-touchscreen.yaml
> >> +++ b/Documentation/devicetree/bindings/display/panel/raspberrypi,7inc=
h-touchscreen.yaml
> >> @@ -22,7 +22,9 @@ description: |+
> >> =20
> >>  properties:
> >>    compatible:
> >> -    const: raspberrypi,7inch-touchscreen-panel
> >> +    enum:
> >> +      - raspberrypi,7inch-touchscreen-panel
> >> +      - waveshare,7inch-touchscreen-panel
> >> =20
> >>    reg:
> >>      const: 0x45
> >> --=20
> >> 2.17.1
> >>=20
>=20
>=20
> thanks.
>=20
> Best Regards,
> Shengyang
>=20

--4u5wDHCnw45IR5T9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXCV5QAKCRB4tDGHoIJi
0lu+AP9S+mBLWn0c2W0GfWmBKz/Iv+21lMnJlHnXSv1Hh16NNgEA+55r2ib/hc12
310USnVcRIuSzUWHXrASafnfq5Sd6Qc=
=NiWe
-----END PGP SIGNATURE-----

--4u5wDHCnw45IR5T9--


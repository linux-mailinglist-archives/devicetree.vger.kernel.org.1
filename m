Return-Path: <devicetree+bounces-133023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0F69F903F
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:30:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5A1D18878C5
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AE5F1C2457;
	Fri, 20 Dec 2024 10:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="MnkTvBEJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE171C2DB4;
	Fri, 20 Dec 2024 10:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734690606; cv=none; b=YPjXlbk8ke+5Ure/AoOEBFrV1Sfba3seUf8BSSakzBBFJ9TEfV+qJiSwjcDihujKFeh9De6Izvp9Sq4CCcHxFhLMo04vATh7MAWhSQc2n2SLDPGrDY+NlbluZsvdQh050y9LaYc605xcj0i48PBoR3BZzRc+yLiBvsHtTrzXZ0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734690606; c=relaxed/simple;
	bh=9uOpkp0gZWrtNqPASXVSTu0SG1tgkL2li2UOqzv4Wow=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SNcrNilwrwqoSzpruBdIyzOlQCRUSIXWElmawglFZuaNJEPBwIoYFtDq5TqmYbS9NJJEsWNWAMlCDjhtzg6kaLEe9rK55l2ejWPIuaIIo6zElsR/AKV7WakRPlZE4DnFbqstG/A7kSdbBMFl/Fl6gZOoGfNBZswLj0qnFZVKSwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=MnkTvBEJ; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 871EB101D2932;
	Fri, 20 Dec 2024 11:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1734690595;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=o5+0LRU9BHm/vYrKwnjKnUl9lt1xT7pJYC4J0EE0Fuw=;
	b=MnkTvBEJfAbFhOWuvBdHfY9e/XL0Ba5PIgq9kv4oC3ifRpy1gh75vMph7U0ZxjeG+oiFPn
	8ELR4NPjLfHcykTxc7+kYyJZsZkof3+5YCvIc8yP2Dh8qVBJyS6/7JC8VUD+zW4PK/vHUH
	gYIju1yOoRT4fPDAs7TFFuVKKuS4ArQfKyTMu3h+zvAG4SUUVZFCAFRodW3Xj19YWMdrs+
	v/RvZNMXjTylOpXu/KsyuyLKVEIYu6370MbA5+sC0P07VOGuDkSLvZBMpTd0Tv5iC4GLvK
	KsounjmGrL3KlldB4PrmAklEa9Qac24hY6ouosNLQ0oA2gVrD1vKfEhRVRN6sg==
Date: Fri, 20 Dec 2024 11:29:50 +0100
From: Lukasz Majewski <lukma@denx.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam
 <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Stefan
 Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH v11 1/3] dt-bindings: display: Add
 powertip,{st7272|hx8238a} as DT Schema description
Message-ID: <20241220112950.4673bb3f@wsk>
In-Reply-To: <20241209105240.72d8d84a@wsk>
References: <20241107085705.490940-1-lukma@denx.de>
	<20241209105240.72d8d84a@wsk>
Organization: denx.de
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/25mHm/ToeN+o9iYIV0K=TSU";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Last-TLS-Session-Version: TLSv1.3

--Sig_/25mHm/ToeN+o9iYIV0K=TSU
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Dear Community,

> Dear Community,
>=20
> > This patch provides the DT Schema description of:
> > - powertip,st7272  320 x 240 LCD display
> > - powertip,hx8238a 320 x 240 LCD display
> >=20
> > Used with the different HW revisions of btt3 devices.
> >=20
> > Signed-off-by: Lukasz Majewski <lukma@denx.de>
> > Reviewed-by: Rob Herring <robh@kernel.org> =20
>=20
> Are there any more comments for this particular patch?
>=20
> If not - can it be applied as it prevents dts patchs to be pull by
> Shawn.

Gentle ping on this patch ...

>=20
> > ---
> >=20
> > Changes for v9:
> > - New patch
> >=20
> > Changes for v10:
> > - None
> >=20
> > Changes for v11:
> > - Combine both separate dt-bindings patches for powertip,st7272 and
> >   powertip,hx8238a into one
> > - Drop the quotes for in "title" entry of powertip*.yaml files
> > ---
> >  .../display/panel/powertip,hx8238a.yaml       | 29
> > +++++++++++++++++++ .../display/panel/powertip,st7272.yaml        |
> > 29 +++++++++++++++++++ 2 files changed, 58 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/display/panel/powertip,hx8238a.yaml
> > create mode 100644
> > Documentation/devicetree/bindings/display/panel/powertip,st7272.yaml
> >=20
> > diff --git
> > a/Documentation/devicetree/bindings/display/panel/powertip,hx8238a.yaml
> > b/Documentation/devicetree/bindings/display/panel/powertip,hx8238a.yaml
> > new file mode 100644 index 000000000000..b7d74faeb5d5 --- /dev/null
> > +++
> > b/Documentation/devicetree/bindings/display/panel/powertip,hx8238a.yaml
> > @@ -0,0 +1,29 @@ +# SPDX-License-Identifier: GPL-2.0-only OR
> > BSD-2-Clause +%YAML 1.2
> > +---
> > +$id:
> > http://devicetree.org/schemas/display/panel/powertip,hx8238a.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml# +
> > +title: Powertip Electronic Technology Co. 320 x 240 LCD panel
> > +
> > +maintainers:
> > +  - Lukasz Majewski <lukma@denx.de>
> > +
> > +allOf:
> > +  - $ref: panel-dpi.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: powertip,hx8238a
> > +      - {} # panel-dpi, but not listed here to avoid false select
> > +
> > +  height-mm: true
> > +  panel-timing: true
> > +  port: true
> > +  power-supply: true
> > +  width-mm: true
> > +
> > +additionalProperties: false
> > +
> > +...
> > diff --git
> > a/Documentation/devicetree/bindings/display/panel/powertip,st7272.yaml
> > b/Documentation/devicetree/bindings/display/panel/powertip,st7272.yaml
> > new file mode 100644 index 000000000000..f3622800f13f --- /dev/null
> > +++
> > b/Documentation/devicetree/bindings/display/panel/powertip,st7272.yaml
> > @@ -0,0 +1,29 @@ +# SPDX-License-Identifier: GPL-2.0-only OR
> > BSD-2-Clause +%YAML 1.2
> > +---
> > +$id:
> > http://devicetree.org/schemas/display/panel/powertip,st7272.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml# +
> > +title: Powertip Electronic Technology Co. 320 x 240 LCD panel
> > +
> > +maintainers:
> > +  - Lukasz Majewski <lukma@denx.de>
> > +
> > +allOf:
> > +  - $ref: panel-dpi.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: powertip,st7272
> > +      - {} # panel-dpi, but not listed here to avoid false select
> > +
> > +  height-mm: true
> > +  panel-timing: true
> > +  port: true
> > +  power-supply: true
> > +  width-mm: true
> > +
> > +additionalProperties: false
> > +
> > +... =20
>=20
>=20
>=20
>=20
> Best regards,
>=20
> Lukasz Majewski
>=20
> --
>=20
> DENX Software Engineering GmbH,      Managing Director: Erika Unter
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email:
> lukma@denx.de




Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Erika Unter
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/25mHm/ToeN+o9iYIV0K=TSU
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmdlRx4ACgkQAR8vZIA0
zr0XbAgA5iqj9b+C/98WlKQ+nnjBCEN9MDzEPcZlN+cQQMOfmPTl4Lq1pfZo5GBk
jvgj62dVsNxoP1NH9xy4Rg3EK/ziP9kiDt5MqNDsrqiKHHM9vXY8uwf61y1M2z3c
slHpUbCwmyhntSUThpKU9llWz29tBLyV7iTYPwaTk8Ca78wBRMCmsHy3TCxOisdW
311WkZNGPbtnPnNjyVPSa8CYOYOOsiExN/oKfiO5bo4k4jQhYSAClEeAAjrt5xBZ
Fh/nXmnkuB1+8/buKAfRaigA7erR4x63jns/Qml3mM+3/cM4gqhL+zcYYQrqNjix
1op08Bn9NIUeeeV6GlycDFZWBsVZug==
=w6Dt
-----END PGP SIGNATURE-----

--Sig_/25mHm/ToeN+o9iYIV0K=TSU--


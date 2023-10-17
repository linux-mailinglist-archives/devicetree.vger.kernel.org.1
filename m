Return-Path: <devicetree+bounces-9216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AC87CC168
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 13:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 721AC281CD6
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 11:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C971441A88;
	Tue, 17 Oct 2023 11:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MU9haWBN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5E041766
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 11:02:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03BB0C433C8;
	Tue, 17 Oct 2023 11:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697540556;
	bh=kfOljpmUeVLUNn5bQwDqyoFFMYqfHS7AT/5JQ2FpBV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MU9haWBNsqryNCw//fK2aS3/NLu+uGWV3Z6/ii9SkOOjnAT0nYMcVgdFs0UC+8lXf
	 B3VkUR1/zzsLk+vlcig4KfmlIQFB6vMM38vdDrewrw2An8eI4eBHktScXOL3PBey0a
	 1deh6EgO1PCDmgOyCFS5k6WBIOgmxpjrJbtpI3Ck1zIieZTWCHH1O5errFRFH6MX07
	 0XGPaFweEKsCQ5jWodNrBtrgdd48kSgpFpBNjcVptQqALbOVZmSUwr/Ie1KGk369FD
	 DY6odmIbfjTm1SwsyHs9jn012U++es/DTFUYqzcZHcPN0VjSWVucrvAuVADI5qKlqf
	 PPBAQl8CWy/JA==
Date: Tue, 17 Oct 2023 12:02:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Nik Bune <n2h9z4@gmail.com>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	skhan@linuxfoundation.org, stwiss.opensource@diasemi.com,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [v2 PATCH] dt-bindings: watchdog: da9062-wdt: convert txt to yaml
Message-ID: <20231017-able-unedited-b91872768fbd@spud>
References: <20231012-flaky-humvee-0a0532621940@spud>
 <20231014164942.154468-1-n2h9z4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="H9If0aFZImYCFheU"
Content-Disposition: inline
In-Reply-To: <20231014164942.154468-1-n2h9z4@gmail.com>


--H9If0aFZImYCFheU
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 14, 2023 at 06:49:42PM +0200, Nik Bune wrote:
> >This property is a boolean...
> >
> >> +    description:
> >> +      Set what happens on watchdog timeout. If this bit is set the
> >> +      watchdog timeout triggers SHUTDOWN, if cleared the watchdog tri=
ggers
> >> +      POWERDOWN. Can be 0 or 1.
> >
> >... but you say "can be 0 or 1". Does this refer to the bit value, or
> >the property? There are no in-kernel users of this property as far as a
> >quick grep shows so it is a bi hard to tell.
> >
> >Otherwise, I'm happy with this.
> >
> >Thanks,
> >Conor.
>=20
> Hello, thank you for your review!
>=20
> Good point.=20
> It looks like it is related to property itself.=20
>=20
> I checked other bindings, like https://www.kernel.org/doc/Documentation/d=
evicetree/bindings/iio/adc/adi%2Cad7192.yaml . They have fields of type boo=
lean with description =E2=80=9CWhen this bit is set to 1=E2=80=9D.
> So I put it as boolean.
>=20
> I have just checked a couple more, and looks like they are mostly uint32 =
types with enum, when it goes about 0, 1 bit value in a description. =20
> $ref: /schemas/types.yaml#/definitions/uint32
> enum: [0, 1]

It _seems_ like the intention was for this to be an enum, now that I
re-read the description, since it is being used to override the
behaviour from the OTP.

With that changed
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--H9If0aFZImYCFheU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS5pxgAKCRB4tDGHoIJi
0vDdAP9xUcabNaj3GHiQRWdCIChrWv/+Uensqug6xHSbCVt8FAD/ZxFMRrqarqId
945rEZAeqpZy7W9HJKmkV7fbu9U91gQ=
=HqZ4
-----END PGP SIGNATURE-----

--H9If0aFZImYCFheU--


Return-Path: <devicetree+bounces-16355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7297EE5DA
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 18:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9924B1F24398
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 17:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9765D30666;
	Thu, 16 Nov 2023 17:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tL5bXgoY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775A0364BC
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 17:24:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6940C433C8;
	Thu, 16 Nov 2023 17:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700155451;
	bh=6Uez4j1D+PV94+gqoUCDXgF4YMEOJqot79M3jVUUXcE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tL5bXgoYqER57kKf3S27zY1UmSnSytsgx9QMRh0kUUc/HRJ65MQtxQs/l0oGayDrW
	 Za0jzcrRlQtnLZ8QqiNBeF0RHj5D3klQ12XcWwVW+hr9e0wTLwcQ2EP10E0bbFnH5y
	 Pent9uuB/VMnqvp+m3syefqXBX2nk4WV6PL1CYKnpDQVyom+IsgGn6CnoyzfrBDBmS
	 +p12aQuhp0WricDi1IuBYGwhW4unEjgFPYjpi4i4/hVTVZDkXkFaAFR8ABCjsr6uKb
	 9kyh1Y1X/k4IZWt07tUl8Enu3mfHzBEtsRSqrl3Et9TT0R874EbP9R2bDBwQxh2QmW
	 kF+iFhop8mh3A==
Date: Thu, 16 Nov 2023 17:24:07 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Inki Dae <inki.dae@samsung.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: gpu: samsung: constrain clocks in
 top-level properties
Message-ID: <20231116-fit-secluding-58541c26d484@squawk>
References: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
 <20231112184403.3449-3-krzysztof.kozlowski@linaro.org>
 <20231113-sultry-cold-d63dd9f015d9@squawk>
 <20231116162855.GA2435337-robh@kernel.org>
 <e9daa8cc-9cdd-4b76-96b9-b9a6b1ef6f5e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fFmKGqJ6SO8LH1UG"
Content-Disposition: inline
In-Reply-To: <e9daa8cc-9cdd-4b76-96b9-b9a6b1ef6f5e@linaro.org>


--fFmKGqJ6SO8LH1UG
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 16, 2023 at 06:17:31PM +0100, Krzysztof Kozlowski wrote:
> On 16/11/2023 17:28, Rob Herring wrote:
> > On Mon, Nov 13, 2023 at 01:51:30PM +0000, Conor Dooley wrote:
> >> On Sun, Nov 12, 2023 at 07:44:01PM +0100, Krzysztof Kozlowski wrote:
> >>> When number of clock varies between variants, the Devicetree bindings
> >>> coding convention expects to have widest constraints in top-level
> >>> definition of the properties and narrow them in allOf:if:then block.
> >>>
> >>> This is more readable and sometimes allows to spot some errors in the
> >>> bindings.
> >>>
> >>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> >>
> >> =C5cked-by: Conor Dooley <conor.dooley@microchip.com>
> >=20
> >   ^
> >=20
> > Not an 'A'. I only caught this because I go thru everything=20
> > Acked/Reviewed-by first and this one was missed.
>=20
> And in Norwegian it is pronounced as "o", so this would be ocked-by :)

What on earth! The fedora install on this macbook I've been travelling
with does some odd things (clearly there's some setting I need to
disable) if I type something incorrectly and hit a backspace, but I use
a vim keybind to "type" my acks etc, so I am not sure that could have
been affected. FWIW,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.


--fFmKGqJ6SO8LH1UG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVZQNAAKCRB4tDGHoIJi
0gWAAP9W+XCybNMkVo8bMN5r4PJjQJGNCRNikfpBlS1m6dw74gEAltKpe/BflVoJ
60jjmtdd8w8JJuweFkYGUVs9o1/8rQQ=
=Y/mO
-----END PGP SIGNATURE-----

--fFmKGqJ6SO8LH1UG--


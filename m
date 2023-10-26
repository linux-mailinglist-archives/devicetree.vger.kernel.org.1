Return-Path: <devicetree+bounces-12142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 860227D8181
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:05:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40ADD281EF7
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9432B23743;
	Thu, 26 Oct 2023 11:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="FtQnivfn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801271A59A
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:05:48 +0000 (UTC)
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D74D7195
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=GrFG
	vbfeidm+alHjgtvfbrlEGdBVZ91PCRNVJyE2n3s=; b=FtQnivfn7Eapj7iiEDDH
	2bsIwK2h+0BTc5qjqIMMUxut3VVftEGvgOyLBZlp4StVLgtYcaJT8BObbwlmu3bN
	h3lud96BBk7C9MBGdlYnnh+JcZ/YBExC2TAmlyleTsUplYOJIpEHtI3bpK+JQMfr
	vmhoE6N9o0KTGne58rWMWosdNnnQX5ee/qqBqZpRw8Jm/fWACKJL9n+OLAt4yVSF
	+mHtKaPrfGuvYlOxsaRfwtoIX5ectZ8Jn39pKuipTnKo600z2aa+lQBJpjP4JGq5
	5a4b8jpTRx4yBA6GkZI/i9nNezimD5JL+drq0ufheO7N7L387hQc+53PwO9/jyY6
	dQ==
Received: (qmail 2945163 invoked from network); 26 Oct 2023 13:05:42 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Oct 2023 13:05:42 +0200
X-UD-Smtp-Session: l3s3148p1@pkF/jZwIWpFehhre
Date: Thu, 26 Oct 2023 13:05:41 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: i2c-demux-pinctrl: Convert to
 json-schema
Message-ID: <ZTpIBVTnEc0bkwth@ninjato>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <28c173dfbbc17403b0c5a6f27661d7bd33a86f84.1698068607.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0WBOsKIlUJq/1aDI"
Content-Disposition: inline
In-Reply-To: <28c173dfbbc17403b0c5a6f27661d7bd33a86f84.1698068607.git.geert+renesas@glider.be>


--0WBOsKIlUJq/1aDI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 03:53:00PM +0200, Geert Uytterhoeven wrote:
> Convert the pinctrl-based I2C bus demultiplexer Device Tree binding
> documentation to json-schema.
>=20
> Update the example to match reality.
>=20
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied to for-next, thanks!


--0WBOsKIlUJq/1aDI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmU6SAEACgkQFA3kzBSg
KbZPTQ/9HJyFypdF5mtVBnw2T6G5v4IPqogc28B48lU7SSVEoaxdJLA8Qag7nK0S
3qXUG11tXs1TWRhZEaa5UtLEh0pUuXURZPl39hXcPkiTVMBFH7pjJU/kDX6USFJh
cGSr2jKMh/CE1ud7c2Nt9PzPlAaA8c9vlyB+CT9lD1J+Rd78ZAop1csnHrvcbGsq
Fmgjtgj03wVT+YTL2uarRS1sBmxTviSikSHGuRYUjVUSDgo358ReWZdmXx0XkVzj
gQKyo1nl1s2xkhw3l8tzGqhxCtliYaYQRh3VAnDqu8xx2ljWdtXpOsj0NQlmiHDd
07BPoU1sEu4H17wCuT8Kss6XWvn2hA7oeLrRqE04cuZo4i9gemoRY3Mf0po2SykU
KEgR6SNXHMhCHhG5LsvNW5nXDmTKJ0v4ri3EdjyXiLcUui6orGNrtQuwV+RFmiiG
RulXcWPFRnshE70SHGqTzOxlN+5jAJl/rf9rXPF5FYkm7302GL0T/F2dZOV9FqL2
rPFV0V8YyNcc6+m2fQdMt6EfeS4WMiYfF/wmTl3e/04Ik6ppPSLRaEdCRcrW6zAC
5SHZE7eu+w1SX7+LbzGJ8RBahc62m6a8tZwAPCwMiAU/79ILUhQtItfRp33zTEMx
75rOwSQULMwT7cb3cSdzrOQjd4lAsa1R64/IqpkxVyXVyf+TRkU=
=MH8N
-----END PGP SIGNATURE-----

--0WBOsKIlUJq/1aDI--


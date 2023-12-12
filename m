Return-Path: <devicetree+bounces-24406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB9380F1E7
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 17:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B4E92817F4
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 16:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D997764F;
	Tue, 12 Dec 2023 16:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjLqLIs5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E015A77648
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 16:08:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 524DBC433C8;
	Tue, 12 Dec 2023 16:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702397306;
	bh=OH0G10DH+BAtW5ufCW11pSaAmGWPMbfRjouSrbJTQuw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kjLqLIs5wRJ/96ttv/ATtpwpcykIqyZ/Oembazzvr6zI+UegpxBctN+p5CLBHujuL
	 DnoEVYLXNejR5FZ/JZE2bsHDSPpYI7JjNZKVqtEoXTk6RVaZF/i1Ni6qjjzpjjL8ih
	 b+T3+v4ifHyX+jTHtn1OziAPwSsp2N/m35jg2aVWbLjJchME+Yn/Dxc7bBuxZ1OKsJ
	 JpMbv9Mxo/pML7Jcvu9xDgtznxY7pLnU1zS6w4JdN9kLnIype0DY1fYolK/1GIRnqg
	 iCQjeGTinvsrINqinEcpe2r+aGrwjWbbQrjkgbRie9902S5nvUBivWgY40n9dIVB4p
	 kDXs9UcE+KbFQ==
Date: Tue, 12 Dec 2023 16:08:22 +0000
From: Conor Dooley <conor@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, mparab@cadence.com, rogerq@kernel.org,
	s-vadapalli@ti.com
Subject: Re: [PATCH v2 4/5] dt-bindings: phy: cadence-torrent: Add a separate
 compatible for TI J7200
Message-ID: <20231212-headphone-dorsal-dcea42263636@spud>
References: <20231212114840.1468903-1-sjakhade@cadence.com>
 <20231212114840.1468903-5-sjakhade@cadence.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uVnzDENYDLNx9frF"
Content-Disposition: inline
In-Reply-To: <20231212114840.1468903-5-sjakhade@cadence.com>


--uVnzDENYDLNx9frF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 12, 2023 at 12:48:39PM +0100, Swapnil Jakhade wrote:
> TI J7200 uses Torrent SD0805 version which is a special version derived
> from Torrent SD0801 with some differences in register configurations.
> Add a separate compatible for TI J7200 platforms.
>=20
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--uVnzDENYDLNx9frF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXiFdQAKCRB4tDGHoIJi
0qFZAP0buWf516DdZnBglwCKgtqcA6Xdl/YA7o4Zq3WV3iMpRAEA+fbxnwYZdAWi
PYoesrgonvFDnfdaKZOcuCW/rzcwRAA=
=BDxH
-----END PGP SIGNATURE-----

--uVnzDENYDLNx9frF--


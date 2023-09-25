Return-Path: <devicetree+bounces-2949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB0B7AD007
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 88A0B2814B5
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 06:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365D6101E5;
	Mon, 25 Sep 2023 06:21:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253FD101D7
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:21:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D40D7C433C8;
	Mon, 25 Sep 2023 06:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695622896;
	bh=5xE4X9Uvhm2Ld2DTHCHGlUhAGCsPF0n96pM4jOOr9H0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=admc5vioEGMdxE4SWaTwv2TCavmm6fiX8RBpbxVHqSFTjJa6PuuVpsVAfIBzmA/TR
	 Fgph+zBaL94pX8TLciOuCiPVUazvMfv0cNRZ6da+0GeM4ihEGMCz4jtfi/OaWNV8hB
	 syGTrSL6HCKr759pT6XE2cpFVHeOusR5ww2jDpababIVCSoB8q2ob36XlqKCy8HRgm
	 PnkKDmnRMibafJIsYnV5mWmqJhvp32wK5JD1qfVpCP3+aRMVs1kkUQmoRPQNfM3e0H
	 k3AGxuEMyJPPNJLfd/Q9OSWIhvohuCDljvpj5chIWAG+9o5cmdWaoSDJe6hlSafXGJ
	 OKHl/UEnjVBMg==
Date: Mon, 25 Sep 2023 08:21:32 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: andi.shyti@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
	linux-imx@nxp.com, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: i2c: mxs: Pass ref and
 'unevaluatedProperties: false'
Message-ID: <ZREm7HNh6CrIR4xk@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Fabio Estevam <festevam@gmail.com>, andi.shyti@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org, linux-imx@nxp.com, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230923192619.601890-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GLgQzCIVP08t5UJ2"
Content-Disposition: inline
In-Reply-To: <20230923192619.601890-1-festevam@gmail.com>


--GLgQzCIVP08t5UJ2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 23, 2023 at 04:26:19PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> Running 'make dtbs_check DT_SCHEMA_FILES=3Di2c-mxs.yaml' throws
> several schema warnings such as:
> =20
> imx28-m28evk.dtb: i2c@80058000: '#address-cells', '#size-cells', 'codec@a=
', 'eeprom@51', 'rtc@68' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/i2c/i2c-mxs.yaml#
>=20
> Fix these warnings by passing a reference to i2c-controller.yaml#
> and using 'unevaluatedProperties: false' just like the yaml bindings
> of other I2C controllers.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied to for-current, thanks!


--GLgQzCIVP08t5UJ2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmURJugACgkQFA3kzBSg
Kba4vA/+NdRSQmt3W0bUhXrkvjlWSGCLgQsJPD0POtFAJnPoMqtMeTnqdbAzGo70
vGT5iewfH3kDtqAFZ72eGWRP31ZNeb3fLhJIjpcTMjopL4iMR/83xuPpdepQsb8v
TIvXLXwCTumMQETuoyvLmq8x1ZSEFlLBEHSdNHHlM7V2SG8cWdS1oNmpn14Qyaep
c2X4bAx2Plx9bwQOQNzkgz6VHVi8M/mzWQrkKPSh4G1QgE4vj/7kx9QJ7nxfAcx0
9SIl1tLmOtWqmnVcq+PLhC2GhRfxmMJBiYrxxkjSrqvK5MgUcuKgjz8/+nvSHU38
tRJbBRn+WIlQiwJ8+loQR52+uaa7unLgJW90gmca0L8FI6TRQxtJZm7GVAbWCHDF
xekpib3C8zvRt7AKHZsuRYC5e0GsGtict7BmeKBOMrr4op26D+nSQKXA8iq/leFv
XnupgbBv1mU8DN9PTrGHnUIrvwxOsK3d630zke795M7hqr8W1GJHN76Uai9PEcN4
GpnkEjnC12Mnvp5UlfyWoAEEQfMgSR58q85V+Kztt3j+vsDpYc1qtb4bg436CGrf
igA+ObIhYgZgsrPTFRZVJDfen8nE97jZ4grjHRLlT0CSuSCQ4SEWpEMQ+SuA5DxT
6CFEYwMH/UzsLJCUWFoBquN/f+T68/kfw/IxjM8dntKw3kFZEXs=
=MPVd
-----END PGP SIGNATURE-----

--GLgQzCIVP08t5UJ2--


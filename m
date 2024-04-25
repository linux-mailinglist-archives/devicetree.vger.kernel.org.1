Return-Path: <devicetree+bounces-62788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 057008B277B
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 19:18:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 289731C2476B
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 17:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0477414E2D8;
	Thu, 25 Apr 2024 17:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCa1v7Pd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4ED614D458
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 17:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714065505; cv=none; b=BkkPzYr2wiHh/Ttt1xRdFCgEQoCQTuoWsz7ADpWpVlkFSRctO+WRRBDw7q9xacfizEaM7PqrzZh7pLEc8kLvO1Qg8EhBQ8FPOKahdDc+bxrDD1qCBdXyskigUjpvxgLMQVHqCSIUuGKvgbBP0eSKKGWckytcbomlciQ1XK8UUB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714065505; c=relaxed/simple;
	bh=MzJj+oXi8VQZIbbs58S4IEvoexcYJr9o9tN/ucx3Rjc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N2EvOkx4TH+jUmdxvEynU/KafywU/ehda22lXmgMoyNphidQdsnyk92xe/7gnGY7tO7yWfOcdU0YZrZwmP1CuFhUsjPH95Ue/HTw1Kq0Lk22P5zVL55mUkQj77C2GUKrghDTX+vKMflpPIp/1GX72V6vEDU3TYMvscNqJ7potvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCa1v7Pd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB0F7C113CC;
	Thu, 25 Apr 2024 17:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714065504;
	bh=MzJj+oXi8VQZIbbs58S4IEvoexcYJr9o9tN/ucx3Rjc=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=oCa1v7PdJLv7R7493ODQ8wgCphJvudLoKSCtXohCEZsmyTU1WgjCIBaX/3Oj56wv3
	 dbtLqmF4VGXOulCgrc88joU9RulJ+f0Y5838LGg1z9jvdhyxmG+3qBmPqd7V44pUfl
	 dsgcaIZkKaFEwr8lTtbahwuA3bwObrA2DwSdMUbFRiSw+W8Ky1oV4qfMWVxkXVQndu
	 zFb9sz1q6jh6+ujJsGsoJV5G6Ia05F5bXkn0tPrC4JXEIPKnvAF0nCx3+CIeOYFne1
	 xXLHBoPjsMCAs5JTdi96dlLxOQOaw461zzIS4IAihbSu0hkafF4uisCSrm+9RSrBc0
	 2BtgvNArUpy1A==
Date: Thu, 25 Apr 2024 18:18:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Andy Shevchenko <andy@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	arm@kernel.org,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	soc@kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>,
	Hans de Goede <hdegoede@redhat.com>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v7 1/9] dt-bindings: arm: add cznic,turris-omnia-mcu
 binding
Message-ID: <20240425-available-surname-3f8e210801f7@spud>
References: <20240424173809.7214-1-kabel@kernel.org>
 <20240424173809.7214-2-kabel@kernel.org>
 <171398257727.225434.10521944963040550546.robh@kernel.org>
 <20240424202246.3a686f19@dellmb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JsFc0xvd8zQae3zk"
Content-Disposition: inline
In-Reply-To: <20240424202246.3a686f19@dellmb>


--JsFc0xvd8zQae3zk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2024 at 08:22:46PM +0200, Marek Beh=FAn wrote:
> On Wed, 24 Apr 2024 13:16:18 -0500
> Rob Herring <robh@kernel.org> wrote:
>=20
> > On Wed, 24 Apr 2024 19:38:00 +0200, Marek Beh=FAn wrote:
> > > Add binding for cznic,turris-omnia-mcu, the device-tree node
> > > representing the system-controller features provided by the MCU on the
> > > Turris Omnia router.
> > >=20
> > > Signed-off-by: Marek Beh=FAn <kabel@kernel.org>
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > ---
> > >  .../firmware/cznic,turris-omnia-mcu.yaml      | 86 +++++++++++++++++=
++
> > >  MAINTAINERS                                   |  1 +
> > >  2 files changed, 87 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/firmware/cznic,=
turris-omnia-mcu.yaml
> > >  =20
> >=20
> > My bot found errors running 'make dt_binding_check' on your patch:
> >=20
> > yamllint warnings/errors:
> >=20
> > dtschema/dtc warnings/errors:
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings=
/firmware/cznic,turris-omnia-mcu.yaml: $id: Cannot determine base path from=
 $id, relative path/filename doesn't match actual path or filename
> >  	 $id: http://devicetree.org/schemas/arm/cznic,turris-omnia-mcu.yaml
> >  	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/=
bindings/firmware/cznic,turris-omnia-mcu.yaml
> >=20
> > doc reference errors (make refcheckdocs):
> >=20
> > See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/2024=
0424173809.7214-2-kabel@kernel.org
> >=20
> > The base for the series is generally the latest rc1. A different depend=
ency
> > should be noted in *this* patch.
> >=20
> > If you already ran 'make dt_binding_check' and didn't see the above
> > error(s), then make sure 'yamllint' is installed and dt-schema is up to
> > date:
> >=20
> > pip3 install dtschema --upgrade
> >=20
> > Please check and re-submit after running the above command yourself. No=
te
> > that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> > your schema. However, it must be unset to test all examples with your s=
chema.
> >=20
>=20
> Sigh. I moved the patch bud did not change it in $id...

A bit needless, given you've got a tag from Krzysztof, but with that fixed
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--JsFc0xvd8zQae3zk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiqQWwAKCRB4tDGHoIJi
0nS7AP9N4obSA0pQzhXbteUp09qN1uaGWEj5vYyW0Ts0rY77iwD8DPqqFaX9mRrP
8T8Nv2Fragom90OmTGjTcblAipbbIAQ=
=zOmO
-----END PGP SIGNATURE-----

--JsFc0xvd8zQae3zk--


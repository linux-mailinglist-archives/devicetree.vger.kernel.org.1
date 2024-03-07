Return-Path: <devicetree+bounces-49115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD437874EB1
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 13:14:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A60E1C21794
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 12:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8849D129A7C;
	Thu,  7 Mar 2024 12:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVys6ewv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FCA3233
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 12:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709813665; cv=none; b=nK+bq9j4+Tj3En3uzhz8S1SeA0CrmnSLQ5f+m9Q4fbf2rc06exv1ZjaKoa8huKY4cj2xvOjJSqQvBa5yMV1LyJGizUSkLPbKHoSNlF1XA9dAYBCKgjP38Lfh0bMcHKOjj9QT1aGssjvsTni7QdsauYmkH6JoeKMUfTXSNJHvT40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709813665; c=relaxed/simple;
	bh=pIS/CiY1Hsk0Zz/H+YnIJOLVvW1rgO+094zHpaQCSZU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=owS3Zta/e2SxjoydbLCZhwckl7Gie8lA2u1IXgCvesuJntpVpiF4ooeWeuf6BSvKltxYdsNWh3X/LtMEvSTEN1DxsuZ4/HkYzokLIwxbJyzKPFpdrAy+dchDy/9UpSDeT3LoxD7EEs5IJnIAXS4pZASgCg1WNR758cKGxccaN7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVys6ewv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C5BDC433C7;
	Thu,  7 Mar 2024 12:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709813664;
	bh=pIS/CiY1Hsk0Zz/H+YnIJOLVvW1rgO+094zHpaQCSZU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jVys6ewv8vokZXdRKI15KU14krJQhiDSu9kpzjPX/blMTVqhnJYQvnYA2F4f/aIIC
	 vPGpOe1rtBPUebpwIIY8COVaSaLbfsPVTpKJJuCIuTPvCUXPr3Z/Lik4LZjYNbbgGi
	 LISoAa1dVNbplpr57PGCg6gwPPSCBDekB9erUMoZPM/Io/Gp8TEZoLqEVM+xmnfyFu
	 kD1Pg8uso5iFv0qRp1i8pmI/ZhORM4bEctu2kCfPtreOKp63igNgrXgBIrRxDasyem
	 JO7z5uHVp6cvKYbHPHuTyNBuGpdarEEo0ze+h1s9MiDLIJrGGEj8F6h/GXa+Bt9cnc
	 j4f2WZoxj/m4Q==
Date: Thu, 7 Mar 2024 13:14:21 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	nbd@nbd.name, john@phrozen.org, devicetree@vger.kernel.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com, lorenzo.bianconi83@gmail.com
Subject: Re: [PATCH v3 3/4] arm64: add Airoha EN7581 platform
Message-ID: <ZemvnYjbHHIVqvU3@lore-desk>
References: <cover.1709768157.git.lorenzo@kernel.org>
 <b50faa94923389d435ac37c3094c269a46bddaea.1709768157.git.lorenzo@kernel.org>
 <6ff8ed9a-f70c-4ef5-97a7-37ddba4db7f6@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A2pA6n7WRNQvthXs"
Content-Disposition: inline
In-Reply-To: <6ff8ed9a-f70c-4ef5-97a7-37ddba4db7f6@collabora.com>


--A2pA6n7WRNQvthXs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 07/03/24 01:11, Lorenzo Bianconi ha scritto:
> > From: Daniel Danzberger <dd@embedd.com>
> >=20
> > Introduce the Kconfig entry for the Airoha EN7581 multicore architecture
> > available in the Airoha EN7581 evaluation board.
> >=20
> > Signed-off-by: Daniel Danzberger <dd@embedd.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >   arch/arm64/Kconfig.platforms | 13 +++++++++++++
> >   1 file changed, 13 insertions(+)
> >=20
> > diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> > index 24335565bad5..bbe61e233034 100644
> > --- a/arch/arm64/Kconfig.platforms
> > +++ b/arch/arm64/Kconfig.platforms
> > @@ -8,6 +8,19 @@ config ARCH_ACTIONS
> >   	help
> >   	  This enables support for the Actions Semiconductor S900 SoC family.
> > +config ARCH_AIROHA
> > +	bool "Airoha SoC Support"
> > +	select ARM_AMBA
>=20
> ARM_AMBA is selected by ARM64 already, you don't need that one here.

ack, I will fix it in v4.

>=20
> > +	select ARM_GIC
> > +	select ARM_GIC_V3
>=20
> ARM_GIC and ARM_GIC_v3 are also selected by ARM64

ack, I will fix it in v4.

>=20
> > +	select ARM_PSCI
>=20
> ARM64 selects ARM_PSCI_FW (which should select ARM_PSCI, please verify)

ARM64 selects ARM_PSCI_FW but ARM_PSCI_FW does not seem to select ARM_PSCI.
Am I missing something?

>=20
> > +	select HAVE_ARM_ARCH_TIMER
> > +	select COMMON_CLK
>=20
> ARM64 selects COMMON_CLK already.

ack, I will fix it in v4.

>=20
> > +	help
> > +	  This enables support for Airoha EN7581 multicore architecture
> > +	  available on the following SoCs:
> > +	   - Airoha EN7581 Evaluation Board
>=20
> You're not going to add one ARCH entry for each MTK Airoha platform, are =
you?
>=20
> (if you are, that's wrong)
>=20
> ....so the help text must be refactored; you could say something like
> "This enables support for the ARM64 based Airoha SoCs"

ack, I will fix it in v4.

>=20
> ...also, I'm undecided whether MTK should be mentioned or not, here, as t=
hose
> SoCs are (...at least the 7581 seems to be) really based on MediaTek rout=
er
> chips, in many instances, sharing the same IPs.

Right, EN7581 is similar to mtk router but I do not know if this will be al=
ways
true (maybe?? :))

Regards,
Lorenzo

>=20
>=20
> Cheers,
> Angelo
>=20

--A2pA6n7WRNQvthXs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZemvnQAKCRA6cBh0uS2t
rAlXAP9AstKWP0eq0wlbxxySeYYNJxKE/QCZj7BYOwOq63naDgEA018Ied0OKyzd
tKkt2QxvsiYR/iXSkokIEUa1FVupoA0=
=SzIU
-----END PGP SIGNATURE-----

--A2pA6n7WRNQvthXs--


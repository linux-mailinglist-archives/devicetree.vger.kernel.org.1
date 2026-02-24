Return-Path: <devicetree+bounces-268013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cN4oGqfmnWlDSgQAu9opvQ
	(envelope-from <devicetree+bounces-268013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:57:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1F818AD5D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:57:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E1941306502A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2CB3A9DAB;
	Tue, 24 Feb 2026 17:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOR0QEC/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A10B3A7F58;
	Tue, 24 Feb 2026 17:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955857; cv=none; b=gciV9Rwo1+zhYR5AwyeVMGlnPlZ1+muzL6pppsoeS4F5JxLlTl+pEDXEfPKE3vsWkfLcjlavLCHoDbftHK0ed6w0n8WtsKxvVyuj/H28NRCAVqfltNikdT+49qnT8MHA4XkJtIGJv3VURVnhEKjTRPslr0yYFe6NTVjeF34UEdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955857; c=relaxed/simple;
	bh=TzQ9hiwv1duoPQIf+icd1+Um2qUulW1YjH1zN1xDt68=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=esx1tXVt9jBdM/NDM+0RhnN6ssN4dElEl81KxI4+OTAxiY/i8pno5PyqhpuDA38ow/3vf3VJxs5ZkVqNT8kMSFK+W8PIPKu+FXTxw6BVhLawdRh8val8NxxFISaNw6LgCkOtx6dQd6rrnch5CSjiUTc1Gqrk5MCz98M852K5C3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOR0QEC/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED3EBC19422;
	Tue, 24 Feb 2026 17:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771955857;
	bh=TzQ9hiwv1duoPQIf+icd1+Um2qUulW1YjH1zN1xDt68=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nOR0QEC/BXqWwiRsLqCDj+hKFXDeCpDJKGEBro8VkPqauUXM1s+JWB2o4c6F+fk4W
	 pElZ2VQ29xEmb9FWjB0b3LoPJHPJT7gCTXCuvBkewtpLheh1CrihMi0Axw/xyjzzLt
	 iEDejc+3ttX5TEk0i+anE2bq3noshZ7hNuItGZC3JCy7HEyrhHRqo2UZvvZJx4UW1p
	 DZlOr+fBCJaHYFFzxxcUe6WcrPBCd9raWOYCTUm/qgIqCjJ5r+qYId8XYEgUaGZgjz
	 o6Gpx403ixbT90VYRmvTzGE9fzqDRhM9mmUt4HoY5UMqw1roWqliz+rw5w+cTMIgD5
	 /YHioJIPzBjDA==
Date: Tue, 24 Feb 2026 17:57:30 +0000
From: Conor Dooley <conor@kernel.org>
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	Christophe Lizzi <clizzi@redhat.com>,
	Alberto Ruiz <aruizrui@redhat.com>,
	Enric Balletbo <eballetb@redhat.com>,
	Eric Chanudet <echanude@redhat.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	NXP S32 Linux Team <s32@nxp.com>,
	Larisa Grigore <larisa.grigore@nxp.com>
Subject: Re: [PATCH 1/4] dt-bindings: interrupt-controller: fsl,irqsteer: add
 S32N79 support
Message-ID: <20260224-tracing-undesired-e53512135f11@spud>
References: <20260224111533.3194883-1-ciprianmarian.costea@oss.nxp.com>
 <20260224111533.3194883-2-ciprianmarian.costea@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="45NNQJw36F4ACibh"
Content-Disposition: inline
In-Reply-To: <20260224111533.3194883-2-ciprianmarian.costea@oss.nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268013-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,nxp.com,pengutronix.de,gmail.com,redhat.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 1A1F818AD5D
X-Rspamd-Action: no action


--45NNQJw36F4ACibh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 24, 2026 at 12:15:30PM +0100, Ciprian Costea wrote:
> From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
>=20
> Add compatible string for the interrupt steering controller used in NXP
> S32N79 SoC.
>=20
> The S32N79 SoC differs from the i.MX version by not implementing the
> CHANCTRL register, but otherwise maintains the same programming model and
> register layout.
>=20
> Co-developed-by: Larisa Grigore <larisa.grigore@nxp.com>
> Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> ---
>  .../devicetree/bindings/interrupt-controller/fsl,irqsteer.yaml   | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,i=
rqsteer.yaml b/Documentation/devicetree/bindings/interrupt-controller/fsl,i=
rqsteer.yaml
> index 5c768c1e159c..caf3e4a1f26f 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/fsl,irqsteer=
=2Eyaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,irqsteer=
=2Eyaml
> @@ -22,6 +22,7 @@ properties:
>                - fsl,imx94-irqsteer
>                - fsl,imx95-irqsteer
>            - const: fsl,imx-irqsteer
> +      - const: nxp,s32n79-irqsteer

Should there not be a corresponding driver change for this?

> =20
>    reg:
>      maxItems: 1
> --=20
> 2.43.0
>=20

--45NNQJw36F4ACibh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ3migAKCRB4tDGHoIJi
0jNPAQCrg61L2aRaTJVqK4vMTJxNN++kcY0aHCaUJ0mKDHXIBgD/UW7X0XXe9khO
FPIZw9m2B8CKjCi0+VBVQj2I3rhcJgg=
=9tI4
-----END PGP SIGNATURE-----

--45NNQJw36F4ACibh--


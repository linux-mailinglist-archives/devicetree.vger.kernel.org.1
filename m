Return-Path: <devicetree+bounces-300252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEWIFOyeDGpZkAUAu9opvQ
	(envelope-from <devicetree+bounces-300252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 19:33:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC9D58320D
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 19:33:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C5EF73008D04
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 17:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6898848C8B5;
	Tue, 19 May 2026 17:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pfrfoz46"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A204480946;
	Tue, 19 May 2026 17:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779212004; cv=none; b=fDbzMssQMvRnpihpRxu/632zMYjmGMnvedUgoUdN0M3SUEqQegCnhafXUyNLTIgqNU1eKQWo87yNn25gcmmnsL5EpW5KkqyIr1c9v5v6wB2I5Ow2f77KfKru75CBUPdvHdeCxgzuubwPBlbpVs8GG7uA8SwVk2Um02m0z1GoPtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779212004; c=relaxed/simple;
	bh=OFHWUXNGWxFbICuzubVh5vO/lOH+x7PUKPvYkl3tkJI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hit31j9ppsvY+P53WQ2R6F/NIrcM3nu6mILVuKxP25DlDY338GSARG5lxx9oUcu0QzNqIzazdCtpnOU3LjstAY5EBh8Mg0Je50/dxxc4SNTJF/r1BOJXL7tQiu8sLXdrUJgCpPcDJ5g4jZ9RKcTHQ6vfYRIy7OTK9zRr109LsJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pfrfoz46; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BAEEC2BCB3;
	Tue, 19 May 2026 17:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779212003;
	bh=OFHWUXNGWxFbICuzubVh5vO/lOH+x7PUKPvYkl3tkJI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pfrfoz46I95pjJ2nm+7HuXbrSR57ndgaUbXTrpOD/uzvPcPLHBkpVcLiZakJzjTxS
	 Yy8RD28pdi2xaLZuL88flj+/yUPqQMsGqv4WrpZkHmHl4fSDgGmppZJ3y4r0ydU9dZ
	 VvXmSfavuYusIjAf5qgcp5IMQyzI4I65xsJrJYoF7c+FgTzUYfAiIwM3BQGBEGuEfy
	 UJv2MHb0T3FW5C2ljJiwplQTDgKz+R9UNwBoVQDBA1GCddN0SuoIn5lhoajTb3uyqU
	 zlH4dC0pZCGDZdG24IDK2V7vYs68VVlupOF8ThvRu2FlySq+CaOzGhljq/BHLwGcGy
	 857nfc/BZ4cew==
Date: Tue, 19 May 2026 18:33:18 +0100
From: Conor Dooley <conor@kernel.org>
To: Zhengyu He <hezhy472013@gmail.com>
Cc: Han Xu <han.xu@nxp.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-spi@vger.kernel.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	Cody Kang <cody.kang.hk@outlook.com>
Subject: Re: [PATCH 1/3] spi: dt-bindings: fsl-qspi: support SpacemiT K3
Message-ID: <20260519-morbidly-reveal-41c32b61d135@spud>
References: <20260519-k3-pico-itx-qspi-v1-v1-0-c32afeeaf741@gmail.com>
 <20260519-k3-pico-itx-qspi-v1-v1-1-c32afeeaf741@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="izvLbv2E4eJvgIBX"
Content-Disposition: inline
In-Reply-To: <20260519-k3-pico-itx-qspi-v1-v1-1-c32afeeaf741@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-300252-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.linux.dev,lists.infradead.org,outlook.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,outlook.com:email]
X-Rspamd-Queue-Id: 4CC9D58320D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--izvLbv2E4eJvgIBX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 19, 2026 at 02:15:55PM +0800, Zhengyu He wrote:
> Add the SpacemiT K3 QSPI compatible to the fsl-qspi binding.
>=20
> K3 has its own SoC integration, so board DTs should describe it
> with a K3-specific compatible instead of reusing the K1 string.
>=20
> Signed-off-by: Zhengyu He <hezhy472013@gmail.com>
> Signed-off-by: Cody Kang <cody.kang.hk@outlook.com>
> ---
>  Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml =
b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
> index 1d10cfbad86c..025f10ed242c 100644
> --- a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
> +++ b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
> @@ -20,6 +20,7 @@ properties:
>            - fsl,ls1021a-qspi
>            - fsl,ls2080a-qspi
>            - spacemit,k1-qspi
> +          - spacemit,k3-qspi
>        - items:
>            - enum:
>                - fsl,ls1043a-qspi


Given the driver has:
|        { .compatible =3D "spacemit,k1-qspi", .data =3D &spacemit_k1_data,=
 },
|+       { .compatible =3D "spacemit,k3-qspi", .data =3D &spacemit_k1_data,=
 },
this looks wrong.
The k3 should fall back to the k1 compatible unless there's some
non-obvious reason why it can't.

pw-bot: changes-requested

Thanks,
Conor.


--izvLbv2E4eJvgIBX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagye3gAKCRB4tDGHoIJi
0qqdAQCBH2MK7fD56lufJ0cYGCRPInQEGcvWw2xW+7Jm0CWbXwEA6R/QTOnSCHkR
xpCaSAe7y14x91PfPs3C5IME46kAuAE=
=+Cry
-----END PGP SIGNATURE-----

--izvLbv2E4eJvgIBX--


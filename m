Return-Path: <devicetree+bounces-22369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 423FA8073C0
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D0CEEB20DCC
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D2AB3FE4C;
	Wed,  6 Dec 2023 15:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXJ21r8w"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEDC3EA9D
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 15:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E670BC433C7;
	Wed,  6 Dec 2023 15:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701876852;
	bh=hPHCkdX1ET5Jtv730lF03I1kmrpFGMe1NR1cfWm/WBw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OXJ21r8woFaoM8DgT2zJOsPJEXAUdc+g4aXZ1BLaqa+oyR8uLgGmyk8FG8nRv17K8
	 UAPKKegcfWTrWENL4pEPjZA3+j442Qtzcyu4V2hGLIqN01tFG8JByvfNUJDXitUu6r
	 azyhNeG2H59E0MVhUJnm5k+UnLqKBgsSBFaSy7u1CeTdnTyrBEfxi4Xf1owJ7OO58Z
	 s9I1Q/xUOcTTKuYYkU1U/DtsU1kM/BSFlBqjClviKDYsNz7lGQ9ZluKIgbNGRBSVNT
	 QYmaio5Din3nuebZBzRg3Ambc75SwYpgJP7UyIM5kG20Vs/taIgh6clLSk4gagEBa1
	 Y76BhOsHjTcoA==
Date: Wed, 6 Dec 2023 15:34:08 +0000
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: marex@denx.de, stefan@agner.ch, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2] dt-bindings: lcdif: Properly describe the i.MX23
 interrupts
Message-ID: <20231206-anemia-struggle-d1acb20e7892@spud>
References: <20231206112337.2234849-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="02enDpb16aWiP5pC"
Content-Disposition: inline
In-Reply-To: <20231206112337.2234849-1-festevam@gmail.com>


--02enDpb16aWiP5pC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 06, 2023 at 08:23:37AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> i.MX23 has two LCDIF interrupts instead of a single one like other
> i.MX devices.
>=20
> Take this into account for properly describing the i.MX23 LCDIF
> interrupts.
>=20
> This fixes the following dt-schema warning:
>=20
> imx23-olinuxino.dtb: lcdif@80030000: interrupts: [[46], [45]] is too long
>         from schema $id: http://devicetree.org/schemas/display/fsl,lcdif.=
yaml#
>        =20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Marek Vasut <marex@denx.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--02enDpb16aWiP5pC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXCUcAAKCRB4tDGHoIJi
0nscAP9xdf5mmsGIlSMHPRUil8FWsAa06XmjjQY6LDTdtZaIpQEA62YyxIv+K5EA
ZvBZBmhTY1+NdOVODYCezQBVkvbHVgk=
=VO9Z
-----END PGP SIGNATURE-----

--02enDpb16aWiP5pC--


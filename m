Return-Path: <devicetree+bounces-5082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 705C87B5214
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:04:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8DEDC1C2040E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A58515EA6;
	Mon,  2 Oct 2023 12:04:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0928C612E
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:04:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98808C433C7;
	Mon,  2 Oct 2023 12:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696248265;
	bh=t/JoZKBtiCmunUvWnl+umF9d9R9RF5wZ0yG+OcRgIzc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LikAXwdfSRngVjW00SxTTaGA9D2gis2qmIOVDdqSX1cn7TgcY7VpLVxPKeAY3Uh9S
	 1GIE16alLVrBDc47cLiNQRn9HAEXZhfMjhU11VQhEgB03NwZxmrhPejpDZAzVF1kAB
	 j9jOHDMWssc0CafOoS2Ih+fhh42U/0GOFi54FGFDsg7t1OQA9AnHJ8aBoQpFe7gSk6
	 kGQA5qRQ7ohIbyUeoObiUCJ3WxW35TraoevXAPCLih1YJh/VnzD9PdIZscUHCgTp58
	 HL1k9ykCmUWwnsaJGqN6jbxWvfYYTE9nx9oP9QPtLwnIXporllzBlpDtaEuDIE+t6X
	 mJkgWLLgpoGdw==
Date: Mon, 2 Oct 2023 13:04:21 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: p.zabel@pengutronix.de, mripard@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: display: fsl,imx6-hdmi: Change to
 'unevaluatedProperties: false'
Message-ID: <20231002-reversing-huntsman-55f9ab2d8108@spud>
References: <20230930130102.798822-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LraE7CjsrwJNOYcR"
Content-Disposition: inline
In-Reply-To: <20230930130102.798822-1-festevam@gmail.com>


--LraE7CjsrwJNOYcR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 30, 2023 at 10:01:02AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> fsl,imx6-hdmi.yaml makes a reference to synopsys,dw-hdmi.yaml.
>=20
> The 'interrupts'and 'reg' properties are described in synopsys,dw-hdmi.ya=
ml,
> so use 'unevaluatedProperties: false' so that these two properties can
> be accepted.=20
>=20
> This fixes the following schema warnings:
>=20
> hdmi@120000: 'interrupts', 'reg' do not match any of the regexes: 'pinctr=
l-[0-9]+'
> from schema $id: http://devicetree.org/schemas/display/imx/fsl,imx6-hdmi.=
yaml#

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.=
yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml
> index af7fe9c4d196..7979cf07f119 100644
> --- a/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml
> @@ -87,7 +87,7 @@ required:
>    - interrupts
>    - ports
> =20
> -additionalProperties: false
> +unevaluatedProperties: false
> =20
>  examples:
>    - |
> --=20
> 2.34.1
>=20

--LraE7CjsrwJNOYcR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRqxxQAKCRB4tDGHoIJi
0kpqAQCvouSSJ598ztgMpCb10c5uqqsUXnRT+B9zedetLA4AMgEAu/7rRAVCillx
Z7HyaEMVJQ29wAWDRITfQY71IUij+w4=
=GK57
-----END PGP SIGNATURE-----

--LraE7CjsrwJNOYcR--


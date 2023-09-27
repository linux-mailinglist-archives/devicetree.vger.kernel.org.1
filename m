Return-Path: <devicetree+bounces-3912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF83D7B07D0
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:12:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 812B22811B4
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 532D138F9E;
	Wed, 27 Sep 2023 15:12:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440C41170F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:12:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FE04C433C8;
	Wed, 27 Sep 2023 15:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695827536;
	bh=DcRNA9OfKi/fCALpJwPBIv4plNYmp5Y1i6dc+yueQDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B9ipkHGSg12B+M1Pu1tL0DxKXFdj/hS163OLvYF0TeHA+hrfV5aNzMgf1ramAj1Gm
	 QkLWJbUW8Koyn8+e2ao0Ud81PEHCEDqn8MNMGN9RHkkPTAKB98PhnRPyYdArrCfmUG
	 OAT6MTt9lwkYKklqvUgS0yigwmDFpn1/64s3t/U1sQBFfyG8PUFCvASDxAPhYwsWK7
	 v1RjL+hylXrz819UJdxgrQfGNHM7elgxyJiyn3T8P3Dl8LuCIzh4QyA9+dq7DqQqyt
	 sA0CcSNGeq0M0tu9MMCSzGcr8jZ8UBX1R530aqhDv5Ahou9fHJ6CpYQK9OsYyTTBPG
	 vJSibG6FsKFqQ==
Date: Wed, 27 Sep 2023 16:12:11 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Tinghan Shen <tinghan.shen@mediatek.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: remoteproc: mtk,scp: Add missing
 additionalProperties on child node schemas
Message-ID: <20230927-unmovable-spender-63bbbceae9ae@spud>
References: <20230926164513.101958-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k5h0Si8SbS8mkeKk"
Content-Disposition: inline
In-Reply-To: <20230926164513.101958-1-robh@kernel.org>


--k5h0Si8SbS8mkeKk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 11:45:08AM -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Conor Dooley <conor.dooley@microchip.com>


>  Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml b/=
Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> index 895415772d1d..24422fd56e83 100644
> --- a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> @@ -91,6 +91,7 @@ allOf:
> =20
>  additionalProperties:
>    type: object
> +  additionalProperties: false
>    description:
>      Subnodes of the SCP represent rpmsg devices. The names of the devices
>      are not important. The properties of these nodes are defined by the
> --=20
> 2.40.1
>=20

--k5h0Si8SbS8mkeKk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRGSwAKCRB4tDGHoIJi
0vdoAPwITfmBTlb9ktA+ucCanQ8H71ISLdcJKhmBNc6dLvKgMgD+LdOpppLFXS08
K2Gh6f8c9V/4BAnDSlZYhZCbo3rNQQA=
=x2FK
-----END PGP SIGNATURE-----

--k5h0Si8SbS8mkeKk--


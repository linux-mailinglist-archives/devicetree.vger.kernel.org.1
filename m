Return-Path: <devicetree+bounces-10585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0695C7D2269
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 11:51:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA173280FD6
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 09:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20CAB2116;
	Sun, 22 Oct 2023 09:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Heywy3px"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9421C3F
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 09:51:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C42D9C433C7;
	Sun, 22 Oct 2023 09:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697968270;
	bh=SnPBKRlsfd5P/wfHagINAEGKFI4VwNidkAz/OUfiJjQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Heywy3pxCdwGuB4G6fZc2xsKk63oiSgejJcss4Pify0k2gsl0XjIuBlE3KDn7ZYB7
	 qRbrotadqYbWlwi72jJx9+SS6DPUNdSIrkkwdQn3H/kfMF60rZ3mgeegVnIoo16gzt
	 tlIoba+2DL4aVB796Ri+CGZsLyjczpX8c0i/9aD8m1QbQMsw89Qk5+FU92WlwiSrRH
	 sQVa2QJWVAAxgaS0aU6eQtejVaUuTl0QeakLUmYbQWM2Fie70rZDwdXH6wTSig64Gj
	 5ajk79k9+K9PI+VHMU6i7HdGYBjSRyK6hCKnNFqaN1deiLUlz6ddWspujg5gm9jQXy
	 wGBGghA08+9mQ==
Date: Sun, 22 Oct 2023 10:51:05 +0100
From: Conor Dooley <conor@kernel.org>
To: Lukas Walter <lukas.walter@aceart.de>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Add Huawei Honor 5X / GR5
 (2016)
Message-ID: <20231022-arousal-glowing-f72c8f2e44fa@spud>
References: <20231021143025.77088-1-lukas.walter@aceart.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PKpSqrrmkmWmTJ8Z"
Content-Disposition: inline
In-Reply-To: <20231021143025.77088-1-lukas.walter@aceart.de>


--PKpSqrrmkmWmTJ8Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 21, 2023 at 04:30:24PM +0200, Lukas Walter wrote:
> Add a compatible for Huawei Honor 5X / GR5 (2016).
>=20
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

How come this v1 has an ack?

> Signed-off-by: Lukas Walter <lukas.walter@aceart.de>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentat=
ion/devicetree/bindings/arm/qcom.yaml
> index 7f80f48a0954..20d914b21847 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -191,6 +191,7 @@ properties:
> =20
>        - items:
>            - enum:
> +              - huawei,kiwi
>                - longcheer,l9100
>                - samsung,a7
>                - sony,kanuti-tulip
> --=20
> 2.42.0
>=20

--PKpSqrrmkmWmTJ8Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTTwiQAKCRB4tDGHoIJi
0uDbAQDPkpkGHrfnaWBKGDPIjx9YeDekGkDq8gIfVjGhqlKb/wEAlHJiAJ47rl/P
ZiCq7bPFZkjtY2BLCX0kIlH068uGpgo=
=iAHj
-----END PGP SIGNATURE-----

--PKpSqrrmkmWmTJ8Z--


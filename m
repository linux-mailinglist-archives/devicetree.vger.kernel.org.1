Return-Path: <devicetree+bounces-239531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E375EC65F8A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 20:30:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EB6833468BF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 19:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C631329BD8E;
	Mon, 17 Nov 2025 19:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrovRAUd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D29D27B4EB;
	Mon, 17 Nov 2025 19:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763407528; cv=none; b=VHDCUriWva3+yzyxen/W4T2ImsG7y6DEGcmtOxwM2D1+JUYovlw4ljuqhgrB6hECPnfrF+40jbFzFaz06xHNUeg3pQ6N8chOt0dObqdDi9XTm754dZ0JVaUspbOIJttO6Y8jQgFh/555MztuM8CgE4JfJuAiQffyeH6lU/mitVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763407528; c=relaxed/simple;
	bh=p3z57pTtowM+hDOfFVIHcuBANjDIJ4b/jNR1Mf6AWis=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PG2t6a0duEJhyIzdAsWkrW6y5c36QkFbRZj8xictQCvC4llY143PLe+KF+6+miGclmQrmr9hTTQhbMdxVkFDRc9oooFouNoXUoAuE9s+ULQIOSHZv87tjXTe8Y6eFT3vwbH616UcKrmv/vlo5mmXD3m4wFNNQCIY5RhS9o1DwTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrovRAUd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A7CBC2BC86;
	Mon, 17 Nov 2025 19:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763407528;
	bh=p3z57pTtowM+hDOfFVIHcuBANjDIJ4b/jNR1Mf6AWis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qrovRAUdV8rCkExxc7HVnOCFxhFytmmAJp9VkWfz5WmcI+BSimbHnhvV2MychMZQc
	 8u3FxmfzsNpipCRZc5p7fVfU8969DaKo/2huPDtgepF86PnqPasVKReZ2Nyj/fHUeK
	 xkdxWViB537InOUXl7xYqa8m2ICTzTEv5Fcc33Sw8SqVuEp12GjCklZeei+tPQI03z
	 TXBMKS5tu53LiSkau0zJjGsjvk+Q1WuueDPZ3D3xeBnYBk9q8j9+levBGQgU/54j3L
	 faiXPIrq2UCk9J2HgaBpJl9Ci7PeeFaJ2QkNNWQCWeSJINpzPOrEZpVw7wT1qoWjl2
	 IVFUGCqsTUc6Q==
Date: Mon, 17 Nov 2025 19:25:22 +0000
From: Conor Dooley <conor@kernel.org>
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: arm: amlogic: meson-gx-ao-secure:
 support more SoCs
Message-ID: <20251117-cement-hasty-15626e8c78a0@spud>
References: <20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com>
 <20251117-soc-info-s6-s7-s7d-v1-1-6ab8aab03dce@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ovf/zn3cUQ3ngyH4"
Content-Disposition: inline
In-Reply-To: <20251117-soc-info-s6-s7-s7d-v1-1-6ab8aab03dce@amlogic.com>


--Ovf/zn3cUQ3ngyH4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 17, 2025 at 06:17:00PM +0800, Xianwei Zhao via B4 Relay wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>=20
> Add new compatible for ao-secure of Amlogic SoCs(S6,S7,S7D).
>=20
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

> ---
>  .../devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml    |=
 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-=
gx-ao-secure.yaml b/Documentation/devicetree/bindings/arm/amlogic/amlogic,m=
eson-gx-ao-secure.yaml
> index b4f6695a6015..fa7c403c874a 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-s=
ecure.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-s=
ecure.yaml
> @@ -34,6 +34,9 @@ properties:
>                - amlogic,a4-ao-secure
>                - amlogic,c3-ao-secure
>                - amlogic,s4-ao-secure
> +              - amlogic,s6-ao-secure
> +              - amlogic,s7-ao-secure
> +              - amlogic,s7d-ao-secure
>                - amlogic,t7-ao-secure
>            - const: amlogic,meson-gx-ao-secure
>            - const: syscon
>=20
> --=20
> 2.37.1
>=20
>=20

--Ovf/zn3cUQ3ngyH4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRt2ogAKCRB4tDGHoIJi
0gaYAQDiO8JsyUEsnXAM6pxAuMrCvpdZcXxoyFnzI6sK6oPaAwEAi8lxR9FnXNFM
tj2itrKWEslAmVMsNHQ5i8a35itZmAk=
=9IX8
-----END PGP SIGNATURE-----

--Ovf/zn3cUQ3ngyH4--


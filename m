Return-Path: <devicetree+bounces-40969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B20851C96
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:20:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3B921F230C4
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B70FA3FB0A;
	Mon, 12 Feb 2024 18:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ig/GQegq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927D0405DB
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707762021; cv=none; b=BYluSweBYjnZ00w7cjpPL6jfbxUYlEBqT9xEWHIIrbwiv2sz37TlN/WcaZfmI3+5scu+srkNF0G+pbx1qVtvFnYe6h8ZIzIcqp5fQTxjpRGrcKBEHK+L0H99L2FhFqs0lZ4d0bY96udiyL0PrXZ6YLPtlHorAdchpk5Ul5YQWuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707762021; c=relaxed/simple;
	bh=eOA+rowx7op97f8b4rINXEY4ZpCaJhAsIFok1SJ9buM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ko5CrzM7QH/o3yj1ihjUGX5BCHopE2hrQVtCHtDJNGdx5pxaLO0lxjt74t7zfJmsowCN6wr5d4azTzCDa3XtIgLd95js/Zfd690w5RYiMbbOwchcy5yK57NBvjhuBj3ZFbaZ/FpHKaxpaj1x78ecML7cfoSZ5sDzZjQGiDB+Bdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ig/GQegq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D893BC433C7;
	Mon, 12 Feb 2024 18:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707762020;
	bh=eOA+rowx7op97f8b4rINXEY4ZpCaJhAsIFok1SJ9buM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ig/GQegq+i10bBou4cvEgotKosmELPf+Vhwz06hJWdkXUI/be1nFrVlJnlekLKU+U
	 78W1uMxbFbBU1wJDt2ltSrmAkAHAePcKFr9arL2foUk52fY51ggnj7uYJ8BM2BBUwg
	 HZcS3JmBZlDG+uPNIa2nhC5/oMyJ2hFUnT9puIiS4KsCI5ClwKJnQr3wcDoyaV9ueH
	 w6o1ghrEIqM74CPI90BKHVEtyZlSEyIjHj7Si2l/Kl/cw0SUSll2f+k5tU0UYbpy/H
	 VtjSr0qbaI4GcO5udpDevvM5mDYkPjht7toY0uSAzt4AyNujWIcUkA9EtYQWAFPcq/
	 hzO9csAwMvzoA==
Date: Mon, 12 Feb 2024 18:20:15 +0000
From: Conor Dooley <conor@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: AML <linux-amlogic@lists.infradead.org>,
	DT <devicetree@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v2 2/4] dt-bindings: arm: amlogic: add fbx8am binding
Message-ID: <20240212-slaw-handprint-cb3723b9ff53@spud>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <8a148279-05e1-4f00-87c1-6ed9ed1cb3dd@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t3FhBwUNnQyIuKb0"
Content-Disposition: inline
In-Reply-To: <8a148279-05e1-4f00-87c1-6ed9ed1cb3dd@freebox.fr>


--t3FhBwUNnQyIuKb0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 06:50:50PM +0100, Marc Gonzalez wrote:
> Add binding for the Amlogic Meson G12A-based Freebox Pop (fbx8am).
>=20
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documen=
tation/devicetree/bindings/arm/amlogic.yaml
> index caab7ceeda45a..fce12e44c00af 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -148,6 +148,7 @@ properties:
>                - amlogic,u200
>                - radxa,zero
>                - seirobotics,sei510
> +              - freebox,fbx8am

I suspect the order here of a - r - s was intentionally, which makes
your addition out of order.

With that fixed,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

>            - const: amlogic,g12a
>        - description: Boards with the Amlogic Meson G12B A311D SoC
> --=20
> 2.34.1

--t3FhBwUNnQyIuKb0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZcphXwAKCRB4tDGHoIJi
0kIFAP9bYoka4ejTjWs6XhyKypdW2vFvk/G/QwkO2n8lm4TH4gD8DJ/4qNpsPReY
BS9WGV/yfzu7oBb4ZKwxrH8jEgFkqAs=
=born
-----END PGP SIGNATURE-----

--t3FhBwUNnQyIuKb0--


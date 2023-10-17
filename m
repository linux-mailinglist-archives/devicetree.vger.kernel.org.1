Return-Path: <devicetree+bounces-9139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FD57CBC72
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 09:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34C071C2084F
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 07:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BEEA1CFB8;
	Tue, 17 Oct 2023 07:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLRvHJ6p"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3214404
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 07:39:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 008E3C433C8;
	Tue, 17 Oct 2023 07:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697528345;
	bh=E3VbYqSMvyiuHUGdccKqMdLJPOjqHC/bdo4qEHIAeUI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eLRvHJ6pDXK67WrNVe+iczMpc4sdd59wHvXDtmiVyYSS4kgiT4gY4ESbvC+D/aBeC
	 mC0Qwe0Pf6qNjvoTklFkR/LNPL3woOPLeqBg9eL4uh9auBBuwaZjYKeg2ZoweXnk5s
	 r1ZgKXgGv5MyEmvpKOOykYGYFeLWK5YUMO5a2usoVBDmZD1vvap2blDYtu1s1X8MuI
	 e05vOHVl0RODMOxM2NLuBkSrYob321SgQ9iJd9QfwK6xrc556uESKDQmgS3cSIJjLV
	 +vZmqqC6kxurd2YmCYbMZpVHDWbvyHmDr3JR/IQ/dXHXlwtS7+SzjYvHrUd1eYZZsJ
	 k8ZUKAQCsxN3w==
Date: Tue, 17 Oct 2023 08:38:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: serial: re-order entries to match coding
 convention
Message-ID: <20231017-grandma-unsuited-e922a2fd24de@spud>
References: <20231016181909.368429-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1+71Q60Wioam/cGb"
Content-Disposition: inline
In-Reply-To: <20231016181909.368429-1-krzysztof.kozlowski@linaro.org>


--1+71Q60Wioam/cGb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 16, 2023 at 08:19:09PM +0200, Krzysztof Kozlowski wrote:
> The DT schema coding convention expressed in
> Documentation/devicetree/bindings/example-schema.yaml expects entries in
> following order:
>  - properties, patternProperties
>  - required
>  - if blocks, allOf with if-blocks
>  - additionalProperties/unevaluatedProperties
>=20
> Re-order few schemas to match the convention to avoid repeating review
> comments for new patches using existing code as template.  No functional
> changes.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--1+71Q60Wioam/cGb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS46EwAKCRB4tDGHoIJi
0iYrAP97qYyTlCLaxrpzHug1qLPaMkDNoEDl6vLYwErKorOmjAEA+o9HNVu2/Vnk
aEwghWPY16NO2j39CEu9MQuwz4GAawM=
=mnUY
-----END PGP SIGNATURE-----

--1+71Q60Wioam/cGb--


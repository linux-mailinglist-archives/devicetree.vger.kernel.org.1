Return-Path: <devicetree+bounces-241767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ADBC825AD
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 20:54:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B68E1343096
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 19:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1751D32C33F;
	Mon, 24 Nov 2025 19:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsEZv88b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5343298CC4;
	Mon, 24 Nov 2025 19:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764014052; cv=none; b=kvcMv95Ql2uK8HqxWrD9gMYa7mMUhYOxRXIGeoDMVE1WhWjYaXEkh+0SYQSrKoNqsOfzVIB5w4oJ76DXv4rRy0V+JfuvjZgHCT4bZ6/nlbHZjO4QpPZ4H7jMgwy2f9XtG3huwDscbB1i4vW6g9Dyt73wEE4O3IwoNYmT0eUYeVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764014052; c=relaxed/simple;
	bh=aqYGCylftG4n34vFp2YDxaQ0gvVm2+Ucd6juMUnbdH4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NETVhxlPDAqU9zkMXpBaIx7tTcj91/ucylZb5eXqQGq2/3MA90JYOcZrlQTQQSKmdkc2RPpBY2G4W6fxbw6kccYiilJLTNVi48axCYq5b41FxVbl4kc+1bVyx0QjNhcg24Q/ynaw8Q/LeAXyejZD3FsxQrsi2e76lHCL6URGdx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsEZv88b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED14AC4CEF1;
	Mon, 24 Nov 2025 19:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764014051;
	bh=aqYGCylftG4n34vFp2YDxaQ0gvVm2+Ucd6juMUnbdH4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KsEZv88btRm7/47X28fIarHWo+b0iqRpuaSB1yRCFykz06CdZGHwCiZDu7u0RDfG6
	 xJD8o0SNZvuCVkI7tSzz08fuhzxNeQwNL8KBelf2TVp4bSgG8BNllTpUehW7MQR95B
	 gJKFFtfhLIzhBPvN+5E6IWzlme47NFIWCjSHGmdGT8WHRF2mtYv3ZryXbkTbyPmMbV
	 aDCjH+RwFZ7EnovXySFAToYJSV8d2c3kASpOO+Z0EkRTysrD5UczLOxkJ6yQz4AvZI
	 7WTQ/fB578lyzlYgDsrA+ls0Nw8hrBoJRZv/raLQu0iiO4mxChIw05l7zb5vZHjEnG
	 sX+Ng5VJAOUiw==
Date: Mon, 24 Nov 2025 19:54:07 +0000
From: Conor Dooley <conor@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: p.zabel@pengutronix.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH v3 1/3] dt-bindings: reset: add sky1 reset controller
Message-ID: <20251124-selector-blemish-ec6e9a356bc6@spud>
References: <20251124063235.952136-1-gary.yang@cixtech.com>
 <20251124063235.952136-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NQdqw7ZhS252Q4Tg"
Content-Disposition: inline
In-Reply-To: <20251124063235.952136-2-gary.yang@cixtech.com>


--NQdqw7ZhS252Q4Tg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 24, 2025 at 02:32:33PM +0800, Gary Yang wrote:
> There are two reset controllers on Cix sky1 Soc.
> One is located in S0 domain, and the other is located
> in S5 domain.
>=20
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> ---
>  .../bindings/reset/cix,sky1-rst.yaml          |  50 ++++++
>  include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
>  include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++++++
>  3 files changed, 256 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/cix,sky1-rst.=
yaml
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
>=20
> diff --git a/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml b/=
Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> new file mode 100644
> index 000000000000..a28f938a283d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/cix,sky1-rst.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: CIX Sky1 Reset Controller
> +
> +maintainers:
> +  - Gary Yang <gary.yang@cixtech.com>
> +
> +description: |
> +  CIX Sky1 reset controller can be used to reset various set of peripher=
als.
> +  There are two reset controllers, one is located in S0 domain, the other
> +  is located in S5 domain.
> +
> +  See also:
> +  - include/dt-bindings/reset/cix,sky1-rst.h
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - cix,sky1-rst
> +          - cix,sky1-rst-fch

You've not addressed my v2 commentary:
https://lore.kernel.org/all/20251114-problem-overbook-383f8e45cd0b@spud/
I asked what else the device does, but you didn't answer me. Dropping the
syscon doesn't make sense if the device genuinely has other functions.

> +
> +  reg:
> +    minItems: 1
> +    maxItems: 3
> +
> +  '#reset-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#reset-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/reset/cix,sky1-rst.h>
> +    reset-controller@16000304 {
> +      compatible =3D "cix,sky1-rst";

> +      reg =3D <0x16000304 0xc>,
> +            <0x16000400 0x10>,
> +            <0x16000800 0x8>;

This is also highly suspect, and I believe what you had before was
probably much more realistic.
Do things properly and fully *now*, rather than pay the price of
unravelling it all later. I just did this for one of my own platforms,
and putting in the effort to completely describe stuff up front is
actually worth it rather than having to refactor years down the line.

Cheers,
Conor.

pw-bot: changes-requested

--NQdqw7ZhS252Q4Tg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaSS33wAKCRB4tDGHoIJi
0qjPAP0TKyB3SLz/gAESdaMCcF6Nz1jYmasqDMd9fKquarCclQD/X7cLKFVCcE01
NfvuPhXgRc1fiveDtw3Y4mRz/thHuQ8=
=Y9Qo
-----END PGP SIGNATURE-----

--NQdqw7ZhS252Q4Tg--


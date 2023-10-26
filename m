Return-Path: <devicetree+bounces-12167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCDE7D8354
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 15:10:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D53A1C20401
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 221AE2DF87;
	Thu, 26 Oct 2023 13:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCbkkVkB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036D613AF8
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:10:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6F91C433C7;
	Thu, 26 Oct 2023 13:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698325841;
	bh=EfXXgft1MEBK+Cu8UhIL0I9B4dpq2qUgaI53cQZ71SM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TCbkkVkBmnV/JtBgJxk7QNRutR0z0QbFxnPJIMFqDXKdey/uM6vnZnIOAc8Jg7Pck
	 Unc2ItPgRJDVmnyGihoszNI/jJiCi8C3g+RhC9l9Q8ELaMEV3SKV8onKvkH9WN8WgF
	 fOVRIXBG5H75RMP3tz3pNXA7Qid6zxRDCto7XCWl/akHzziZxUltezEadjjwrtY3Tr
	 DlbD1xw/W2T3PgpNBYG7fAXXjYrZKIHfRZdUABe+TBljpVNfa1/xyhRl+N20AUk7PF
	 jf0eCwzQ3gwMBmZNBgIWVBvRRbW5I2rfh3n3GuRR7iwRMReyXVmioBpYb5SHu3l+zH
	 YWBIKb2vOKFsg==
Date: Thu, 26 Oct 2023 14:10:37 +0100
From: Conor Dooley <conor@kernel.org>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 1/4] dt-bindings: cache: sifive,ccache0: Add StarFive
 JH7100 compatible
Message-ID: <20231026-paycheck-equation-b0f1a1191bf2@spud>
References: <CAJM55Z-vw1sbks0KcHOXMzP-6c9NMg+GOndi2pQ7iyWh0=oQiQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="N3bHDx1Rs6y3UHHy"
Content-Disposition: inline
In-Reply-To: <CAJM55Z-vw1sbks0KcHOXMzP-6c9NMg+GOndi2pQ7iyWh0=oQiQ@mail.gmail.com>


--N3bHDx1Rs6y3UHHy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 11:56:37AM -0700, Emil Renner Berthing wrote:
> This cache controller is also used on the StarFive JH7100 SoC.
> Unfortunately it needs a quirk to work properly, so add dedicated
> compatible string to be able to match it.
>=20
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/cache/sifive,ccache0.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
> b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
> index 8a6a78e1a7ab..7e8cebe21584 100644
> --- a/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
> +++ b/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml
> @@ -38,7 +38,9 @@ properties:
>                - sifive,fu740-c000-ccache
>            - const: cache
>        - items:
> -          - const: starfive,jh7110-ccache
> +          - enum:
> +              - starfive,jh7100-ccache
> +              - starfive,jh7110-ccache
>            - const: sifive,ccache0
>            - const: cache
>        - items:
> @@ -88,6 +90,7 @@ allOf:
>            contains:
>              enum:
>                - sifive,fu740-c000-ccache
> +              - starfive,jh7100-ccache
>                - starfive,jh7110-ccache
>                - microchip,mpfs-ccache
>=20
> @@ -111,6 +114,7 @@ allOf:
>            contains:
>              enum:
>                - sifive,fu740-c000-ccache
> +              - starfive,jh7100-ccache
>                - starfive,jh7110-ccache
>=20
>      then:
> --=20
> 2.40.1

--N3bHDx1Rs6y3UHHy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTplTQAKCRB4tDGHoIJi
0l+AAP4vVuMXUegOCudC7vu4oDma0ogJA3LYsJGQx+aFcJo2pAD+Jv0QZsCbaVCC
ZM+iTmoolMuerwlZgbvaO0N+e3S0uQE=
=w4QN
-----END PGP SIGNATURE-----

--N3bHDx1Rs6y3UHHy--


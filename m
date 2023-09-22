Return-Path: <devicetree+bounces-2453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 402687AADDB
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:28:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 71D5928265F
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 625151DA51;
	Fri, 22 Sep 2023 09:28:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530B414F6F
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:28:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BAE9C433C7;
	Fri, 22 Sep 2023 09:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695374889;
	bh=4Xc/L95oSWqxAlP8k0CojZn1YClK1+4Xtrm9064KLD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JZdsJUlBIhFmLL6CT2bsTEMM9QhzQRRobvoPAJvTiSh0mqYAsQqbY+pLWNQ6aaeMG
	 nzHO1ENvS8ph7z7oGRlvpqL9MmAQyiVQhWcEodLMof3nXNE6oXvl0q29CC+kF5awEo
	 7Wsjnpj6ikhpQaClTK6MNTr3+6mDqBv/elDMEK2bkcG1WhIwf0JNHoYGOCy8wy3EeS
	 F/kWWTM3jwYbLwCr3oNoZrQJ09T71j+HJqHbDwUWgmy175mhI2vn/4CQSqwqbONEzc
	 n0qlfWYCHYVzb1xfv1FtrCqz+wDdzK8SupkpIe9b0TTkZEw9gn//HlVdeYD4XqbkTi
	 rzjhWxhoVSGtg==
Date: Fri, 22 Sep 2023 10:28:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Yong-Xuan Wang <yongxuan.wang@sifive.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
	greentime.hu@sifive.com, vincent.chen@sifive.com, tjytimi@163.com,
	alex@ghiti.fr, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: riscv: Add Svadu Entry
Message-ID: <20230922-bagel-hyphen-aae5b1b88b21@spud>
References: <20230922085701.3164-1-yongxuan.wang@sifive.com>
 <20230922085701.3164-3-yongxuan.wang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZaTkWSVN9S5z8516"
Content-Disposition: inline
In-Reply-To: <20230922085701.3164-3-yongxuan.wang@sifive.com>


--ZaTkWSVN9S5z8516
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 08:56:48AM +0000, Yong-Xuan Wang wrote:
> Add an entry for the Svadu extension to the riscv,isa-extensions property.
>=20
> Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Do=
cumentation/devicetree/bindings/riscv/extensions.yaml
> index cc1f546fdbdc..b5a0aed0165b 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -147,6 +147,12 @@ properties:
>              ratified at commit 3f9ed34 ("Add ability to manually trigger
>              workflow. (#2)") of riscv-time-compare.
> =20
> +        - const: svadu
> +          description: |
> +            The standard Svadu supervisor-level extension for hardware u=
pdating
> +            of PTE A/D bits as frozen at commit b65e07c ("move to Frozen
> +            state") of riscv-svadu.
> +
>          - const: svinval
>            description:
>              The standard Svinval supervisor-level extension for fine-gra=
ined
> --=20
> 2.17.1
>=20

--ZaTkWSVN9S5z8516
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ1eJAAKCRB4tDGHoIJi
0v9nAQC9vIjrDSNPVsV/sDmKkSEokU2Zz1TPhfzrs9q0VzCcOQEAiiM8m3v8Pxeb
IgSWyoBmHUYpi7kujuA7TfByYIw6Pw4=
=JRlx
-----END PGP SIGNATURE-----

--ZaTkWSVN9S5z8516--


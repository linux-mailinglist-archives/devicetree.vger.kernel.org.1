Return-Path: <devicetree+bounces-3933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AAA7B0979
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:01:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9DE5C281D6C
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8592248EA5;
	Wed, 27 Sep 2023 16:01:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BDE111AB
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 16:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C16AFC433C7;
	Wed, 27 Sep 2023 16:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695830468;
	bh=cGg7lDklhNmelt6repmP3pClIhhjdk7i56CRb2SdcKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S28Nno+R5snpz8UdEH/HIKuKkDyeCHzaSrDWSxCIhuP7L5uxwiFrr+rTIZoAjtedr
	 DJ6oLXWdlQ4RRNXvqUCkOQAAyRNP2DaZxx573zfGNY15ViAP5+Cpg1cFahatfx6HzG
	 59R8r5O91eUi2n6RUeAx1XVgQjkCNwpElVUN6QfpXbnhbfQApvndIQ2SEPfA7TStYO
	 EimLrRFOuE6OLtu6xfjOnm6MvIBiED2ydeDKxt9lOMHR9rgJL8ckJ6ervd33h/xIZf
	 2GBDORmczS0l6Wxl4l9YnSH8Uf5xvMXkFYwQdHRiT5yNbjvG9BkHPklPJ7Uwe1K/3P
	 ltKXitxrGYeHA==
Date: Wed, 27 Sep 2023 17:01:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, devicetree@vger.kernel.org,
	guoren@kernel.org, jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com, apatel@ventanamicro.com,
	Inochi Amaoto <inochiama@outlook.com>,
	Chen Wang <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH v3 06/11] dt-bindings: timer: Add Sophgo sg2042 CLINT
 timer
Message-ID: <20230927-uncorrupt-bronco-72e35232b1cc@spud>
References: <cover.1695804418.git.unicornxw@gmail.com>
 <6e263430685732a4f354b45396c7422a37440ac8.1695804418.git.unicornxw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Rumhzbk4+1O3PjAY"
Content-Disposition: inline
In-Reply-To: <6e263430685732a4f354b45396c7422a37440ac8.1695804418.git.unicornxw@gmail.com>


--Rumhzbk4+1O3PjAY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Wed, Sep 27, 2023 at 05:01:37PM +0800, Chen Wang wrote:
> From: Inochi Amaoto <inochiama@outlook.com>
>=20
> The clint of Sophgo sg2042 is incompatible with the standard sifive
> clint, as the timer and ipi device on the different address, and can
> not be handled by the sifive,clint DT.
>=20
> In addition, the timers of sg2042 are mapped by per cluster, which is
> hard to merge with its ipi device.

I think the description here is kinda poor, it needs to be explained
that this is an implementation of the not frozen & likely abandoned
aclint spec.

> To avoid conficts caused by using the same clint compatible string when
> this device is parsed by SBI, add a new vendor specific compatible string
> to identify the timer of sg2042 soc.

And this whole section about avoiding conflicts is not relevant, since
the binding is specifically for the timer. It'd be better to mention why
a single compatible cannot work for all elements, than bring up a
situation that does not exist and would be a misuse of the binding in
the first place.

> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> Signed-off-by: Chen Wang <unicornxw@gmail.com>

You only need to sign this off once. The iscas one looks like it
probably is the relevant signoff?

> ---
>  .../timer/sophgo,sg2042-clint-mtimer.yaml     | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/timer/sophgo,sg2042=
-clint-mtimer.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/timer/sophgo,sg2042-clint-=
mtimer.yaml b/Documentation/devicetree/bindings/timer/sophgo,sg2042-clint-m=
timer.yaml
> new file mode 100644
> index 000000000000..5da0947d048a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/sophgo,sg2042-clint-mtimer.=
yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/sophgo,sg2042-clint-mtimer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo CLINT Timer
> +
> +maintainers:
> +  - Inochi Amaoto <inochiama@outlook.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: sophgo,sg2042-clint-mtimer

There's only one of these, so you don't need the oneOf.
Also, is the clint here not a thead IP? In which case, you need to add a
second compatible IMO. That second compatible then would be the one that
appears in opensbi etc.

Otherwise, this looks fine.

Thanks,
Conor.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts-extended:
> +    minItems: 1
> +    maxItems: 4095
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts-extended
> +
> +examples:
> +  - |
> +    timer@ac000000 {
> +      compatible =3D "sophgo,sg2042-clint-mtimer";
> +      interrupts-extended =3D <&cpu1intc 7>,
> +                            <&cpu2intc 7>,
> +                            <&cpu3intc 7>,
> +                            <&cpu4intc 7>;
> +      reg =3D <0xac000000 0x00010000>;
> +    };
> +...
> --=20
> 2.25.1
>=20

--Rumhzbk4+1O3PjAY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRRvwAKCRB4tDGHoIJi
0qNlAP0Sb0OKToYSPefL04TYxLi44wFiOIPYB7BuJ6hjs8WViwD/c9eLvuIugBjd
5JDpirk/b/AI0Le/pGYSDPHZMQ26MwY=
=JWmr
-----END PGP SIGNATURE-----

--Rumhzbk4+1O3PjAY--


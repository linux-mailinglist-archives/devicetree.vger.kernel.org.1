Return-Path: <devicetree+bounces-17210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E248B7F191E
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 17:52:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DE7F282741
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0C31E52B;
	Mon, 20 Nov 2023 16:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoAIyUvx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC411DFDC
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 16:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C29AC433C7;
	Mon, 20 Nov 2023 16:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700499129;
	bh=z+uggHQMjKoAbxyCf88m6HvumZukoCO2tr4KQ+XI2wk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IoAIyUvxhqiQY4jivygg20akkYxVre2lsLT+tqFsNQ3Nqy071EkFNQ1BKZsQ9CN2E
	 JThL4ZA+RaGqhKtNCdg7rDC7tBQcn4hbNXoLyWP6U6KpIXC3byeVmvNhy18maQouAO
	 2OL3a56K3dhYOOaobGiQHm4MxGAGsJlsNSEIxeQJi0F/bNIXgXhnGRr9wAn0eTJEGq
	 Ff7ORxkAipElAzfC+lYdGgjKdlBRfVLYlRODJT+wt9Eg7lRMxOGrhaHGeoDGNy1iEz
	 ewTlbbpMnXNQ2Rc87svL8vUYbC3bbw1KbidkmaxMNNs24khT9Cxma/QrDWvvz5HDIn
	 5Vb5eZmKEJWLA==
Date: Mon, 20 Nov 2023 16:52:03 +0000
From: Conor Dooley <conor@kernel.org>
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Chen Wang <unicorn_wang@outlook.com>,
	Anup Patel <anup@brainfault.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v4 1/2] dt-bindings: timer: thead,c900-aclint-mtimer:
 separate mtime and mtimecmp regs
Message-ID: <20231120-banshee-traverse-554723cd9490@spud>
References: <IA1PR20MB4953C82499C5D81D2C6A020BBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB4953F9D77FFC76A9D236922DBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SyM6lyfFJB4JBnze"
Content-Disposition: inline
In-Reply-To: <IA1PR20MB4953F9D77FFC76A9D236922DBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>


--SyM6lyfFJB4JBnze
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

On Sat, Nov 18, 2023 at 03:10:26PM +0800, Inochi Amaoto wrote:
> The timer registers of aclint don't follow the clint layout and can
> be mapped on any different offset. As sg2042 uses separated timer
> and mswi for its clint, it should follow the aclint spec and have
> separated registers.
>=20
> The previous patch introduced a new type of T-HEAD aclint timer which
> has clint timer layout. Although it has the clint timer layout, it
> should follow the aclint spec and uses the separated mtime and mtimecmp
> regs. So a ABI change is needed to make the timer fit the aclint spec.
>=20
> To make T-HEAD aclint timer more closer to the aclint spec, use
> regs-names to represent the mtimecmp register, which can avoid hack
> for unsupport mtime register of T-HEAD aclint timer.
>=20
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Fixes: 4734449f7311 ("dt-bindings: timer: Add Sophgo sg2042 CLINT timer")
> Link: https://lists.infradead.org/pipermail/opensbi/2023-October/005693.h=
tml
> Link: https://github.com/riscv/riscv-aclint/blob/main/riscv-aclint.adoc
> ---
>  .../timer/thead,c900-aclint-mtimer.yaml       | 42 ++++++++++++++++++-
>  1 file changed, 41 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/timer/thead,c900-aclint-mt=
imer.yaml b/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtime=
r.yaml
> index fbd235650e52..053488fb1286 100644
> --- a/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.ya=
ml
> +++ b/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.ya=
ml
> @@ -17,7 +17,20 @@ properties:
>        - const: thead,c900-aclint-mtimer
>=20
>    reg:
> -    maxItems: 1
> +    oneOf:
> +      - items:
> +          - description: MTIME Registers
> +          - description: MTIMECMP Registers
> +      - items:
> +          - description: MTIMECMP Registers
> +
> +  reg-names:
> +    oneOf:
> +      - items:
> +          - const: mtime
> +          - const: mtimecmp
> +      - items:
> +          - const: mtimecmp
>=20
>    interrupts-extended:
>      minItems: 1
> @@ -28,8 +41,34 @@ additionalProperties: false
>  required:
>    - compatible
>    - reg
> +  - reg-names
>    - interrupts-extended
>=20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: thead,c900-aclint-mtimer

Is this being the c900 compatible correct? You mention in your commit
message that this split is done on the sg2042, but the rule is applied
here for any c900 series "aclint". Do we know if this is a sophgo
specific thing (or even sg2042 specific), or if it applies generally?

> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: MTIMECMP Registers
> +        reg-names:
> +          items:
> +            - const: mtimecmp

> +    else:
> +      properties:
> +        reg:
> +          items:
> +            - description: MTIME Registers
> +            - description: MTIMECMP Registers
> +        reg-names:
> +          items:
> +            - const: mtime
> +            - const: mtimecmp

If it applies generally, I would probably just delete this, but unless
someone can confirm this to be general, I'd probably leave the else
clause and swap for the specific sg2042 compatible above.

Otherwise, this looks like a better fix than you had proposed before :)

Thanks,
Conor.

--SyM6lyfFJB4JBnze
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVuOswAKCRB4tDGHoIJi
0nUgAP9Qh7o82eKAfQthXVortYfkS6wXhMlYq7MkGEyue00G5AD7BR46o/k6lslh
FIQz+iWXPJH+kSgGoq/KvFIQUph8TwU=
=JOFi
-----END PGP SIGNATURE-----

--SyM6lyfFJB4JBnze--


Return-Path: <devicetree+bounces-4955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2787B4726
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 13:25:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 952682812D2
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 11:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E1FB675;
	Sun,  1 Oct 2023 11:25:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED03A171C1
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 11:25:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 101B6C433C7;
	Sun,  1 Oct 2023 11:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696159544;
	bh=evB5bY7/C6FdyGJIUHIWeQ7AH4xS5MwJRsf7lHXWW88=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GMS91LYZGS3vcia9UVje1csH1rVyQDefPYcESD0sQUN9sIWhZZUODTqYZIA1+uOmT
	 HrXpOCGdtZDx8iA/Oh4LWi8KBzNQaz37y+zzBI/uO1wrMEanfynWet0FEvsiDNSG+J
	 xsvTH977/vw6wlXEEbJtV7S8Z798H2IkEmF6xgnWkRPqi59w9YbbTOha+wMeM2RfJl
	 LgprszVuIKzH0b8HrJHHF8ls+4Bgw9mYQ7TcPo4x3c59xDDBQQzV2ZGrBApwGUIO70
	 oOK5ACc4A6l9ql0QaPk6Dug6MS2Wbv6312te2YGIJTUt9uF47vXJrXV0EhFB9Bf1Y2
	 BL4jkQBZX40zg==
Date: Sun, 1 Oct 2023 12:25:38 +0100
From: Conor Dooley <conor@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com
Subject: Re: [PATCH 2/5] dt-bindings: timer: Add SOPHGO CV1800B clint
Message-ID: <20231001-election-overdue-c8e016b7c61f@spud>
References: <20230930123937.1551-1-jszhang@kernel.org>
 <20230930123937.1551-3-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dSBleoVdBpsFBCLv"
Content-Disposition: inline
In-Reply-To: <20230930123937.1551-3-jszhang@kernel.org>


--dSBleoVdBpsFBCLv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 30, 2023 at 08:39:34PM +0800, Jisheng Zhang wrote:
> Add compatible string for the SOPHGO CV1800B clint.
>=20
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>


> ---
>  Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/=
Documentation/devicetree/bindings/timer/sifive,clint.yaml
> index a0185e15a42f..98c76d5893ac 100644
> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> @@ -37,6 +37,7 @@ properties:
>        - items:
>            - enum:
>                - allwinner,sun20i-d1-clint
> +              - sophgo,cv1800-clint
>                - thead,th1520-clint
>            - const: thead,c900-clint
>        - items:
> --=20
> 2.40.1
>=20

--dSBleoVdBpsFBCLv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRlXMgAKCRB4tDGHoIJi
0giqAP43PdDm3+hme45s4Rubpl2HyCQBpSrzT5M242Alx1ONnAEA+8fbHhfHJT8V
1MyIzX28EkoOdUMsCNsRXBP2ZbztwwU=
=6qEm
-----END PGP SIGNATURE-----

--dSBleoVdBpsFBCLv--


Return-Path: <devicetree+bounces-4954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1937A7B4722
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 13:25:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 369731C20777
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 11:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC13168C2;
	Sun,  1 Oct 2023 11:25:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5239466
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 11:25:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4866C433C8;
	Sun,  1 Oct 2023 11:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696159522;
	bh=PUipNyho5r4Psjk0eUfxhKXe9d7G3c2FY5IEw3imF0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YcfwTZmoo6jGSte0O0n8afk14KpMPshBNFzDQX6NRwpFBGbnP1gvpfmkAIZaCln2k
	 gLuBUMm+ZBVoH+1vYr4fNyfHR4U3FpEnucNVBEe8bxiMfNkoctILHc88MdpFW+h6qW
	 VBJhuFmOdx6hLO7zT5ZRgVAXvCF8QSHN88xyIhVN+oXnZIOJJqCX5LEn79/fBvQIbG
	 KoiLGHSCbJh9C3lBcaclrRW/b4jpWmhB0ZLyo0eJ9EV22o6wRqJ1gdPvXBPunHJVrR
	 QUnudpzl90lfUE4R7Dd8DBZaWW0wd4oCSwuuSVQk8v/gTyPNVn+iCecUXGS6HkLQjs
	 ahHz3+8V9strQ==
Date: Sun, 1 Oct 2023 12:25:17 +0100
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
Subject: Re: [PATCH 1/5] dt-bindings: interrupt-controller: Add SOPHGO
 CV1800B plic
Message-ID: <20231001-manila-unsent-6163d2a08145@spud>
References: <20230930123937.1551-1-jszhang@kernel.org>
 <20230930123937.1551-2-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MA1P9/d49We4ZiCr"
Content-Disposition: inline
In-Reply-To: <20230930123937.1551-2-jszhang@kernel.org>


--MA1P9/d49We4ZiCr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 30, 2023 at 08:39:33PM +0800, Jisheng Zhang wrote:
> Add compatible string for SOPHGO CV1800B plic.
>=20
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifiv=
e,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/=
sifive,plic-1.0.0.yaml
> index 16f9c4760c0f..5c4539881a22 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-=
1.0.0.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-=
1.0.0.yaml
> @@ -65,6 +65,7 @@ properties:
>        - items:
>            - enum:
>                - allwinner,sun20i-d1-plic
> +              - sophgo,cv1800-plic
>                - sophgo,sg2042-plic
>                - thead,th1520-plic
>            - const: thead,c900-plic
> --=20
> 2.40.1
>=20

--MA1P9/d49We4ZiCr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRlW/QAKCRB4tDGHoIJi
0hSKAP92lZxT2iiinmDL1BKX4qpZYu3g7KH/TCU9/uIef7ll4AD/Yf7u4wHaHvLx
av8JWEjoAfAlfpRq4nlnWoElnzANRQA=
=Vebj
-----END PGP SIGNATURE-----

--MA1P9/d49We4ZiCr--


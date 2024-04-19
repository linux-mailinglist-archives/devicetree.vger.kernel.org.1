Return-Path: <devicetree+bounces-60952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 035E68AB0F4
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 16:46:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A67F91F2328B
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 14:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAA6312EBD9;
	Fri, 19 Apr 2024 14:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9lnCVQt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61361E893
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 14:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713537958; cv=none; b=B5o1wSQuJVhYzf/FgUd4PMbhB1Us3tteRdQgrqjaucE7aUMlpNPsN6fVFDx8c5dYt07FEXDdSYUEPUEvmGROBCCg2P7WJbObjWmYLzId3TFzMwnkmjcYla6574cLLBuGE97iO+m17xK3AvJ3/KRRpb4MtQEChhN31SLzmfOscj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713537958; c=relaxed/simple;
	bh=IbMuf6RtD8S+NgEks0arYU+taglxFQZdg/xWQtc4Hp0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hXWxeg4llztRK65Cg12VkfEqjOPJq7fRGaDgBSSAxhKM2H0Qs9w74OYugfm/wOxAFbYLWexdVPlcgi6sZSs4AaSfrSeseQ+slQ4Mqp+BgnWcLB4O/rhJ5vLkW/2KkpuwMZGULnjKf8IlXfG5AtLcf/cVbKkjbwMRu1pZc/7u/Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9lnCVQt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F07C9C072AA;
	Fri, 19 Apr 2024 14:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713537958;
	bh=IbMuf6RtD8S+NgEks0arYU+taglxFQZdg/xWQtc4Hp0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B9lnCVQtVuS6xv7XDhACZfxS2wk9z2JSrYp2yb6cmTvW1iv/kI+XLGTtwk7XrbdaA
	 D5slUkl1Lmbss4pJXB89SVWKGNnIc/bbSRPjCiBabn5VMfmIUTqarF/+pJPXE3DDve
	 tMRfw2Wr0+ljxp82dy/Rws2fIdHwNGWwmnNQRdb+bNKTIhPXa6Zi/hNfvR78sKp4PU
	 ha9U3WT3AKRIzKIyxM2j4uquHiW4ytBE9/knza1FRHelKtM0eHomRr9qF93okHMkk+
	 m7GmwQWaFACFcrDs78Ji29+8HvsgrRbgLRwreNq3mihbFZhVJwCOruEh/xOhcykxMy
	 48Lm6xuVctydQ==
Date: Fri, 19 Apr 2024 15:45:46 +0100
From: Conor Dooley <conor@kernel.org>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
	David.Laight@aculab.com, parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add Zawrs ISA extension
 description
Message-ID: <20240419-chafe-leotard-e5daee19b1c8@spud>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-10-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QfhU+XUBAB3cbLSe"
Content-Disposition: inline
In-Reply-To: <20240419135321.70781-10-ajones@ventanamicro.com>


--QfhU+XUBAB3cbLSe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2024 at 03:53:24PM +0200, Andrew Jones wrote:
> Add description for the Zawrs (Wait-on-Reservation-Set) ISA extension
> which was ratified in commit 98918c844281 of riscv-isa-manual.
>=20
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>  .../devicetree/bindings/riscv/extensions.yaml        | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Do=
cumentation/devicetree/bindings/riscv/extensions.yaml
> index 468c646247aa..584da2f539e5 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -177,6 +177,18 @@ properties:
>              is supported as ratified at commit 5059e0ca641c ("update to
>              ratified") of the riscv-zacas.
> =20
> +        - const: zawrs
> +          description: |
> +            The Zawrs extension for entering a low-power state or for tr=
apping
> +            to a hypervisor while waiting on a store to a memory locatio=
n, as
> +            ratified in commit 98918c844281 ("Merge pull request #1217 f=
rom
> +            riscv/zawrs") of riscv-isa-manual.

This part is fine...


> Linux assumes that WRS.NTO will
> +            either always eventually terminate the stall due to the rese=
rvation
> +            set becoming invalid, implementation-specific other reasons,=
 or
> +            because a higher privilege level has configured it to cause =
an
> +            illegal instruction exception after an implementation-specif=
ic
> +            bounded time limit.

=2E..but I don't like this bit. The binding should just describe what the
property means for the hardware, not discuss specifics about a
particular OS.

And with my dt-bindings hat off and my kernel hat on, I think that if we
want to have more specific requirements than the extension provides we
either need to a) document that zawrs means that it will always
terminate or b) additionally document a "zawrs-always-terminates" that
has that meaning and look for it to enable the behaviour.

Documenting something and immediately turning around and saying "this
isn't sufficient, let's assume it means more than it does" just seems
like we should make firmware tell us exactly what we want.

Cheers,
Conor.

--QfhU+XUBAB3cbLSe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiKDmgAKCRB4tDGHoIJi
0jOSAP9IqK4PvY8JeZDma5rT1sWNFuEdFbrapMauGdGGPvAdSgEA+z96eLuQkw2x
uEfFX14BejcPofZs+eTpz/QcR0u9/wQ=
=dstU
-----END PGP SIGNATURE-----

--QfhU+XUBAB3cbLSe--


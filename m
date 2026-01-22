Return-Path: <devicetree+bounces-258615-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHNABfxxcmlpkwAAu9opvQ
	(envelope-from <devicetree+bounces-258615-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:52:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC0D6CBC3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:52:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 031E430022D3
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7978B3876D9;
	Thu, 22 Jan 2026 18:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY+CRaIh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F34D30C605;
	Thu, 22 Jan 2026 18:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769107959; cv=none; b=FxJ20N6taiNc7aWrKIAbnhYfgEHT7GvCb+owRrK4AeJp/mAQq2T8PjLKhhJaz8qfvFdh0Ovd6NuagnC0QSEsg6n4cUAgzAH5Bydc89Z8oBPAYWkhUA8PggmuB3FIwTDrZQpfNuCUGLekj2MLoiwu7V2OguREBM0edjuf2j6Fdag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769107959; c=relaxed/simple;
	bh=0V8Y5eVJy8Va7o6YR4MucS7wmP4IbYdB6u3T0vqBFkA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rn6242rqDVL+swqvEIVVwF1bTVhFBnQ8ToJhExSr0K5g8EpasNi1oGaC0h5repdOxKPTkHsErq6uuwY8ds+EK98wA2J/yn8a7NaAXbIK8a5ZIilbjxLACzdnGJiPngL//Iwj9Xaa6NTVfweeWi+7P8yuLVIXG+QHqUiuikavbno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY+CRaIh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77E0BC19423;
	Thu, 22 Jan 2026 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769107956;
	bh=0V8Y5eVJy8Va7o6YR4MucS7wmP4IbYdB6u3T0vqBFkA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OY+CRaIhHiTE4ubaMdTXZ+eTymp+O2qsx4SaX3DnPCFakjcC2/XMR1lIpatwSaqWt
	 q6Z9zOQbe38EYaAiVM0+vWvzXHaicCYgZd3VjBD8Xhr3eJKhko7Iv03tS7bGRoisoP
	 88Cys5otmDXL7Iy1mj3JfkPJ2wPEytn/FnkOXOYfkBn+rJZib0yzY8b03qvMrntgre
	 5c2fspZD2FKAvek1XxnDaMjzuKUwAKYeT2ynZIGxKwQE9AcoYRCkcHaWE7SrO8m9ma
	 vecI4kbdqVuOQgJLHEWq38F4EIhYZyYSe/oYRPZyBNP4AzQMbaaSa38RSUbcq+upFC
	 zeuyOrHliutFQ==
Date: Thu, 22 Jan 2026 18:52:31 +0000
From: Conor Dooley <conor@kernel.org>
To: Guodong Xu <guodong@riscstar.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: riscv: Add Supm extension description
Message-ID: <20260122-headlamp-champion-0bbad2551d33@spud>
References: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
 <20260116-supm-ext-id-v1-1-5fcf778ba4a6@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="81dh77ACAYQKu44u"
Content-Disposition: inline
In-Reply-To: <20260116-supm-ext-id-v1-1-5fcf778ba4a6@riscstar.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258615-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,riscstar.com:email]
X-Rspamd-Queue-Id: 9DC0D6CBC3
X-Rspamd-Action: no action


--81dh77ACAYQKu44u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 10:10:31AM +0800, Guodong Xu wrote:
> Add description for the Supm extension. Supm indicates support for pointer
> masking in user mode. Supm is mandatory for RVA23S64.
>=20
> The Supm extension is ratified in commit d70011dde6c2 ("Update to ratified
> state") of riscv-j-extension.
>=20
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 17 +++++++++++=
++++++
>  1 file changed, 17 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Do=
cumentation/devicetree/bindings/riscv/extensions.yaml
> index 4ffd61926505..1922dff03787 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -262,6 +262,23 @@ properties:
>              ratified in RISC-V Profiles Version 1.0, with commit b1d8066=
05f87
>              ("Updated to ratified state.")
> =20
> +        - const: supm
> +          description: |
> +            The standard Supm extension for pointer masking support in u=
ser
> +            mode (U-mode) as ratified at commit d70011dde6c2 ("Update to
> +            ratified state") of riscv-j-extension.
> +
> +            Supm represents a combination of underlying hardware capabil=
ity
> +            (Smnpm or Ssnpm), U-mode consumer privilege level, and M/S-m=
ode

Should we therefore make this require that Smnpm or Ssnpm are present?

> +            software configuration that enables pointer masking for U-mo=
de.
> +
> +            DO NOT include this property in device trees targeting privi=
leged
> +            system software (S-mode or M-mode).
> +
> +            This property is only appropriate in device trees provided to
> +            U-mode software where the next-higher-privilege-mode supports
> +            Smnpm or Ssnpm and enables it for U-mode.
> +
>          - const: svade
>            description: |
>              The standard Svade supervisor-level extension for SW-managed=
 PTE A/D
>=20
> --=20
> 2.43.0
>=20

--81dh77ACAYQKu44u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXJx7gAKCRB4tDGHoIJi
0rrLAP9+fJ2YwqDLg2ufwFGAYpV04xBNeRNMujDywFtcEXyZCwEApEgBGJywQbRE
OqdtJ2qzI1d0kt1LDSw8Q+/m/utpuwg=
=FGwz
-----END PGP SIGNATURE-----

--81dh77ACAYQKu44u--


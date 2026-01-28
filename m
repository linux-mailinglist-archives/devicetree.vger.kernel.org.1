Return-Path: <devicetree+bounces-260598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBVgLzxtemne6AEAu9opvQ
	(envelope-from <devicetree+bounces-260598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:10:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 20672A8664
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DDFA3022612
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E046937417B;
	Wed, 28 Jan 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyHHTAlK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD58B36F435;
	Wed, 28 Jan 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769631033; cv=none; b=M5iXrl1T/ev0erzwA7liYCdWP7TgGOI+krMD8WcYsCRLSworIjHPkRtS1LErKBFDA5M9/MyT3B2wluJ/bsYikDrtbpvhdTHh32V52HXqfNzXIIChWfaE/zyeFWq6Nkjhlah2A2ZFNnCRonjqk1RelpeuG8RHvLvOosUYBHhU9eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769631033; c=relaxed/simple;
	bh=cbUTU7UNDP0PcQPrkgEPxOaWJaIp7t5a4TDdNENC9sQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N3r9t2wQVnvi+bG1Mo5ylhYfk+nv4Lvd5ivtQGdGPbPifA1Fs4EkvSHjmmX58otqpXlqbW0CU7Du1DKagl4BTxvLPUWsKiMNapv/VUu3oFLEP/Z/H5PvF4H0qZMuaB5wy4+oMcePJ8nr9trAe/Q35X/t3JPzseW+2OfSIh7RmsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyHHTAlK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 278F7C4CEF1;
	Wed, 28 Jan 2026 20:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769631033;
	bh=cbUTU7UNDP0PcQPrkgEPxOaWJaIp7t5a4TDdNENC9sQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RyHHTAlKb5eS4BFX+Ch9ajyVf8ZIjISXgZhpX65ZmewBuzaGEjODnpepq0cOhxXk+
	 W9UaEu3RJk+MAqDZ3u9jGCKTdLdT3toK6JV7DrCPovZkLjRxpUi8Qcn9txEPHy9Y+1
	 KrLShf3iCnzBS8+GW/3JnqVlaId+Xq0SmY8+3LGVboM1vmvI7SCh9PHzP44d4301OE
	 mcdeHvsYe/MHNgvuNf1CQj8Smc1ZXZVDt42NChEyssMcY0BbdimGVWmUWqOoKZoyOP
	 NKbAg8iGCxIs8bymtpsQ19QZfpg9uKtAK9CRTvMX7VXmUp2NvcjXXqKpRSFPAUDSpT
	 wwpo2DdbEvCag==
Date: Wed, 28 Jan 2026 20:10:28 +0000
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
	Conor Dooley <conor.dooley@microchip.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: riscv: Add Supm extension description
Message-ID: <20260128-steering-luckless-565bb14495a1@spud>
References: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
 <20260125-supm-ext-id-v2-1-1e3b9714c860@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qxguFY5XCRtrbMWp"
Content-Disposition: inline
In-Reply-To: <20260125-supm-ext-id-v2-1-1e3b9714c860@riscstar.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260598-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 20672A8664
X-Rspamd-Action: no action


--qxguFY5XCRtrbMWp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 25, 2026 at 09:36:06AM +0800, Guodong Xu wrote:
> Add description for the Supm extension. Supm indicates support for pointer
> masking in user mode. Supm is mandatory for RVA23S64.
>=20
> Add dependency check that Supm requires either Smnpm or Ssnpm.
>=20
> The Supm extension is ratified in commit d70011dde6c2 ("Update to ratified
> state") of riscv-j-extension.
>=20
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

FWIW, this is missing my 6.20/7.0 (whichever it ends up being) PR cos
I'd like some other folks to look at the series. If Paul/Palmer are
happy with it though,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
> v2: Add dependency check for Sump.
>     Put the check blok after single-letters and before Z*.
> ---
>  .../devicetree/bindings/riscv/extensions.yaml      | 27 ++++++++++++++++=
++++++
>  1 file changed, 27 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Do=
cumentation/devicetree/bindings/riscv/extensions.yaml
> index c6ec9290fe07..2b0a8a93bb21 100644
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
> @@ -907,6 +924,16 @@ properties:
>          then:
>            contains:
>              const: b
> +      # Supm depends on Smnpm or Ssnpm
> +      - if:
> +          contains:
> +            const: supm
> +        then:
> +          oneOf:
> +            - contains:
> +                const: smnpm
> +            - contains:
> +                const: ssnpm
>        # Za64rs and Ziccrse depend on Zalrsc or A
>        - if:
>            contains:
>=20
> --=20
> 2.43.0
>=20

--qxguFY5XCRtrbMWp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXptMwAKCRB4tDGHoIJi
0i/IAPwIYQeMxvZnB3qX0r5k2G4LWuHgJmduU+vhmMmN4Dp59gD/S6sCI+hDlciv
V3PF2CQwUvIJFEDbW9Mt1wkk+BIUggk=
=TPgz
-----END PGP SIGNATURE-----

--qxguFY5XCRtrbMWp--


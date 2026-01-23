Return-Path: <devicetree+bounces-259088-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIhgKMOuc2nOxwAAu9opvQ
	(envelope-from <devicetree+bounces-259088-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:24:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BAD78F9F
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1F4523006D4C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 078782C0296;
	Fri, 23 Jan 2026 17:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2FN5rsC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E813FEF;
	Fri, 23 Jan 2026 17:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769189054; cv=none; b=gPptMIowBz/me8DMBOKf6+10ouMvueT6lb/B5hZzWL8Bg5pKbz1vBYflO8OExeRzOMrL3KUMpiLRG5zUvlcoJ3Vy+Yyd//8k93X2597nqjcHFclRd00Zwy0woMH79Xof4hFJzL0787Ap+OkZDPsiJAIZ80n1N+kRX975C33WfK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769189054; c=relaxed/simple;
	bh=1iFXkFiW5IRcxv20ZM521sbV1+F7TXqM6Nja0SMCg+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RMWQyKl1SI5xdWABp+Sxt8ms3bVMzZdn0Vs7ENxtrEt9pAHzrTNErjUTcQHKMTRhM44blLw78NRkPkvhLfeThfWKlemav/+dWpc9j4xM8goF47YNAvGew3dDeVhgOMY5gqN0Z71WyiZOkvQyaMkqqN5RetP9cKUi2aqSu2f2Tfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2FN5rsC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8591AC4CEF1;
	Fri, 23 Jan 2026 17:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769189054;
	bh=1iFXkFiW5IRcxv20ZM521sbV1+F7TXqM6Nja0SMCg+0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B2FN5rsCQdDfLjoZ8VgMn7Rh+tli/6+KJU+t2Q4q7dUCCl7ql77pgz3nOigmZ2CXY
	 uFjc2pwbSRuCWEPulozzncyX30wXc17aPkLftO9+UlUEvpSLK7xeZBrs2wuQbYl7sy
	 m+LZljKi42aieQjxuhIUnLDbmF+qLgo5mIS2e3OfBkYqBzp3FD6Hj8qgR8MfSbS+eo
	 basn4ghX6Rjas1XzHxe4mdeB6gUTcr1UEnMknpM5ieHVGV+JHvhk+mt11jT17IbEUC
	 h/dF4eZHET+B+Jc7R5Pz7Kj+QreRJ2T7F5EZ44+6OTKJPFLKznKz8arW1u965Eh/Ba
	 i3Cgbm4UKBKPA==
Date: Fri, 23 Jan 2026 17:24:09 +0000
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
Message-ID: <20260123-regime-example-c53814f85bad@spud>
References: <20260116-supm-ext-id-v1-0-5fcf778ba4a6@riscstar.com>
 <20260116-supm-ext-id-v1-1-5fcf778ba4a6@riscstar.com>
 <20260122-headlamp-champion-0bbad2551d33@spud>
 <CAH1PCMY+FrxkT+qnAXbS75T=PTzGB_BkKWY1f3-anOjHwG9CkA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7xcWmSwswcfCaFDt"
Content-Disposition: inline
In-Reply-To: <CAH1PCMY+FrxkT+qnAXbS75T=PTzGB_BkKWY1f3-anOjHwG9CkA@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259088-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,riscstar.com:email]
X-Rspamd-Queue-Id: B8BAD78F9F
X-Rspamd-Action: no action


--7xcWmSwswcfCaFDt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 23, 2026 at 07:29:52AM +0800, Guodong Xu wrote:
> On Fri, Jan 23, 2026 at 2:52=E2=80=AFAM Conor Dooley <conor@kernel.org> w=
rote:
> >
> > On Fri, Jan 16, 2026 at 10:10:31AM +0800, Guodong Xu wrote:
> > > Add description for the Supm extension. Supm indicates support for po=
inter
> > > masking in user mode. Supm is mandatory for RVA23S64.
> > >
> > > The Supm extension is ratified in commit d70011dde6c2 ("Update to rat=
ified
> > > state") of riscv-j-extension.
> > >
> > > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > > ---
> > >  Documentation/devicetree/bindings/riscv/extensions.yaml | 17 +++++++=
++++++++++
> > >  1 file changed, 17 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml =
b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > index 4ffd61926505..1922dff03787 100644
> > > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > @@ -262,6 +262,23 @@ properties:
> > >              ratified in RISC-V Profiles Version 1.0, with commit b1d=
806605f87
> > >              ("Updated to ratified state.")
> > >
> > > +        - const: supm
> > > +          description: |
> > > +            The standard Supm extension for pointer masking support =
in user
> > > +            mode (U-mode) as ratified at commit d70011dde6c2 ("Updat=
e to
> > > +            ratified state") of riscv-j-extension.
> > > +
> > > +            Supm represents a combination of underlying hardware cap=
ability
> > > +            (Smnpm or Ssnpm), U-mode consumer privilege level, and M=
/S-mode
> >
> > Should we therefore make this require that Smnpm or Ssnpm are present?
>=20
> I'm not sure. Would U-mode DTBs typically omit the privileged extensions =
like
> Smnpm/Ssnpm, making such a dependency impractical?

I don't actually know of any u-mode software that uses a devicetree, but
my guy feeling is that people won't trim out the lower-priv mode things
because they might want/need to know if those features are available on the
platform.

> > > +            software configuration that enables pointer masking for =
U-mode.
> > > +
> > > +            DO NOT include this property in device trees targeting p=
rivileged
> > > +            system software (S-mode or M-mode).
> > > +
> > > +            This property is only appropriate in device trees provid=
ed to
> > > +            U-mode software where the next-higher-privilege-mode sup=
ports
> > > +            Smnpm or Ssnpm and enables it for U-mode.
> > > +
> > >          - const: svade
> > >            description: |
> > >              The standard Svade supervisor-level extension for SW-man=
aged PTE A/D
> > >
> > > --
> > > 2.43.0
> > >

--7xcWmSwswcfCaFDt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXOuuQAKCRB4tDGHoIJi
0lARAQCw6xeBCMvnkMZXdVDTmW8UaI95vKbCXYpHPfG3jyruoAEAnfru/kFDHa+s
T43B5i4zwtYiw6O0oerDYK/DrbtnUg8=
=udYY
-----END PGP SIGNATURE-----

--7xcWmSwswcfCaFDt--


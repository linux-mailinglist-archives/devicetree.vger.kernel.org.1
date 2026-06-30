Return-Path: <devicetree+bounces-318011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oqWGNKIFRGqdnQoAu9opvQ
	(envelope-from <devicetree+bounces-318011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 20:06:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 428F96E7176
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 20:06:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=c56qQ5u2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318011-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318011-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4B20F3019FE2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28CCF3DF018;
	Tue, 30 Jun 2026 18:06:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7B133F5A2;
	Tue, 30 Jun 2026 18:06:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782842783; cv=none; b=cogCGJLDgPo4jOrpATjgYbSN8XPGvwPKRc/ZW1XcPaVpI6bg7Lss3q9YNOBqhibQSjlchaYB/khZczC4G+9vDsyME51L+nZIx8pJHRcEZZMNCcGZXI6nlaYXwaQUAADUXZz6UlIjWjvQq4uU+b1RYsFq6r0FprQEUcbfSfwfJIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782842783; c=relaxed/simple;
	bh=Yo8dfrESJG9IfUmB4Rc04gnfCoCs+wJExzmq4IMq2aI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D7waP4pvnbse0lRwDP1siKOHu/9rqR19+bV27E+waIvFZCSKKtm1OPACrfpagO/6EvMx/h0vWDT2ezPDeINIbooz9R1hvQsa7VZfAcADXZD5+KAZ+tatI//efNzsgu5u9oTIGe+1Ui+SmzhU39JPmOKF76GqQduvXUbPlxNxoyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c56qQ5u2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 695EC1F000E9;
	Tue, 30 Jun 2026 18:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782842781;
	bh=8PWHsCluT3OCbg2LsYgRbkNFc7KX9vIUaT27QTkHN28=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=c56qQ5u2XKTmOS92xWDJTHj+zlvdzxuTazJAxr9vVSpx1+UfX/wfyiuusBEZuKgQB
	 21q2bf00RQLBSsy6EvJ2D6bAEkEyMnhYr4TxKC3+tq6tAtx6fs30CV7X5+nlLKZCq3
	 eN0zsQjyVH6fNQrcNmnxuD1GhOXGe784FRka5zHpK1Q6Yb9AnY4ISM+oFHIzaA2wxJ
	 lLFWfR7aFgKmAFKRsnxyxyk8I9m7A+IktZa9koOnf54VDCNpwZusSg1glYmBlZMRfw
	 tqF/TjzanotTRnzYQnMw+Taazt+b7bHneX+WzucSKQCURNMsjSckkjAlqRJwDiVwwb
	 /kBLAzqtihLYw==
Date: Tue, 30 Jun 2026 19:06:14 +0100
From: Conor Dooley <conor@kernel.org>
To: Yu-Chien Peter Lin <peter.lin@sifive.com>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, pjw@kernel.org, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, samuel.holland@sifive.com,
	dlan@kernel.org, guodong@riscstar.com, dfustini@oss.tenstorrent.com,
	michal.simek@amd.com, junhui.liu@pigmoral.tech,
	darshan.prajapati@einfochips.com, akpm@linux-foundation.org,
	zhangchunyan@iscas.ac.cn, luxu.kernel@bytedance.com,
	pincheng.plct@isrc.iscas.ac.cn, nick.hu@sifive.com,
	jim.shu@sifive.com, zong.li@sifive.com, greentime.hu@sifive.com,
	robin.randhawa@sifive.com, scott@riscstar.com,
	dave.patel@riscstar.com, raymond.mao@riscstar.com
Subject: Re: [RFC PATCH 2/3] dt-bindings: riscv: Add Worlds per-hart
 properties
Message-ID: <20260630-frisk-excavate-7d562df75585@spud>
References: <20260619105834.1277302-1-peter.lin@sifive.com>
 <20260619105834.1277302-3-peter.lin@sifive.com>
 <20260622-profanity-herbs-1cc1bcf6206f@spud>
 <aj5m00m4KxRAPAnB@plin-1878>
 <20260626-chitchat-purity-33af51f88380@spud>
 <akOkXpPi46LBHuIA@plin-1878>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zUJhvglUFjMqS5hn"
Content-Disposition: inline
In-Reply-To: <akOkXpPi46LBHuIA@plin-1878>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[30];
	FORGED_RECIPIENTS(0.00)[m:peter.lin@sifive.com,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:samuel.holland@sifive.com,m:dlan@kernel.org,m:guodong@riscstar.com,m:dfustini@oss.tenstorrent.com,m:michal.simek@amd.com,m:junhui.liu@pigmoral.tech,m:darshan.prajapati@einfochips.com,m:akpm@linux-foundation.org,m:zhangchunyan@iscas.ac.cn,m:luxu.kernel@bytedance.com,m:pincheng.plct@isrc.iscas.ac.cn,m:nick.hu@sifive.com,m:jim.shu@sifive.com,m:zong.li@sifive.com,m:greentime.hu@sifive.com,m:robin.randhawa@sifive.com,m:scott@riscstar.com,m:dave.patel@riscstar.com,m:raymond.mao@riscstar.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-318011-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 428F96E7176

--zUJhvglUFjMqS5hn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 30, 2026 at 07:11:26PM +0800, Yu-Chien Peter Lin wrote:
> Hi Conor,
>=20
> On Fri, Jun 26, 2026 at 03:36:38PM +0100, Conor Dooley wrote:
> > On Fri, Jun 26, 2026 at 07:47:31PM +0800, Yu-Chien Peter Lin wrote:
> > > Hi Conor,
> > >=20
> > > On Mon, Jun 22, 2026 at 06:12:47PM +0100, Conor Dooley wrote:
> > > > On Fri, Jun 19, 2026 at 06:58:33PM +0800, Yu-Chien Peter Lin wrote:
> > > > > Add per-hart DT properties for RISC-V Worlds architecture:
> > > > > riscv,pmwid, riscv,pmwidlist, and riscv,pmlwidlist. These
> > > > > platform-defined values are primarily used by M-mode firmware
> > > > > to configure World ID CSRs and restrict WID usage across
> > > > > privilege levels.
> > > > >=20
> > > > > Signed-off-by: Yu-Chien Peter Lin <peter.lin@sifive.com>
> > > > > ---
> > > > >  .../devicetree/bindings/riscv/cpus.yaml       | 21 +++++
> > > > >  .../devicetree/bindings/riscv/worlds.yaml     | 77 +++++++++++++=
++++++
> > > > >  2 files changed, 98 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/riscv/world=
s.yaml
> > > > >=20
> > > > > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/=
Documentation/devicetree/bindings/riscv/cpus.yaml
> > > > > index 5feeb2203050..4b5778b6d3e7 100644
> > > > > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > > > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > > > @@ -26,6 +26,7 @@ description: |
> > > > >  allOf:
> > > > >    - $ref: /schemas/cpu.yaml#
> > > > >    - $ref: extensions.yaml
> > > > > +  - $ref: worlds.yaml
> > > > >    - if:
> > > > >        not:
> > > > >          properties:
> > > > > @@ -120,11 +121,31 @@ properties:
> > > > >        thead systems where the vector register length is not iden=
tical on all harts, or
> > > > >        the vlenb CSR is not available.
> > > > > =20
> > > > > +  riscv,pmwid:
> > > > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > > > +    description:
> > > > > +      Platform-defined M-mode World ID (WID) assigned to this ha=
rt.
> > > > > +    minimum: 0
> > > > > +    maximum: 63
> > > > > +
> > > > > +  riscv,pmwidlist:
> > > > > +    $ref: /schemas/types.yaml#/definitions/uint64
> > > > > +    description:
> > > > > +      Platform-defined bitmap of M-mode World IDs (WIDs) that th=
is hart may use.
> > > >=20
> > > > I don't understand what the difference is between this property and=
 the
> > > > one before it are.
> > > > Is this one meant to be used by m-mode software to then select one =
which
> > > > will appear in riscv,pmwid?
> > >=20
> > > pmwid (single value) is the reset default, while pmwidlist (bitmap)
> > > defines the allowed set. The root-of-trust M-mode software may select
> > > an allowed value from the pmwidlist and write it to the mwid CSR.
> >=20
> > I don't understand the point of the property then. If it is the reset
> > default, just read it out of the register?
> > Unless I am missing something, it's useless to s-mode because it may
> > not be what m-mode chose and useless to m-mode that has access to
> > the csr.
>=20
> Smwid is optional. In the no-Smwid case:
> - M-mode's WID is fixed to pmwid (hardware-defined via fuse/pinstrap/SoC
>   registers, exposed to software via riscv,pmwid DT property)
> - S/U-mode's WID depends on opensbi-domain configuration [1]:
>   - If next-wid is specified: S/U use that WID (via mlwid CSR)
>   - If next-wid is absent   : S/U fall back to pmwid (M/S/U in same
>     world)
>=20
> So riscv,pmwid serves two purpose:
> 1. Source of truth for M-mode's WID when mwid CSR doesn't exist
> 2. Fallback value for OpenSBI to write to mlwid when domain config is
>    absent.

So it is not the default at reset at all then. The reset default is
something else entirely and this is used to overwrite that.

> - M-mode's WID is fixed to pmwid (hardware-defined via fuse/pinstrap/SoC
>   registers, exposed to software via riscv,pmwid DT property)

In this case, it seems like pmwidlist would just contain a single entry,
and there is no need for pwmid.

Quite frankly, it seems like you need to decouple these properties from
being 1:1 mappings to your extension's CSRs and both name and explain
how they are to be used by software.

For example, how is software to treat the value in riscv,pwmid when
Smwid is enabled? Must it be the same value? Is riscv,pwmidlist useless
in that scenario as a result and should not be populated? Should
riscv,pwmid not be used if Smwid is enabled?

There's a lot of extensions defined in this series, and there's no
clarity on how these properties behave depending on what's enabled in
the binding. There must be.

> - S/U-mode's WID depends on opensbi-domain configuration [1]:
>   - If next-wid is specified: S/U use that WID (via mlwid CSR)
>   - If next-wid is absent   : S/U fall back to pmwid (M/S/U in same
>     world)
>=20
> So riscv,pmwid serves two purpose:
> 1. Source of truth for M-mode's WID when mwid CSR doesn't exist
> 2. Fallback value for OpenSBI to write to mlwid when domain config is
>    absent.

Again same point applies here, why can a single-entry riscv,pmwidlist
not suffice here?
Additionally, if it cannot, you may need to introduce mutual exclusion
and the relevant extensions because it doesn't seem like in your current
design that the two properties are intended to co-exist.

Cheers,
Conor.

--zUJhvglUFjMqS5hn
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakQFlgAKCRB4tDGHoIJi
0gHKAQCT6Z01KfRa6fx77AoqUbJKpU1uIcQnxC9IrjdfytysMgD9FZol0kRCb8w+
eyMlSSrWnw03mZZzgXqR+mWTkFfxYwo=
=BvLm
-----END PGP SIGNATURE-----

--zUJhvglUFjMqS5hn--


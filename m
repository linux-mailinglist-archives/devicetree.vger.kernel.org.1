Return-Path: <devicetree+bounces-300863-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mC6UO3AfDmpd6QUAu9opvQ
	(envelope-from <devicetree+bounces-300863-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 22:54:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0580759A47C
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 22:54:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E213E3106F9C
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71064028D6;
	Wed, 20 May 2026 18:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3HC1AWl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81223D75AB;
	Wed, 20 May 2026 18:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779303335; cv=none; b=gM0EwEwkifwAbhvsvXx1xLqmibW8SOdctsAQvk8NYaPAvRWJV9LU8frnl7rWbFYQAsf9DW8K1uGWW5gBjx4Ee2kMLQTqFwmv+WV+72MT8YliB0HC0MHmhIeE8TzWYVB5477r80B+IolIHh0W638njZ3Uyz90WEt4cKQD3dmAjy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779303335; c=relaxed/simple;
	bh=PvpeF/Zoun/FX1KkahgKET3g0uHQyd8hBFJoc4f5kUE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dRdUEwLIZhm8/7Zb8EQYEL5p3T48Q7nPcAl97dfD28zz7cb1nFU18wh/RfF+vbUt36Usw4gwL9s+Wp9OTuGmWWt8iXpbkLHVDY8iGLP9TeTWoMps8MZRDpIvgOpjaGKGMaXWVTIw2raKs19PMh3RTom/psQXO6X/xZnyzxOmzO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3HC1AWl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 108B21F000E9;
	Wed, 20 May 2026 18:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779303334;
	bh=1T+Q/YxtQARU2EGQLE/zHDY4XgcSiULTKufiyFMk81o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=d3HC1AWlxYQloLRdwFfkhaO9j224EwZJKTWuqbNerYPPwboNaP5Oz+iENzlzxFIap
	 aB83fyHfHkO46WDersl/s2y9fMKNnVWY7cjunQ3dZWU8yCNtPQ19Yr5yJ/gO+07XZa
	 nEA65mrqtesRALxniBsxDYR26TgwmwQbhOQ2kWquww7WOG+HhUp2rhuD0XkQpnUKl4
	 3jcPM5N7E+loqNENnYvCO7XLTC/PSQpsIvSfJezjYB+z5Mb6JhpjxAe0MsCcyo7EgJ
	 zbX+IR/im+BQAIPoSDd/EOu68/1bNkHfVz3edQcj3+K+CFV6P24opy4+L1dj3HWqu9
	 P6iMyHvEgXW/g==
Date: Wed, 20 May 2026 19:55:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Drew Fustini <fustini@kernel.org>
Cc: Tomasz Jeznach <tomasz.jeznach@linux.dev>,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Joel Stanley <joel@jms.id.au>, Joerg Roedel <joerg.roedel@amd.com>,
	Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: iommu: riscv: Add bindings for
 Tenstorrent RISC-V IOMMU
Message-ID: <20260520-imminent-graded-6e1f0f4c54d0@spud>
References: <20260520061855.1623468-4-fustini@kernel.org>
 <20260520-frayed-fervor-7c887193ab19@spud>
 <ag36CHVAERc3ZYmi@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XDMycSDARlTDf9SM"
Content-Disposition: inline
In-Reply-To: <ag36CHVAERc3ZYmi@x1>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300863-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linux.dev,8bytes.org,kernel.org,arm.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lists.linux.dev,lists.infradead.org,vger.kernel.org,jms.id.au,amd.com,gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 0580759A47C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--XDMycSDARlTDf9SM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 20, 2026 at 11:14:32AM -0700, Drew Fustini wrote:
> On Wed, May 20, 2026 at 05:17:41PM +0100, Conor Dooley wrote:
> > On Tue, May 19, 2026 at 11:16:28PM -0700, Drew Fustini wrote:
> > > +allOf:
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            enum:
> > > +              - tenstorrent,riscv-iommu
> > > +    then:
> > > +      properties:
> > > +        reg:
> >=20
> > > +          items:
> > > +            - description: IOMMU base registers
> > > +            - description: Tenstorrent IOMMU machine mode registers.
> >=20
> > Should this also have minItems: 2?
>=20
> I think items: with 2 items implies minItems: 2 but I see your later
> point about the description and names don't belong in the allOf: block.

It would usually, but this is a conditional portion of a wider binding
that you've modified to look like
| reg:
|  minItems: 1
|  maxItems: 2
outside the conditional section, and since you don't further constrain
reg in the conditional section, this minItems: 1 applies.

--XDMycSDARlTDf9SM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCag4DoAAKCRB4tDGHoIJi
0i52AQCcMVQtjCAMXGJzQtwBxYsFksRtUfjkaDGhaqziPvWuBQD/T3ApAlZSXRoR
lowYATvKW0j7qswukibEBKJMYExAhgw=
=Cpyi
-----END PGP SIGNATURE-----

--XDMycSDARlTDf9SM--


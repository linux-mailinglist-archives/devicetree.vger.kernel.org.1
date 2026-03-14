Return-Path: <devicetree+bounces-275594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJhUBJm3tGkLsQAAu9opvQ
	(envelope-from <devicetree+bounces-275594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:19:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4D428B375
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0449D30146B7
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62F86285061;
	Sat, 14 Mar 2026 01:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxkgTOwv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415291D5170
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 01:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773451141; cv=none; b=FliSFEY7ehOeN0HmzQc+pRGgt8dX+f7my87j48AsGNkTsmN0byHOl30IKoWDCLAordvr9WybLB6h7DB18zjrrT9zZBBPjy0VZ4kWQX58y4wQsspbX8UH6IaUx6bWkWAOeas6CMsfwu3oUZLBjyNaaQbJpEqyR9oIstHeGjImgNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773451141; c=relaxed/simple;
	bh=qnr95hgbmxKCQoVxKIASrc5t+YqB+yRLOXFlitKJJD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VQIX7yS3uuSmG0WXM7yYO+Rf1cpSe7/bTjRbOTLMszOnj6iAKzVJTl1MqJmJMNZ0zFY00iwHGDMbElhtJRFjqNy6NVInuslc5K21186Rlw/PtNv7LeVesBTTkwOcelaq+OxAqzfWIIOTdERekv7nj/B7hDwXwozvOyJLutsZ56c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxkgTOwv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C97DC19421;
	Sat, 14 Mar 2026 01:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773451140;
	bh=qnr95hgbmxKCQoVxKIASrc5t+YqB+yRLOXFlitKJJD4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gxkgTOwvprg6wrBkZjtbNCLlgJr9aLdNXqBKiBEiFxGZ4wupJM3ZuNVkJhYPM/OWN
	 aThlf4IggApRnj+TUGNuisZc73p5WkG0VpDjlglGpBXSi0TL/QWS37Hmvkr4JEpgrh
	 sLmU1uOiIUNdjHaHQEzlMdoIC/pUQYEiU7BswfdaKFKD2pnD3/LbhkuF5jNTkVCGjV
	 2slp3PNX3y/F0eYfdgdTR9ZfTVsmAiU54vsw5+vW/YbLqXjlYECEk3P0AeJDp3FT4l
	 TOPUUTTRjwLb6z5Y6kD0IxJXGSb5RMYCfhmsI2jc3JpQHxPyVyFyH/BlBQxjUcywOg
	 dErjhHezKZpOw==
Date: Sat, 14 Mar 2026 01:18:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
	david@redhat.com, palmer@dabbelt.com, pjw@kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc, lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com, marcel@ziswiler.com, kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 1/6] riscv: Add a custom, simplified version of
 Svpbmt "XPbmtUC"
Message-ID: <20260314-errant-gnarly-dcca92457051@spud>
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-2-ganboing@gmail.com>
 <20260313-visitor-majestic-1a6888dc57b2@spud>
 <25a8565d-a6bb-401f-b776-d743a2ec9ee0@gmail.com>
 <20260313-spiny-duration-702fff6bca17@spud>
 <ba44e0ed-9a6f-4d4d-b3bc-a6e0bac19940@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Q+I14jZDJu0cG5SR"
Content-Disposition: inline
In-Reply-To: <ba44e0ed-9a6f-4d4d-b3bc-a6e0bac19940@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275594-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7C4D428B375
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--Q+I14jZDJu0cG5SR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 05:29:53PM -0700, Bo Gan wrote:
> Hi Conor,
>=20
> On 3/13/26 16:55, Conor Dooley wrote:
> > On Fri, Mar 13, 2026 at 02:33:16PM -0700, Bo Gan wrote:
> > > Hi Conor,
> > >=20
> > > Thanks so much for the prompt review. See inline.
> > >=20
> > > On 3/13/26 06:24, Conor Dooley wrote:
> > > > Hey,
> > > >=20
> > > > Gonna offer some feedback on the detail of what's been done in this
> > > > series, without providing any commentary on whether this is the cor=
rect
> > > > approach to take.
> > > >=20
> > > > On Fri, Mar 13, 2026 at 01:44:02AM -0700, Bo Gan wrote:
> > > > > On platforms that doesn't support Svpbmt or XTheadMae, SoC vendors
> > > > > sometimes map the system memory twice in physical address space, =
one
> > > > > as cached, and the other as uncached. Through the uncached window,
> > > > > device drivers will be able to map DMA buffer for noncoherent dev=
ices.
> > > > > Such setup is usually found in SoC with pre-Svpbmt Sifive cores.
> > > > > Make use of such feature by modeling it as "XPbmtUC", a customized
> > > > > version of Svpbmt, where a single bit in PTE is used for UC contr=
ol.
> > > > > There's no IO bit with such scheme, as it's assumed that the PMA
> > > > > (usually hard-wired on these SoCs) will properly convey the stron=
gly-
> > > > > ordered, non-idempotent attribute of the MMIO region.
> > > > >=20
> > > > > The enablement of such position of "XPbmtUC" is controlled by the
> > > > > device-tree property "riscv,xpbmt-uncache-bit".
> > > >=20
> > > > Firstly, the naming generally I take some exception to. If this is =
some
> > > > fake vendor extension for linux purposes, it needs to have "xlinux"=
 in
> > > > it, like our xlinuxenvcfg does. It should also be consistent, don't=
 use
> > > > "xpmbtuc" and "xpbmt-uncache-bit", pick one and stick to it.
> > > >=20
> > > Makes sense. I can certainly change that to be conformant.
> > >=20
> > > > Athough, I think I disagree fundamentally with this property, as it=
 seems
> > > > to me like "software configuration" that shouldn't be permitted in
> > > > devicetree. Maybe I am misunderstanding, but the numbers you chose =
are
> > > > convenient, not set in stone by the specific hardware, right?
> > >=20
> > > For JH7110, the bit 32 (PPN bit 34) matches exactly with the HW. Mean=
ing
> > > toggling this bit would re-map the page to the uncached window, which
> > > matches perfectly with the synthetic UC bit in the scheme.
> >=20
> > What does "matches exactly with the hardware" mean? AFAICT, you picked
> > it because it was the best value, but you could also have picked another
> > less optimal value?
> >=20
> > >=20
> > > For EIC770X, the bit 38 (PPN bit 40) is hand picked to be able to map=
 all
> > > physical memory space (40 bit), while making it very easy for the thi=
n-
> > > hypervisor, which can utilize Sv39x4 (41 bit) page scheme in G-stage.
> > >=20
> > > I also considered the sbi call approach, where the kernel can query f=
or
> > > the support and position of the uncache bit. The thing is that JH7110
> > > can just hard-code the bit without any changes to firmware, and I want
> > > to have a consistent way for both SoC, thus the device-tree approach,=
 to
> > > let the EIC770X firmware/bootloader adding the property to dt at runt=
ime.
> > > Any better ideas?
> >=20
> > Is the only thing that's variable on your eic770x platform whether or
> > not the bit is enabled? Or are you looking to vary the bit depending on
> > the specific platform?
> >=20
>=20
> It'll be "fixed" for eic770x if a thin-hypervisor re-mapping is enabled
> underneath. It just so happens that the physical address space is 40 bits
> (ignoring the 40bit+ upper uncached region for interleaved memory, which
> we don't need when the "xpbmt-uc" is enabled anyway), and the hypervisor
> can use Sv39x4 (also 41bit) to re-map everything.
>=20
> The variation comes with different SoCs, JH7110 vs. EIC770X. I'd like to
> make it a variable, to make a unified kernel binary boot on all SoCs, so

FWIW, I have no interest in things that are not multiplatform-safe, so
anything I've been suggesting has been with that in mind. When I was
talking about not conveying the bit via DT, but storing the value in the
kernel, I was still considering that the values would be stored for
specific soc compatibles.

To be honest, I'm not completely dead-set opposed to a property that has
the bit positioning, but any property being added for what is
effectively an erratum needs to pass a high bar when the info could be
gathered in another way. That the eic7700 one depends on firmware for
what the bit may be is points in your favour, since firmware variability
is part of what dt is there to do. The jh7110 is points against, since
it could be fished out of the errata handling code.

> I need to fix the alternative logic for PC-relative instructions to read
> from a global variable "xpbmtuc_bit/mask". Also I want to avoid adding
> too many branches to the alternative macro.
>=20
> > > > I'd be much more comfortable with adding xlinuxwhatever to
> > > > riscv,isa-extensions, to signal that a soc supports this stuff than=
 with
> > > > a property for the bit itself. I suppose that bit information could=
 then
> > > > come from a LUT in the vendor extensions, that a validate callback =
could
> > > > check (via root compatible) before enabling. There's not a super ne=
at
> > > > way to do that at the moment though I don't think, code currently
> > > > expects that vendor extensions are in a different "namespace" to
> > > > standard ones, and this would blur the lines because it's not from a
> > > > specific vendor, nor is it a standard extension.
> > > > I guess, it could be done by keeping it as a standard number, but t=
hen
> > > > it's a bit trickier to neatly access the LUT while keeping it split
> > > > apart.
> > > > I know this means having to modify the kernel if there's a new devi=
ce,
> > > > but I'm inclined to say "deal with it" because they could've done
> > > > something standard and opted not to.
> > > >=20
> > > > Could also argue that this should be shoved into a sifive specific
> > > > thing, but I don't expect that they're the only ones with devices l=
ike
> > > > this that could benefit.
> > > >=20
> > >=20
> > > I've thought about riscv,isa-extensions. The issue with that is that =
it's
> > > a per-CPU thing, but I'm adding a global extension, and I don't want =
to
> >=20
> > Most of the extensions in that string are effectively global. There's no
> > need to worry about "polluting" it.
> >=20
>=20
> Got it. So I can use something like "xlinuxpbmtuc38" in isa-string? (until
> someone comes up with a better naming. Naming things is hard...)

I don't think the encoding of the bit should be in the name, otherwise
we'd need to many different variations, if using riscv,isa-extensions is
the approach that ends up being used.

> > > pollute the isa-extension string. Thus, I followed Samuel's approach =
--
> > > He uses "riscv,physical-memory-regions" in the root node.
>=20
> Bo

--Q+I14jZDJu0cG5SR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabS3fwAKCRB4tDGHoIJi
0iCdAP0YveJl1IGqhdlqO0fUyAq6U6ugZdJQN1GaN4EkiNuXLAEArpEQOjLyAipb
PaTnjbx8X3PCe4bPuL8kSh2kUMjhUQI=
=4fko
-----END PGP SIGNATURE-----

--Q+I14jZDJu0cG5SR--


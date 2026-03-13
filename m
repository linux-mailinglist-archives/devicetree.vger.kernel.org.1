Return-Path: <devicetree+bounces-275581-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JDTDf2jtGk7rgAAu9opvQ
	(envelope-from <devicetree+bounces-275581-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 00:55:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFFB28AC52
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 00:55:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D07E63092082
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 23:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF492D7804;
	Fri, 13 Mar 2026 23:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEdaqGiT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9DE21E097
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 23:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773446137; cv=none; b=aFM8bh4YzV40MxQwe4cxELxbSrCKul+wvQtC117kaAPCD8DblK1TOut3LBlDKTiUsILfuEZ1964Xh0hYI+19hYkbggekAQOfV0U7IzA2erOldbbpbgg/je1VfeIo/FrUWAoMkvYK960NjWoreyec/i4hqkbZlZNNU5nkB152/e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773446137; c=relaxed/simple;
	bh=veJ8YUerlXE+quwRcQmdriJ/T0Mo1IBgYUvuwIxvzZg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qWhKfPoByDecubSGVXTXvIgvyJ5W9oGg7IJuqfq53mWsMwioS2LpdrU5pXWe5jSNhOUaidgxlRJD0QZqdN7a9vSysMfAXy87CbNxpusb4xzeNrjKY1FxbeOQa9KxhauoR6n0sKIRadWgDDpZFl48Pc/1rF5hsf+Ld4ervfLvQAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEdaqGiT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E077CC19421;
	Fri, 13 Mar 2026 23:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773446137;
	bh=veJ8YUerlXE+quwRcQmdriJ/T0Mo1IBgYUvuwIxvzZg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sEdaqGiTZ7ThPTo9wfmuFMROS3RwzTWz78P0reua0ujPJSmUh0Qb8E4o4/lWkARqT
	 iySuUwiLp60/3hJ/1i22sbb/hS2Sx5/YNYoE2gtzBPj6sfHgFiZQbflyLw+viBO5+m
	 w956j/inhQIdKrZtK1Oz2psNFH/IRwlQNfChQbi+KpFW7v7Osh0hoefdktEXChn8Nh
	 tRpkDU1u9x9fvLPb7trjICpdjUBNXBBI8drR3qoybBfHJhG4Zv2uW6NlR34RHA2F6n
	 Vt2vS7T2lHzykDKz1qpXytA9oJgPFMzviGVviiIRPin0qYH1F7ncb7rixvJmDFE9BV
	 ob4uOB1aswJaQ==
Date: Fri, 13 Mar 2026 23:55:32 +0000
From: Conor Dooley <conor@kernel.org>
To: Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
	david@redhat.com, palmer@dabbelt.com, pjw@kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc, lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com, marcel@ziswiler.com, kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 1/6] riscv: Add a custom, simplified version of
 Svpbmt "XPbmtUC"
Message-ID: <20260313-spiny-duration-702fff6bca17@spud>
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-2-ganboing@gmail.com>
 <20260313-visitor-majestic-1a6888dc57b2@spud>
 <25a8565d-a6bb-401f-b776-d743a2ec9ee0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cdLJpvapMfWJaGyp"
Content-Disposition: inline
In-Reply-To: <25a8565d-a6bb-401f-b776-d743a2ec9ee0@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275581-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8EFFB28AC52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--cdLJpvapMfWJaGyp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 02:33:16PM -0700, Bo Gan wrote:
> Hi Conor,
>=20
> Thanks so much for the prompt review. See inline.
>=20
> On 3/13/26 06:24, Conor Dooley wrote:
> > Hey,
> >=20
> > Gonna offer some feedback on the detail of what's been done in this
> > series, without providing any commentary on whether this is the correct
> > approach to take.
> >=20
> > On Fri, Mar 13, 2026 at 01:44:02AM -0700, Bo Gan wrote:
> > > On platforms that doesn't support Svpbmt or XTheadMae, SoC vendors
> > > sometimes map the system memory twice in physical address space, one
> > > as cached, and the other as uncached. Through the uncached window,
> > > device drivers will be able to map DMA buffer for noncoherent devices.
> > > Such setup is usually found in SoC with pre-Svpbmt Sifive cores.
> > > Make use of such feature by modeling it as "XPbmtUC", a customized
> > > version of Svpbmt, where a single bit in PTE is used for UC control.
> > > There's no IO bit with such scheme, as it's assumed that the PMA
> > > (usually hard-wired on these SoCs) will properly convey the strongly-
> > > ordered, non-idempotent attribute of the MMIO region.
> > >=20
> > > The enablement of such position of "XPbmtUC" is controlled by the
> > > device-tree property "riscv,xpbmt-uncache-bit".
> >=20
> > Firstly, the naming generally I take some exception to. If this is some
> > fake vendor extension for linux purposes, it needs to have "xlinux" in
> > it, like our xlinuxenvcfg does. It should also be consistent, don't use
> > "xpmbtuc" and "xpbmt-uncache-bit", pick one and stick to it.
> >=20
> Makes sense. I can certainly change that to be conformant.
>=20
> > Athough, I think I disagree fundamentally with this property, as it see=
ms
> > to me like "software configuration" that shouldn't be permitted in
> > devicetree. Maybe I am misunderstanding, but the numbers you chose are
> > convenient, not set in stone by the specific hardware, right?
>=20
> For JH7110, the bit 32 (PPN bit 34) matches exactly with the HW. Meaning
> toggling this bit would re-map the page to the uncached window, which
> matches perfectly with the synthetic UC bit in the scheme.

What does "matches exactly with the hardware" mean? AFAICT, you picked
it because it was the best value, but you could also have picked another
less optimal value?

>=20
> For EIC770X, the bit 38 (PPN bit 40) is hand picked to be able to map all
> physical memory space (40 bit), while making it very easy for the thin-
> hypervisor, which can utilize Sv39x4 (41 bit) page scheme in G-stage.
>=20
> I also considered the sbi call approach, where the kernel can query for
> the support and position of the uncache bit. The thing is that JH7110
> can just hard-code the bit without any changes to firmware, and I want
> to have a consistent way for both SoC, thus the device-tree approach, to
> let the EIC770X firmware/bootloader adding the property to dt at runtime.
> Any better ideas?

Is the only thing that's variable on your eic770x platform whether or
not the bit is enabled? Or are you looking to vary the bit depending on
the specific platform?

> > I'd be much more comfortable with adding xlinuxwhatever to
> > riscv,isa-extensions, to signal that a soc supports this stuff than with
> > a property for the bit itself. I suppose that bit information could then
> > come from a LUT in the vendor extensions, that a validate callback could
> > check (via root compatible) before enabling. There's not a super neat
> > way to do that at the moment though I don't think, code currently
> > expects that vendor extensions are in a different "namespace" to
> > standard ones, and this would blur the lines because it's not from a
> > specific vendor, nor is it a standard extension.
> > I guess, it could be done by keeping it as a standard number, but then
> > it's a bit trickier to neatly access the LUT while keeping it split
> > apart.
> > I know this means having to modify the kernel if there's a new device,
> > but I'm inclined to say "deal with it" because they could've done
> > something standard and opted not to.
> >=20
> > Could also argue that this should be shoved into a sifive specific
> > thing, but I don't expect that they're the only ones with devices like
> > this that could benefit.
> >=20
>=20
> I've thought about riscv,isa-extensions. The issue with that is that it's
> a per-CPU thing, but I'm adding a global extension, and I don't want to

Most of the extensions in that string are effectively global. There's no
need to worry about "polluting" it.

> pollute the isa-extension string. Thus, I followed Samuel's approach --
> He uses "riscv,physical-memory-regions" in the root node.

--cdLJpvapMfWJaGyp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabSj9AAKCRB4tDGHoIJi
0shuAQCVmryV7HgAGKCOATKpaguDs20xp7JSKqRRPf8wrfFANQD8DApSJnS8Khk5
a0GaO5ySJrV/0DQdKf/CjpPUv/lBtwQ=
=IR02
-----END PGP SIGNATURE-----

--cdLJpvapMfWJaGyp--


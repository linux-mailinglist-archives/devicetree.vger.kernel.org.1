Return-Path: <devicetree+bounces-275579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6E48KPuhtGnHrQAAu9opvQ
	(envelope-from <devicetree+bounces-275579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 00:47:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECB028ABF1
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 00:47:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EEAB83042457
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 23:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3FE2C029F;
	Fri, 13 Mar 2026 23:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/Z3sO+U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57ED0285CAE
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 23:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773445623; cv=none; b=YEN9dZJlzjSrio4lvjarawh5iZjhmyn2WYaH/6aEQqM89iyvYZZSRp+3BbS/ZIBeMC3cDJOi1HW6Ab6GLyYE+nE+hkqSReqyWGV7eSkOKHlRYKr/ZODRncpN0hbKPmi4vmlOKE2ZdeGeOJFrZpYRqAKwdz1ilNjTvMy7juLlzrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773445623; c=relaxed/simple;
	bh=PZ+OvZGrUvEAPMTs+GlBLmm3u3TYFzIg6R6x1P7qnXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BPT+FmHIbO8Qs0p5QWt0yU524FUiJx+WqigrWm3mej9aCtU14joc8Z0m6+KHfYHaMPlpm6OZ1fFYdnp9E6ughPZG4knkwQ8tmPbj3sARUDKQ/qET13AV/7Y/vR3A7kC9uYM9C6ULuxVXsA+Bx9RTeM53j1bFz4q/mYyrckVNEWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/Z3sO+U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85039C19421;
	Fri, 13 Mar 2026 23:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773445623;
	bh=PZ+OvZGrUvEAPMTs+GlBLmm3u3TYFzIg6R6x1P7qnXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X/Z3sO+UaglZvlfz2KMSdDprHL4j/xNXgrQHtMpmz17+T8rvns23i21Z/dVcf//ok
	 uaKo0k6fPBznhlHKlgrXmt0OabyTVX5HBKINc2Da4MsJ14yy5O9TzgoeGBRDMM0/lO
	 KMr70KX97mIrblqUxrEiLSZcGY1Bbh98WMi4HB75dE3S2pcPBV+1K5fR30WDwMifzJ
	 68A9BM4yL42vkYA6aHVIf3laEoXxDecVQgWdYgDhgYdA5fX/PZiYjkvfg2g2VF7mBU
	 Rzbe7eQMoWzUIcUSk6losXpBk4jaYR/aSvk9DW2xEG37C+eaTbvm1QUVQ4B+9sKPgC
	 EhP/XKIWP3kpg==
Date: Fri, 13 Mar 2026 23:46:57 +0000
From: Conor Dooley <conor@kernel.org>
To: Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
	david@redhat.com, palmer@dabbelt.com, pjw@kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc, lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com, marcel@ziswiler.com, kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 5/6] riscv: dts: starfive: jh7110: activate XPbmtUC
Message-ID: <20260313-nerd-goggles-b5136fb17833@spud>
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-6-ganboing@gmail.com>
 <20260313-overstep-viscosity-23f4f23e1871@spud>
 <f2cd9698-1200-4752-a61a-e4f311473523@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MHTtG1eK8CQHzaai"
Content-Disposition: inline
In-Reply-To: <f2cd9698-1200-4752-a61a-e4f311473523@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-275579-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 0ECB028ABF1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--MHTtG1eK8CQHzaai
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 02:59:44PM -0700, Bo Gan wrote:
> Hi Conor,
>=20
> On 3/13/26 06:48, Conor Dooley wrote:
> > On Fri, Mar 13, 2026 at 01:44:06AM -0700, Bo Gan wrote:
> > > Set riscv,xpbmt-uncache-bit to 32 to match SoC memory map:
> > >=20
> > >             [0x0,   0x40000000) Low MMIO
> > >      [0x40000000, 0x2_40000000) Cached Mem
> > >    [0x4_40000000, 0x6_40000000) Uncached Mem UC+
> > >    [0x9_00000000, 0x9_d0000000) High MMIO
> > >=20
> > > Signed-off-by: Bo Gan <ganboing@gmail.com>
> >=20
> >=20
> > What I want know is how this whole setup interacts with the existing
> > support that we have for these devices?
> > Samuel's patchetset removed from the devicetree all of the nodes related
> > to having two mappings of the same memory, and modified the existing
> > erratum to only be required for older devicetrees.
> > You've not removed them, only added a new property. The non-coherent
> > peripherals on jh7110 already work prior to this patchset, is there not
> > going to be funky behaviour with both of these things operating in
> > parallel?
> >=20
>=20
> I just want to clarify that Samuel's change is not touching JH7110, but
> *JH7100*. They are very similar chips, can can confuse people sometimes,
> but JH7110 evolved to put more devices such as gmac/sdio/usb/pcie through
> the front port to make them cache coherent. The left over noncoherent

Believe it or not, I know that! I just misread the filename ;)

--MHTtG1eK8CQHzaai
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabSh8QAKCRB4tDGHoIJi
0qaUAQCXa8nPCzAFPKlgYhb6cR5eQQzVrPexv4or6Zch7LbePAEAi7pN5/5jCIzT
24xXk/jr+pilgEqNHUS6xdPBQ46v/AM=
=whAx
-----END PGP SIGNATURE-----

--MHTtG1eK8CQHzaai--


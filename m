Return-Path: <devicetree+bounces-313533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yODXOvX9M2q5KQYAu9opvQ
	(envelope-from <devicetree+bounces-313533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:17:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 942D06A0E15
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:17:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gibson.dropbear.id.au header.s=202606 header.b="YeMD/Ot1";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313533-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313533-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7738301410E
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 678A33451B3;
	Thu, 18 Jun 2026 14:17:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E420C2609DC;
	Thu, 18 Jun 2026 14:17:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781792241; cv=none; b=PSK+0X7UQHKHZ9eXbKiXA8G/1nnDww+3/BS8mbsKkUuN4QwACmSxu52P7kV48+z8zY25dYHG4sNut9ufHUJ/eXXiECuai/z6OSqSSgTi+ZCFF2P66l6WDhTOexdLqzHb2e8euEyP5iJ8nzCMxcxhqv3YzfoRwHzab8Arf0Gv+Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781792241; c=relaxed/simple;
	bh=f6z/VbZxQzGqMhTaUzEvSaZXG1QndqMetsANhnrWmXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VbgeoP6JVpz3Q3O0uo+QlAZO6gmy5l4FaGf/fvCpkj/5CFj6PJTx89psCUZE03nWeyJXQQzknxt9Y02tI1Vnu+dewsrmpHMOSwFjnmmqr4QbdZ8/8bzX1fQQdC7vvtRg/r1YOz11HM6Qmc0b2Ksgix+UUxFEr+HBiORvSI0upf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au; spf=pass smtp.mailfrom=gandalf.ozlabs.org; dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b=YeMD/Ot1; arc=none smtp.client-ip=150.107.74.76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gibson.dropbear.id.au; s=202606; t=1781792237;
	bh=GI6YWOIs5hhImBfxWZu95yv/Ju3v/cSEFvUW0nQG+cw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YeMD/Ot17Xozbp5/HxiNhewFF6CFda459IAj3fY+g6njWfc9dIwUdfMkUWRE1WaB5
	 3vJXCLriihTnThRKDGAK2MItdZLK8W1IER5zcbyW+yiwYRz2sL+3NUnR5o18AjnUAf
	 k2UEdx7Vx0x2XHi85Qkdktb9DKBDIB03tFsv21o0ZrUgSLZX5WMLMHtt6EhgBZrxvm
	 bkrco6JTiatjoxGjWVWoVAMH0Oedx3Id83Vnv4k8ve2/QU5naZRFGj0i7Y9Qp1o9uR
	 Cep80dox6LHLAEb+UjCyF3dtpD5j6c75wmYCterSuAWBx2RKF6310cbHt6n5ZQPy64
	 eMuvb/nLLY2mg==
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
	id 4gh2qK16DGz58lv; Fri, 19 Jun 2026 00:17:17 +1000 (AEST)
Date: Thu, 18 Jun 2026 20:13:57 +1000
From: David Gibson <david@gibson.dropbear.id.au>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ayush Singh <ayush@beagleboard.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	devicetree-compiler@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree-spec@vger.kernel.org,
	Hui Pu <hui.pu@gehealthcare.com>,
	Ian Ray <ian.ray@gehealthcare.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 02/10] libfdt: Don't assume that a FDT_BEGIN_NODE tag
 is available at offset 0
Message-ID: <ajPE5eGcOwWMAeiN@zatzit>
References: <20260409115426.352214-1-herve.codina@bootlin.com>
 <20260409115426.352214-3-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h6g3h+MAw4YSJRKZ"
Content-Disposition: inline
In-Reply-To: <20260409115426.352214-3-herve.codina@bootlin.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gibson.dropbear.id.au:s=202606];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:herve.codina@bootlin.com,m:robh@kernel.org,m:krzk@kernel.org,m:conor+dt@kernel.org,m:ayush@beagleboard.org,m:geert@linux-m68k.org,m:devicetree-compiler@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree-spec@vger.kernel.org,m:hui.pu@gehealthcare.com,m:ian.ray@gehealthcare.com,m:luca.ceresoli@bootlin.com,m:thomas.petazzoni@bootlin.com,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[david@gibson.dropbear.id.au,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_NA(0.00)[dropbear.id.au];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gibson.dropbear.id.au:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[david@gibson.dropbear.id.au,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-313533-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gibson.dropbear.id.au:dkim,gibson.dropbear.id.au:from_mime,bootlin.com:email,vger.kernel.org:from_smtp,ozlabs.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 942D06A0E15


--h6g3h+MAw4YSJRKZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 09, 2026 at 01:54:18PM +0200, Herve Codina wrote:
> In several places, libfdt assumes that a FDT_BEGIN_NODE tag is present
> at the offset 0 of the structure block.
>=20
> This assumption is not correct. Indeed, a FDT_NOP can be present at the
> offset 0 and this is a legit case.
>=20
> fdt_first_node() has been introduced recently to get the offset of the
> first node (first FDT_BEGIN_NODE) in a fdt blob.
>=20
> Use this function to get the first node offset instead of looking for
> this node at offset 0.
>=20
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>

The problem is real, of course.  But this approach to solving it with
a special case just for the root node is really ugly.

Granted, it's a problem of my own making - I chose not to create an
fdt_root_offset() function in the first place, instead making it part
of the API that offset 0 means the root node.  Nonetheless, here we
are and the question is whether we can do better.

# Straightforward things first

 - This patch should be folded with 1/10, they're both harder to
   understand without the context of the other.

 - If it must exist, the function should be fdt_root_offset(), not
   fdt_first_node(), for at least three reasons:
    * "first" in what sense?
    * "first" amongst what set of nodes?
    * We have a strong convention to always explicitly say "offset",
      not just referring to offset values as "node" or "property".
      This is deliberate: it's an attempt to discourage the otherwise
      likely misunderstanding that a function getting a "node" gives
      you some sort of persistent handle.  "offset" makes it clearer
      that the value will no longer be valid after a modification to
      the tree.

 - The situation described is subtle enough that this *really* needs a
   testcase.  It shouldn't be that hard: change the existing
   'nopulate' test tool to add an FDT_NOP before the first tag, not
   just after

# Is FDT_NOP before the root node actually legitimate?

Arguably the simplest solution here would be to explicitly ban this.
Yes, it would be a slightly odd restriction in the spec.  However,
avoiding the mess in the library might be worth it.  Note that this
situation can never arise from fdt_nop_node(), unless you apply it to
the root node, in which case there's no tree left.

# Less special casery

Even if we accept the need for FDT_NOP before the root node, I think
we can do better.  The below implements this as a special case, just
for offset 0.  Instead, we could allow all node operations on a
FDT_NOP offset, automatically advancing to the next FDT_BEGIN_NODE
tag.  We may be able to do that in check_node_offset_() minimising
code duplication.

--=20
David Gibson (he or they)	| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you, not the other way
				| around.
http://www.ozlabs.org/~dgibson

--h6g3h+MAw4YSJRKZ
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEO+dNsU4E3yXUXRK2zQJF27ox2GcFAmozxNcACgkQzQJF27ox
2GfTEA//Wo6xW1NH9oUsPfniRlezGMYCB1UQMgpfs4jWVgWTaOyAqrstX2tDZ6Km
xFF/SkAAdd5WGPnAiGdrrWPmPxbepreR5Gc5gSkbuSAH4HbJDS82h+0udM6PIb+n
xZvsb/0F5rk9Q9YzJlZmcLAoaIlhS6NxRG8mWAaQdnL4AyAS/KDD2BSDrLkld1N8
6/d7gkpRC7pr1UkwPNJACdHSYs3tBaayxKK7ZlNJZziUdvmI8r4LV6lornSrcyaQ
aoB4H0vSlrni1vvZyfpfAchlU98qKwcm1DlNmB0esuM/f2RUF4WHpEMWWDRhmQE5
ZH9NJUpWrQzCXOv3kn5MN16ePSYWnBOaFfyYNvL13kjsLaBjT58xNH5Wjxw2oP1F
f71Yoklw4yPmbYXsRBHgM0Km48N1g0rP7OAXmV5+jvae3UIUDGqVBMCh2kEpv4UR
1DYRfmCnc8aLoovsFxZmuIXBwqu6sRWfwCpRY/oKIN6gg0KBTIaa5W5KNLSIppHL
crzC8VNqipAQJukmrIoBfgbSdNrIp7JGKPHKGoAqA0yqpEwrryBowxO1Anf8NNua
LO0cKAPq8B8lV+yUs22BDc0R+KDiAEmfmzRMLwe3taUJluJPjnaHqbjPCWW2N32j
El6wd+bh7TckAEYaM1IM+9PpUORlawqtVHjUp0AnbaoORRIa+aY=
=jAFe
-----END PGP SIGNATURE-----

--h6g3h+MAw4YSJRKZ--


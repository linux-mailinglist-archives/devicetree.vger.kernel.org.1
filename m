Return-Path: <devicetree+bounces-302043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPl/HAi/EGomdAYAu9opvQ
	(envelope-from <devicetree+bounces-302043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 22:39:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE2D5BA238
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 22:39:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F1FEC300CB20
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 20:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 966F7382F18;
	Fri, 22 May 2026 20:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9eEG1/W"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6926637C101;
	Fri, 22 May 2026 20:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779482372; cv=none; b=uV9cAsPa4AjLc8OvnyDyw+LpLPIY3cfyii5cFVFa8qllbj/2xiahuOsKv86Xq58uRmu4Ks9hN4RJyUBtdwD3Bs1SVm7ACqs6WxtN75OGkmbm4ksETpo0nzRykxrpuFrcBCRZn1eQlIVMhf8z4jT02fhY7R0NaKiQPTcw7VDN9r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779482372; c=relaxed/simple;
	bh=jzyuahkmJrkIfcmMx4CX9UsZ36wBGpvzYs+R4VQvaag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qo7hu46dklNhvmXBBgGj/r39HJPuqXF8B2eD4Zf9E+MJlqrvJ/I7lFoIMYQOFyIZRt0Xlxqyvf/mvky8QX4uHwTm4bB8trN1+ZUzRifJ4ibKTRguFGtkMXASILZR9XWm0HILbEFjgpjZ4OC4EV5TTmgIY0qcF6yNB29b+qKdRO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9eEG1/W; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0C6D1F000E9;
	Fri, 22 May 2026 20:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779482371;
	bh=jzyuahkmJrkIfcmMx4CX9UsZ36wBGpvzYs+R4VQvaag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=W9eEG1/WTyNg852Hc717laNEoKKcGetjNVIvMZJe0jRfjVNwR/rtIROUZKnvsGopP
	 UAsIwpCC55xZQz5WU4fJWt4UOjFxHIeki0sS4KRubt7IEFpIPxUlBVrWs6xKoBTxkl
	 Oynw85NLsHrVPPLjafi4rqd5IeVMmt3nKlOhHO8Aj7n1kC/8T2M5lTYMF6OliO5TvE
	 pyIwcZkYsvEccxYOjc9lSTfelbdPaWJhSO7jLJBmBo8qIuemIaFm1cvq8ZFLfa85sX
	 8c1n7UzmHUzSTbGvh6w50rU6o+datR4+aNBlgcgPbsT5ozgQuwlR31R1fimQ5d5HOc
	 NJvdmX5czQmZg==
Date: Fri, 22 May 2026 21:39:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Xukai Wang <kingxukai@zohomail.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Samuel Holland <samuel.holland@sifive.com>,
	Troy Mitchell <TroyMitchell988@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] clk: canaan: k230: Fix sparse warnings reported by LKP
Message-ID: <20260522-removed-lyricism-7c879febc3b3@spud>
References: <20260522-eligible-vivacious-3ce9bc30dd53@wendy>
 <dee4605ca30f9bbd55ccb4fcce9590ceee1fa10b.1779453284.git.kingxukai@zohomail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6w0P95clb1jZsxRa"
Content-Disposition: inline
In-Reply-To: <dee4605ca30f9bbd55ccb4fcce9590ceee1fa10b.1779453284.git.kingxukai@zohomail.com>
X-Spamd-Result: default: False [3.24 / 15.00];
	SEM_URIBL(3.50)[zohomail.com:email];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302043-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20260515];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[microchip.com,baylibre.com,kernel.org,sifive.com,dabbelt.com,eecs.berkeley.edu,vger.kernel.org,lists.infradead.org,gmail.com,intel.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_ALLOW(0.00)[+ip4:172.232.135.74:c];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,zohomail.com:email,intel.com:email]
X-Rspamd-Queue-Id: 1BE2D5BA238
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--6w0P95clb1jZsxRa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 22, 2026 at 08:59:12PM +0800, Xukai Wang wrote:
> Fix all sparse warnings detected during LKP randconfig testing:
> - Replace plain integer 0 with NULL.
> - Add static modifier to k230_plls and k230_pll_divs.
>=20
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202605220724.j4ZeM3KI-lkp@i=
ntel.com/
> Signed-off-by: Xukai Wang <kingxukai@zohomail.com>

Forgot to reply earlier, but I went and squashed this in.

Cheers,
Conor.

--6w0P95clb1jZsxRa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahC+/QAKCRB4tDGHoIJi
0hSIAQCWDWG3TSikZRlt68Uwd3kshWGbSzsv40UokBTQi61KAgD+LGC81U7fOT85
ukUFrT5pG/T/xAV/bsq/DJl2h1YafAk=
=tMpn
-----END PGP SIGNATURE-----

--6w0P95clb1jZsxRa--


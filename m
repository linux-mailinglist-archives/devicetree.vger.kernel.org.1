Return-Path: <devicetree+bounces-296343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLTOIm1ZA2r75AEAu9opvQ
	(envelope-from <devicetree+bounces-296343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 18:46:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 227A3524FDB
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 18:46:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 07CF530B3486
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 16:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A3C43CB8F0;
	Tue, 12 May 2026 16:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="honFm3Yi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8A7360ED9;
	Tue, 12 May 2026 16:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778604022; cv=none; b=csBdROltgwJdSRBn3Fn0ayVrCj4fE7c+5QZ+IMkkQ+59MX9kWcnzMI164YyNe/SOuI2v1gpGrNw+amwNcz9EG5NtxAifAqLduc/B9a5n/sk2+ClwqCWMP008x3ork7cAAHFnruZbhFNZs2jfVi49vw5eiHmayksYdy6Q6jRvetE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778604022; c=relaxed/simple;
	bh=CxEb/AuqhVbUMg0w8S4wMIYLB1ZUNOxnKnOSynQOVZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gUbYS84XUCg15H7IK0US1GuN7eetbTD61RONswZfMEFp2cXmA1GOgq/vhL+gNPNb3ZBaGH69C0BtGbcSm70NAsGP/+POZxCHws4iCnAjRUM9yKCMQCAdquB+YGkAsXMuc40uPayCDdSXqY2IqwxrvU9GnWwaFdr4PX938SHyACQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=honFm3Yi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D878AC2BCB0;
	Tue, 12 May 2026 16:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778604022;
	bh=CxEb/AuqhVbUMg0w8S4wMIYLB1ZUNOxnKnOSynQOVZY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=honFm3Yih9VO5ZNFEMYD8Ht5IncBaQg8+5+PC059FOG4alzzA1MJlGH6rjCNKqvZQ
	 99jKPsqmeI/eDTlkwmBhnmMvt/XBw4eDJosZ3PbTBOT9T9VfW9QTub0ig4sexGnxuV
	 fw/SryTkTryCWreKk/Meuy+vMX9bJoEUnjl3xmdg/1tqGHD8UkbhCz2TyPFyu+TVZo
	 Peg0JM+jUifilYxoR0m7S+ySA1lp3juyxgBjSR8i0IYUTlyNrd3Quw7ICQ8AOV6dvr
	 eds7jv0+5IiJBoHY+FAMqXjxBgGANDtzlyCIwzRvsACG5xwMBn7fiGSwoJzYSExc74
	 DQk5EHOHP7rDg==
Date: Tue, 12 May 2026 17:40:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Brian Masney <bmasney@redhat.com>
Cc: dongxuyang@eswincomputing.com, mturquette@baylibre.com,
	sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	p.zabel@pengutronix.de, huangyifeng@eswincomputing.com,
	benoit.monin@bootlin.com, ningyu@eswincomputing.com,
	linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: clock: Add ESWIN eic7700 HSP clock
 and reset generator
Message-ID: <20260512-captivity-chatroom-0c46aa7ab0a3@spud>
References: <20260512020432.671-1-dongxuyang@eswincomputing.com>
 <20260512020511.726-1-dongxuyang@eswincomputing.com>
 <agNLuSCDlukeVGcS@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kvVilj8VlZPqAOMv"
Content-Disposition: inline
In-Reply-To: <agNLuSCDlukeVGcS@redhat.com>
X-Rspamd-Queue-Id: 227A3524FDB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296343-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Action: no action


--kvVilj8VlZPqAOMv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 12, 2026 at 11:48:09AM -0400, Brian Masney wrote:
> Hi Xuyang,
>=20
> On Tue, May 12, 2026 at 10:05:11AM +0800, dongxuyang@eswincomputing.com w=
rote:
> > From: Xuyang Dong <dongxuyang@eswincomputing.com>
> >=20
> > Add bindings for the high-speed peripherals clock and reset generator
> > on the ESWIN EIC7700 HSP.
> >=20
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Xuyang Dong <dongxuyang@eswincomputing.com>
> > ---
> >  .../bindings/clock/eswin,eic7700-hspcrg.yaml  | 63 +++++++++++++++++++
> >  MAINTAINERS                                   |  5 +-
> >  .../dt-bindings/clock/eswin,eic7700-hspcrg.h  | 33 ++++++++++
> >  .../dt-bindings/reset/eswin,eic7700-hspcrg.h  | 21 +++++++
> >  4 files changed, 120 insertions(+), 2 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/clock/eswin,eic77=
00-hspcrg.yaml
> >  create mode 100644 include/dt-bindings/clock/eswin,eic7700-hspcrg.h
> >  create mode 100644 include/dt-bindings/reset/eswin,eic7700-hspcrg.h
>=20
> Does the MAINTAINERS file need to be updated for these paths? The entry
> in linux-next currently looks like this:
>=20
> ESWIN EIC7700 CLOCK DRIVER
> M:      Yifeng Huang <huangyifeng@eswincomputing.com>
> M:      Xuyang Dong <dongxuyang@eswincomputing.com>
> S:      Maintained
> F:      Documentation/devicetree/bindings/clock/eswin,eic7700-clock.yaml
> F:      drivers/clk/eswin/
> F:      include/dt-bindings/clock/eswin,eic7700-clock.h

diff --git a/MAINTAINERS b/MAINTAINERS
index b2040011a386..b7180863310c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9548,9 +9548,10 @@ ESWIN EIC7700 CLOCK DRIVER
 M:     Yifeng Huang <huangyifeng@eswincomputing.com>
 M:     Xuyang Dong <dongxuyang@eswincomputing.com>
 S:     Maintained
-F:     Documentation/devicetree/bindings/clock/eswin,eic7700-clock.yaml
+F:     Documentation/devicetree/bindings/clock/eswin,eic7700*
 F:     drivers/clk/eswin/
-F:     include/dt-bindings/clock/eswin,eic7700-clock.h
+F:     include/dt-bindings/clock/eswin,eic7700*
+F:     include/dt-bindings/reset/eswin,eic7700-hspcrg.h


Is this not sufficient for what you're looking for?

--kvVilj8VlZPqAOMv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagNX8AAKCRB4tDGHoIJi
0lzQAQDtEHtKrQ3ALpt//1kuMaZBJrz5ekJ5KM9tzKOBR48t3wEAv9FsOLPQgwdJ
aEGSiJadc6wyw2BMd9g1Aq4Cp3GWAAA=
=4R5s
-----END PGP SIGNATURE-----

--kvVilj8VlZPqAOMv--


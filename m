Return-Path: <devicetree+bounces-306710-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PfJ/DHxCIWqHCAEAu9opvQ
	(envelope-from <devicetree+bounces-306710-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 11:16:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6868463E6E7
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 11:16:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=T42jBbJV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306710-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306710-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E0173013D7D
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 09:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA1F23F4DF3;
	Thu,  4 Jun 2026 09:06:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91F83E024D;
	Thu,  4 Jun 2026 09:06:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780563971; cv=none; b=ofOX+cFjI4+HCxgTltgBPiOwfY6rG0L+BfW/H3UVYGHh0zxPQRIjLuCKCM8vhNvGr2buUN6FxhegGAST41YHIC8W5UZQY+ivv3H+Z674rcWoHyF+k/KOG5n/XTKvlN0uQl6LChgV27fi4P/Glx77Joa7/aOyPC6pm/sV38KiXyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780563971; c=relaxed/simple;
	bh=I2BuAk6w1fvciNoxHKm+FqjPnZEQcb4D7gEkF0i5EJA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eaJao4PIrBcFmJMVkficvVTeRn597+yG/VMWGKuBCOrPg32QmHaWXWgm/HGXr7DuOgdwbQTUfHx3l1NSEop+aU/1NfUvmN3d2mVUgCmgfKTWReC9VeduvFyflTWtgUsXi/FCXA9H9mplvQQcNDQVZgQeVEzUurkDM3CoRQ7diaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T42jBbJV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 000B21F00893;
	Thu,  4 Jun 2026 09:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780563970;
	bh=I2BuAk6w1fvciNoxHKm+FqjPnZEQcb4D7gEkF0i5EJA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=T42jBbJV5BU+QB43XV/oRSh3o5QLfBMbtBjajHM4SnRYfxXaXiqEnsGNtrSGVCb30
	 HB+w7wQHCuIP2VacjXflOW8ox/5kzPF9ypRw1/COVE98fxnEh8TxnxvXo4Ax0hlBOt
	 ijG+avW5+9z3wsnGFlyAwhCIt4rGaYQBwAzfYNyLITz0V0i2flJ+525RCHAZhpBtbs
	 c92DjoExM3jUCIKX93H3v6OxFKsivXQFIYgldcDVkeWHbqQS9bfVl8Ox3NAL+JP4ME
	 PKry2yLMJz/pmnaXhhJEgPZfbA4wT/xoTqOgbfXttUN8nPsbxFvruuO5qXlk4NlOGy
	 fpnT1NgDLrJew==
Date: Thu, 4 Jun 2026 10:06:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Guodong Xu <docular.xu@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	kvm@vger.kernel.org, sashiko-reviews@lists.linux.dev
Subject: Re: [PATCH v3 07/15] dt-bindings: riscv: Add Zic64b extension
 description
Message-ID: <20260604-mating-multiple-458aafa93791@spud>
References: <20260603-rva23u64-hwprobe-v2-v3-7-5529a7b28384@gmail.com>
 <20260602232859.3494A1F00893@smtp.kernel.org>
 <CA+Ck9FYWCbHO6-BU48KLx_Lov7pJiSbAP8j3Te_uqFFq81rUjg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YLEgTo6BKmXMajGs"
Content-Disposition: inline
In-Reply-To: <CA+Ck9FYWCbHO6-BU48KLx_Lov7pJiSbAP8j3Te_uqFFq81rUjg@mail.gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:docular.xu@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:kvm@vger.kernel.org,m:sashiko-reviews@lists.linux.dev,m:docularxu@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306710-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6868463E6E7


--YLEgTo6BKmXMajGs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 04, 2026 at 01:23:24PM +0800, Guodong Xu wrote:
> Hi Rob, Conor,
>=20
> On Wed, Jun 3, 2026 at 7:29=E2=80=AFAM <sashiko-bot@kernel.org> wrote:
> >
> > The properties block requires multi-letter extensions to be sorted
> > alphanumerically. Because '6' comes before 'c', would it be more accura=
te to
> > place zic64b before ziccamoa?
>=20
> On a double check, I found here Sashiko is flagging a real ordering issue.
> (Although it exists before my submission.)
>=20
> In current riscv/extensions.yaml, zic* entries are split into two groups:
> one (ziccamoa etc.) sits above the Zk* block, the other (zicbom, zimop,
> etc.) sits below it. This is wrong considering the rule says "# multi-let=
ter
> extensions, sorted alphanumerically".
>=20
> Would you like a standalone patch that re-sorts the zi*/zk* ordering
> properly? It's purely cosmetic.

Please.

>=20
> If there are no objections I can send it as part of my v4.
> Let me know what you think.
>=20
> BR,
> Guodong
>=20
> >
> > Does it make sense to place zic64b in its strictly correct alphanumeric
> > position, rather than continuing the out-of-order grouping of the exist=
ing
> > cache-block extensions like zicbom?
> >
> > [ ... ]
> >
> > --
> > Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603-rva23u=
64-hwprobe-v2-v3-0-5529a7b28384@gmail.com?part=3D7

--YLEgTo6BKmXMajGs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiE//gAKCRB4tDGHoIJi
0p5yAQCwPebcWoF5lul1ddE3nY4JN/yATOkQJS4U4ab25sf9IQD5AW/YM/B7ntxb
MFAZ4L+sgWE2Pb/SLhWU7bTrPU3dJg0=
=6i2i
-----END PGP SIGNATURE-----

--YLEgTo6BKmXMajGs--


Return-Path: <devicetree+bounces-306712-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sTdbIj1DIWq5CAEAu9opvQ
	(envelope-from <devicetree+bounces-306712-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 11:19:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7835463E76A
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 11:19:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XfpefsoS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306712-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306712-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2F4EF3025669
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 09:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2CFA3F5BD0;
	Thu,  4 Jun 2026 09:06:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB92F3EDE67;
	Thu,  4 Jun 2026 09:06:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780564011; cv=none; b=cr/s9xT0O6uMAn9tVXhO7BTNtO72lmIw91TiPrNHB8dUNAiBLLBvWL1F12h7WXY8OL45rkiH2firQobh1WdppCm10rNKB+izANb5yUPq8hUMFeAxPpFa/QqjWGzDlynwqxLn8/n8iX8YwvNA3Z6tPOJjHhlIBbweya1KruQBSF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780564011; c=relaxed/simple;
	bh=pzO/hUhIdm2xnYffmhkX+QqsoCzo448WOXd4EYvdDYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z5IvGWYTqC6BGa0lHYMfXZt/PIWCQNfaHfykbb1aIKUtxy1XsoD0EeTrHHyKeQ33+RxsZEJ84SBhIAn6X0p/nhY1GNBays5aGpJekm51yG45w6NKreQBeV8UJhk2L8qluRf0sxUvpHOJ3IJe9uqnj6m2oqKXNzFU+tGl4i116pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfpefsoS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D1601F00898;
	Thu,  4 Jun 2026 09:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780564010;
	bh=pzO/hUhIdm2xnYffmhkX+QqsoCzo448WOXd4EYvdDYw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XfpefsoS9YKGQTXxZBIquD7gLbILYHBSCWKXhJL+DC7paRQqrbgdTLFwOnmX+nxN7
	 +I4imkQQTdwTRWqxIn2FBFZQ4GivVuU2gDDQYrVGH9NStkmANhpunQW1LVwSxBPjzb
	 +DZxDUjzZIQuG2cqClV7teLam4ubg4B2azHoK53vaJgEs8ujxElUS/YmptvSaNkarz
	 HLwkxD5UBiBO7HNUV8ywwcvBCtv8g/mZY7gPYSF+/b22f7pORPOALzvI/kCdeOdrDv
	 cae1qINYa68yDuIJbYw7ks/7Nyn/PWlGnks0S/1yKe+C70PWAmP9b1AX39ZbtLQLnL
	 /8iYOGWIxZiIg==
Date: Thu, 4 Jun 2026 10:06:47 +0100
From: Conor Dooley <conor@kernel.org>
To: Guodong Xu <docular.xu@gmail.com>
Cc: sashiko-reviews@lists.linux.dev, devicetree@vger.kernel.org,
	conor+dt@kernel.org, kvm@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH v3 13/15] riscv: cpufeature: Introduce ISA bases bitmap
 and rva23u64 detection
Message-ID: <20260604-handwash-junkyard-ed931f40d678@spud>
References: <20260603-rva23u64-hwprobe-v2-v3-13-5529a7b28384@gmail.com>
 <20260602233750.B03631F00893@smtp.kernel.org>
 <CA+Ck9FaHADhss2sV=Z-vX4zr6VL+X=goFX_vznYE9JWBGCjwZQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="L6Z/nkLzzY0eiXog"
Content-Disposition: inline
In-Reply-To: <CA+Ck9FaHADhss2sV=Z-vX4zr6VL+X=goFX_vznYE9JWBGCjwZQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:docular.xu@gmail.com,m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:kvm@vger.kernel.org,m:robh@kernel.org,m:docularxu@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306712-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,spud:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7835463E76A


--L6Z/nkLzzY0eiXog
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 04, 2026 at 02:46:36PM +0800, Guodong Xu wrote:
> Hi,
>=20
> On Wed, Jun 3, 2026 at 7:37=E2=80=AFAM <sashiko-bot@kernel.org> wrote:
> >
> > Thank you for your contribution! Sashiko AI review found 1 potential is=
sue(s) to consider:
> > - [Medium] Detection of the RVA23U64 profile fails on compliant platfor=
ms because it strictly requires the unratified `RISCV_ISA_EXT_B` bundle ins=
tead of the formally ratified bitmanip extensions (`Zba`, `Zbb`, `Zbs`).
>=20
> I disagree. But I would welcome more ideas.
>=20
> My reply is threaded in v2, FYI:
> Link: https://lore.kernel.org/linux-riscv/CAH1PCMa-5W9PsX8cDLUk6-MkcM53HO=
z2QtaxCHd+XOr7DgH5+w@mail.gmail.com/#t
> [1]

The v2 argument you made makes sense to me.

--L6Z/nkLzzY0eiXog
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiFAJwAKCRB4tDGHoIJi
0u+3AP9x32Ds6znHleKlkiiRURSzdLvPa17smm81pUNtZKhw5QD/aYzHPjnRJzQq
D5/QLeE6qCpk/BA4NNLFM6goTl5hIg8=
=z8cp
-----END PGP SIGNATURE-----

--L6Z/nkLzzY0eiXog--


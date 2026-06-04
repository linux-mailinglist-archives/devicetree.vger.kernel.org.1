Return-Path: <devicetree+bounces-306699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EMhdBwlAIWrRBwEAu9opvQ
	(envelope-from <devicetree+bounces-306699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 11:06:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A86363E546
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 11:06:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VQ0J+Cbb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306699-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306699-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC81D311D489
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 08:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B58133EA974;
	Thu,  4 Jun 2026 08:56:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A463F0A83;
	Thu,  4 Jun 2026 08:56:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780563363; cv=none; b=W72iIohfn3ptsiZmVMpZ6tmXPvJGnKVctmNxwAlz252DBpbpbA/CngkQKqUbRYrs6b2n0Zxg4DCXuJwta2bO+M/M1Cihsd/M/OJK/k/dbj9pMMLtGvbSGumxGAyf1h9SJevlTyZpHcKOdge+Srcw094IPCUJaPUn5Oz/0FfimxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780563363; c=relaxed/simple;
	bh=g0ZRTPlwT/xyxpdHcA09ypJlccbn5Vup1lZsGchbYCc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uP8Bf+B+ceh4xeWoqLY3IQsESVNZWCcxtTMqUz3sqaXSBBc/LZZf+3nH8xwakvPmYq2l+UINv3NXAYSNHAo6+cOyzf9DsWtevprasP+FBtOCZqSZIiwyjNyJh7VNuQd2ZLQEVV1dH0Wqc1U3uI8ZSVuqBSQuK5uvxtJ6rz+XM0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ0J+Cbb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A9DD1F00898;
	Thu,  4 Jun 2026 08:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780563362;
	bh=g0ZRTPlwT/xyxpdHcA09ypJlccbn5Vup1lZsGchbYCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VQ0J+CbbA8z53ymXbXli2ktLm3hj2dpSm8vYx6EOzsIKD04T5HKXpSIq7rQ/Rl6xg
	 u6Ed2IgM7TNaL7b8OZ0rglBpOuIfA6F9gPm6yXsIFjqGYqiWqUMBaCjMXvUWhjlpTM
	 L9oIoX7KNYDGHvj/H1Tf220DR8/2HEXoS8z2hSqZhpQuUdXtyERbR/wD6JVK3fVFUf
	 CNz+c+8aejAmVcMYgM7nujR0135LyQJjNV7GtOr7S7zzpUHZRb1S5gQEg4/HLZjiye
	 +o3yrZ4sdPPAthl0/wzun3PunauL63PeFwdiAGAT0ooIajFer6gpyTbLf8UvmFAMf5
	 Byte3zz3XJXIQ==
Date: Thu, 4 Jun 2026 09:55:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Chi-Wen Weng <cwweng.linux@gmail.com>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, cwweng@nuvoton.com
Subject: Re: [PATCH 1/2] dt-bindings: spi: Add for Nuvoton MA35D1 SoC QSPI
 Controller
Message-ID: <20260604-anthem-jokingly-8d8312ff0c3f@spud>
References: <20260603043551.1062112-1-cwweng.linux@gmail.com>
 <20260603043551.1062112-2-cwweng.linux@gmail.com>
 <20260603-daybed-absentee-1b64f5caabe0@spud>
 <41914879-5fd0-41dd-b097-2be80096e464@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DXfNWS54udZtd82S"
Content-Disposition: inline
In-Reply-To: <41914879-5fd0-41dd-b097-2be80096e464@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306699-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:cwweng.linux@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:cwwenglinux@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,spud:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A86363E546


--DXfNWS54udZtd82S
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 04, 2026 at 03:07:31PM +0800, Chi-Wen Weng wrote:
> Hi Conor,
>=20
> Thanks for the review.
>=20
> > Missing commit message for one, but why can't your Nuvoton mail be used
> > here?
>=20
> I apologize for the missing commit message; I will add a proper descripti=
on
> in v2.
>=20
> Regarding the email address, my Nuvoton mail adds a corporate
> confidentiality disclaimer to outgoing
> external mail, so I use my personal address for sending kernel patches.

This prevents you sending with your work email account, but you can still
set your commit author to your Nuvoton address FWIW.

> Conor Dooley =E6=96=BC 2026/6/3 =E4=B8=8B=E5=8D=88 11:24 =E5=AF=AB=E9=81=
=93:
> > On Wed, Jun 03, 2026 at 12:35:50PM +0800, Chi-Wen Weng wrote:
> > > Signed-off-by: Chi-Wen Weng <cwweng.linux@gmail.com>

--DXfNWS54udZtd82S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiE9ngAKCRB4tDGHoIJi
0ns5AQDkCCpaoPInNNPpkFtOd/vTQh2GyJEX+MDZdhtwHCHGVgD9G5JmWreurTno
vUf1oScgNMeUb2uh4YdzD0lMOOWV0Qw=
=pGiX
-----END PGP SIGNATURE-----

--DXfNWS54udZtd82S--


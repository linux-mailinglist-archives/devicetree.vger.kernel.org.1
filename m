Return-Path: <devicetree+bounces-315762-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N0u7D6RWPWpQ1ggAu9opvQ
	(envelope-from <devicetree+bounces-315762-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:26:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6BE6C7772
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:26:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=e0sPHYhS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315762-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315762-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E5D4C30046B4
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BDE43E8684;
	Thu, 25 Jun 2026 16:24:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DE12F8E9F;
	Thu, 25 Jun 2026 16:24:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782404680; cv=none; b=Lpdhp5qqd0qFSqkacmdKOoH83U3+cGaPmZ6U9GWEkj8wN87xQ0JQO9v+WWUPWLUN9wYmIHB65e83UWGR2eTzQEm072jk8boDlqFm0Kx5G2pQ/PxmTZ9CsuLtyFC+v6BwOA2AWX8xwOFfEAM2iorCMKscHkMSJYYHdchcxJQDYEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782404680; c=relaxed/simple;
	bh=Thgki5zYQNPufQB/hqjVbfgpOjLAZ0LYxJg6D63BT2k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D0bUK9cV6rpEIQUkHA1EN0RGymVQdVoYkYpMMzb+6caVF5X+gcDQY3hgZYaq96HFuIMOhCfILguZLfZXvAd80tmlbR59LUG3/ue5a71VKSfD8tthdmbx67c9/d+bFSY3T6mjR2gjWPx5hMlKCn5u/JWulPY4pLyj2DwvTsOIkgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0sPHYhS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDBC61F000E9;
	Thu, 25 Jun 2026 16:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782404679;
	bh=Thgki5zYQNPufQB/hqjVbfgpOjLAZ0LYxJg6D63BT2k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=e0sPHYhS15iIt6v6svyOSB6VfqT2c+Nbmp6t4lEzP02sAJOrt/DlDumjKNrBI0QiB
	 w+xXAJWNiNgOZe2zJLLwZ4cCUcKvtHkIg7uoidvdNzZS/RRLDmIItHRQPG/90tQn29
	 F0NYkygXW50pxT0X1QFGqv42wuHARillQnmOjgnmEuZ7dhX10w1ZF1JGRmZasBPFVb
	 7/Q2uL03x6ssc1Q9vz9e2N9mQbl2j3fuiv7g6R/tV2mI/zsUDqzIaAmZryCb7xOIA4
	 FcTY2XLRn8VrTOndUvKBUDH3YgkiEVKQkv2MDYTJd8UBbtnYkO+99GQgICGPYKTqVU
	 ygx49lbKpiv3g==
Date: Thu, 25 Jun 2026 17:24:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Chi-Wen Weng <cwweng.linux@gmail.com>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, cwweng@nuvoton.com
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: Add Nuvoton MA35D1 EADC
Message-ID: <20260625-gab-tartly-46ae1d07bb22@spud>
References: <20260625110638.38438-1-cwweng.linux@gmail.com>
 <20260625110638.38438-2-cwweng.linux@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KgOo0vAcTHRZVL56"
Content-Disposition: inline
In-Reply-To: <20260625110638.38438-2-cwweng.linux@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:cwweng.linux@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:cwwenglinux@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-315762-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,vger.kernel.org:from_smtp,spud:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,nuvoton.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F6BE6C7772


--KgOo0vAcTHRZVL56
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 25, 2026 at 07:06:37PM +0800, Chi-Wen Weng wrote:
> From: Chi-Wen Weng <cwweng@nuvoton.com>
>=20
> Add devicetree binding for the Enhanced ADC controller found on
> Nuvoton MA35D1 SoCs.
>=20
> The controller has one register region, one interrupt and one functional
> clock. ADC inputs are described using standard channel child nodes,
> including optional differential channel pairs.
>=20
> Signed-off-by: Chi-Wen Weng <cwweng@nuvoton.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--KgOo0vAcTHRZVL56
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaj1WQgAKCRB4tDGHoIJi
0rzsAQC4BpLKlBd36IGdD4/quH53bLAWjEVwrOFiN5Oh3JYKfwD/a+oArr5PGsuQ
N2sp8zcfi/PLAn244zTapkzBFxNtkgY=
=oDJ9
-----END PGP SIGNATURE-----

--KgOo0vAcTHRZVL56--


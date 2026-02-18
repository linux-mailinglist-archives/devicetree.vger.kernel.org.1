Return-Path: <devicetree+bounces-266496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIVQKv0AlmlHYAIAu9opvQ
	(envelope-from <devicetree+bounces-266496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:12:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2B315894B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B641B30058EE
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E82A346A00;
	Wed, 18 Feb 2026 18:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qewEg8Uo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B65733BBD4;
	Wed, 18 Feb 2026 18:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771438331; cv=none; b=JW7iCw0VWtDqoapASvudK7Q4Ax0sP+VQ/0JSjFVOEIjM4V1MBrZE8G81y5hYOJ0YYrkEi35eAuivTCy6C4pxsVedv7WvDTmIrWQ5YfkIYJruySOe3eGWBN7F3rJfHhlIQLQPEmZZisygSf6+P1GChUaxGbE8CQfKliWL9/iNicA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771438331; c=relaxed/simple;
	bh=dPrOwsESVofZYLh0PyNZE+DF+vp34upCcdpBDuawO9I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QdRkKwDE3AarutonTPKiRdl8ErqzIIhxYp4cTTCMBcl7xxSzfy8zuM5sxspCLSjinLEFrlcqve6aeSZl3lNOOvG4DixPsf3oYT//dsK7mXi4TOPf3jc42r5/6w76vvJfRSok1Y9A18XFwyQlwezO7V1TWQthKks6+1x+b5gbK14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qewEg8Uo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73949C116D0;
	Wed, 18 Feb 2026 18:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771438330;
	bh=dPrOwsESVofZYLh0PyNZE+DF+vp34upCcdpBDuawO9I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qewEg8UoS5SctdkCAnSNSRmqxfPueSQ5YYWDYOyUGNCDgi35xCQ3T9OO0z7pQzH0E
	 pZ3IFg81+fcplt9NRr4IuGiklLraceImha5UKU4yJpB1+fKRB1iD9M/P5uEypPKyPQ
	 d8f//lX6I+9KkHao//de6c7wWJwCkbL+2MdDVGAtNHhozCY8wzN+dszJYjz3KM8lZm
	 RniTJBLyPNWbOveBGP9V/I9sZ9WMpf58rfEijHRdBlicZepQQNWLcM4+s5iI52cOBu
	 4dJVQaZSE1CiC0JF60eomizmjO6ZHTr/Y9pbkyIv9cw0VH0dXFZmdvsq6LMboY5bzk
	 Mu7V3FeKdNLLg==
Date: Wed, 18 Feb 2026 18:12:05 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>,
	neil.armstrong@linaro.org, simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de, mani@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com, dev@kael-k.io,
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	dianders@chromium.org
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor: add taiguanck
Message-ID: <20260218-humorous-cubicle-d92673d8f910@spud>
References: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
 <20260214085409.3489057-2-yelangyan@huaqin.corp-partner.google.com>
 <20260216-appendix-recipient-1836ea619cf6@spud>
 <d8873481-8028-4ff4-8152-b01c420a2c0f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wOml6nMJNdJsKlra"
Content-Disposition: inline
In-Reply-To: <d8873481-8028-4ff4-8152-b01c420a2c0f@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266496-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5E2B315894B
X-Rspamd-Action: no action


--wOml6nMJNdJsKlra
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 18, 2026 at 08:59:31AM +0100, Krzysztof Kozlowski wrote:
> On 16/02/2026 18:49, Conor Dooley wrote:
> > On Sat, Feb 14, 2026 at 04:54:07PM +0800, Langyan Ye wrote:
> >> Add the "taiguanck" vendor prefix for Shenzhen Top Group Technology Co=
=2E, Ltd.
> >>
> >> The prefix is derived from the vendor's website domain:
> >> www.taiguanck.com/en/, which uses "taiguanck" as the primary
> >=20
> > This website doesn't exist it seems. I get an ERR_EMPTY_RESPONSE.
>=20
> I commented on this already v2, which was ignored by author, waited one
> week to get it fixed and still not fixed. Website seems real, though,
> according to Google.

tbf, the author of the patch may have no ability to fix it if that's the
case, I assumed it was a typo or something. It's probably fair enough to
just ack it then even if the website is not working for us.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

Cheers,
Conor.

--wOml6nMJNdJsKlra
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZYA7AAKCRB4tDGHoIJi
0oYUAP9lXMNmbzT4lOlUJaGz8OQP18eYgKVwBkgcZWSRhUkyRgEAqnz2/9ClPYEZ
y1nuL7CZlGk36RNDZhmwrDerApwB8ws=
=dvDv
-----END PGP SIGNATURE-----

--wOml6nMJNdJsKlra--


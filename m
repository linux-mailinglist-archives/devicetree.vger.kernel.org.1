Return-Path: <devicetree+bounces-293633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WO2VCyly+2m7bAMAu9opvQ
	(envelope-from <devicetree+bounces-293633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 18:54:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A734DE5F4
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 18:54:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F97E304E33E
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 16:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0976494A1B;
	Wed,  6 May 2026 16:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1kuoodf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A209D3F54BE;
	Wed,  6 May 2026 16:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778086278; cv=none; b=WH4XsaUfvxDgsDm8YhPE3YMOHR0jHvop5NtDeUIC80Qkc9iP1V6A9wr5awfRLReaHPlQNhBYekMyg0NejOfg4uK/UGkr/DnTe1y7wqP0quNuUonBsjkjcyzgkJUCYLXE/gIVPmRqPuwcTTAi9kwD6rKfiUWyM6IUbzjJZiM684Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778086278; c=relaxed/simple;
	bh=vXUijcHOIZib1WkKigAK+t0C94qbtj5qgIwWhw2QEVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EtMqMnepGQzHSf5+0CkJgMPGZ+HTqDNgoXTeQzqvrWjivIeEKjhyoFMAvAzz1KZQQVBUmX4c+y4IcCxluu1aoiJBQXJWGe1mOhxxtvaOc0oqw/+zta9owVAI9wfQDc/9vrCtAi7UTH7YtAiRYLjqpvSEyD7m5xISmo/DKCmYSFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1kuoodf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2487FC2BCB0;
	Wed,  6 May 2026 16:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778086278;
	bh=vXUijcHOIZib1WkKigAK+t0C94qbtj5qgIwWhw2QEVw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e1kuoodfoYlDYxrPnQbDjz9XnNuVgyz5dSH1fxRfJ59YhHK6WVGTfBOZvXbCtiPKk
	 AAOMy6mlr2BlJLP/5cpBlThMjujfTHttkot9p1zscaQ4PzNIhfqQ5HGRql/EygeGzv
	 gFIYE/YSwS2o2dmvSAgf4Rqvxp6hxFRigsUab1bW6HvU5ar4MMDT8q4IKPIZ7uuxK8
	 feIh9m1Q18mJckzYb0jpOzs0T7GX2x51dIGV2pVJXPdViYMbTqvmJto4kC2VGRiAuk
	 RnDV3Fs+PHcQjHjGlVEoDcbbKz9A8OldCcuwopH7XdKgQ3te3J/5c76CQorjpOTpxe
	 z9TG9XWFCi0ug==
Date: Wed, 6 May 2026 17:51:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] dt-bindings: watchdog: Add watchdog compatible for RK3528
Message-ID: <20260506-street-resolved-07261f9ae14b@spud>
References: <20260506092420.3320031-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G8KDQPmZLPpw5Wmq"
Content-Disposition: inline
In-Reply-To: <20260506092420.3320031-1-heiko@sntech.de>
X-Rspamd-Queue-Id: 85A734DE5F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293633-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kwiboo.se:email,microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:email]


--G8KDQPmZLPpw5Wmq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 06, 2026 at 11:24:20AM +0200, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
>=20
> The RK3528 uses the same watchdog block as all previous Rockchip SoCs.
> So add a compatible for it to the soc-list.
>=20
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--G8KDQPmZLPpw5Wmq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaftxgQAKCRB4tDGHoIJi
0ibnAQCP+MXWKi2Dd3tukhM8uD0ZL2FkDpQBMyKdI53V/BfitgEAuo3dUK6vj4nr
Tkrb/0WZHag1UxEwZjQ7O9xOrGj06gs=
=mryp
-----END PGP SIGNATURE-----

--G8KDQPmZLPpw5Wmq--


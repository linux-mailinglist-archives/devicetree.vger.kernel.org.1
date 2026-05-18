Return-Path: <devicetree+bounces-299336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHWVOEUDC2q3/QQAu9opvQ
	(envelope-from <devicetree+bounces-299336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:17:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E82EB56C719
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:17:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6091130216FA
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 11:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2DF63E8C4C;
	Mon, 18 May 2026 11:36:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from leonov.paulk.fr (leonov.paulk.fr [185.233.101.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F00C3624A8;
	Mon, 18 May 2026 11:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.233.101.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779104191; cv=none; b=dbzyn03J0ONoPJGLisgcpnvXa734nxWXMA00UXzDPPMgaQkn4e0QI+05WhrjvWrLLx8Yl61IVZeNDrKXN4kMMRuiK4h4M4zPJprYW4oq7EYozUR9j262/BUYSgtZM4UAhoBk2l3pfOX+NIEqs8QuQJGC6QOzgeRhR+4nrXxs+SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779104191; c=relaxed/simple;
	bh=yoRcR3nuu4Ddf2eerWDojIjEjHs+fmOvRSByE/L+hK0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kAHbnfN8U2U6LNgmuJ9H1dwRr9Tx2V0c6I6fwCuGftf9lKqBAV+kxsT6+v/tpAQgGM0AhpURax5hchMgF9l4ek/i2t+fAKnEZX6w8WZUKNMOijmgKwXMyn8IKwhXZES8syaC5AoPAFUGXce6fgyhHma4iTxBkrUVXuJnVTslB8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sys-base.io; spf=pass smtp.mailfrom=sys-base.io; arc=none smtp.client-ip=185.233.101.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sys-base.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sys-base.io
Received: from laika.paulk.fr (12.234.24.109.rev.sfr.net [109.24.234.12])
	by leonov.paulk.fr (Postfix) with ESMTPS id 252B71F8005C;
	Mon, 18 May 2026 11:36:20 +0000 (UTC)
Received: by laika.paulk.fr (Postfix, from userid 65534)
	id E86A6B407F7; Mon, 18 May 2026 11:36:18 +0000 (UTC)
X-Spam-Level: 
Received: from collins (unknown [192.168.1.1])
	by laika.paulk.fr (Postfix) with ESMTPSA id B159DB407E7;
	Mon, 18 May 2026 11:36:17 +0000 (UTC)
Date: Mon, 18 May 2026 13:36:15 +0200
From: Paul Kocialkowski <paulk@sys-base.io>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-sunxi@lists.linux.dev, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Shenzhen Baijie
 Technology Co., Ltd.
Message-ID: <agr5r5ikeEzv6B1l@collins>
References: <20260510201644.4143710-1-alexander.sverdlin@gmail.com>
 <20260510201644.4143710-2-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DPmCpSAJMKwxwRKn"
Content-Disposition: inline
In-Reply-To: <20260510201644.4143710-2-alexander.sverdlin@gmail.com>
X-Rspamd-Queue-Id: E82EB56C719
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [7.24 / 15.00];
	URIBL_BLACK(7.50)[szbaijie.com:url];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299336-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[sys-base.io];
	FREEMAIL_TO(0.00)[gmail.com];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_CC(0.00)[lists.linux.dev,kernel.org,gmail.com,sholland.org,arm.com,vger.kernel.org,lists.infradead.org,microchip.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[paulk@sys-base.io,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c15:e001:75::/64:c];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: add header
X-Spam: Yes


--DPmCpSAJMKwxwRKn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Le Sun 10 May 26, 22:16, Alexander Sverdlin a =C3=A9crit :
> Shenzhen Baijie Technology Co., Ltd. focuses on R&D and production of
> embedded products as well as customization of embedded solutions.
>=20
> Link: https://szbaijie.com/
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

Reviewed-by: Paul Kocialkowski <paulk@sys-base.io>

All the best,

Paul

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index 28784d66ae7b..095cf654787f 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -229,6 +229,8 @@ patternProperties:
>      description: Azoteq (Pty) Ltd
>    "^azw,.*":
>      description: Shenzhen AZW Technology Co., Ltd.
> +  "^baijie,.*":
> +    description: Shenzhen Baijie Technology Co., Ltd.
>    "^baikal,.*":
>      description: BAIKAL ELECTRONICS, JSC
>    "^bananapi,.*":
> --=20
> 2.54.0
>=20
>=20

--=20
Paul Kocialkowski,

Independent contractor - sys-base - https://www.sys-base.io/
Free software developer - https://www.paulk.fr/

Expert in multimedia, graphics and embedded hardware support with Linux.

--DPmCpSAJMKwxwRKn
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAbcMXZQMtj1fphLChP3B6o/ulQwFAmoK+a8ACgkQhP3B6o/u
lQw2kRAAgtcMljYZEZ7CkBCq//84iLqr97yZ/jVDrney1Lh0ZJCwI7h/0pA7Qya3
xcb5EaLnms9wUCB7qwSoX4nEoYCAn95CsRNcC2cbxBaOZbNb+S11CtwP34+NKAiS
4ZhO5aKo7AabLBCm1cuBpnCSFxloXh+vHIsOxTzYwen9FF876jn/wxR3HvQy4e5N
r+VBBY5IxCnYbFWyLVZt5A1B4WEH0Fg1xPVyqHQgT21TyOpVy7C+QAA/ZSHfq8MX
9n59oKIKOTePPCLGWxMWXamXAVXF03aVYmADw6/10yaWNmcQmMxafX7J2rXEMz6V
Wj+/GXxhldtt8WiYpA0ym62qqjgXriLwP6O8sSjfJBMHTln6fHxXLYp1n8W2tYY4
8TEOLC35gXiNSSSvOS1va5etgBNlscoEiFu/MN+NluBIIseSvRgdIdYKXOaKkKt9
+OJ9gBnWsF2jNekXk9+2Q1gGn/W/Iq3Oz7wp1Qt30JXhNuhwwswEw0R68+1U4BE6
XAsImQDjDtEqhtBJYo4uLBDrcdhjAIwvQWxMWgi8SPaOwRYda8rkxvmNBsZr94TV
N6zivylUvp/9TkEQ0V2M8w73ijUB2PV+EGV9J3/J+lcpSms2UDE3w1qn1DHS7sza
KWSByvWLnYd1VHbXiYwE8N8Y1UHIDEiAV6qifiIbMs3T1sJMbuw=
=y2JF
-----END PGP SIGNATURE-----

--DPmCpSAJMKwxwRKn--


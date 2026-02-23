Return-Path: <devicetree+bounces-267598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDWJMuOanGmKJgQAu9opvQ
	(envelope-from <devicetree+bounces-267598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:22:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0B917B72E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:22:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DBC83011BD7
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4892F33EB07;
	Mon, 23 Feb 2026 18:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="AG73FSNF"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1255633D6C9;
	Mon, 23 Feb 2026 18:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870898; cv=pass; b=B4X1aY6b6AGPXIsyVGGQxaASZKL1Wyattc2xn9tfxiioMZ+dwN2PMtIWE2fw8O8JmTLj86aTPferszNd5qSFWa8pNSnMGA2OscSszhedpWWzS4kc3vICBAVil+5YJsNSc8WKf1mb/b4OuuyaQHu9y7knXELnReS8d8FPk+BvlZQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870898; c=relaxed/simple;
	bh=Ohd4wV3Ud8zgAQqssd5DToPZcCbGzRaVPsQMnxZ1Nco=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XCBrUgobhUGY5xQlK3WlLVCuYQ94QL5SuyQwEXlR7zQ9bExpEWqlKnsVDqC98ymwpmpoGZTY8yhAi4qUZBXe04+m9gr/AJsygs1IAe46rN60MK3xqDOaUeWiyX4bt87rfNyDwfpLVVl8cLmowy6Jh8VETkS+8r2FM7RZ/eArVrI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=AG73FSNF; arc=pass smtp.client-ip=136.143.188.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1771870880; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LO0OJrIIIXkzCrQQfCcvrpHXM3U/oezz4wUsYvMrIrlH63GDypik3xEP7aAOJ3X2+AGxC2Sq5cjzVvUNtuLh/1IJTxBUmeBBvFfKMA3eIknI6y4/573sCJ0ZLjHXhHwTNe3lAdlJHs1Xzf7Nz0Q/2Eg1yeoXcu/YotcWyQ4YoRE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1771870880; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=3QpMmW40kIat1kKs1ek+xBkNlj1NYSZ0QLAmvTB0cy0=; 
	b=fSmyZHMSc7NxjKmgF6y9yDv5piUZBSrfxAb6ghCod+pvxlBQJSISZQtbvRCSBDUL9ClSb36bmu+12UhvWxqtPTfjVvHBD1gFzh5yXTwJyI5fKBq40hGhEV2PciG2DQqAweLYEbWPd1SlfR51GDcIICalMyikihujCWznB+iHSVM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1771870880;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=3QpMmW40kIat1kKs1ek+xBkNlj1NYSZ0QLAmvTB0cy0=;
	b=AG73FSNF0slb9gErO5ktr5aF1uRpJS6fYJFYRLDZ/2dXZSU5Cu5Ox60ilETlb9KO
	wUtThLTEA9P+sxo8w+VCHc2ag+n+3fFBGW4KBUAzgny8ZLvH/3OE/0R38vf3BtXy5D9
	/Bf9ZvaLp18WAG6UNkcjLp7kFurj7eaYnUVM1T64=
Received: by mx.zohomail.com with SMTPS id 1771870878966356.47662130272647;
	Mon, 23 Feb 2026 10:21:18 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 4E4231806CB; Mon, 23 Feb 2026 19:21:14 +0100 (CET)
Date: Mon, 23 Feb 2026 19:21:14 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Diederik de Haas <diederik@cknow-tech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Detlev Casanova <detlev.casanova@collabora.com>, kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
Message-ID: <aZyaLG0lYao6_xxb@venus>
References: <20260223-vdec-reg-order-rk3576-v1-1-560976566bd3@collabora.com>
 <aZxkDGzEQCCLKR-M@venus>
 <DGMF3IX3J3BP.1XT41P0G8P5OD@cknow-tech.com>
 <b4eb3031-69e8-4a73-b4f1-91dd4192bb21@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n35exwrn3ee26t2a"
Content-Disposition: inline
In-Reply-To: <b4eb3031-69e8-4a73-b4f1-91dd4192bb21@collabora.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.1.1.4.3/271.848.75
X-ZohoMailClient: External
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267598-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim]
X-Rspamd-Queue-Id: 2B0B917B72E
X-Rspamd-Action: no action


--n35exwrn3ee26t2a
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
MIME-Version: 1.0

Hi,

On Mon, Feb 23, 2026 at 07:07:42PM +0200, Cristian Ciocaltea wrote:
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -34,10 +34,12 @@ properties:
>        - description: The cache configuration registers base
>=20
>    reg-names:
> -    items:
> +    oneOf:
>        - const: function
> -      - const: link
> -      - const: cache
> +      - items:
> +          - const: link
> +          - const: function
> +          - const: cache
>=20
>    interrupts:
>      maxItems: 1
>=20

With that change the descriptions in the reg section are wrong.

Greetings,

-- Sebastian

--n35exwrn3ee26t2a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmmcmpIACgkQ2O7X88g7
+praVQ/9HoWHCL/V04hsruUcyyQNCJwHHNdFoiO6VWn6/wdlfmfFoSWWn2GUQ0L9
TvizIFInVev87p+PLnXE6qWH5F1i3jmJ1Tj+x4SEHZL3zZ9mCferejCDvmISmAls
5ab9QudefSeGPKQiJ6yYmmWlILD0/vYCQi2B/0PLNT75XiasWDZGXcL/EGP6qCqQ
2J8KDJQTsqYvrTcf5fwXP6a5+pVc8V1V+DZgOBBJDcvw2qPEWR1hTPPkUdififEf
TI3voWFDe7XTBb1R+EGQkjQSA2NzwyHc3kEzoUsf6VtRyEmzsDUUXuCI5dgYLLi3
s2TBXhOiMneKy5FfGaAdeJolNrstJ72VWFFTHe2OKj3qhHaH/rbOuobF3MLRmT7T
UUtrXdN/qTSSt3o8GLFaWp3iPAPOPcPCnfaMQ44HAkH/3U1sHzVlWHVEYHfFYwrQ
4hMHVo2QBd6UQmnU9CXzA/VurS9jwQ9dprhJBD6fsYIDzrPzC+IO35JdCfQ3pyHd
JGbBSZcXOuoo1sk/liIvZggcMfWYJs1NwZM+gk/3DWhV/MKpEzEBhugciHC5Fh+g
xuwu0IIIpGkbLRtCfMdulYtR20svlzsrH7VfV0YDnSVKhF8/EXn9lEP5tDlblXBj
OucwIXC/q9TQZI4phd45tPwfibr3k6qPQxwdba2LAQFHR1Vf63Q=
=XXNn
-----END PGP SIGNATURE-----

--n35exwrn3ee26t2a--


Return-Path: <devicetree+bounces-273091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLQfJoAlr2mzOgIAu9opvQ
	(envelope-from <devicetree+bounces-273091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:54:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13777240690
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E066308E875
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 19:49:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 408A5410D26;
	Mon,  9 Mar 2026 19:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEU2OqxK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E28C33C183
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 19:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773085731; cv=none; b=TtOfxtCALccelw3oj0s/k37ZTwEwyAzZSP0a3fBosMvSmrXAtLRt6kpk1YLdzv4jzZtiIXDAcd3GDRLt2ZpBB7zSZ5U9ww52mmu6xbwgvoloZrV6DWYGynYRVNNJeP2M8DVDFAytUAVqA3VYvATdZHMcCk/5PuymsfD0eX/Kxco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773085731; c=relaxed/simple;
	bh=hLn046K7Bbtakbf/CSH1PdqAYCPfjzoSWSGucaaZ4zc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VrQKwLwnLQMsDOSAjqTv6HjCASQh3E9ifcQkitDlkT0IARes7N6taqQRWmE2rHQ9Wr4sN/a7J+D/etWJ5z6QlLjod6X3dJSmb+zaYIJBXPJU0ozXjp4t5yXMx8sylUzyNUAjVrDZtxVGzIZBeNTZZat5lwLklsCHfbMK5RI5MD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEU2OqxK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06832C2BC87;
	Mon,  9 Mar 2026 19:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773085730;
	bh=hLn046K7Bbtakbf/CSH1PdqAYCPfjzoSWSGucaaZ4zc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZEU2OqxKE4K4U2w0B0f0ZnSiumP9hTWhEYqMesO6/EeglKejq+0Fs3FlFQO1YYmag
	 zx5jQOmymPt32QKibei5WQbnchlYAB6bGaDVr/0L+r3ixSUOjBo6HkHRO/2iM7pEAE
	 X/wDSsYOZpiniiTg8LypoTl1ToihM37nGPn8hQBMmvwBiY/H/sgeGAH3Pg1HoMvNU3
	 3u0dWnoRjgxj0mxfPM7nUSzbxyW5CU9C2dD7bJ+ek0ukm/HnKkdKO6cpGK7Z6NNCQz
	 p8G28iQ3UEGfOWFk1rXgaYzTg2hduLXtjgcCPbuNaWoq1s4KyJU+FWOr3y9qjjyGFr
	 j8fIJW5b2a3yw==
Date: Mon, 9 Mar 2026 20:48:47 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: airoha: en7581: Add switch node to to EN7581
 SoC
Message-ID: <aa8kH8_4NO3y2zeJ@lore-desk>
References: <20260309-airoha-7581-dsa-switch-v1-1-448530b7f91f@kernel.org>
 <a9638d70-c474-4c03-b57c-5c15e9ef273e@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="84AudNwnjjFunWL9"
Content-Disposition: inline
In-Reply-To: <a9638d70-c474-4c03-b57c-5c15e9ef273e@lunn.ch>
X-Rspamd-Queue-Id: 13777240690
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-273091-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action


--84AudNwnjjFunWL9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > +				gsw_phy1: ethernet-phy@1 {
> > +					compatible =3D "ethernet-phy-ieee802.3-c22";
> > +					reg =3D <9>;
>=20
> The @1 should match the reg value. So this is wrong.

ack, I will fix it in v2.

>=20
> > +					phy-mode =3D "internal";
>=20
> phy-mode is actually a MAC property, not a PHY property. It is not
> listed in
> Documentation/devicetree/bindings/net/ethernet-phy.yaml. Which also
> suggest this has not been tested using the DT validation tools.

ack, right. I guess this just a leftover of a previous implementation, I wi=
ll
remove it in v2. Anyway I compiled the dts with the command below:

$make CHECK_DTBS=3Dy W=3D1 airoha/en7581-evb.dtb

Regards,
Lorenzo

>=20
> 	Andrew
>=20

--84AudNwnjjFunWL9
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaa8kHwAKCRA6cBh0uS2t
rGw+APoDgNAVNaQq61XtrlM++fJOEhoVovfOQwUr54rfo6BNcwD8DwS4HIbPsbVx
sKWaXxv0PB5hdpZk63vRIclsFxBBVQs=
=UIg7
-----END PGP SIGNATURE-----

--84AudNwnjjFunWL9--


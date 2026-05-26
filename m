Return-Path: <devicetree+bounces-303119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDuSNdDUFWrRcgcAu9opvQ
	(envelope-from <devicetree+bounces-303119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 19:13:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6739E5DA6E2
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 19:13:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A098B30E025B
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 16:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34CE53FA5F9;
	Tue, 26 May 2026 16:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqKpzyVG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB68E3D5671;
	Tue, 26 May 2026 16:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779813946; cv=none; b=r/DAck4XmeZEuC+Hl4ES/Ot+VrEVcYiHPq9exSw84XC+7DxFEvZP9PowxA51s0W5WhF5UnBQkZAv4J8HcHfo2jh1fIcn1SImD/oIL1wFfVhuuhBVIiiuthP7Ep0SnWRsvoOCai44HgmDzhpqa2YU+75qDAaPq0wJLjkqn6WycsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779813946; c=relaxed/simple;
	bh=0TiSlD6zSpfeV3oD3I7wdOC0/YkDUgYQjtSiq6gyUuI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mhfeulkLl+5kqrG9hrSUEulAtGAqbbouy7ZtfpgBwQ2QsU8Ta8HwX8HD/5Mo9KQIcsMcXQsKN4cO7J0p70FJEuzKBrw5Vx6wxY7FHAPuGbHW+Pgq9mmc4UgW4lCvDbhUfoiUoGKBtEl2Niv430Db1flhi4wJr471Rc1bYDGeUA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqKpzyVG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40E8F1F000E9;
	Tue, 26 May 2026 16:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779813943;
	bh=0TiSlD6zSpfeV3oD3I7wdOC0/YkDUgYQjtSiq6gyUuI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EqKpzyVG0/+cavR/7gbcF7WNiocaqgfWOsoqo2lE+o+joDCuTpLqCym2opf6hCt6w
	 43CwAWcsNxEgMVZTj3YK/aW1cZZwZPZ66j5oG90z18L2K5xxIGrZfTXv52ChSvIJi6
	 GOWgTZ5P3Px+N70HXAGf5AIuOyRtFar75p41ETuXBgRrD8XuYzSCbWxzinvVdSZ2Wz
	 wy48YMXAXwPiXmeiZZHkEmlinmiROhyKVRs0Se3v/TszLQBZu+Rem5H9f7E9bJJH2q
	 2WQ48HpoN+3wcae1oYqXQHJMZhQuucEdjRT8aEyQgLwixvIxcR7+Z3Ksn1lRc8BP14
	 vjSWUplUBQyoQ==
Date: Tue, 26 May 2026 17:45:38 +0100
From: Conor Dooley <conor@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Yao Zi <me@ziyao.cc>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] riscv: add Siflower RISC-V SoC family Kconfig
 support
Message-ID: <20260526-purgatory-undermine-a0093dcb9ba0@spud>
References: <20260524-sf21-topcrm-v2-0-4527aae05c3d@gmail.com>
 <20260524-sf21-topcrm-v2-1-4527aae05c3d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CgUzGrIEUFwNdM0d"
Content-Disposition: inline
In-Reply-To: <20260524-sf21-topcrm-v2-1-4527aae05c3d@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303119-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 6739E5DA6E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--CgUzGrIEUFwNdM0d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 24, 2026 at 09:13:06PM +0800, Chuanhong Guo wrote:
> Siflower RISC-V SoCs, including SF21A6826 and SF21H8898, are RISC-V
> chips with T-Head C908 cores for home routers and gateways. Add a
> Kconfig entry named ARCH_SIFLOWER for them.
> Notably these chips uses ARM PL011 for UART. ARM_AMBA is selected
> for its driver.
>=20
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--CgUzGrIEUFwNdM0d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahXOMgAKCRB4tDGHoIJi
0qVBAPdEdK65amzTKFcfhW5d75WKcdXJJSZCDpvq7/T+f3W0AQDH9DEbIor1nqRS
NW1zdvjzsV8PuCHA54tmhXrC2kOkCQ==
=zS7G
-----END PGP SIGNATURE-----

--CgUzGrIEUFwNdM0d--


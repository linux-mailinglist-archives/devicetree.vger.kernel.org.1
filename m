Return-Path: <devicetree+bounces-295674-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCtyCP8AAmrknAEAu9opvQ
	(envelope-from <devicetree+bounces-295674-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:17:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 976CE511F27
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:17:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BAE831E44DF
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 16:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF39423A6D;
	Mon, 11 May 2026 16:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1CJx+Er"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8267402BA0;
	Mon, 11 May 2026 16:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778515414; cv=none; b=a7Wvn9mP+yxK+s1JvIbdq7jcUozQQeXuhGHs9A6yTUStvSoYdzEOt052a5ClD3Vd1xTBMPCPWycvjdNTdlcN/j3g2wPx1e+TQdssugpG50m8JMGnVRpaohvlrDFBAw9S5LjyZntLI2AoGNkoUXuQ+kqB4TZwpVr212x045mlbtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778515414; c=relaxed/simple;
	bh=tnssC6hzI7TtVFOUZpDeV/SJwOj+VIPiHlIHrHS+MsE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m6sV6waqLcgRLCq3vb02/Vp9MvtfNP5K0Q4RTQx0nTxPRU3ABhE/Zb8FmgV4szLJn6MV1VkvHx85y8DfxyjQSmbMZlxzsZ8LlqvGcstl7R8CXyFGDgY+2P5IOXsRcxIL+CUKjNSMjH/+td811S1IZF73AG2eHaBW2BnvbHlQBXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1CJx+Er; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E40DC2BCB0;
	Mon, 11 May 2026 16:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778515414;
	bh=tnssC6hzI7TtVFOUZpDeV/SJwOj+VIPiHlIHrHS+MsE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h1CJx+ErexpwUsremaPUA5m1lnGcSosFevHHgUgV6uys97zQ/7Vq1EH08p4nNhO5H
	 RosKpfe3GV+sKrldFLpaww1uxpYl5Zt87ATj015vIBQWKqL7gYdPz5eqkzz96S9dAU
	 w2yrmoEpxPn/5rwULZxNMAOnalZbAetuaJGufkdaros7fkJCKzt75MwHatBPQqenJ/
	 ACy6EDfEW/NtYjPhpouOBU/fQjjFVuvR9RAWgHa/8yTBblF32IY8jiTIIk/IP87QX2
	 1baJNxgkMOWxAr58N/2qBqxvsF8MYVl/P36Krldtxnj5ZcuT/EfwDT3IY9MAcFG8W4
	 LOounhu7CatcQ==
Date: Mon, 11 May 2026 17:03:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Yixun Lan <dlan@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] dt-bindings: soc: spacemit: k3: Add PCIe DBI
 clock IDs
Message-ID: <20260511-freebee-pebbly-585cb309a00c@spud>
References: <20260511-06-pci-clk-fix-v2-0-c9a5e563bab3@kernel.org>
 <20260511-06-pci-clk-fix-v2-3-c9a5e563bab3@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JBh/GwDPbWz+MZ2f"
Content-Disposition: inline
In-Reply-To: <20260511-06-pci-clk-fix-v2-3-c9a5e563bab3@kernel.org>
X-Rspamd-Queue-Id: 976CE511F27
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295674-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,oss.qualcomm.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--JBh/GwDPbWz+MZ2f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2026 at 02:59:11AM +0000, Yixun Lan wrote:
> Add clock IDs of PCIe DBI (Data Bus Interface) clock.
>=20
> Signed-off-by: Yixun Lan <dlan@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--JBh/GwDPbWz+MZ2f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagH90QAKCRB4tDGHoIJi
0vnbAPwKILdBfNPqMJ1bvTlNTvWQekjhYzoZzigGKTzY3YcAngEApU6smdGXVENQ
bNK9AQxsbubcUW1bZ9aMkD1xe69eawc=
=9jgE
-----END PGP SIGNATURE-----

--JBh/GwDPbWz+MZ2f--


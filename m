Return-Path: <devicetree+bounces-306392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AW2aNP1KIGq20QAAu9opvQ
	(envelope-from <devicetree+bounces-306392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:40:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A4C6394F3
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:40:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KN9vwYVA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306392-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306392-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 76FDF30158AB
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 15:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCD9E390CA3;
	Wed,  3 Jun 2026 15:34:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A795E3A48C2;
	Wed,  3 Jun 2026 15:34:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780500869; cv=none; b=DzGCYiF7Zs2TgUjeiVKTPD0l6g6oVXJm7VA9PKb8DdK5I73DFRkd3B1QvEw6HCsMfYPahXX49nHMGaCNKZgE2DO6sJLwfDWhvvVte5c86764jyyiGfS3fyE4YiZQ1inrdoYKDEud/zF5Sfz/E3Zn1/HiYzEGB6ldkaU8sD+Xn1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780500869; c=relaxed/simple;
	bh=lkqp4IcVnRoBGsFQcPvmYUMsFoW092uXDpIVveBct0Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F6JFxpYYc4bOEe7PE7sNcl4e4q9LsJBdYYLHGp6Sk11C6ZRzchlN7MdcGglRPCHKflwaZ8CYQLlqHmPS+TgcMaOrXkNlEZvt2AX3eNKkb468X3wV7BDYWmPtY0R1Gb2HjEVR7q4Q4N0n/Tc4XW2L2vOJuOtHzAoq9cdOf9mxjZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KN9vwYVA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD9D61F00893;
	Wed,  3 Jun 2026 15:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780500868;
	bh=lkqp4IcVnRoBGsFQcPvmYUMsFoW092uXDpIVveBct0Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KN9vwYVAZNQ5KY8cV/u5jM2ET1669txiTgrE5Ve1RU60xMxt3mber9I1vmP0piZiH
	 tU0dXR64asXnOihn5JjgVUDcIDhfl3ut/1IdE9LwSli1VSStiskKDUf/12sfR4CcFW
	 DHoM3vUYkalqmb4bE+kA+P/0B8Uvi4v1XarnzcnUbM59iQtilVE5wUNTIW2fEPkR2X
	 6qCUVs+/iw5Kti0q+BfBhClDIUBDkC66Ku4MbFzgse5lIu4VH/u1IGx1FUiVPviwjT
	 ADL/OK0hxbXqjSQCh665Mu3Cg7uLNQMAfmR23Kfh+Zm2ElVfxhMHrbnljjsGQTCzGq
	 xCK4CojjyQr1A==
Date: Wed, 3 Jun 2026 16:34:23 +0100
From: Conor Dooley <conor@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, git@amd.com,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	kishore Manne <nava.kishore.manne@amd.com>,
	"moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	"open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v3 3/5] dt-bindings: clock: Move xlnx,zynqmp-clk to its
 own schema
Message-ID: <20260603-revocable-unearned-413d8c943ad7@spud>
References: <cover.1780499520.git.michal.simek@amd.com>
 <23d848e29176706548612c4a0751481d46176f11.1780499520.git.michal.simek@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eTmVpuXs8nEdW++5"
Content-Disposition: inline
In-Reply-To: <23d848e29176706548612c4a0751481d46176f11.1780499520.git.michal.simek@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306392-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:michal.simek@amd.com,m:linux-kernel@vger.kernel.org,m:monstr@monstr.eu,m:git@amd.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:devicetree@vger.kernel.org,m:nava.kishore.manne@amd.com,m:linux-arm-kernel@lists.infradead.org,m:linux-clk@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 87A4C6394F3


--eTmVpuXs8nEdW++5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--eTmVpuXs8nEdW++5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBJfwAKCRB4tDGHoIJi
0mnjAQC/Pct3fOY5WkSqAMSrA1C8cufBn47nb5Sr5nSzVU2miAEAtdK0HJy5G1TO
Mi1WJUc/nfD2DhTR0hLArYkytkDxxAI=
=52Y4
-----END PGP SIGNATURE-----

--eTmVpuXs8nEdW++5--


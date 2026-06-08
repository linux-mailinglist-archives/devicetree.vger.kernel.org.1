Return-Path: <devicetree+bounces-308433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w3vYJxn4JmruowIAu9opvQ
	(envelope-from <devicetree+bounces-308433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:12:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1CD6591F3
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:12:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="MpnOhm/l";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308433-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308433-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8664C300514C
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A20BB3CE083;
	Mon,  8 Jun 2026 17:10:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA846314D21;
	Mon,  8 Jun 2026 17:10:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780938614; cv=none; b=PR9mlPbJ/IN2I4e2ytMbBSDd5K6aTAsnfVQY4vMEA0wv/4oF0/3j4tuGPGSoLauZX+8ACeSwQSbrcmTQvMtjy7X/dfJyn8jjOzDi6ecN7+T6POiPIrFiI0XA1Db7egBztkkOxwzUnZ8FP1JpEPBKRnzszOuJOPKRmp695JZ+96Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780938614; c=relaxed/simple;
	bh=xkbOr+L2EKFIeeQ9c+CcgCnxLz8JXGwjXbsGP2srD9Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NMb9QrT7iD6b5eYORwQLKRxoCfH/auSOcAy1uHEZCme0njs5tDtyRqXQpGwI4a2Z5S0Xtst3LcHIw5o1orYonopt/B1Zg1/vev1NImPADo4zO5toT5je/tbhDGDKOB6puRTQRyp6iIFj5UUR0XQP+MtgFF0AQB5GVwtAar5WB5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpnOhm/l; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 359951F00893;
	Mon,  8 Jun 2026 17:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780938613;
	bh=xkbOr+L2EKFIeeQ9c+CcgCnxLz8JXGwjXbsGP2srD9Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MpnOhm/lnBbJGtDm6SQAN5oep0c8dq0M5wYUd/XzI/3zvquJ7ci5i1p9Q0bKAoi+v
	 ajjZOJasvDlpkDgNg8OQmT8CxoMy0iVV0gawrNSxRO+jh9/uJHKGuM4pp9K1U3uzwc
	 VqFY/ccv+BPIeh8dmrVfadJFfsGr4oONV9MtJwOACwKOuFGW4ha0FKxeHY7ssKKKBi
	 ayDY6I4QVQKaeBhgVlI2o3RRUcP+ZmrUx5F78NYl/0NskdCZoBb+c1G7Zg86Ly2VsF
	 D7zr22lDxuM4PGI3wQfk8iY1TQ5wib1QZOFqC6Bd/gfe/JR22kDvkazI7V+cBRyMEd
	 +peC9ie/OpumQ==
Date: Mon, 8 Jun 2026 18:10:08 +0100
From: Conor Dooley <conor@kernel.org>
To: Lukas Schmid <lukas.schmid@netcube.li>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: sunxi: Add NetCube Systems
 OpenNMC (dobermann)
Message-ID: <20260608-efficient-unmasked-055a2b553525@spud>
References: <20260605191322.1920944-1-lukas.schmid@netcube.li>
 <20260605191322.1920944-2-lukas.schmid@netcube.li>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iWTtt+IfRs7SuezO"
Content-Disposition: inline
In-Reply-To: <20260605191322.1920944-2-lukas.schmid@netcube.li>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308433-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:lukas.schmid@netcube.li,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,microchip.com:email,vger.kernel.org:from_smtp,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C1CD6591F3


--iWTtt+IfRs7SuezO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--iWTtt+IfRs7SuezO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaib3cAAKCRB4tDGHoIJi
0rjdAQCo/gI3s8btXoM2IzEm8f1ptKxAEXzZm4h/xNixYwNW4QD+OrPsYbgQSu56
41hKCVOySwILHR50LVcbsTe1YZNEvAg=
=iwjK
-----END PGP SIGNATURE-----

--iWTtt+IfRs7SuezO--


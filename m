Return-Path: <devicetree+bounces-316509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8RtFJdNzQWrvqwkAu9opvQ
	(envelope-from <devicetree+bounces-316509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:19:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B146D4C23
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:19:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="QaFpI/4s";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316509-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316509-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E5471300B985
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 19:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9664532AAA7;
	Sun, 28 Jun 2026 19:19:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F28D30F95F;
	Sun, 28 Jun 2026 19:19:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782674383; cv=none; b=M3aemjCMQ09pJWGvesZZ4uYP2LfK4wFx3oTb/Zvwrwp7E78vtG/dtmmbhwIL3Dyc9QQqcFVj+fDHzaU18PajYUOoWJX3Lj+EUemieJeceU/rCx7jtR1KfuPtauJ5/6j9OQCVmKwvO5DdK39fBe7RmFchKjMNvqhzwZYZW2BjgBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782674383; c=relaxed/simple;
	bh=4HtBsgoo1pkoyz9U7bxXdbavwf4UmaCm5JaH3qpl05w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pciSmW3Ez8WuLIunQZeUNqYYgI69RYiikTKchftTIq84WddM3fz5NoL/yRTILUoU+uB3ZfsP4NEcv2qDqD44Nj6HQy8eLXoJHuCFZhgG9Kxikp+WNu0b9Jn12BSdg5wf+8EuqM9iWpT7YtxGp+rdnWXioEbZGaj8xf3aM7o/Ifg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaFpI/4s; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 712A81F000E9;
	Sun, 28 Jun 2026 19:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782674382;
	bh=4HtBsgoo1pkoyz9U7bxXdbavwf4UmaCm5JaH3qpl05w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QaFpI/4sCso+xnOrHQuqjFzj/MK2wIM0gjspGR22goiAf1aEaBymN5YvtdztwMWsP
	 X8DuFWyQZEDYuHuv7X0jAoch3aoG8PslcRnQx1WKz5TORoHyjqwzUbAy3wGo5BXY+6
	 9JTq6kgkgjPx4QgVyidS/1r2HHBSRl72yjFAS5u/QbdCVNL2LAHGDH/5hNpKtmUuDC
	 wMuo/iXA78vNKz66xObpa8OjYJkxYO1mAef6yI+o/zfdvBWb7dwkzWlRDFTgy/c2KO
	 U/W//yVJHGLW0RmDcgF0QjYORG9izEUf04rYzEPd8xIjs9gPUuQOFe7lvuMMNNoltv
	 a97t65VOO/CYA==
Date: Sun, 28 Jun 2026 20:19:37 +0100
From: Conor Dooley <conor@kernel.org>
To: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Message-ID: <20260628-retinal-ungreased-4c6d45e3596a@spud>
References: <20260627102633.86222-1-hrushirajg23@gmail.com>
 <20260627102633.86222-2-hrushirajg23@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g0JoW9tTpk32mUpy"
Content-Disposition: inline
In-Reply-To: <20260627102633.86222-2-hrushirajg23@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316509-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:hrushirajg23@gmail.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F0B146D4C23

--g0JoW9tTpk32mUpy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--g0JoW9tTpk32mUpy
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakFzyAAKCRB4tDGHoIJi
0l9bAQCTqBDKp1DNzljiIyEyzuzlDZi8AwRwZlgHSHmC225+qgD+INSm2SlDd3W1
wMikkhDKqyY6H+ca0h44jK5+HqnxOAk=
=YnMO
-----END PGP SIGNATURE-----

--g0JoW9tTpk32mUpy--


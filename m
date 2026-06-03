Return-Path: <devicetree+bounces-306408-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PiPDI1tYIGqV1gAAu9opvQ
	(envelope-from <devicetree+bounces-306408-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:37:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2B6639D23
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:37:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iBh7fzJq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306408-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306408-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D647730432D6
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 15:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE88F3D9048;
	Wed,  3 Jun 2026 15:53:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86EA3D6CC6;
	Wed,  3 Jun 2026 15:53:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780502018; cv=none; b=E+QMOagNP63XW1U7EANZUCWMBSl+PlvaMhWWtQv1Fas75h63BELiaqSyUFlnrmx33bTJfdI7KNgbRfUrVsnqjbHaLcDdgKSYfumYfeWKahduY4VrPMRoi2Rk/zjcbInPsLaWMf6OfvDPE2T7PZT7x8GYUARBj/t0AOy8ESd91xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780502018; c=relaxed/simple;
	bh=3D5YuCmfIzt66hkhte7QnobAOdmxK0Tezbo3Dt9hR/0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MjpqQyXp1DPxevUJp0iogQYWPrmOQJcUy1ALrdQiKBCmfdLoEPqv1Y7GXcpDhvjulZKUgAgzfKosmjtqVjWQE5TmHGR/izR3n0g0zamFJRVHDBW8n7uAj5nWnh+J5Vh+fqOarmAAzx4vMw7b9Jeu0XDP8trMVx/EXUeqeJrvqSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBh7fzJq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C21C51F00893;
	Wed,  3 Jun 2026 15:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780502017;
	bh=3D5YuCmfIzt66hkhte7QnobAOdmxK0Tezbo3Dt9hR/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iBh7fzJqQLBbgk8W20hs7PwORg5RiJdM8Lpfnr9BLKThU8gmT+PYj0PhOOzafGIlk
	 EOiNr1wY3hwsjhbi/2C7xX1l37CCwcLT7xy9rdbF7IKKklLsyv7aYhhNgjuRMxKmep
	 Zjjn5YXu3MlQyrhoF+t2LZQcbgUj4FWg4FBhlizUJptqw3oX5uonMn53JLd2wJqZRZ
	 ZskJySSyb2Rj4A0717+C0YRSgihh2nkteEezKQOLkroIzYl+XiJBQLTCNyrk6bOB/d
	 kYFQFiJMIEY/fB1lcvdJlwwseHi5rJ1pJyt6BUVzECtOQLQQ0ilTHA5J8vezm4FrEC
	 j0l9WJG5mkT5Q==
Date: Wed, 3 Jun 2026 16:53:33 +0100
From: Conor Dooley <conor@kernel.org>
To: jian.hu@amlogic.com
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: clock: Add Amlogic A9 SCMI clock
 controller
Message-ID: <20260603-backwash-dispose-c00bacf418ad@spud>
References: <20260603-a9_scmi-v2-1-350aec9ab10a@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ez0A8WG0Ym1sKQjD"
Content-Disposition: inline
In-Reply-To: <20260603-a9_scmi-v2-1-350aec9ab10a@amlogic.com>
X-Rspamd-Action: no action
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306408-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jian.hu@amlogic.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD2B6639D23


--Ez0A8WG0Ym1sKQjD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--Ez0A8WG0Ym1sKQjD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBN/QAKCRB4tDGHoIJi
0uQPAQDSI9lb443r986rF/5NSmGS4GHVEh33eEaVMCRd4R4VDQEA6BiXzQzF5aaK
p+RuR2WA5XqFz01HOXtu6cmcJLizWAw=
=nybO
-----END PGP SIGNATURE-----

--Ez0A8WG0Ym1sKQjD--


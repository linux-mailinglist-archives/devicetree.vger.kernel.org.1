Return-Path: <devicetree+bounces-309228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DAqROnZHKGojBgMAu9opvQ
	(envelope-from <devicetree+bounces-309228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:03:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A796662BDA
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:03:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="D5faD/Sw";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309228-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309228-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 336983100ACB
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7814A138F;
	Tue,  9 Jun 2026 16:31:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2ED43E9D2;
	Tue,  9 Jun 2026 16:31:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781022703; cv=none; b=Lzr1qprljRzlyK83eXLXE8Oh1Q/rJhaDFDEeGLqkSt/2Xol4dk1496/3sD2wlXb1Tt8A+okhHWo/YR5FrNj2wlfpZkH0NQ15M1QyQsmrad/kNNUdlVgnRs+mCO/TY8LsnX2loaf7VKTICj37IsTKy7CHelwzLtPawVbZwYk5nX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781022703; c=relaxed/simple;
	bh=hFdze7AA0Xt7M/PfvmTLs9j9eDBz5iJU9xRbDpiM41Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jux80+CpvPfdMV8ya0FDfGSRY84ZpU5b+ZJpRpL5NGRnTkLRjARIRcKnfQUy0SBMDEggM2O4buN+mrgXNfKlfQLG9W+ntiS3FcvgvZt/UNK7xs+fKOAry3K+bpVvLziP4/JldnsEKq6l7h8N2KL2H6qXhBavB8OoMFrDUuDEOdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5faD/Sw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B6BA1F00893;
	Tue,  9 Jun 2026 16:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781022702;
	bh=hFdze7AA0Xt7M/PfvmTLs9j9eDBz5iJU9xRbDpiM41Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=D5faD/SwtcjdzwEBZDgKoepGBPi4mwjq2YFxpbZRQteeVscncbTBxU3s/gQMyag0s
	 qaCiEzzpaMy7KCu4/LEgh8JB2k6MPL39FCFTG8ScwtrsaRIPJRa9WdNk05HX9CdSgo
	 PObbZJLBCJWbIebMz2ID2eGYVVCDSi8hx6IkfmcvPn1fDSc9mliPPezVlcns1LOrhK
	 aGgFwKywZ5oPNFQM7PfbkzvfgXfUHhKnncq17VmKozGc9X8jMGI9rfVrKXyPq21gz/
	 1D1ck3KELIN2ZMY/QFXQjjL/pM8+BRkr0DzHT6StT41u60NEk+XgAve7vxgMCL0OrQ
	 VV0vmUtY01i+w==
Date: Tue, 9 Jun 2026 17:31:38 +0100
From: Conor Dooley <conor@kernel.org>
To: Abdurrahman Hussain <abdurrahman@nexthop.ai>
Cc: Peter Rosin <peda@lysator.liu.se>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: i2c: convert i2c-mux-reg to DT schema
Message-ID: <20260609-bacteria-quotable-369dfbe2eea1@spud>
References: <20260608-i2c-mux-reg-base-bus-num-v2-1-776e313f213a@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rJFX/9uTU97jRAT0"
Content-Disposition: inline
In-Reply-To: <20260608-i2c-mux-reg-base-bus-num-v2-1-776e313f213a@nexthop.ai>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309228-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:abdurrahman@nexthop.ai,m:peda@lysator.liu.se,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,spud:mid,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A796662BDA


--rJFX/9uTU97jRAT0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--rJFX/9uTU97jRAT0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaig/6gAKCRB4tDGHoIJi
0kz/AQCCG57i11nex6vsIcCaLgZO41bsF+uUdqFod4JiZboV9gEA0Y8FDvjisgJh
oxp7zX197+ZjQcTo1/Ojeo99L32Ymwc=
=nzCy
-----END PGP SIGNATURE-----

--rJFX/9uTU97jRAT0--


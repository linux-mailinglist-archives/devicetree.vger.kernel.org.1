Return-Path: <devicetree+bounces-315308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zz9qKgEGPGoKiwgAu9opvQ
	(envelope-from <devicetree+bounces-315308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:29:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8276BFF8B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:29:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ClMhLgvG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315308-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-315308-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A77F03009F65
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F2D2F5A06;
	Wed, 24 Jun 2026 16:29:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A9B2E7F20;
	Wed, 24 Jun 2026 16:29:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782318589; cv=none; b=bA0DtiejeezK957ITcaCoe+CRrN4Mh7Fr62LZJOpYYETiAEBFV5NX+d/LhdKK7iB1bVTW3wS8YxuVzqsCTOkukLtPl0p1+buHw9Yf8hIOIURMh0n/EXTmI5SuW/t3q3idpMNpRq73WWV/CrG/cX93HujQnlbwGmcWAXpqwnjj8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782318589; c=relaxed/simple;
	bh=nB/xcDstYUVPnTa87uG6SAP6OEUqB+fH/Eywg/NIyxs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aDft0lkyF6pHR0ntMRYpzldbiGAFuv6toQK2EXubMCPDQ0jRrFpD/1wm4ihv2N5JEQSd5T0mOwxEqlXnZPZ7GMCtjMEhO8stgskhlcYuMrpiL/4WVi7XXvJCbYhDd0IYgoJR39nsSkaS2N6DFc/s/mJ7GypdPAtm1ZuXwC4cyy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClMhLgvG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70BCF1F000E9;
	Wed, 24 Jun 2026 16:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782318588;
	bh=nB/xcDstYUVPnTa87uG6SAP6OEUqB+fH/Eywg/NIyxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ClMhLgvGviUAT4lTmqBBg5rMovWEhMvRTKDlxuTVmxfsWg9kK4KOko4t1/hlcrHrq
	 Aoh/QxnzxJO/y5tOgkcgdjXKg0ellnq1CQ4B21wyjWk17VESPdXd8jATAN6PO3I8ld
	 rkKibTIA9J5BsbAFgXl8K/1ORDvAZBgQ51TvpfvQ1qLq6DWVlG3Usiuk1UGRXTXv8Z
	 Ypqa7iN5mM/LoAzOADt3lllBzBLrqgRpktn8cEAMnwn4tMlGh3YdZx+fJ9Mi10TNVH
	 2LjvmOi2XQaTjKsHsKUg9MTemdV27oGTFvQLzsypvPaTHw9H0MjIsmRdMsIFIh7XI0
	 EQeBRFhKmCZ/w==
Date: Wed, 24 Jun 2026 17:29:43 +0100
From: Conor Dooley <conor@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: clock: ast2700: add PECI clock
Message-ID: <20260624-disk-lingo-1d9fac0de659@spud>
References: <20260624-peci_clk-v1-0-ee28b92e22e9@aspeedtech.com>
 <20260624-peci_clk-v1-1-ee28b92e22e9@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y2hWsGqtxlYAd0y4"
Content-Disposition: inline
In-Reply-To: <20260624-peci_clk-v1-1-ee28b92e22e9@aspeedtech.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315308-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:ryan_chen@aspeedtech.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4D8276BFF8B


--Y2hWsGqtxlYAd0y4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--Y2hWsGqtxlYAd0y4
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajwF9AAKCRB4tDGHoIJi
0ilsAP96KMQ9XSh+uOlgb/NYGm4S9RbQOnUkbS1MHqeOnixC7wEA9hgVf0iPIwO4
vNCYTElGLjB+Jf2SMaWGJxn1GP0RKgk=
=L3x/
-----END PGP SIGNATURE-----

--Y2hWsGqtxlYAd0y4--


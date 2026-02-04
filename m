Return-Path: <devicetree+bounces-262767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJTcM8GHg2niowMAu9opvQ
	(envelope-from <devicetree+bounces-262767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:54:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 926EEEB3F2
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CB5673004DE3
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 959F83AE6F9;
	Wed,  4 Feb 2026 17:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQ0k48vv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F873ACEF9;
	Wed,  4 Feb 2026 17:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227647; cv=none; b=jwTu8bp76bXhygFcZrPsROE5DKAOe9vFaat2mYYFBnBWqrYIVPZvZNraEBgCaW7VUkBdKkLWRpmXB9u+EE2rLjtuEtgUaCpKUiOjs54fVECShC59HigwiNGJC7T7ZdoIW5bktUj9jCbgZ/TG2WglQrYun+8ONr3ECLlWjeoDAtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227647; c=relaxed/simple;
	bh=sQogdaDUzetebzTwdzsS/Q7RYSuHAuztkU9A7BbLk+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pmd0R6GEFqTbLsoacwPDSNWLFOagZO1C+nAkRYuZ3tBPza6krMLOqar+vL94DNfnw+wLZ9+NSIjf2zRwCxDPeM99mliP+Zhtsqnti/US4BfKsKwl3j3qL3E2/DGgljkYWSc3J2MYkzGdC3eptVW0cIahycWAIMUWp1qULzcuc3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQ0k48vv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3CD3C4CEF7;
	Wed,  4 Feb 2026 17:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770227647;
	bh=sQogdaDUzetebzTwdzsS/Q7RYSuHAuztkU9A7BbLk+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GQ0k48vv2IgFLxtuT65uX9ijW12Y2jXDmJFzcBSJB5hawAv9VigDH0uwYdMr/q0D+
	 Rxzpmm5oitF9JlA8XiuZ6sr7jHMRD/manMPvl7YvK0J3PXx6fgAZlC31inliBq4M6b
	 +p7puWl+DeJGXfQ+Y8eZtbBHfTHXUdV93PFKUrt+B+/eKE46S7L0jv7JLudPeZwyka
	 w4KRyAz6bITzqKq5iWXVcG8StZHuxraSf+j6n/sHY6+VEqK8fyj8z0+jY4AZ3ULA8j
	 Y4O0Wm3mB0ug+W8uZRMZOEC3baFQM6fBh8XCADWOvKELHpHwuvXQfuXR/H8TFZPGcx
	 mk+DUlW0V50Uw==
Date: Wed, 4 Feb 2026 17:54:02 +0000
From: Conor Dooley <conor@kernel.org>
To: Jammy Huang <jammy_huang@aspeedtech.com>
Cc: Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Oskar Senft <osk@google.com>,
	Chia-Wei Wang <chiawei_wang@aspeedtech.com>,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: soc: aspeed: add
 aspeed,ast2700nx-uart-routing compatible
Message-ID: <20260204-phoney-crumpet-91d785f26c21@spud>
References: <20260203-upstream_uart_routing-v1-0-6bd5dd75ee3b@aspeedtech.com>
 <20260203-upstream_uart_routing-v1-1-6bd5dd75ee3b@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="L66zuJgLCEhFZBMR"
Content-Disposition: inline
In-Reply-To: <20260203-upstream_uart_routing-v1-1-6bd5dd75ee3b@aspeedtech.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262767-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 926EEEB3F2
X-Rspamd-Action: no action


--L66zuJgLCEhFZBMR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--L66zuJgLCEhFZBMR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYOHugAKCRB4tDGHoIJi
0itwAQDNp1MbH2s996w7U+f1cW0+YUARaHJuZVp/WSPyp3dhwgD+PPbN/qeb+n17
ih+JZMAMozojeZOcXtH1br8U27pCMw4=
=MGNm
-----END PGP SIGNATURE-----

--L66zuJgLCEhFZBMR--


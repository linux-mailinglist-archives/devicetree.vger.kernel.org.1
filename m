Return-Path: <devicetree+bounces-268011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHaWAXjnnWlDSgQAu9opvQ
	(envelope-from <devicetree+bounces-268011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 19:01:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C63FA18AE2A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 19:01:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 559AA31CE418
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BBA93A9DA7;
	Tue, 24 Feb 2026 17:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlhQukWm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672433A9DA5;
	Tue, 24 Feb 2026 17:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955762; cv=none; b=tgVO0tuoz2ngqzrWWSJaxqc6HYZXYM6YCNH31sTggAixey5RHEirgz9sySC2/Hrmd5HM+uQDajc55x3kS8vjPHzYQHYl9K7LkEMfe0OgaQbY3LrJNufl8KvEkMy/6fLQPJntveq+U1v5BjJ96Lh4D95tR8sXr2CoHJRu9i9GCCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955762; c=relaxed/simple;
	bh=FYJMufp8dDEIilx5JgSY/m2olD6DzD4PzEhfO392SMg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tAicr/m9IBFHV22BwEHbUhixoePPL4H6c5RLODWBht9WG1kUp8JDZh7m8pPeRWgQ31GE/blSFSFkscn2frUO/xpTaUnY1dB55hq2tCML9mRsgjttLRH6p443SsNQVoNPwxDwDG3zDLF9BfRln5DJQ516yVBejxJIO5IA33wXy0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlhQukWm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A47DC19422;
	Tue, 24 Feb 2026 17:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771955762;
	bh=FYJMufp8dDEIilx5JgSY/m2olD6DzD4PzEhfO392SMg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PlhQukWmeRaR5yJI5mEWXiW9v7pTAZUJA8PyNoImzNrxJYYlYENWMOkN/4cc/jB2v
	 eSvC1R00nFP4fPAlafPZVxkG+yPdbTluLS3MwJwa2bP5beq4mOKufu9/XXrHsyoQhF
	 2RmUqoFf6saxg6sTOtOyVNTWCbjPdIK6Ekfp3HqwqU0mRw6bxXYxsU9FM2WCnCSEV9
	 KTGK3gZNUZ4VkdKocCcKbPYHqYC33okH7buyzVccihMwP2kIY7Jj6uUYjWn+P2wg4N
	 C3dtPPaRurjdUZ+SiF0lfmb6BnokBTRK8ZpBqgKLBNRahwHtJyGQZ4NzFyhzzkx3z6
	 CTfyzSVmucNtQ==
Date: Tue, 24 Feb 2026 17:55:58 +0000
From: Conor Dooley <conor@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Jarkko Nikula <jarkko.nikula@linux.intel.com>,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v1 1/1] dt-bindings: i2c: dw: Remove unused bindings
Message-ID: <20260224-wrinkly-flinch-8c75a8ec7d61@spud>
References: <20260224115210.3499191-1-andriy.shevchenko@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aqINCfUvLFkexCVG"
Content-Disposition: inline
In-Reply-To: <20260224115210.3499191-1-andriy.shevchenko@linux.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-268011-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C63FA18AE2A
X-Rspamd-Action: no action


--aqINCfUvLFkexCVG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--aqINCfUvLFkexCVG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ3mLgAKCRB4tDGHoIJi
0vc8AQCvmdMr3IA8S4jVeOckvB7RomrAPaU1dlRAyx5Ptq9I0wEA3M9BSxJUf1jM
NO9cHlBcAyKE5HgnpWKe9LP9craEvwA=
=sK/M
-----END PGP SIGNATURE-----

--aqINCfUvLFkexCVG--


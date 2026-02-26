Return-Path: <devicetree+bounces-268982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHoXC5mXoGnhkwQAu9opvQ
	(envelope-from <devicetree+bounces-268982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:57:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 794851AE141
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:57:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E2F33153448
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BBF52D7DE7;
	Thu, 26 Feb 2026 18:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWY1MReC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F85B665;
	Thu, 26 Feb 2026 18:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772131545; cv=none; b=sevv5dBwzXl42XgSjCD7qCyy2caCBWk3rIhRGRC+WzIJX+0aWE7+JwzdWF1gUEQ2eAHfN5Ih8Z2ybijeFyu+HsoMUKKh/ODJrCjpJ8CjO/j5FWlAUpxyLkGPYwMsMvUZSPvf1p+IrR1HuR1/rXwtej+Yjeb1XeKdN/I4iE7+OzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772131545; c=relaxed/simple;
	bh=+XmMDl7uCbRKR3318DO8mEx+wybNcT9pkDfZRO/1ZEk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PniicSrr0FrLUwpJRrLKt+nymvR142Wi7seazXxwtNFaIuSicbpJxHpvjgzZL4mVgPXWYcVBbf9ems6EX3iB/5Xu/aqo/i4o6GWpA73NuUb8+sY51SdblNFsvI2SYAMAzpE+YfiMAN9qdbWGkIETR98xEl8KqX7dbFMNZDm8i6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWY1MReC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C27B9C116C6;
	Thu, 26 Feb 2026 18:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772131544;
	bh=+XmMDl7uCbRKR3318DO8mEx+wybNcT9pkDfZRO/1ZEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lWY1MReCHxFvBWfsFxu+426MyT6Hr3QNQIa6cHjgVIciTEmfZSKN0EEdTXu+tu+38
	 0tYvLxm66fH4LQPHVR3Ua396uUAXU1CIJVV0AKwTLZmuto6kLw1lECC4b1RB3IUeRI
	 DJVXVEHt3aUZ4JoBl8kEkoau2HLCYlkrrZqd2NCVjLgbpXu3CjL5WB5kmgJ0wcHZwm
	 trBDsQCYrFqVRv8ZLgtXuw4744JOvsFEvFcsN5lQuBW8RF5tgyKiP8SiXkLzf7Eihg
	 4A6mpN10bTf88GPJRMuXgld7LW7l8mvAvPmRACE8D2qrqC28+Oflh9M6dFdN4GSe7L
	 MgaNlhee/H8xQ==
Date: Thu, 26 Feb 2026 18:45:39 +0000
From: Conor Dooley <conor@kernel.org>
To: hehuan1@eswincomputing.com
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, jszhang@kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	ningyu@eswincomputing.com, linmin@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, xuxiang@eswincomputing.com,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: Re: [PATCH v4] dt-bindings: mmc: dwcmshc-sdhci: Fix resets array
 validation
Message-ID: <20260226-overhaul-perennial-f1c6f88f1a20@spud>
References: <20260226092614.435-1-hehuan1@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yfEZskxdjFDqFRNx"
Content-Disposition: inline
In-Reply-To: <20260226092614.435-1-hehuan1@eswincomputing.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268982-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 794851AE141
X-Rspamd-Action: no action


--yfEZskxdjFDqFRNx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--yfEZskxdjFDqFRNx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaCU0wAKCRB4tDGHoIJi
0qIsAQCIPZEqAcM41f1Fw9sLs+n2QDukfsUwM+1gpnzWLJaQKQD8CBNfViWDMyXl
t/43WcZsD/JRcRErKeuapiyF+mUzGwM=
=I5MG
-----END PGP SIGNATURE-----

--yfEZskxdjFDqFRNx--


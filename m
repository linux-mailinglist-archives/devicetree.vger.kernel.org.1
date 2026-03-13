Return-Path: <devicetree+bounces-275278-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEQ6ECIYtGlkgwAAu9opvQ
	(envelope-from <devicetree+bounces-275278-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:58:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1DD2845E8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:58:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2E9FD3064DE4
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F327935AC37;
	Fri, 13 Mar 2026 13:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLr1nUap"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07FC14F9D6;
	Fri, 13 Mar 2026 13:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773409660; cv=none; b=ZOdogwv6bnMpQj+Bv+dsN476tGw/qzbkUvSXbLuCLoDHxF55e5KjZLhzOMFzQ0+jmszmdjY4jtl5WrtyG+lGOnqpo3/gTDcsUBYTjn7DW25Kj/1Bqf7t4mPZWOY49X0KnFMk9+3w4glqWQZnyFprZcmq+a9HQN4vZ+ivxFve7P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773409660; c=relaxed/simple;
	bh=+Yxcm+w/f0F8JPKXfOTL9D5ULAT/waeaSKVW69KaiNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GQHjcGrwxMaIRL54GwcDnZ4jESJmC62Ase0QqOH5dyTa0Nj+/92Bbmpqmjvi44lTfs9jgH6d5+urt7M2Ws9fq8G6cJLorLTUcR26+5Pr1pEKlqe3fFlgwa16iLnPzR+D0nba1ZovbPa0E7xSQ35jAUWqjzrC2R8KiKrMDWtpdwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLr1nUap; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72878C19421;
	Fri, 13 Mar 2026 13:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773409660;
	bh=+Yxcm+w/f0F8JPKXfOTL9D5ULAT/waeaSKVW69KaiNg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gLr1nUap1s5hBbac0iX90UXO6wYcPJs9bi2J2o8XRChtqwU2h6CX90Ae6N7kEOzSb
	 ihQtOwHcdbFwxg/s6pY853IgZoSnhtikAPy3lLDtxdweDgxqfHtN/YlY4bXIcPi9ky
	 kr0N0GyYtykY++tX1SruI/Fo1DrqxjqwgrJNc1WrrnjkfSwKeTKMGE+UFab+g5zYuD
	 jI1qscoLNlNjToTvRYqliAghaeWiDl/BMbl/wLmAKJsEws+RVaXjmfvPlzg8KnpIl/
	 sJYkelcFGZQABlgNPrdB3TeJoXbXDV1x/aegE7VluRXNY5V8D8VzRlj941FPyLNu/I
	 P4NS+W3kU7j2Q==
Date: Fri, 13 Mar 2026 13:47:35 +0000
From: Mark Brown <broonie@kernel.org>
To: Bhargav Joshi <rougueprince47@gmail.com>
Cc: sravanhome@gmail.com, lgirdwood@gmail.com, krzk+dt@kernel.org,
	robh@kernel.org, conor+dt@kernel.org, m.reichl@fivetechno.de,
	daniel.baluta@nxp.com, simona.toaca@nxp.com, d-gole@ti.com,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH] dt-bindings: regulator: mps,mp8859: convert to DT
 schema
Message-ID: <1c182bc9-b0f0-4b2a-a95b-a358628ec569@sirena.org.uk>
References: <20260313122136.9349-1-rougueprince47@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JH1gxEw5J6I2SxO1"
Content-Disposition: inline
In-Reply-To: <20260313122136.9349-1-rougueprince47@gmail.com>
X-Cookie: Monitor not included.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275278-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,fivetechno.de,nxp.com,ti.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DB1DD2845E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--JH1gxEw5J6I2SxO1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 13, 2026 at 05:51:36PM +0530, Bhargav Joshi wrote:
> Convert the Monolithic Power Systems MP8859 voltage regulator binding
> from legacy text format to DT schema.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--JH1gxEw5J6I2SxO1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm0FXYACgkQJNaLcl1U
h9CBKQf/WjF3s0jM+cU66ePiD7RcBA1LA745eCoFZThoDZspG480iYHaBr0tEU5r
Rl7217PwZMgKes4z2jvn1rR4gs67IKAx71WtP0ZztlO1cCSTrLbPMo7ZclQCdAcf
QXwmspsOFtf6BAkeDQ9NqD2TAm/aMcRkTaEKe1QQO5gwnowVj9q4dSf6vQ7HCivn
9K3gpMSHl9AUq43Apvb7HVtb8wtNYE7TUdPbbsYoZ+mb6p/jL0ttTIKSMKsH+/zS
hRIBNjxB0ON7kUt9qKm3mx2sKUJ/H+lBFUHusvN2a6zUUMz27CJm9G9EqaCOukon
wO+YUFPc5kbEli8+Hu5dyN3MoinU1Q==
=zOrS
-----END PGP SIGNATURE-----

--JH1gxEw5J6I2SxO1--


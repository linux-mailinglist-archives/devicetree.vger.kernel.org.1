Return-Path: <devicetree+bounces-263138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GE0SGlzkhGlf6QMAu9opvQ
	(envelope-from <devicetree+bounces-263138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:41:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 782CDF6825
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:41:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 08E0F3004067
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 18:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1753033F5;
	Thu,  5 Feb 2026 18:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXHWbn2s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FD33033D9;
	Thu,  5 Feb 2026 18:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770316887; cv=none; b=EsQIxt9nYdSrTSQDoWZQKhPpEOCb3KE6Uvjqv7UUqHEph5GC5X73MSqhJds6ZeJ0IlwFMCmLW9reJZ2iHjKdmjHtDJzbjDOf9jHAvjbTU3FD60ICf6v2kJc/NhRB8w44P7rcBDoVshRTONnZdETm8ZtEt28fMnKx2d+1oJLRGJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770316887; c=relaxed/simple;
	bh=z1aRmnTZ9JGNwcFLWJE4ysYVCAhOodfQWsWXS0KtzQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r0j6oykF/jQH9/OpiweeQxpHA+p3h0O1HlaOLy9aBPAl9S6qRF7wEqaoeDo157Sja9zZXv5JmMqfiJHdjp9PCYM2k+5MINYgNzH3QjZlqJLIcngPo22fKuzH1R/eTw+/iYRBoslUQwkSyh+Q3ch/UijzykJXNFBVyPYy1/QcKrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXHWbn2s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3131C4CEF7;
	Thu,  5 Feb 2026 18:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770316887;
	bh=z1aRmnTZ9JGNwcFLWJE4ysYVCAhOodfQWsWXS0KtzQs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LXHWbn2sCaHnxqNSOeZu0v/Oj7bvNvrT+0v8cHk1KGjf0RH5dbwpvEbNWElgXJ1h6
	 ADOByRiZSHEzkOJ2h/2ZoUvnT3u6BPbgdKzPuRdb8BoCAUWj10pW0B5ul8YabwmC+1
	 fj3aDCGfYv+tnWSM5sVnRNUpV3CRj5eYL11OGPY1gMVD9rT4jOJBKmq9WOXBoVK0r1
	 UQVSmA8Eo+ipkR9QgvVjn5kHCVgJ5IQROrmT5IVjR4JyMy4UqAcRrqdbPzZMIpETck
	 0J0Myn563aiQoQeouXaIyS5/yDCEUyBm960r5nEYsL47HS8pw7bamrDO0Ur2T0QhX1
	 NYNO60rY4bKhw==
Date: Thu, 5 Feb 2026 18:41:22 +0000
From: Conor Dooley <conor@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: Add Gateworks GW7906 board
Message-ID: <20260205-dispense-spooky-20a5406726ae@spud>
References: <20260204225020.2039367-1-tharvey@gateworks.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aFdS0tb7fAq53oNb"
Content-Disposition: inline
In-Reply-To: <20260204225020.2039367-1-tharvey@gateworks.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263138-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 782CDF6825
X-Rspamd-Action: no action


--aFdS0tb7fAq53oNb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--aFdS0tb7fAq53oNb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYTkUgAKCRB4tDGHoIJi
0qusAQCXy++/D4Wc2H82NMANA2D5GRfbNN8XIX25Bn+vT9g2tgEAwAKvJICMB+ju
go+uID6wpiZujEeLfsBt+n7pwgIi5Aw=
=NteE
-----END PGP SIGNATURE-----

--aFdS0tb7fAq53oNb--


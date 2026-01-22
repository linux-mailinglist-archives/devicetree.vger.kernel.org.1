Return-Path: <devicetree+bounces-258414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qD60Hp47cmlMfAAAu9opvQ
	(envelope-from <devicetree+bounces-258414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:00:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E587683E1
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:00:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2C6E6787F2B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C90B3191D1;
	Thu, 22 Jan 2026 13:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6yDXSO1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C1828727D;
	Thu, 22 Jan 2026 13:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769088535; cv=none; b=MPgwYm6zA0vYWtkt2z4phI0KNAPpyTJATaC+KW9HiAevwdPiGCea7cYpUsg9CcGh+f0Nz1PkhgRHdao0nm9edsvu6wfbDG2Yom+q+wguJ/qIAUYYMfwoWnW346xo9TsRcwOEFUbxnYaZd9tJtlH6lelGFtDLTyBgWR9SpGHzSUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769088535; c=relaxed/simple;
	bh=52bFlLCjpaAqJM6IZE7KAn/Q37ooiXw/wizRM6zt/xQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lbjZcqb3AV4lrwzbKrddrgwtaW44y9mCFgELcMFBioJA5IUzlcGjy4nWVIe9fgbV2YN4vg4CTjvSsjevgikcVzJ67Ibvr/EbEl5AMecK8f6is7rTfg2j3amhx1Rwgi2k3osZc00GbgJR0hszKqH5xZI3A6vHGqXNO2f7Z5IGHR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6yDXSO1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 454A8C116D0;
	Thu, 22 Jan 2026 13:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769088534;
	bh=52bFlLCjpaAqJM6IZE7KAn/Q37ooiXw/wizRM6zt/xQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K6yDXSO1YpUO26K5U/Gq8/6AzV+Ef0rfUJ7IdRd9v5VgaGoMEa1D8Zo3an5DMseVu
	 0/PaTPWxG3G49Y6z4bsTkivp02iNzrkf30npoQaYQbkqdFtjUDWxn0b9/8/i06jiQY
	 1/TiT9oZ3Wp6Fz+m55hv2Q3QovoEO97ySPzR1DjFx1+Xui+vk/GpppYVp/RZovnf4i
	 lqtMhKv7HvIkP8fDhmtu1fDz6U9cf/BxeZyadYOaZncwS1zlwdjwEBbZgBn0+oVtWJ
	 gdSrw1ajtAuddT3pi+KWYuPxkdpmF2t1jForPUDwT45GsCcvrJxqY3KU4sXvvWxxJ4
	 C9aPiVCeWIFuA==
Date: Thu, 22 Jan 2026 13:28:48 +0000
From: Mark Brown <broonie@kernel.org>
To: Yixun Lan <dlan@gentoo.org>
Cc: Guodong Xu <guodong@riscstar.com>, Liam Girdwood <lgirdwood@gmail.com>,
	Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
Message-ID: <2e2c2754-fd3e-4fd3-aae4-d7af63e3b528@sirena.org.uk>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
 <20260122101122-GYA63789@gentoo.org>
 <77bc5a5f-666d-4beb-ab78-99a242d72a39@sirena.org.uk>
 <20260122121223-GYC63789@gentoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WKJxnpfC+M+6T011"
Content-Disposition: inline
In-Reply-To: <20260122121223-GYC63789@gentoo.org>
X-Cookie: Don't read everything you believe.
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258414-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[riscstar.com,gmail.com,kernel.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 2E587683E1
X-Rspamd-Action: no action


--WKJxnpfC+M+6T011
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 22, 2026 at 08:12:23PM +0800, Yixun Lan wrote:
> On 11:27 Thu 22 Jan     , Mark Brown wrote:

> > Patch 1 looks like it should be OK as is?

> then with patch 3, and for other boards (milkv jupiter), should have similar
> DT fix as patch 4..

Yes, changing the supply names would at a minimum need all the boards
updating (it's an ABI change so shouldn't really happen, but perhaps
there are few enough users for everyone to coordinate and it's what you
all prefer).  Patch 1 shouldn't have any effect unless a board already
specifies a wider range than the driver currently supports.

--WKJxnpfC+M+6T011
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmlyJg8ACgkQJNaLcl1U
h9DKQAf9HE685HxQLs0onmPPl4HIvattESVKNH804D87n1xEfNY43egCIlO7Pzsn
ZKT7pyTrFRmzgks+R8V05qzLs6+G2AguJCYMu73OG1JCIbPBfSZ01dY9MytIPbl/
1PSgsoZNin9mXKIK+OeIT+XrmSshq4eW3f8qTCgP5F4X83gk/OO/t6Rnt/iY9zNJ
cqUjOrt6qgOyHjH3NWXzm2mjqJvmwa9u6TjliylVdwKv4qVSwB99/IwJVTpsnIw8
QzrJqRkxx8TOTUvffXACYw/aATHaixZDVGicmSjHJCS2Z0h8j5+5SeIgP8A3Q120
cbSNSBhroZx2d09AZG622VSZuuhtTg==
=naTG
-----END PGP SIGNATURE-----

--WKJxnpfC+M+6T011--


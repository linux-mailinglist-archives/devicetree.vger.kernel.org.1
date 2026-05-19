Return-Path: <devicetree+bounces-299907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EK18NOcjDGpqXAUAu9opvQ
	(envelope-from <devicetree+bounces-299907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:48:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 549B857A777
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:48:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F69E3005E89
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C6913E3C6D;
	Tue, 19 May 2026 08:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="AmECmYBM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA053E3169
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 08:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779179968; cv=none; b=ukqtCD9nFe0lTMg0PRNuwbrtzvJXMUHLLBQXULkPm2d6jjHcB2XYYjoDVmdiMjg2koHDi+76gkk2dEckr/KKWPPcamd3dwK5/noYHTNFfwXQnzgr+cU4iAJi+ZdHhJgX3e9VcgutAzon/To31p+Fz2B4jWPSkIF8wSRU7DZTMhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779179968; c=relaxed/simple;
	bh=MdRV54VogZfy2pTCjREEuf8SI5/HBdFrEUmn/7BsXJ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gx5XonmWdmkqRdVjOOsoYKOgu9Wu6xF1Cv26TpN3wYteHXvEuiOOyIw40q0phwoYguPcaEfjW/kKQCrrDATyEYCLjO7n3f5SqFcFdLz5gXDz5K6qDKUmdJes+trZdHyXXUmWgEVvcLfpV7DleKzxVGPqXl6fKuCa1QMc3hOO4m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=AmECmYBM; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=MdRV
	54VogZfy2pTCjREEuf8SI5/HBdFrEUmn/7BsXJ0=; b=AmECmYBMYcqggJLfYG1n
	hTFUTFFUzhwHSffSyocINY+nIkWGMIjb5kH29SxiyOlPrrIfckPjlxrg4/wvAd48
	Yn2KAxNqqsTe8XFh9BYCQMOXHCM9ARyhTI5+0t6hmouD3CbH0fVRHA2jpJ1UySrt
	JhAuuiPhSBrmnrvE/0f2fDNXFcW2OINRLhcMOlpRTRiNmjN5zae6fV5e3iP+qrdp
	yovU19PpX/9atnNUTwkbFyz2tNTt5BxMgtJgs5GmKFiirE70r3eeyieS9oLFgsl8
	/KOwWnVSd76C+bG4OvYNIbXFG/fxFio0d8J77ThpH3DgX1ZmJEqiOb0wpX4YAJP6
	pw==
Received: (qmail 186237 invoked from network); 19 May 2026 10:39:23 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 May 2026 10:39:23 +0200
X-UD-Smtp-Session: l3s3148p1@WzeynSdSrmlUszca
Date: Tue, 19 May 2026 10:39:22 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: renesas: r8a78000-ironhide: enable to use
 SCMI
Message-ID: <agwhuk7DyN-l0Idb@shikoro>
References: <20260519074702.3308-6-wsa+renesas@sang-engineering.com>
 <20260519081718.4F790C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/arnjRI5x5Qn1PYd"
Content-Disposition: inline
In-Reply-To: <20260519081718.4F790C2BCB3@smtp.kernel.org>
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299907-lists,devicetree=lfdr.de,renesas];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[sang-engineering.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sang-engineering.com:dkim]
X-Rspamd-Queue-Id: 549B857A777
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--/arnjRI5x5Qn1PYd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 19, 2026 at 08:17:17AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] The patch adds an include directive for `<dt-bindings/soc/renesas,r8a78000-mfis.h>`, but this header is not included in the commit and does not exist in the repository.

This is handled in -next properly.


--/arnjRI5x5Qn1PYd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmoMIboACgkQFA3kzBSg
KbbwuQ//fLV/Ab162iNa9XidxIjXfms6Fi3o4tvgLLRpVpRy2JGgSshgbUGaMHBr
3stflO+y3fZzIt6nkE91XMspOHCxv0sxJ+K/8tDPtmF9tM0n9X1rN9q+G9Hqal6c
l5JZNpoHnjBT02uCtXXDiVRbmd1iovCibcu7EXgrN1A9L99g8I+ibEXohgxH3imf
rMvLRmOtyTtwIUzPDgAlPiOwOv2cbP2wgnxt8aCCbnNmGO/tKfOTX9krlgmlcm0P
nGqgI8NZ5BwSmJeXFgUgmcvTAsz5vCtsm/qyFyRlo7lomn108suLWcBCXGZ1uz3E
yfPwiJi2bYWbGyKWyM3gVUMGwwOeGsbL0E5PAhqJW0qu22Am1BfTUKcPH7OFGFek
noQzCyRz4NyjBO5o7yh9gDMPEco8tdCCUycGMc3vrsa8JVo+eeA6HQUodWA8/6Bz
U+M7HQPho7Tf/g/9ktYw0BLVOY+wiF8yyfhtxF5cZvsg52BXXBreuvwVrkbsfxHO
mcenoBwVyavN5g0azzm6uhFI7jSfNcdyqCeCQmup19fYedz6VI0SubxGcAfCnhkz
8b29XvmSHIe9j5BqAUK4oW2xItlYUEhDYb2TyoG+cDFSPRS/0WUcexOvhzm95Iff
YIeqouLr7vGTkP9UBxOA3Y+VgG1btTII/0SxftVdwdhCSn8jdAM=
=XZ0l
-----END PGP SIGNATURE-----

--/arnjRI5x5Qn1PYd--


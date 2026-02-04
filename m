Return-Path: <devicetree+bounces-262768-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBT6G7SJg2lWpAMAu9opvQ
	(envelope-from <devicetree+bounces-262768-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:02:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0604AEB514
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 19:02:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1414E30A949A
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE3FA3E8C5A;
	Wed,  4 Feb 2026 17:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkQPj2rw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE8C3D348B;
	Wed,  4 Feb 2026 17:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227832; cv=none; b=H094ZGRvBriup1xkoC+95Mr9Zi2ksFRJ8kgP4m0Nf/pPPUAExsAzIzHHDQ6qbClhOPmFeELnSMvK+syTrBVOIaT/ke/jJka0LDGM+NWcbHsCZnZM+YjNg8OA5WzyuyKibmIp7RrjNUd0p745XFbnSqgXUuMKbtiDCKUGdmSxpoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227832; c=relaxed/simple;
	bh=u8eitFun7SwUQLUe4lI2x7ITmzwP10+eke8n1TCIBo8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EGF/PgkYhJUPFTardQwWCfLK9uNzz3dRqXxOiYjpB/VthqDKgTtfyypQz55WbLIPs8P1r2i7eBxBKlZESe803bYJ6ZHBgpLKSMKMAkOqSN3gqCLBaAoTdCCWwQIemxJqugFKfNOk6zDDmCdVcakd2UeAU77ATGFgoA5xSEV1MnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkQPj2rw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9DAFC4CEF7;
	Wed,  4 Feb 2026 17:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770227832;
	bh=u8eitFun7SwUQLUe4lI2x7ITmzwP10+eke8n1TCIBo8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bkQPj2rwDrtcLYrGcG4N2wnrcNGyKy7nzQ3jRTSjNCKqjL+G+S3kGbm8uUcouJdRC
	 NnkWvhEVjyOM8di1SAr5TUVOCDEb1kE+6GotGqkB3rqkI8Oi4jWEBE6DvMDjXIWvtK
	 v2IiLbKg+BFoFUE9wdJJU9FKyT9cfduhnouCR92THN8nfpBRCD+ZnmEek8hJDkGgol
	 oanVe8iwloYiRX4QWNZLgDNQ7kZtfvUOQPeuPU+fQXex2fzOYRDzVkb1lfhoIHVvU6
	 GLRlcJoKfHKXuB9Mt2vwhtTW2d7s2Z4RInne8KPSHPdetMON1KIzUbjcz2aP1PsdHV
	 +k3Yn62vDaBtw==
Date: Wed, 4 Feb 2026 17:57:08 +0000
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
	linusw@kernel.org, stephan@gerhold.net, hns@goldelico.com,
	jic23@kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: iio: accel: bosch,bma255: add bmx055
 accel binding
Message-ID: <20260204-unsterile-eastbound-f67032657b5c@spud>
References: <20260203143946.301233-1-jerrysteve1101@gmail.com>
 <20260203143946.301233-2-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aPwjS0UqukRY+ZDb"
Content-Disposition: inline
In-Reply-To: <20260203143946.301233-2-jerrysteve1101@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262768-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0604AEB514
X-Rspamd-Action: no action


--aPwjS0UqukRY+ZDb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--aPwjS0UqukRY+ZDb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYOIdAAKCRB4tDGHoIJi
0tBjAQCT1P/NH5fCQuS7p4MWehpMRhIqlYHQ4O2jNofDU8c71wEA77pZHwRhBw7A
tYHfIOKzTTTS4fOYZNRgNDbnlbI1ZwU=
=v5sf
-----END PGP SIGNATURE-----

--aPwjS0UqukRY+ZDb--


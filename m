Return-Path: <devicetree+bounces-307011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l6GoL66wIWpALQEAu9opvQ
	(envelope-from <devicetree+bounces-307011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 19:06:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFDE6422E3
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 19:06:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DsrX6ZcG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307011-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307011-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8C4993010BEF
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 17:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11935494A03;
	Thu,  4 Jun 2026 17:02:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05305492524;
	Thu,  4 Jun 2026 17:01:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780592520; cv=none; b=VgPyr+cTWmS92umj9V8eHwJMTjPTDbi74nEHQBqxnBqaC+dwBr8yWC+g5AMMqvkSvzQB6O5/zgKNOKTuZ6iFofbf9Odbyohf0GNbwrxwtvjgUdgEN+ZGOlG3rbrzDMsfmtf7dRryDgE61uaOWetyzsII6AvxRDHNYDybzZpc+u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780592520; c=relaxed/simple;
	bh=raAy9temd8hB86sOsCztiHa1ETJjvPFZC+qYV20Pnk4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PiT7OuAjC02hAyLksUx75vEOtdqIj38ZMZN4EbQ/Yp5CJvGh1RY0sJUseL2Gv+UhLnqXlUVH8pw2WxOTqTbNu6SL0EGuVo8SRYWRIq/dGHIeW7PRGZtsGJd72sv1mVQNjoqWAJTNDBronosaTrL47W2A0HekPLJ5OQWvwQeKfVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsrX6ZcG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 150601F00893;
	Thu,  4 Jun 2026 17:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780592518;
	bh=raAy9temd8hB86sOsCztiHa1ETJjvPFZC+qYV20Pnk4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DsrX6ZcGomliWleDZgsl9/9w/dUo1cu3WCnsk1/eJpseVK5uKzA3b3n2kB1kGYnKf
	 fMYsqpy38fvaN9C9sIA4nG2oA/2B2Rn4u9MtRmwTWtV2jdCILIgJQLPy4y4cgNa34b
	 UR8MKMp5F90BJlAAzCZufANF1EJ/SXuwVsVBjZ/vNdqbm6rQ6mhWTqoqDB5c8RHCBF
	 C79gmKzVl/JoQhwfr0nZjXE8Z+zx6bURkT1orMas1+CcONSp4DZD5fk7GQFgYHP7hn
	 lgA0yyJ2ZHTWkgRQM7YIuXJYjHoDUu6hykEZDUmuvpdj47aJxG74p0KT/rr8KAYd7m
	 aDNLa/dCwJLGw==
Date: Thu, 4 Jun 2026 18:01:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@analog.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: iio: dac: add support for AD3532R/AD3532
Message-ID: <20260604-monogamy-barge-4de86326873c@spud>
References: <20260604-iio-ad3532r-support-v1-0-c3552f9031de@analog.com>
 <20260604-iio-ad3532r-support-v1-2-c3552f9031de@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XenaTFJ5bkpYZG1A"
Content-Disposition: inline
In-Reply-To: <20260604-iio-ad3532r-support-v1-2-c3552f9031de@analog.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kimseer.paller@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-307011-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,spud:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DFDE6422E3


--XenaTFJ5bkpYZG1A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--XenaTFJ5bkpYZG1A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiGvggAKCRB4tDGHoIJi
0vcNAQCCthVAQIcuIQuiEA+q906aQIm+VjxGwHzINV5+fI6E5QD/aNM6g1+GobRT
WZjZyCBSo1p3bogDr3xrpAFEx51OEwc=
=dDfF
-----END PGP SIGNATURE-----

--XenaTFJ5bkpYZG1A--


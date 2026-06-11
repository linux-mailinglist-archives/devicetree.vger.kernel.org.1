Return-Path: <devicetree+bounces-310537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id L+CaKiLwKmrLzgMAu9opvQ
	(envelope-from <devicetree+bounces-310537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 19:28:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEB5673F72
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 19:28:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="OyBGCoD/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310537-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310537-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5CB473112B61
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 17:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D2C48A2BF;
	Thu, 11 Jun 2026 17:19:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354A24D2EF6;
	Thu, 11 Jun 2026 17:19:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781198385; cv=none; b=XBoRtGNd9auAPGhhNk2Tx9CEWCuE1uTyeVZ3daluAnuOgDuvNMf596DeCXy4WrR2IkqJ5p9IAyZpeEzBHm+Cbv/1C3kbHa3RuXcAHzR0fT+Z/nrGNBAhR/d1PAW2HjVj7b3k+Z1mwEw6wFdclsPjG0yajBFla37OJ+5zhn1KQ3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781198385; c=relaxed/simple;
	bh=lhSyghFSmJujEuL0UMKljJsWxAOWS084E/Fj5cduUJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cbFOFZy00k4LsQYDDp6/JjI9mk6HNfjc6zkaJUgcYAGmDW0DomyFaxzpSfg6PXP+m5yoX+9DlFDYH+Q7JZ+LHREcQhi13WOyiKK99OkdQWYEvDIIQNK1Bq5t3nP9jcbalgANKUt0eUjJlI90k94nC66HybCNEH6OKpojkoJBxPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyBGCoD/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAC891F00893;
	Thu, 11 Jun 2026 17:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781198380;
	bh=lhSyghFSmJujEuL0UMKljJsWxAOWS084E/Fj5cduUJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OyBGCoD/ZDttDv0mmoipulpIpvwr4qeKeXy9PtxzuZ8rFBJN98FoAfEsV0J4LrYui
	 4O32BhqGTRAE5hfnTxkzT6bz6kZIF1GrTSCL0Rz/GdE/PgMWS3l/mOsBdb1V77FMXs
	 uRJEQctLkMtvqkWKo+VRfq5RVcbT/xdvVVBbS1IPGtGwlUPz7PGV5V2cYe6NPCT/VB
	 Uvc2ttDE6/HROXTHxKMqkAGHgWO1kWHYND1JkbvAHZLBvRWYhhgHgHAMwHTRmhWz2F
	 j2JXcvZZivIeMlRurXTbtdqFZevE0s7h7v6ooRxY+UTTa//8PkPdvuAk2aMkBPwYeg
	 alx2jqtaSYovA==
Date: Thu, 11 Jun 2026 18:19:36 +0100
From: Conor Dooley <conor@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org, Peter Korsgaard <peter.korsgaard@barco.com>,
	Peter Rosin <peda@lysator.liu.se>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: mux-gpio: name correct maintainer
Message-ID: <20260611-impaired-spud-390f28be0c1d@spud>
References: <20260611122053.7306-2-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3Mn1ra3VBS0rhIb/"
Content-Disposition: inline
In-Reply-To: <20260611122053.7306-2-wsa+renesas@sang-engineering.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310537-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:linux-i2c@vger.kernel.org,m:peter.korsgaard@barco.com,m:peda@lysator.liu.se,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1BEB5673F72


--3Mn1ra3VBS0rhIb/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--3Mn1ra3VBS0rhIb/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCairuKAAKCRB4tDGHoIJi
0pGDAQCPvLDImgP1BLafDgJtfW31t5h8UoAt9RKUI2BNQXs6/QD+Lqa/7cknjN7x
z9763xt3TJLykZTIB37Erfls5fIWugY=
=XmCF
-----END PGP SIGNATURE-----

--3Mn1ra3VBS0rhIb/--


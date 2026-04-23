Return-Path: <devicetree+bounces-289756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDYLIbdY6mkhxgIAu9opvQ
	(envelope-from <devicetree+bounces-289756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 19:36:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A0745597C
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 19:36:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53C203018091
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 17:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC583A7F45;
	Thu, 23 Apr 2026 17:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjCSiOKr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C1F1D6DB5;
	Thu, 23 Apr 2026 17:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776965680; cv=none; b=OvshXDM7h9Ji+pZZcVNrQHee8iP1GwFq8TjvzbFTo3MkkvOD36AY1bWoOowcznLu5QFEs7vGlcTBYudjl96oqAGpCadYmi1ibzOHXWeKJT9ws9kw1bvin8sAOx7HaCybSkgoXoY4rWODFHEv5Zfsf5ZV2KYfAYqXc9AKVHp+84Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776965680; c=relaxed/simple;
	bh=8Gr33eAq1hsIE+wobtdzLR325VFE4yzSCUyYVQsyGe4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sWWw2z8rISf8O66Z5E3W2JX+nLn1ooABKggmc0w0Gjp3nG4Lw8XSWR53Mqb1FFGodxu362HAqVKOm4J3mxqz8YOm+nQVZpYS4FJgnV3iwR2w7hmTZ5eORUuZp5nHLuCxxJFnotVDoh3Pr746hpi5KR8LszUEs116VjSCFDdGZY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjCSiOKr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A2E9C2BCAF;
	Thu, 23 Apr 2026 17:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776965680;
	bh=8Gr33eAq1hsIE+wobtdzLR325VFE4yzSCUyYVQsyGe4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YjCSiOKrRVTpJUr+O3r6sqLV9C1Hr7RfKcf0DwqrDvAutrCVMCZl6L5up5ZFi+R9m
	 Yqln9XQm/HrLfjwI3dAuFUp9rn+/A+W0dQLPr3vTRSeaB0/sdbMEBEhOI5jYU0+YuD
	 wVemhRunRkMJC9g++hpbQLkdgvwoBRfdR10VknaKsgTA03G/HFa4SkzfLzCpJIy2Dx
	 nVDmA9FxY7mzRYoqga8IS4D+0uEOw2kCuOZZ1ZBYMtYE1uQM1aNquQXa1Y5SKXhOsa
	 xXl8iYi7Acc9I8Om9szZatqlvGQnbSUR6KEvFLyYrQY8kcljDT38jvNRw5yUf34iOh
	 +dKN4J2vYve1A==
Date: Thu, 23 Apr 2026 18:34:35 +0100
From: Conor Dooley <conor@kernel.org>
To: rodrigo.alencar@analog.com
Cc: Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Michael Auchter <michael.auchter@ni.com>,
	linux-hardening@vger.kernel.org,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 02/22] dt-bindings: iio: dac: ad5696: add reset/ldac/gain
 gpio support
Message-ID: <20260423-pectin-matrimony-e33973bc676c@spud>
References: <20260422-ad5313r-iio-support-v1-0-ed7dca001d1b@analog.com>
 <20260422-ad5313r-iio-support-v1-2-ed7dca001d1b@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="burjtBzGs4i/tqcM"
Content-Disposition: inline
In-Reply-To: <20260422-ad5313r-iio-support-v1-2-ed7dca001d1b@analog.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289756-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E3A0745597C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--burjtBzGs4i/tqcM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--burjtBzGs4i/tqcM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaepYKgAKCRB4tDGHoIJi
0i3CAQDQWfdZImR5NeZX93bYZXx3C4POhO8D+82hGPsucpu6YgEAubSOJzbQhP30
zqkOGol3SL3f9PjpNOLqPdTi44R2igY=
=EkyH
-----END PGP SIGNATURE-----

--burjtBzGs4i/tqcM--


Return-Path: <devicetree+bounces-287683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEjDDuy832mOYQAAu9opvQ
	(envelope-from <devicetree+bounces-287683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 18:29:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E28E406622
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 18:29:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33F6C30AFB2E
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 16:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 731D63DC4A0;
	Wed, 15 Apr 2026 16:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTfiGFWL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498C233F383;
	Wed, 15 Apr 2026 16:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776270418; cv=none; b=mTc4/ZiHeddc5D6/a65WNCfJyaMa7CRTMC8mlERsxPb/KedaEb/AbSynCrde4EYZN/mQXvY+wJc14SH0V+Vasbk1ZhqAqlih+gyl1Tben5zYUioe0Cr77e6Xpo7zcHwW7CRvKlNbh3gPyo709JA8HvnXaDw/JbxyCbvw3W7z4yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776270418; c=relaxed/simple;
	bh=BYzXL7EXoBSE9Cg9BXgwRZ578kNkDROKHQt5UtCGWPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XFUTsMrjitPOC6l4HBsuJL1l36VyhKaIEHc2MrOn+/WCb4HsJxla8V9iukpy1+Sa/A3UoA5ruNaQNFkj6IINORwHPLXLC47J6Xeix63ns+KPEg8dGLB6ZiUBpeYxlMLeI10qUGx3mnKF25a1T+H1V0L+/0O+RDU1GndcqRQlpqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTfiGFWL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDE0EC19424;
	Wed, 15 Apr 2026 16:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776270418;
	bh=BYzXL7EXoBSE9Cg9BXgwRZ578kNkDROKHQt5UtCGWPM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cTfiGFWLlja7r4I9jgst2Mfoe+hTtPuDgENPqB2H7bsUqs7c9wInsoWgHHK+VXIyw
	 9sNQSu/oDcUL/3K+VOOHXwHHg4Da7hXMdk/ugiuxn13E4n74RNtYduMwXDjwbkIwob
	 t0zC5pRJwgWCi/Sq6WZu8zTKSLY04hX7jpeltbrDbviMQ47rBnlzwu3vCxbTSbr4o6
	 NfezuBc+ULH8qG9yJ4KJVGee1rDRPAnnzXeLtz0lOtOGTg7OfFOAUxvVNBNcxxHKsl
	 d+QY7Uey58GE6Hy1zpiWGy0DU/sEOuvQwzC0OPCGCDWBFrlji6GLkiLcCKPGW+Xmjr
	 P8KqpWpeN1Twg==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 6258D1AC57F4; Wed, 15 Apr 2026 17:26:55 +0100 (BST)
Date: Wed, 15 Apr 2026 17:26:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Valerio Setti <vsetti@baylibre.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH RFC v2 02/11] ASoC: meson: aiu-encoder-i2s: use gx_iface
 and gx_stream structures
Message-ID: <ad-8T6DBOlZsqugY@sirena.co.uk>
References: <20260411-audin-rfc-v2-0-4c8a6ec5fcab@baylibre.com>
 <20260411-audin-rfc-v2-2-4c8a6ec5fcab@baylibre.com>
 <58d1df89-7c97-4e2f-af15-93d1f7bce5a7@sirena.org.uk>
 <1jy0ios3f9.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SGdE9JS1qidC2+vp"
Content-Disposition: inline
In-Reply-To: <1jy0ios3f9.fsf@starbuckisacylon.baylibre.com>
X-Cookie: Victory uber allies!
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287683-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,perex.cz,suse.com,linaro.org,googlemail.com,kernel.org,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirena.co.uk:mid]
X-Rspamd-Queue-Id: 7E28E406622
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--SGdE9JS1qidC2+vp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 15, 2026 at 04:28:58PM +0200, Jerome Brunet wrote:

> Valerio maybe you could keep function above just to set the rate, but
> enabling the clocks through a DAPM supply widget ? This is kind of what
> the AXG is doing.

> what do you think ?

FWIW this seems like a sensible plan to me.

--SGdE9JS1qidC2+vp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnfvE4ACgkQJNaLcl1U
h9Albwf8C0uE0EV4cFI4KJmG+Ojdhsq1MoR+wvBa2cUsXsaFOISw5Ifsm0FVdTMr
ughkOmRGGsuvL+VIk74psmVagEFIYB3VkFVaZAlocG3/W6WZ8cc23BdvvFZL65Ks
iCRE0QGEVyfNgfHIw2QLB1zeY4YJtvC/3SVWIF1dJo3gYiU/X/ElcKvReL/1sQ/Q
VGhMgICik63g3aNAtMWh9k2OUy6CeHjQABUW0NV73Mgfmp3pF+TjOi/kz1j+Q/sD
blJmyTc+TGvApNRwwthc5/Y9ibmzbMXFMZOSc6ZOohsIH6oOzyj/j1yI5lbSM8eR
M5NWn6fI0JrxBUlLFquYldpMyWeqOw==
=9wNW
-----END PGP SIGNATURE-----

--SGdE9JS1qidC2+vp--


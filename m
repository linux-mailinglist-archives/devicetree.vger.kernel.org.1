Return-Path: <devicetree+bounces-278418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFSPJPSFvWnQ+gIAu9opvQ
	(envelope-from <devicetree+bounces-278418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:37:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 052C82DEC33
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:37:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DE1930D5440
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 043993C3BEC;
	Fri, 20 Mar 2026 17:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5Hyus7h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7E73603D1;
	Fri, 20 Mar 2026 17:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774027808; cv=none; b=mAb+yvslEFSK6wDgZxr4rUPr8xtme7x2FPuTiL37AK1I15yb9lkpxj8UDHOwsXC0Fy6lMgyI8xzVbHS4FHtXYb/+0eZkXjekhDCEnW8dR3Ba1G7OGdfyAIIOdoxqlnr7YdD8GvDi8qjhAX+4PEuLMwk+JaCqG7Y/nx7EGkubYQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774027808; c=relaxed/simple;
	bh=2ko2yr8EREI41gY4DKOmiWwlSx8gmD/iM6LkQEBVH6s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uRhObaILgyEKqy5hRNADLTMGnOBV3fgVfx/01F3x5zU3xZo+SU9hFucq7s8h9dJaAc3YuT7qd2s4fqrD8hdWa0o4C+po4GibxZ+lA3JQP7ajwt8m7mMIfNAybR6XA/JX/jb6vVbEV9yaktA+UMM84XyxoHATBPnHBfhruhElIe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5Hyus7h; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0EACC4CEF7;
	Fri, 20 Mar 2026 17:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774027808;
	bh=2ko2yr8EREI41gY4DKOmiWwlSx8gmD/iM6LkQEBVH6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t5Hyus7h1OdUrxx0x+UUtqbrgN8lkDQ8LWN/V+z41wiTXKEsaXd7szrUnj4RYzONF
	 XxCMegAu/K2xz3l/nMnJybtiTDZ0biEz8APXwMTzCqfrnsOzeehBUHkObXJTBybTUD
	 dsKA7G9uRscvqvNbT5smjEAGGaClM1ur80JyMLNTsz4GnM8efceBHXuuMHsCKqNKLa
	 cdc2xdC6fZUoJ99TnwFIzhVvdl2U6BACfVQKJQQBdhQk9BEkJlB55OpmgZmq7AbgMp
	 KLOpEeTbDgfbrKAuUoGyuW6g6ss7P696/kEpt8kWunU9dUMvrs5n/XYpIyToa5MHzB
	 OfpikkvrDSZkg==
Date: Fri, 20 Mar 2026 17:30:03 +0000
From: Conor Dooley <conor@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev
Subject: Re: [PATCH 1/2] regulator: dt-bindings: cros-ec: Add regulator supply
Message-ID: <20260320-shrubbery-nimbly-17e3bacf4ad6@spud>
References: <20260320083135.2455444-1-wenst@chromium.org>
 <20260320083135.2455444-2-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nkY5dg21V/AsYkAX"
Content-Disposition: inline
In-Reply-To: <20260320083135.2455444-2-wenst@chromium.org>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278418-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,chromium.org,collabora.com,lists.infradead.org,vger.kernel.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.955];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 052C82DEC33
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--nkY5dg21V/AsYkAX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 20, 2026 at 04:31:32PM +0800, Chen-Yu Tsai wrote:
> Even a regulator remotely controlled by the EC will have a power supply
> input.
>=20
> Add a property to describe the power supply input.
>=20
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--nkY5dg21V/AsYkAX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCab2EGwAKCRB4tDGHoIJi
0t/+AQCAYxcTf4VwNykpGFfXOFK8EdQ2eUwyX9fEG0agtHSxwQD+MHHOSLzzbZVU
ea5hroG7LS9S0Zp8Gm8G7Kd95VkBEQE=
=Y7MT
-----END PGP SIGNATURE-----

--nkY5dg21V/AsYkAX--


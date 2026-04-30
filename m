Return-Path: <devicetree+bounces-291766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGLJE+zx8mnNvwEAu9opvQ
	(envelope-from <devicetree+bounces-291766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 08:08:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B76B049DDAF
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 08:08:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67CBC300C5BA
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 06:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62F7536657D;
	Thu, 30 Apr 2026 06:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyXPaxak"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEB234405B
	for <devicetree@vger.kernel.org>; Thu, 30 Apr 2026 06:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777529320; cv=none; b=Y0OJqAWtgHUXeN+569isKPeM3avwGHTFWVyxXqEjt7O9PU1Jxllyh6ICXhNfJZJBPPn/35jp7niAvF9B4muAfz8/FbDyp9QP3yD63wo/FQujRcFcfeH5WUMSFnjHsiY2UD6hv8i/GKlAR7JlzW+hMXL5qRQumsg58wLoTQeqVK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777529320; c=relaxed/simple;
	bh=Cjn1ZBaz4ZIn2D113VXtuXFy4b0UXtv2oTvsQCSMMg4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IT4vCNEYdnBemeKzjhvedDzq6DBByeGOFUs70HaFMrzFLca29iVpArmXWvjWO4r/IZPqh52hvewYw9LX3DFk0LF05Hf2pWs82BZt6QW869B/K8xLSSBfGqrafLziA0fWKGtYzoN5HfmV4RnEyD+ZFofB/lv6Gw+dmwNKg+mzDVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyXPaxak; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A934DC2BCB8;
	Thu, 30 Apr 2026 06:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777529319;
	bh=Cjn1ZBaz4ZIn2D113VXtuXFy4b0UXtv2oTvsQCSMMg4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jyXPaxak4PnGNe+8ki6nvZGL9g324v0yLAudvontCHHxXvMkTJ6/Y3mES9v+ZRSnp
	 q+MaH6v+1dPRVD1gy9qEYyrQ6uIh6ocYk3FjmJHigNA9Llxv4O+wYHdUVcAmmXre2Q
	 RevnnXl+SBaN6tU2AJiD+CmpG90hckQ4h8WZNnrgL3v1jgfizKUhU2Co4CfPNaJ/dT
	 7QKnSeJexmDmwfRQGjjzvYOZc3TWpT0P4XmS2jQw4Bzy922Q9jbeoXBBACTH7QbObs
	 xmX5DZmkwVjKiAwRalPW9jXgPDQRyAGyH10KOuM2EguGe1SO5OCi5aWpyydPGvfKXP
	 7AF5wUPiSi5Dg==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 71F8D1AC585E; Thu, 30 Apr 2026 07:08:37 +0100 (BST)
Date: Thu, 30 Apr 2026 15:08:37 +0900
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/6] mfd: dt-bindings: mt6397: Add regulator supplies
Message-ID: <afLx5bJJykXE_gea@sirena.co.uk>
References: <20260429074113.3720271-1-wenst@chromium.org>
 <20260429074113.3720271-2-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eTWikjTYTWdVqHms"
Content-Disposition: inline
In-Reply-To: <20260429074113.3720271-2-wenst@chromium.org>
X-Cookie: 667:
X-Rspamd-Queue-Id: B76B049DDAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,collabora.com,lists.infradead.org,vger.kernel.org,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-291766-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


--eTWikjTYTWdVqHms
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 29, 2026 at 03:41:07PM +0800, Chen-Yu Tsai wrote:
> On the MT6397 family each buck regulator has a separate supply. LDOs are
> split into various groups with independent supplies. There is also a
> supply for the regulator control logic.

Lee, this seems like mostly a regulator series - OK for me to apply this
patch and send you a tag for it?

--eTWikjTYTWdVqHms
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmny8eQACgkQJNaLcl1U
h9BgzAf/byt1RH1nlHQ3FX6eWSFu2xX9esj6k2nbapayxMx4rHey5B9brr0mpB5i
9TDNXYmte5933g6dsYhR/2i1u0VNfwMdZry+XOUgQjM9KJETXo76rYYwZg/0SLe4
WVN9kIX8JEmVyY97zI9pROXuYkQJHZO+Ot1CGm2QYVsP02vgk+T/f8gekGWoZa7B
dztjGlyXUhxUe1s9eqriAY3vlcj+sUKl41rZ5ZRgETHOZ9Oc72q0X1k/YKRlgybC
nfImtDn9cytIEtWYPqZzM3C2D7Fse8syXjCvLXdRMQUzb8Uq0R5j6iBCAJvFp0tI
1ztjAGUoGrdq2y84+G1ZyVk6LM9rOA==
=aOxF
-----END PGP SIGNATURE-----

--eTWikjTYTWdVqHms--


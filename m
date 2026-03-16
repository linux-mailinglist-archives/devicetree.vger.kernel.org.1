Return-Path: <devicetree+bounces-276375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFD5Cf5duGnXcgEAu9opvQ
	(envelope-from <devicetree+bounces-276375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:46:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA6529FE5B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:46:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90BDA3063743
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B989E3ED11E;
	Mon, 16 Mar 2026 19:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7gI2fPF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9689E3E9F7E;
	Mon, 16 Mar 2026 19:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773690291; cv=none; b=flkJuBIY9fyQh0fZZNSX8y5+++pstrb1dOzS4sV1EfCuHWmh2u5heLlbcDJ+n0kD9U/3sT3PxdGJhN40BtyrZ8Mzx2ABJbGcO5dCKc+7US6MPEfltiUUJLlYm20xTIaNfINZsZg0sKBqD//YcaLYAach1NKprbUTUispl3MlMAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773690291; c=relaxed/simple;
	bh=Do6IcanWjgZ9OwhL8LUBwscJwGSw7kaZ1QHoKmjb8ZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F/zGRq5stFafH91xwlF8rtsm1t3xTkRYm2T6Pll9uXadrCmejCOA2SHNfoYOfeuXYj3FDCQYBzWOITMLRyZ3J1DyOyiNrfdrLpWZZuqzFGxNiNZiclyuZ0/K+pe5wB8b4LxxCZJm4bSORAZCMgft3wzwDhaiDfgyKil5duPr2VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7gI2fPF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1B9EC19421;
	Mon, 16 Mar 2026 19:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773690291;
	bh=Do6IcanWjgZ9OwhL8LUBwscJwGSw7kaZ1QHoKmjb8ZQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u7gI2fPFbiW6sipF9+cN7soA2eq6SYcXIjjvromaLQUBc+/nu/92wZMP/0DSyEBFN
	 /ELA0k8qzvxjOmkPfYj66/5tLtmsx0xtIDWoV0wusQAC2wx2v0tW7cb5pC2Zf448FU
	 4GNCUsZ9jkZChKDvoxNz0ElVBj4lDPzVm/DYA9vACjW4+GqPlAoGAsLOOviOp2Q7jv
	 oBgdDomqt0/j94NZcxg/8mLkBlcaqI6Z97FanJHhNFclQWLeXb+XZy1dhNhnkuSdP2
	 8l5ScV0y5CM3RYRp0PArfRVfqLy33okm0vz+Unzo+eeTObcKyG67nTM8YFz6CvzVom
	 HRF64sVDa8B3w==
Date: Mon, 16 Mar 2026 19:44:45 +0000
From: Mark Brown <broonie@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 1/2] dt-bindings: ASoC: rockchip: Add compatible for
 RK3576 SPDIF
Message-ID: <50e2f262-6fc8-429d-af0d-5f9d1a0d6ab0@sirena.org.uk>
References: <20260316-rk3576-spdif-v1-0-acb75088b560@collabora.com>
 <20260316-rk3576-spdif-v1-1-acb75088b560@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GWHp22SbdXNzVybv"
Content-Disposition: inline
In-Reply-To: <20260316-rk3576-spdif-v1-1-acb75088b560@collabora.com>
X-Cookie: Not a flying toy.
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276375-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sntech.de,vger.kernel.org,lists.infradead.org,collabora.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8AA6529FE5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--GWHp22SbdXNzVybv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 16, 2026 at 07:23:00PM +0100, Sebastian Reichel wrote:
> Add a compatible string for SPDIF on RK3576, which is similar to the
> one on RK3568.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--GWHp22SbdXNzVybv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm4Xa0ACgkQJNaLcl1U
h9AoQwf8ClliJCIkVoEL1x2kxqi//Z/TMn0wPThl1F77C1XdHAIj0eqrI7EJpMGN
h2iM30XhW4bhMwjLajXvWgUCOAJZoBN9xYL4XEJJBUV77wVOwrMSqnzl5UDTkkJb
0RjA+RNdiHgMeWEZZszliZoB1Oa4yRKiKOCBtT8QXbdb7YtKEhe5vHlmI1tQ/KXQ
fdyzjASvN2QNP+qpFTkdzjyC0Yol6hWK278VY2e6a1mbikwOAlRrTnpCqz0D3bko
63mhZSLtqbXub51FvDH94L7z/qclhOaIR+KwgcXgqxQdhBFlCvCH6RVk2I40R8Ka
HI5Z9NFYnYBcknjfUZmwzqiDpYYAxw==
=R0Ga
-----END PGP SIGNATURE-----

--GWHp22SbdXNzVybv--


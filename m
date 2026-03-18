Return-Path: <devicetree+bounces-277453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BcFGFYAu2mreAIAu9opvQ
	(envelope-from <devicetree+bounces-277453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:43:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C514A2C21D2
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 20:43:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC5B33151F26
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8B1E3F23CA;
	Wed, 18 Mar 2026 19:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHYygyOB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C8B3F23BE;
	Wed, 18 Mar 2026 19:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773862913; cv=none; b=MgAb/DBuwikkRN7G2zyG36XV6GvsJgADAgpAzX+S8UZfwOOaAAMFWxlkiekInKNFmLgHCuukSP6OyvRVP+5AhUyocAZ0HSu3dM7Wo4xzdSd4KIWtVCyBw3exoeVuH785Urau2jN2C+FgHu3mkny7Jqe5BO+Dm47rEDZWuBzPnRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773862913; c=relaxed/simple;
	bh=pBoK2ixVUl1k70fypqeo6rUepJd2VzePnjeo7L+K5yA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VXzHYk+DxnEL/FdENKELBsU77zXGY4LK2pA2utCvT5zUOmspkq0Lk9aCdcGgr/ikfI/HGvJYuxK1Bu0CMfCwjsrf0/f6cscUuACMtBMP/ejvaRBFhE50Ta1ckCQJ29cbvDkJw6Gbf3+BuTL9p80j60bAzhghqBZxnEUtqW2xfUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHYygyOB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FD66C2BCB1;
	Wed, 18 Mar 2026 19:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773862913;
	bh=pBoK2ixVUl1k70fypqeo6rUepJd2VzePnjeo7L+K5yA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hHYygyOBOWnfBS2AdgblqkQkmgEQDeWzvgsJ9War4lYhGdnshMiHI0bBMwOXjwC86
	 fSvjbOXF5aCptmNPUGBJkCQUBPxTS2n8KvSGS7oKPQvG6VkeG7mlHxA+ylBRu0yZ/z
	 hE8wK7OpdVcg+Q3e7LOsPDVDikmrJeOGfymXITAaKsHulU4+99EKw4LQgdzhc6jVBV
	 VexbcznqqsOQBXVN/d0OHRMRLgRwfD0fpFcFTe4r5un5jh02RpPEYv/+aNMnQQ5gYa
	 Yq5Tr4LnTljl6EWLfRAH4xfBBCwKYrH7awClRm9ZfkUoVktozm1PoBU6KKTZh3yF7u
	 M9okPiKaKLYTg==
Date: Wed, 18 Mar 2026 19:41:48 +0000
From: Mark Brown <broonie@kernel.org>
To: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
Cc: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: sound: Convert Hisilicon hi6210 I2S to
 dt-schema
Message-ID: <612dc9f9-fb59-4293-b513-3b883005b791@sirena.org.uk>
References: <20260318181303.5262-1-chaitanya.msabnis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U6z33MXj6+8chmgr"
Content-Disposition: inline
In-Reply-To: <20260318181303.5262-1-chaitanya.msabnis@gmail.com>
X-Cookie: The coast was clear.
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-277453-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.958];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirena.org.uk:mid,devicetree.org:url]
X-Rspamd-Queue-Id: C514A2C21D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--U6z33MXj6+8chmgr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 18, 2026 at 11:43:03PM +0530, Chaitanya Sabnis wrote:
> Convert the Hisilicon hi6210 I2S controller hardware binding from
> legacy plain text to modern YAML dt-schema format.

> +$id: http://devicetree.org/schemas/sound/hisilicon,hi6210-i2s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HiSilicon hi6210 I2S controller
> +
> +maintainers:
> +  - Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
> +
> +properties:

There's no

   - $ref: dai-common.yaml#

AFAICT so we'll miss all the standard DAI properties won't we?

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing
("ASoC:").

--U6z33MXj6+8chmgr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm6//wACgkQJNaLcl1U
h9CqrAf9Hgy6TUB+dFS5JgZihnvGOVSVUTPOD4qcr8bLcOHmwaRbInQimBwWKMRN
L6kQUZBCc2cFytzNJmbBhd8bdWRkDpDbd9IBttFd92WDcQzIlLojpoVGFrqinIqr
fqnB/c92GY2quhM9GIyXTAYsAq30H2wm2cbHXv7WD0UZ5hUKD9d4T1Ybbc3eCPs5
LVpsDoceYtAFK2ER9CVrIxzIrsNibovG4ceZjnnWZofrN4Xa3obvmB/EfNnvPIJK
qP/sQDUYQPzdhrMs+gzPHFFQBTEJSoeN5de87Mg4gwz3EFRhK2nWnnHVwXviJuzZ
D+oBgrtWi1tGOvotF299xXVGnmng3Q==
=XTU0
-----END PGP SIGNATURE-----

--U6z33MXj6+8chmgr--


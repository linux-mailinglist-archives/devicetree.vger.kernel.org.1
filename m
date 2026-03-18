Return-Path: <devicetree+bounces-277408-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBwdAWTruml0dAIAu9opvQ
	(envelope-from <devicetree+bounces-277408-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:13:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3322C112B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 19:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88429310AE5E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0D0D3446A6;
	Wed, 18 Mar 2026 17:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rshza5X9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BF8334C05;
	Wed, 18 Mar 2026 17:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773855713; cv=none; b=XArsLCDgVDZB+Q9EUKBYmPod27S3vHaHs/Yx28YZpVsJj8L+Bkenr0q6hCsgDJ3ZaNhrfGcCmxtgboKduXp6ekVlXAjcwzfhwkf78HslrhRYQKR+2rGUtPOl7vVsFqbMr6Q1mBiOdfER2y4qQOBVe7Ow4flni6/j1Uf65nRdVko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773855713; c=relaxed/simple;
	bh=yDnin5PIEgWDcaVrR5ixb+9wo6/QmHyvet070Cnr5go=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CknsLuv8IZjRi31xE/JonAQM6AyjZaBLwGUMAmcielYXnOFK1Jy8FcftZlOYXWjVwhCMJKmVkEL1tqWAvGG/uQ9CsNMEGaSgvzc44xsz82JQjS0p7F8pEHDMYcipOunvfb1n5F0TczYLM4PGmv6rmz54z1yWY4BPjPBFChXlzcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rshza5X9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFAEFC19421;
	Wed, 18 Mar 2026 17:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773855712;
	bh=yDnin5PIEgWDcaVrR5ixb+9wo6/QmHyvet070Cnr5go=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rshza5X9hG75xKjS0ZAVmMNw9G83zG8xePF2WrsshrIF0xfBMiEhjYY12yyXO01Zc
	 Rw6uBfTrA13I8iLqZ+a44i70SCWmldHrY32Nkzx9GtffDcjaCwJSNL53Y5UKbTWX6/
	 0Pq8XYbWSx4Zj0EBCR4eqMFLB2wIK9CK3G1zyj/n3qzrDp2OldOTzaHoSpAS8C656t
	 YqcDUNVOrqmn9Gq6BoE3vswe/xPmqQffhfaSpHQGq6tY/LSOUFGzQ08PerpwiOxWp3
	 BuXaj13WsqK+7pwnDW5rce2US0m8yP6Ykw6W3ohZVKDxwsQ2fehgdYUwKyTz/K3f6D
	 EFD251j0ykjxA==
Date: Wed, 18 Mar 2026 17:41:47 +0000
From: Conor Dooley <conor@kernel.org>
To: Joseph Guo <qijian.guo@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, xinyu.chen@nxp.com,
	qijian.guo@oss.nxp.com, justin.jiang@nxp.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add i.MX95 19x19 FRDM PRO
 board
Message-ID: <20260318-blaspheme-wipe-8719c19007b7@spud>
References: <20260318-imx95_frdm_pro-v1-0-8c00e59f0b1b@nxp.com>
 <20260318-imx95_frdm_pro-v1-1-8c00e59f0b1b@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wWcgIj8qfCugOwjO"
Content-Disposition: inline
In-Reply-To: <20260318-imx95_frdm_pro-v1-1-8c00e59f0b1b@nxp.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277408-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,oss.nxp.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 7B3322C112B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--wWcgIj8qfCugOwjO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--wWcgIj8qfCugOwjO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabrj2wAKCRB4tDGHoIJi
0sfzAQDnqZpou/DIpG1dQJ4XdSKe9/QnNu6UIKgK9PLQKeXgeQD+IX/0OMpx3M9y
1w/wCI3p1EALDrK62Gu+VHONpjkVJwI=
=AIgG
-----END PGP SIGNATURE-----

--wWcgIj8qfCugOwjO--


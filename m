Return-Path: <devicetree+bounces-297744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEmTLC4PBmoEegIAu9opvQ
	(envelope-from <devicetree+bounces-297744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:06:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28114545A7F
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:06:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 722DC30136B1
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D26D3955D5;
	Thu, 14 May 2026 18:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0zWQzmy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49D1314B96;
	Thu, 14 May 2026 18:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778781952; cv=none; b=WPZVWMIs/s+pghiOL0lP+662zIkiSF0o483jCmo78Ncuh7eiQnd06aMMhJVRgmegLxP2Nu0DZtq4IECVnz1h0geHCPf2MDOF7hNNd6cEYE5C7bK5Hdh1ZUf9EOKZTMZWdkx+SP2Pih84fqnoUMb60f38V4C6P/qgBSHNNADUnvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778781952; c=relaxed/simple;
	bh=6KWlQ8RIVzRCQ77UWcLUxEvtH+ekjdcFQYoM+Oiqfa8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kjB3m8cZZ/mZ3/IpqQ63v2a43j6d8HlnYvu5+yilbwFPM1+ZywydxYDb2aeJwxfhgXHVC9ZlGIjFsHmPOxf/tPvb1F2juuSx/Y4oZ04/P1KdwC37U4MxO9oh5vwZBEIX50ARUhFI2tq46hKvSkA+HCjBGuSwu+SZI7qsXH65z5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0zWQzmy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C68BC2BCB3;
	Thu, 14 May 2026 18:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778781951;
	bh=6KWlQ8RIVzRCQ77UWcLUxEvtH+ekjdcFQYoM+Oiqfa8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I0zWQzmyww/yiGrsxZC2vAtafAXGKaxJMlqlUTwCconlOcy2zmWCAa17AfoP1Qmy1
	 ESfFr9wN9rihRwdzswHzdLT+4DEbDufvpJE3v8AunpRJnSYlFO1xU007JjVhVlx0Zq
	 xt9ep1xtBsIyqprGM/UFGrc3ZNnQIAo9+/76yvvq6A2af/IYXZvAzmsDjTTJbKNLZr
	 s0GGIaAOO4mV9QYVduz2u0xOX4gpqJ+cfd7rDzhZntnF+74PozkvXjhnDeVC6k0QCp
	 fumIBDnDIcdePLc74WY/K0jUZaU34AIOslVmxEWrLotDiTcuA6YFFB42CCNvFV34cC
	 zkF9nhen+oGmQ==
Date: Thu, 14 May 2026 19:05:46 +0100
From: Conor Dooley <conor@kernel.org>
To: webgeek1234@gmail.com
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Teguh Sobirin <teguh@sobir.in>
Subject: Re: [PATCH v2 2/2] drm/panel: Add panel driver for Chipone ICNA35XX
 based panels
Message-ID: <20260514-sphere-overstep-e564bf7ca609@spud>
References: <20260514-icna35xx-v2-0-45acd1dfa566@gmail.com>
 <20260514-icna35xx-v2-2-45acd1dfa566@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8ucwXBV2pTA92cg3"
Content-Disposition: inline
In-Reply-To: <20260514-icna35xx-v2-2-45acd1dfa566@gmail.com>
X-Rspamd-Queue-Id: 28114545A7F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297744-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,sobir.in];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--8ucwXBV2pTA92cg3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 14, 2026 at 12:24:50PM -0500, Aaron Kling via B4 Relay wrote:

> +static const struct of_device_id icna35xx_of_match[] = {
> +	{ .compatible = "ayaneo,pocketds-panel-top", .data = &odin2portal_desc },
> +	{ .compatible = "ayntec,odin2portal-panel", .data = &odin2portal_desc },
> +	{ .compatible = "ayntec,odin3-panel", .data = &thor_top_desc },
> +	{ .compatible = "ayntec,thor-panel-top", .data = &thor_top_desc },

This looks like you could be using the fallback compatibles instead of
matching on the panel's. Why aren't you?

> +	{ /* sentinel */ }

--8ucwXBV2pTA92cg3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagYO+gAKCRB4tDGHoIJi
0nw+AP41Ku2HWXkra/HXNztY5J9SEr7akWQjJG1cuFKy3o8E2QD/bRXSbw6R7pj0
YNGiZAxKrIe7OiPPDd5I8iHoFIRrVQc=
=7jGk
-----END PGP SIGNATURE-----

--8ucwXBV2pTA92cg3--


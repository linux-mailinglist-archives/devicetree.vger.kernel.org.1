Return-Path: <devicetree+bounces-303120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iK9KGbbRFWogcgcAu9opvQ
	(envelope-from <devicetree+bounces-303120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 19:00:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B5F5DA458
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 19:00:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2FB40303564F
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 16:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B2853FE64B;
	Tue, 26 May 2026 16:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyTF3Kf2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A803FD96F;
	Tue, 26 May 2026 16:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779814391; cv=none; b=I738UYZGPpkPtcgLOYsAHyPZGeF86UICVArepykUqT4WnL+TVg7DDseppSvXBdT49CjoiPA6xxd4wRHWqhnMPrTMwv85mBAjojWatOuC+GBiXXQOIDIrZi0nKnVWti7ks3wC8bQzmy5pPNkDkoEGgy0bU2Ef2EBBF869DqEPdjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779814391; c=relaxed/simple;
	bh=OpVBqdItn10WijuV1NiWbwskiquoRFfvBAzrrmnP84A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f/tL1LZ4Y2oFIwFvX50DBCss7Cruy/iVV0R7uaqZzqsUV4VWxysnvSu8F+P2uzWEmhaHSA6/SDwFAtdUZzCSYigpqqUgXv4yXOgllzIQMOsEdjk05ZtlJx4miJtkor0zTNiVaDiv1A2kHup28wUFgwFBB2BW0A9UA9tOfOx+B1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyTF3Kf2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 571DF1F000E9;
	Tue, 26 May 2026 16:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779814389;
	bh=OpVBqdItn10WijuV1NiWbwskiquoRFfvBAzrrmnP84A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SyTF3Kf2GRv2/2mEejhM8TAd5xPzYuw8ThxF35jLbwvasecCcU/6k1i56GX8e9wX7
	 BSi/aQLRPNl3XIx5ZuIKoSW0BHO/BowRuqywg0Zu6O5G5Xc7Xkoz3sVFvC6bZ4GYx5
	 0kn9ETubXF2HYZ2yF/Mu3jX8unVvAsftb2yrYdZz/GSmKkqjKGVEKSOq6SvDbRVvCS
	 fGQZOqhKvvu+NVhQGgD8HrwzFd7tsfqI2q6Z5Awi7aHFDwIxSAEmams81MdlqhOlUv
	 GmAs+PhNOFKZvnz9fiLu8BRiICyKbFhSKEt6lDSr2IoBzF7Jwt1EaOtRb1NmKTwn6c
	 Zj5QKgC/hqnWQ==
Date: Tue, 26 May 2026 17:53:05 +0100
From: Conor Dooley <conor@kernel.org>
To: LiangCheng Wang <zaq14760@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Wig Cheng <onlywig@gmail.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: mayqueen,pixpaper: add
 pixpaper-426m
Message-ID: <20260526-scrounger-motivate-7079f771f4b4@spud>
References: <20260526-bar-v2-0-c66df9a840c4@gmail.com>
 <20260526-bar-v2-1-c66df9a840c4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="55YTm001h8+bCEZx"
Content-Disposition: inline
In-Reply-To: <20260526-bar-v2-1-c66df9a840c4@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303120-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 81B5F5DA458
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--55YTm001h8+bCEZx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--55YTm001h8+bCEZx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahXP8QAKCRB4tDGHoIJi
0o8lAP9bdUMQ0S3B1H+ktOtjKETQ0aAt6JZAW9EZpVSp/g75fAD/Sr9X/I25LRo5
wx9QtSBc9htIlsjGraSsXz4rQFUwTQo=
=IBND
-----END PGP SIGNATURE-----

--55YTm001h8+bCEZx--


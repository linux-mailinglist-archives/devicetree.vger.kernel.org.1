Return-Path: <devicetree+bounces-296384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPI6BCZoA2qa5gEAu9opvQ
	(envelope-from <devicetree+bounces-296384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:49:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF065262C2
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:49:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 611E630C8892
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785953955CA;
	Tue, 12 May 2026 17:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJA4dmu1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528C73955C1;
	Tue, 12 May 2026 17:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778608023; cv=none; b=kEnjB06KtG9cBma88VGueqIRzB/6kPfx3v8rdsobKkvrsyo4v21dSArGJzSRCSBxv3xSdEVxPUhTBFXs0tf+jp88QnTax0x4WpQnAsY1jHF7KzIm49Fdjia3j/fPOEcogpS5XFxwCgyWzRRovcxm5LayVandm8JT9OdRTsRBE/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778608023; c=relaxed/simple;
	bh=sGtAqQQeqjqCfMs2ZebjBxH4W0XIyIR5fx+veFR/U9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bhjHL5uBmYmi8yuZ8luzX/Tz8WhISJxpbtnnUXW15hvF7sOsGNQ+ZfWqftcbqsLhMjxyO13XVsElyqyK7ZeKYm1NERnM9maDnPK4KC8hS1FpoHIkqLJoztt2GUiyUHJRBj5/4YcM9xcBoGT+hCgbQ05/ikFODaNHVJY3v7Y55Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJA4dmu1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50B76C32781;
	Tue, 12 May 2026 17:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778608023;
	bh=sGtAqQQeqjqCfMs2ZebjBxH4W0XIyIR5fx+veFR/U9M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MJA4dmu1dI8UNXfvJxMOgOwWuhSZMq3IALeh4DrOPXLUaZn8Mq3Aj54lm3e5Xl89R
	 p+yWPJcyWBIJATRayCVaevBI52vl2GIk+n1b3jgSFNhrnVnt5dyPoRTqJZe5zrMaSJ
	 MCe8Oq9roFAgbaktcYqK+W/gUK0DFCmeHdtmaZOOJ9t7dzlUM5u3ZhhPBCn759dVRJ
	 cJdhUEzfAv6LEw+AFZnYzNZ5KNu3LjG7qZOuRvVT1hMXZTuvinKujRMweH+Pc4GdY6
	 4k0irN21Kkf3sN+XpAJuUArOYkwjGctOVSmq8NpZfIwFHz2S5qxSKfE7vwMBoPMgEd
	 J7j0kqcuvhRuw==
Date: Tue, 12 May 2026 18:46:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Ali Rouhi <rouhi.ali@gmail.com>
Cc: jiri@resnulli.us, vadim.fedorenko@linux.dev,
	arkadiusz.kubalewski@intel.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, cjubran@nvidia.com,
	Oleg.Zadorozhnyi@devoxsoftware.com, devicetree@vger.kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ali Rouhi <arouhi@sitime.com>
Subject: Re: [PATCH net-next 1/3] dt-bindings: vendor-prefixes: add SiTime
 Corporation
Message-ID: <20260512-superbowl-throwing-7bf5d5f6fc14@spud>
References: <20260511211143.19792-1-arouhi@sitime.com>
 <20260511211143.19792-2-arouhi@sitime.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="08Hp85XJnEm2J6xW"
Content-Disposition: inline
In-Reply-To: <20260511211143.19792-2-arouhi@sitime.com>
X-Rspamd-Queue-Id: BAF065262C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296384-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Action: no action


--08Hp85XJnEm2J6xW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--08Hp85XJnEm2J6xW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagNnkgAKCRB4tDGHoIJi
0lcsAQDdyyal1Gv7glGAoksHgOrFCNt6yB3qx2lzBAx1hUVSQAD9EuDdpP3+RVt7
T89M4/TLwsuSm1cDZ+JPvgiB6SMr/As=
=m15i
-----END PGP SIGNATURE-----

--08Hp85XJnEm2J6xW--


Return-Path: <devicetree+bounces-263135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIB7CtXjhGlC6QMAu9opvQ
	(envelope-from <devicetree+bounces-263135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:39:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F06F67CA
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:39:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 399B6300C917
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 18:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8043009F2;
	Thu,  5 Feb 2026 18:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ey3spbva"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7878F2FF140;
	Thu,  5 Feb 2026 18:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770316736; cv=none; b=uyOOh4z+45+0WdWB/qBmU7ll/aCTvPCZ9E7dzoiz90/FEOi7w7ZhWgL/XXHR+pQ0V+Mh3hzbcm/THXNr2OEqAzJilcllCkx8297NTlkOny3MMhpGzyTBUNc/aaSOCZGAiKA1gl0iugiaBqsPPL8nam/vdmGpnBNChpM9W0C6uOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770316736; c=relaxed/simple;
	bh=rwSePVSiFMQfXOckziqkZXdGP8WXcdk7FSqMKJHydYY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F92qkiZiOqau7UQwRLinCG6wUg7PdE6VlOJOfFZ/K91xqt4YbPulCKqn7mJHDuFLQlrEZ7htUnbciBKA4nIA+5a1gBxLEmatA1zYvFyGeFdwQr6NpTphsM8SJ3j2To+LErlfvVGHr1xxWkooKU6wYNeW59c5UPs8fMPtLTl48E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ey3spbva; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72E16C4CEF7;
	Thu,  5 Feb 2026 18:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770316736;
	bh=rwSePVSiFMQfXOckziqkZXdGP8WXcdk7FSqMKJHydYY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ey3spbvaANa4XEY86uWwIGnh+JX3WwyvMC4x49ZI2lXLPYTHXovxF9bebQyAGR0vh
	 1QwM3EODX9CD2/5e1DpGVrFxySP1zZiDJut8M4FbQwRBn8wM+5rqlAwSApJBuhshH6
	 TZbvdqVpTeijfxAtc8inS9VpOwI2Gq8Wfklesd8WdhJLaeEKS6HfsAy7Mt+XOdZ1zk
	 SQvnEYjBu2zoP8BURk2oLWpa8fPXjiAP7GP/xsleVmMl7r5pwV1ChP0sfhAPGZvuXD
	 yCrOx9Z4ENWrksIonknrXyDhEsl1z6pvCPM0E9WhS+NnX5CpwJ2APw2ATnekT4O8I7
	 fG3/6JoSQHODQ==
Date: Thu, 5 Feb 2026 18:38:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, jesszhan0024@gmail.com, airlied@gmail.com,
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	mani@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
	dev@kael-k.io, kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, dianders@chromium.org
Subject: Re: [PATCH v1 2/3] dt-bindings: display: panel: Add compatible for
 TAIGUAN XTI05101-01A
Message-ID: <20260205-guy-haziness-8ade569d2839@spud>
References: <20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com>
 <20260205154657.3085820-3-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fVBNt6yuWDngLp1R"
Content-Disposition: inline
In-Reply-To: <20260205154657.3085820-3-yelangyan@huaqin.corp-partner.google.com>
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-263135-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com,lists.freedesktop.org,vger.kernel.org,chromium.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 88F06F67CA
X-Rspamd-Action: no action


--fVBNt6yuWDngLp1R
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--fVBNt6yuWDngLp1R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYTjugAKCRB4tDGHoIJi
0idwAQD36jFyPhFxUZtIWqpL+Q+wx07MWqHHZmkeu04Lu5nJKwD8CkON8V0Ze/L0
Bi+R3atToUxssDnrS3DjYpUVnDvLtgY=
=tl66
-----END PGP SIGNATURE-----

--fVBNt6yuWDngLp1R--


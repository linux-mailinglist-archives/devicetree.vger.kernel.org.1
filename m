Return-Path: <devicetree+bounces-296370-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMXgFPFgA2r65QEAu9opvQ
	(envelope-from <devicetree+bounces-296370-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:18:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDEB525AB8
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:18:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF6DA3021D1F
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5527385D89;
	Tue, 12 May 2026 17:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgYYVw9L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFBD2385D64;
	Tue, 12 May 2026 17:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778606000; cv=none; b=SXImip1U6WFXtQA7AufqS6pgDfRKNY4GZHHtKpvrWWK2AZzL1qOx8al8il/vvaxlRn3wfDUcyA2MgVe7YXl3CM4F27hrnoyqDncRSMO2vQDqX5/VDUy50xrTiE7ksmQkDG9irjlC6/ke0gXzSRaP9A5eCCcHYLcR1zZAP+O0t3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778606000; c=relaxed/simple;
	bh=8dJ437SwzWerjVhp2FPxWDg3Khh2qq97aoIYw1v5qC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EdlKJtGUoS2wWNFz3lvxUfMhLhuleSaBVZH0kaKJVpScRPu7reS4/sXo49Y4LyjGvgI0KGtotCiNgONNZfMadFke5PWQtt4tQYpOFb5wAgApUUk1knOHPaPSPQsOb3Ey1pIF7qY5Zir6JWiVNyIWoo6RR6PxOkhDeDjPpvUyqbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgYYVw9L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51735C2BCB0;
	Tue, 12 May 2026 17:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778606000;
	bh=8dJ437SwzWerjVhp2FPxWDg3Khh2qq97aoIYw1v5qC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PgYYVw9Ln1aTB+ILwFsfNGPuJv+Fr+qMEWe7B84d5OM/+cyn9Xc8HvsmLRXYmUXG8
	 hZ1atECGinAhohzrV9wykd98LaCvDKwdAP33oEA+hJe2El5BbeTANxxJUFMNxuQZuz
	 bRuOPQ/zpjOBtvFn/bfaSzD2RwFuWRNcwMKNq6hJEm6bLpozuytw3m2KbTcyLikvJz
	 8kESW0dRPS8pdorYfn9hdCaBsdVHBgeTAASmzIK4/GqjkP3hMDt9NfgArQZnxTL5sM
	 5bBhgl3/fSA44gTNlA+QAyQHqdu5uWoViuuvtWWP7u5IZXZsIbTPS5rQ0kLRF7wIBX
	 3CyM5X2C7qlgg==
Date: Tue, 12 May 2026 18:13:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	andrzej.hajda@intel.com, neil.armstrong@linaro.org,
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com,
	nicolas.frattaroli@collabora.com, cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com, dmitry.baryshkov@oss.qualcomm.com,
	luca.ceresoli@bootlin.com, dianders@chromium.org,
	m.szyprowski@samsung.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 06/10] dt-bindings: display: rockchip: analogix-dp:
 Add support for RK3576
Message-ID: <20260512-grandma-traverse-5dad619eaeb3@spud>
References: <20260512095644.1946084-1-damon.ding@rock-chips.com>
 <20260512095644.1946084-7-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DR4aWqEz4ku+XB0E"
Content-Disposition: inline
In-Reply-To: <20260512095644.1946084-7-damon.ding@rock-chips.com>
X-Rspamd-Queue-Id: DBDEB525AB8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296370-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,rock-chips.com:email,microchip.com:email]
X-Rspamd-Action: no action


--DR4aWqEz4ku+XB0E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 12, 2026 at 05:56:40PM +0800, Damon Ding wrote:
> RK3576 integrates an eDP TX controller compatible with the existing
> RK3588 hardware design, reuse the same binding configuration directly.
>=20
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--DR4aWqEz4ku+XB0E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagNfqQAKCRB4tDGHoIJi
0h8RAQCJTlZsXRmNLgBlSs928sr0deie257zWwDqaX3AsCGzkgEA0OcwIc3s0QD+
JJvyYNtUuzeP8VU4GtaHEx5Y25VqQgA=
=g0FX
-----END PGP SIGNATURE-----

--DR4aWqEz4ku+XB0E--


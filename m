Return-Path: <devicetree+bounces-296368-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ms2BI5gA2r65QEAu9opvQ
	(envelope-from <devicetree+bounces-296368-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:17:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2D5525A78
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:17:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C1A130104AD
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 177A6385D81;
	Tue, 12 May 2026 17:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx/RlZ20"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D07385D7C;
	Tue, 12 May 2026 17:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778605894; cv=none; b=pAoJyfwN8duv7eInSE50MySQVsBPpdtRt8Le1byWdGSgm+pwr6C/x2/n2+u11C4Z3zEJ4fJiKcMREOL8rqQOoMF1r+EQGTSzHtUMZBVYnnynyDiN5gv40uhhkzfoVvDIes+hBVCJVfcE0iU9DxZGKu8GvybQo7Nbh03oz+2gZQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778605894; c=relaxed/simple;
	bh=PM7Hsk7rCZ7i7ss0DWokkdpyP/aaxTsbqAbCbIJEgO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mlsz391sgiPRpK5nCNIWWp8yE4Hj+QMjxhkaGKzKXToPCBlwZlnD9EBkQH6vezqHQLYc6+vKfWC17k/VAEF4vld2Xm748udpMe2WGiVx4l4cfhkY3euiZA285SUTH5lvhRUIqrkRkQGwXrng45wkTUAKFWlyggIMXIDThc5BmNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx/RlZ20; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54B3FC2BCB0;
	Tue, 12 May 2026 17:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778605893;
	bh=PM7Hsk7rCZ7i7ss0DWokkdpyP/aaxTsbqAbCbIJEgO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dx/RlZ20DHNQSDtLHsoojSgNx5+PmGzfx6uY+qJpWhuz9d4XDZqu1YIQcpSCyyxjs
	 4akB56wGOcega4tbyEQ1CNnW/foikCpjYjj5hNglKjM6d/QRS0aMHioQMpyJtSrz/r
	 8K3W7/VJBIIpVjq6MoN/e+J1UcvE4GetAimajeSBYCHa4+uQBUwunbD+4Q6DDfYLYR
	 i1FeJFd+DnPmJ3KXturPPx5uRUAPrkGX7U1114grF1oHAFZmcktaMXNz/GjZdFPQeb
	 33jEyLQatlsAtya1GEtTpoxhay1gozyGmDqRZukaVKxXhihm4ForjIdaPg307qba8m
	 4fvM5Ftlo9Xng==
Date: Tue, 12 May 2026 18:11:26 +0100
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
Subject: Re: [PATCH v4 02/10] dt-bindings: display: rockchip: analogix-dp:
 Add per-clock descriptions
Message-ID: <20260512-unmoral-jacket-265a50cb4ea8@spud>
References: <20260512095644.1946084-1-damon.ding@rock-chips.com>
 <20260512095644.1946084-3-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xz/8nfi28M2rs0iV"
Content-Disposition: inline
In-Reply-To: <20260512095644.1946084-3-damon.ding@rock-chips.com>
X-Rspamd-Queue-Id: 9C2D5525A78
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296368-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--xz/8nfi28M2rs0iV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--xz/8nfi28M2rs0iV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagNfPgAKCRB4tDGHoIJi
0sU8AP4vxmovvT1OpZFfAxAwr95num10Rou4WT2dmzmv35Q8YwD/ZdnsttL9jh2J
o7mrpvcV9tKvqbzCroKr/tILpzRIHAY=
=kWPn
-----END PGP SIGNATURE-----

--xz/8nfi28M2rs0iV--


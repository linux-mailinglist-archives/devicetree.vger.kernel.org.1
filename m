Return-Path: <devicetree+bounces-260950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCr4ITOQe2nOGAIAu9opvQ
	(envelope-from <devicetree+bounces-260950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:52:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24437B2737
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:52:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BB0183008282
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE2B33F8DA;
	Thu, 29 Jan 2026 16:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRDUNJsQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7952DF14C;
	Thu, 29 Jan 2026 16:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769705467; cv=none; b=ONrZJkKcOV1PZeZXFqg1P2PtefyGXedvZJQU3aIfAz5CIReolMMq2hJvTIjZw5+mLBqI8/akk/NZYyyDFaP3jVGJ6sC8jMQyqs7e1/tK25g7Wp9bvb8Pmyx9JTF6GXEeEE0H0O/ugft1u+5ni5UiuMJVLXPJb9OG+ezeSEvHtls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769705467; c=relaxed/simple;
	bh=fbtBH+MvGc4iLl2bUnG0eRJZOrVwYYmBhQhGVyL1U0Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YK52jl6ozVFWn8uvA4ovA28h2Mybent2bkrcmF37TCtk4NvO6qKz3LGjOwqQzHLo3g3iYuZotXUD8YjIrzXE9IysuRGkAc3xoQtE1Wh711Z20J9qC7bFFiyKQ0Bkod6wyUSWj2tvsdpPaXJBmYiqQhfMmNXtHTVpJ6emxBNTOJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRDUNJsQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5059C4CEF7;
	Thu, 29 Jan 2026 16:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769705467;
	bh=fbtBH+MvGc4iLl2bUnG0eRJZOrVwYYmBhQhGVyL1U0Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WRDUNJsQTs/r84+i6XwiQNxAWY1M9JyyXTIOEM/EIDfewK7fYBJC15dkY0W9pSi+n
	 yVzfIROkDrw8bD35G+gi9zZRg/prGxl4UV4QcRAVcmahG5Na5uOPPTv2HepQ5xiUsE
	 q4BLnRtEGdSNamGgwNLhxlCm4jy4Yvu5wtXy+top8Y9JSxuMwnVsNXQ7jbdb7Iblwi
	 cRgSyT1RoCCepxnc9H3InsleEOBGWpEvd1ymy2aqy6gnmUJaX38/G9PBaA5uTTpbNf
	 CnBCrGoXyl3rfeVsn+NhK9S7inG8T43fLnVIlr1D4+k2lfp7FsonuBsdMQWZeyMgzJ
	 JXAc+4xTTnLNw==
Date: Thu, 29 Jan 2026 16:50:59 +0000
From: Conor Dooley <conor@kernel.org>
To: Drew Fustini <fustini@kernel.org>
Cc: Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Michal Wilczynski <m.wilczynski@samsung.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v6 1/9] dt-bindings: vendor-prefixes: add verisilicon
Message-ID: <20260129-riveter-mute-bd981d46d58f@spud>
References: <20260123092830.4046009-1-zhengxingda@iscas.ac.cn>
 <20260123092830.4046009-2-zhengxingda@iscas.ac.cn>
 <aXpwED5wSZbnIjae@x1>
 <20260128-smokeless-angular-cff7e16ff8dc@spud>
 <aXp2jfkpQVZ94rjU@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JXm6OImfRPbt1yHG"
Content-Disposition: inline
In-Reply-To: <aXp2jfkpQVZ94rjU@x1>
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
	TAGGED_FROM(0.00)[bounces-260950-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FREEMAIL_CC(0.00)[iscas.ac.cn,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com,pengutronix.de,samsung.com,bootlin.com,disroot.org,vger.kernel.org,lists.freedesktop.org,lists.infradead.org,icenowy.me];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 24437B2737
X-Rspamd-Action: no action


--JXm6OImfRPbt1yHG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 28, 2026 at 12:50:21PM -0800, Drew Fustini wrote:

> Are you saying it is okay to leave the dts patches in thead-dt-for-next
> even though that means next will have W=1 dtbs_check warning about
> undocumented compatible?


fwiw, I was chatting to Drew on IRC last night after this mail so didn't
reply here.

--JXm6OImfRPbt1yHG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXuP8wAKCRB4tDGHoIJi
0vQ7AQCq6j5Mv5P+Lb/4p+HlTgaqjfjZK2j9YyzRsly3mjhoVgD9GnMrkrvTWTTi
Ue7dqQ8duWlQu2bLnDaBD4U8Dy7FXwk=
=1tmr
-----END PGP SIGNATURE-----

--JXm6OImfRPbt1yHG--


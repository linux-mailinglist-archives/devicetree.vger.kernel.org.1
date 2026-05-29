Return-Path: <devicetree+bounces-304428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +I8mJHTCGWqGywgAu9opvQ
	(envelope-from <devicetree+bounces-304428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 18:44:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7E3605DB0
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 18:44:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 310B53177AB8
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 16:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5DF63EA94A;
	Fri, 29 May 2026 16:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H41QF7v6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD69C3E92B4;
	Fri, 29 May 2026 16:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780072368; cv=none; b=cWDiGppyeXLdauAceBr/XL0lOdQ1z8xpkWt4qGUxiJPVex3byJiQ9lTHju5Wy6nKAjUr4JviiyBcJUAPGXmFuG6Yjhxj3pml9XLgdJ2+JmJRHwz/lryuZQr1Z3dnebbEu5tNMFxA41K/C8MTgIi3larR1W1iO4l45CTIXE3WIfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780072368; c=relaxed/simple;
	bh=F0eusMqTsmVOySOOobpQHl8ClXyjcHV6wDgvEo4tVP0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dXB43rJVVGecrAVAyA/gKEGabjE7DtjyflHFsLgMNLCJEGzOL/Y39C0Du/OHXhWjRrzxe1i6Wz6T4TZ9GWQ1eQRc6nkqv9dH6ZtSna3IAuW+eHAavsk4V6ablbQ03hDmsYYDOWuKgzy3PlVv5RZ+VOiZdNt1GStBYpcB0tEsv3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H41QF7v6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D74091F00898;
	Fri, 29 May 2026 16:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780072367;
	bh=F0eusMqTsmVOySOOobpQHl8ClXyjcHV6wDgvEo4tVP0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=H41QF7v67iTCAiuXHcqn2XTdr9avXqAl9Mi9uTEu6Dk1ChLhE0j1om9ktPB+LcGhQ
	 zuKlkQzAxqhvcEc+Jrx+ai96WSs+vEV5cvn/2RCUuCXe/0TIDhR1g3dqc4ieb7ZhYB
	 G4d757/ynDcJ867kTe4Gvwxljg7uQLEVEaoSzSoEpGhmz1W/320NANEmMh9o76jxiG
	 gNUCovOZ4YCXzu26SKQgyUViCRHJ+saf1i2haabXh26Kwvtaqfi3wUUHBwkpUB8bvR
	 0wLOtbalODIblzuAcD5HMvIyeHB72oRpc0+yKzhO3imKcbuM0mbvKW2fvf3YxW+qEL
	 lPteVGO1x7IJw==
Date: Fri, 29 May 2026 17:32:41 +0100
From: Conor Dooley <conor@kernel.org>
To: Vitor Soares <ivitro@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Vitor Soares <vitor.soares@toradex.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Subject: Re: [PATCH v1 1/2] dt-bindings: display: panel: Add LG LP156WF1
Message-ID: <20260529-neglector-reptile-871529be473a@spud>
References: <20260529110518.624454-4-ivitro@gmail.com>
 <20260529110518.624454-5-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BARr7Ixa8gc2gzG/"
Content-Disposition: inline
In-Reply-To: <20260529110518.624454-5-ivitro@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304428-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ideasonboard.com,dolcini.it,bp.renesas.com,toradex.com,lists.freedesktop.org,vger.kernel.org,ti.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 1F7E3605DB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--BARr7Ixa8gc2gzG/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--BARr7Ixa8gc2gzG/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahm/qQAKCRB4tDGHoIJi
0tEtAQCdpXdaqBga6bfZCGQnQyl0kTI3NOSMeLXMs7pVoCNX2gD/cgIDJGUaHRsW
UfyqdBUswIjy4EqTy99yPm2J14WiHQA=
=D/7C
-----END PGP SIGNATURE-----

--BARr7Ixa8gc2gzG/--


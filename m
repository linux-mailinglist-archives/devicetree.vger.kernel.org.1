Return-Path: <devicetree+bounces-270321-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHjeE1GFpmnaQwAAu9opvQ
	(envelope-from <devicetree+bounces-270321-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 07:53:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AACEB1E9D00
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 07:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7327830B2227
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 06:51:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7454F347510;
	Tue,  3 Mar 2026 06:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7/Ye/30"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507A038D;
	Tue,  3 Mar 2026 06:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772520717; cv=none; b=SfVKG/hA7Q3GogqM51OWfLjevF4ajtiqYcl3+RATxfjQ9jCVZO6AVFioulPbPDL/8biM29Y13+B4zJVLLtrgPFZNbJ8oGMLDfmYRDgDJNKIpryQgm0UZe7VzFp3we/a5pyGbgZrrWCMeA9/pfIQxtFOGQzq2UgY38F1fKEuQ82k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772520717; c=relaxed/simple;
	bh=C5He0Shh3Nc4LenLLbkryUeH2KhCx1b+RL5r+ILGntE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cYt1qw5/i8nc8BMoh/6kSTJxHRUGbXEJVpWrxi8xLkufI/WG+Vz1JONHP/r58XIEFIHre+qVuWhNP+TUoBb4EabMb//EVIe5hwLFsa3t4zPRszGBS4+3qdil9cfzZwVpoxhKEVsMfvDfRPdp8T9Cq+Wkc/o5D25e7Bvj8JsCHTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7/Ye/30; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64ED1C116C6;
	Tue,  3 Mar 2026 06:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772520717;
	bh=C5He0Shh3Nc4LenLLbkryUeH2KhCx1b+RL5r+ILGntE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s7/Ye/30R2BX84QSrXsrPSwHTwm/VH++iQcZdGJGGxVnIt2PNR3ZGtyyZPxhheXxX
	 WYdAJtiq/OqUaItEyUT2Mmj9OmRiJmD8Vy9HlYJoCU9FZVvAKYFDh7RULL71tBOdn5
	 mZMpW4yfmv3N+cH419L/vsyODjFxVFXgeedLZoqr4Nyt3zvN3XkDo1uxNSCsE225eZ
	 tgoLmp/vY/wlbumZ3ucP7QybJgZhXtNNuIp32XWXRr0ITtNv4JB5iwleVf33hnAnwI
	 saWE1uzRBcVeShX4U7Y/C2ZtzmyewovFJnQPSwiL8Jas/Vfq5mm7ikWxYr/AzNbHHe
	 ixkJzWCjAu2Sg==
Date: Tue, 3 Mar 2026 07:51:54 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, Frank.Li@nxp.com, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, shawnguo@kernel.org, laurent.pinchart+renesas@ideasonboard.com, 
	antonin.godard@bootlin.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	Hugo Villeneuve <hvilleneuve@dimonoff.com>
Subject: Re: [PATCH 05/14] dt-bindings: arm: fsl: add
 variscite,var-som-imx6ull
Message-ID: <20260303-hospitable-cordial-smilodon-af6300@quoll>
References: <20260302190953.669325-1-hugo@hugovil.com>
 <20260302190953.669325-6-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260302190953.669325-6-hugo@hugovil.com>
X-Rspamd-Queue-Id: AACEB1E9D00
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270321-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,nxp.com,pengutronix.de,bootlin.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,dimonoff.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,dimonoff.com:email]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 02:03:41PM -0500, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Add support for the imx6ull CPU variant of the Variscite concerto
> board evaluation kit with a VAR-SOM-6UL.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



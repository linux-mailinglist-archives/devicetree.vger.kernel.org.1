Return-Path: <devicetree+bounces-304904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLd2BGjrHGpWUAkAu9opvQ
	(envelope-from <devicetree+bounces-304904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 04:16:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A485618C84
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 04:16:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B8CC23008E24
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 02:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84285198A17;
	Mon,  1 Jun 2026 02:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgzRNauK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B0E8C1F;
	Mon,  1 Jun 2026 02:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780280164; cv=none; b=ZC/DXeXCCr/srGdysVZzO+y+BoqaRagwFG/omEjNbfk9TYCkcgJnlYHokFTM7W6JbHAzoLJ8o/FIwFQghznnrXS0oLEB/av8iYYMNr4M4C3fXFEG+Rol+enE0AYGol8rOnTzDXfzc4z557Kksu+bZvdgim0As+tU4bjcKxTenTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780280164; c=relaxed/simple;
	bh=A5vFJf9F57RdKxzETRxU//Pof2JOoHIwfKE7a/DnqRo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E6pfGCiAGhj6NBUVAkAmcdfN/oXuYDtSnJqjA3Q/AU5or2U8Sb5dF31dmF96FzkWCKk2Qit0H2nebco/Ex1tbTtSAK1BGD9W1fKd7DSXGFoyuTbiHUg0z9/P0V9F+YoObZcWXpOWv7fZSJw6SSM6jH4PifTcQsNTveG6IhHsQDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgzRNauK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 050941F00893;
	Mon,  1 Jun 2026 02:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780280163;
	bh=yP/TRVjC/7Q9E9T3KmokV8Ki6NrjRZ4h0baPgK9eilk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BgzRNauKAd9kY/bAeTwLzMQaFgF1dSIweh7ys5pMWuiIQerJZF9XxyxTWVlhwq+5X
	 NQKUlO5n3hsLxbATQw0YgNf5/8niuKa6uzklYKLdKb16N62sda1KSST4CbLPb7J6UL
	 gA2UT0cXHWb+ogTQYjy8iCl+P+zflSSsXAvp9Ru1/hZyEjlAUB/pGJLXYSfWEVf1x4
	 Pt5Oj14jlGp931fYhNtvBLeCroyfwewEUxXYb8m2RTuhKhndXbURP6MM3NvZFm0fM1
	 3QfVYRtdzPK/S6eJdIWAqY2b2qbYKA2Ueyo9CFfmDhQ40o+bw9S39Io3+O/jpsjEAu
	 FgCThEsTkxI8w==
Date: Sun, 31 May 2026 21:16:02 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank.Li@oss.nxp.com
Cc: imx@lists.linux.dev, Simona Vetter <simona@ffwll.ch>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Frank Li <Frank.Li@nxp.com>, David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2 1/1] dt-bindings: display: imx: Add television encoder
 (TVE) for imx53
Message-ID: <178028016047.3956673.12104802707727267478.robh@kernel.org>
References: <20260521193734.1496372-1-Frank.Li@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260521193734.1496372-1-Frank.Li@oss.nxp.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,ffwll.ch,pengutronix.de,kernel.org,suse.de,linux.intel.com,oss.qualcomm.com,vger.kernel.org,lists.freedesktop.org,nxp.com,gmail.com,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-304904-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[3.147.135.0:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 7A485618C84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 21 May 2026 15:37:32 -0400, Frank.Li@oss.nxp.com wrote:
> From: Frank Li <Frank.Li@nxp.com>
> 
> Add television encoder (TVE) for legacy i.MX53 (over 15 years) to fix below
> DTB_CHECK warnings:
>   arch/arm/boot/dts/nxp/imx/imx53-ard.dtb: /soc/bus@60000000/tve@63ff0000: failed to match any schema with compatible: ['fsl,imx53-tve']
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Change in v2
> - add Krzysztof Kozlowski's review tag
> - move fsl,tve-mode to required list
> 
> About cleanup 300 lines warnings for i.MX ARM platformi
> ---
>  .../bindings/display/imx/fsl,imx53-tve.yaml   | 104 ++++++++++++++++++
>  1 file changed, 104 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx53-tve.yaml
> 

Applied, thanks!



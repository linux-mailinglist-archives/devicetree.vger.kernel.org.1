Return-Path: <devicetree+bounces-286885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GH+RO7qS3Gl9TAkAu9opvQ
	(envelope-from <devicetree+bounces-286885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 08:52:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2A33E7F79
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 08:52:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9DD4301C95E
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 06:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3BE43859D9;
	Mon, 13 Apr 2026 06:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYNH6BTE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F21C1FC101;
	Mon, 13 Apr 2026 06:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776063121; cv=none; b=LxmSQNEdm3pSiTvGMPsKow/49Ov7t7Oxs6+xEhCM0PVLafMt9FfcTV5yPiglbVU8jd08lKZgpZtByVne7rGBlNppb4ZWsQWdGPErFtIwuIKCznla2/BJc9aHmsBO8ZQ0g7eX0R7YuC3wjwggEDp91p7QXOj+qMQ8DS0NgGWUEx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776063121; c=relaxed/simple;
	bh=zUqAAQfxQkgm1L+orXnWkgiT2yfCQDcQl2Ic8bOCAt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LOUuZSEqm/CxqCFSxkMQdS930AGOZL+aZ0PmAeVGTLAm5UonHTNBcw81k4mSLPD1dHIZs0RVqgJ5fI2G6hjgHQzSgzX+3TevvOG5jvjEsYd9TDnjahFq9kZvwCsgW2yBXrfncNLIETwilLxXFIQw3AFBvZbgq9j55PXzW+ScACY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYNH6BTE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAE24C2BCB1;
	Mon, 13 Apr 2026 06:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776063121;
	bh=zUqAAQfxQkgm1L+orXnWkgiT2yfCQDcQl2Ic8bOCAt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SYNH6BTENC4BdUvaXolabjGi1gFboGAhzv/4yOxAfwDslD7CrfvkgvvWqQmC2+10C
	 TpTM4WTvIOMMpAjcE09IBwNeGgsCZKf9/6D0jL7HQbj3K79SYBJ95tmJWhvp2wbR5L
	 AZ3CN0ENARZ+Oe7uGXq40Q8UzJ+rD0lr/1/FlLG1ch6rx4zYns3cNXNG8RnYtJCiCg
	 FvwBzKLd+vqxR2a/sKGHNmcoebIMHjleFBPx9/ZUx+d6fLwcqgUtnWhGxRpK2h/1vB
	 xh1nWhy3IacGpAXO6Dp4iEogQ2GYElSQj/zazf0q6xaHIvKCmMXo7btkINAKT/3Zaq
	 BQ/jC9upJd/mA==
Date: Mon, 13 Apr 2026 08:51:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, Joseph Guo <qijian.guo@nxp.com>, 
	Marek Vasut <marek.vasut+renesas@mailbox.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: display: waveshare,dsp2dpi: describe
 DSI2LVDS setup
Message-ID: <20260413-thick-lionfish-of-dignity-19d6e9@quoll>
References: <20260412-ws-lcd-v3-0-db22c2631828@oss.qualcomm.com>
 <20260412-ws-lcd-v3-1-db22c2631828@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260412-ws-lcd-v3-1-db22c2631828@oss.qualcomm.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286885-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ravnborg.org,nxp.com,mailbox.org,intel.com,ideasonboard.com,kwiboo.se,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 6A2A33E7F79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Apr 12, 2026 at 08:32:24PM +0300, Dmitry Baryshkov wrote:
> Several the Waveshare DSI LCD panel kits use DSI2LVDS ICN6202 bridge
> together with the LVDS panels. Define new compatible for the on-kit
> bridge setup (it is not itmized and it uses Waveshare prefix since the
> rest of the integration details are not known).
> 
> Note: the ICN6202 / ICN6211 bridges are completely handled by the board
> itself, they should not be programmed by the host (which otherwise might
> override correct params), etc. As such, it doesn't make sense to use
> those in the compat strings. I consider those to be an internal detail
> of the setup.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/display/bridge/waveshare,dsi2dpi.yaml    | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



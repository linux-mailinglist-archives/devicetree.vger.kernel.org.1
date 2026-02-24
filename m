Return-Path: <devicetree+bounces-267755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGJiFN9UnWk2OgQAu9opvQ
	(envelope-from <devicetree+bounces-267755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:35:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A493218318A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:35:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAC1B3038162
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6623644AD;
	Tue, 24 Feb 2026 07:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRhh8Gst"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947E834B663;
	Tue, 24 Feb 2026 07:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771918435; cv=none; b=nX4EiO0tUN2Jh7AjGOkYxTsiyOSwoBXIGYLbveBW5MDzUBr2QcoFM6jN9I8FmzNPGEiU7Y9AgnXt4RX8fJ8x1z3+t5CJTqAvXmkK2d/FQdnlytzhcov9PHxDiBaefx6CzhhX0FnyAHJFCFi8qKidgRmS2Po9nVCa9ZHIHcZrYj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771918435; c=relaxed/simple;
	bh=r6Ww8xss4AtBpLp7z30m+lGwaO30IehmeY9E/VNpz+A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fr7dmdtktQug+WS2+pyJ9xnyPWdbKZCxbPxH1ocwgHz2fVnEZ5iDkFvJYkQzWrUKckbZpDtdilCEJixZYfQLkIAjC3Gqbpv7w4Tv84jr0hyR2rX3sejOJpFenXygQJ/zpVv9diHnVyvXMAmXwWnEBjquw/pHvAQoFos45N/fs4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRhh8Gst; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D2C1C116D0;
	Tue, 24 Feb 2026 07:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771918435;
	bh=r6Ww8xss4AtBpLp7z30m+lGwaO30IehmeY9E/VNpz+A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JRhh8Gst5E1UJbuAvUO0f2dlpB8IAkxLz/DXyEH7FOkPKzTnm6sWxBLN3cliyyrpn
	 5D4HlMJ4irQZQqDvlb18Xl0zbpQA2xLRu+AG+FniZgrXgaBhbcxLkqipgQHbGhf9Do
	 +twYimDUZq3XTHuS7usunQMW2HrrU/ibGRWY3fNZLWlDq0TZ+HB/QW34Q4bEiufS+G
	 kE6Fieuij6VHVDeG6mtROzVBecfE/xaUxJtwjMWtuSc2VL8CRplchx9KA/DEXI/EHS
	 pj4WEXjJO2i+ShxHiaiWqfcrcOXDyzjz3QB6gvBEH9NXGPd92Q0cQtjmRzyrgwUDg/
	 YszAh0lMoPxlw==
Date: Tue, 24 Feb 2026 08:33:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hermes Wu <Hermes.wu@ite.com.tw>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Pet.Weng@ite.com.tw, Kenneth.Hung@ite.com.tw, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] MAINTAINERS: Add entry for ITE IT6162 MIPI DSI to
 HDMI bridge driver
Message-ID: <20260224-loyal-terrier-of-renovation-2b16bd@quoll>
References: <20260223-upstream-6162-v1-0-ebcc66ccb1fe@ite.com.tw>
 <20260223-upstream-6162-v1-3-ebcc66ccb1fe@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260223-upstream-6162-v1-3-ebcc66ccb1fe@ite.com.tw>
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
	TAGGED_FROM(0.00)[bounces-267755-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ite.com.tw:email,lists.freedesktop.org:email,linuxtv.org:url]
X-Rspamd-Queue-Id: A493218318A
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 05:20:47PM +0800, Hermes Wu wrote:
> Add a MAINTAINERS entry for the newly introduced ITE IT6162 MIPI DSI
> to HDMI bridge driver, covering the driver source file and the
> device tree binding document.
> 
> Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
> ---
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6169bd4d7baccc6945363622b42e7286cbec7b88..8a6b5bf3f664247b45c66b37439d3debf6ee18b1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13485,6 +13485,14 @@ W:	https://linuxtv.org
>  Q:	http://patchwork.linuxtv.org/project/linux-media/list/
>  F:	drivers/media/tuners/it913x*
>  
> +ITE IT6162 MIPI DSI TO HDMI BRIDGE DRIVER
> +M:	Hermes Wu <Hermes.wu@ite.com.tw>
> +L:	dri-devel@lists.freedesktop.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
> +F:	drivers/gpu/drm/bridge/ite-it6162.c
> +
> +

No need for multiple lines. Look first how this file is organized.

Best regards,
Krzysztof



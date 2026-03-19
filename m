Return-Path: <devicetree+bounces-277635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABlpFJK7u2mtmwIAu9opvQ
	(envelope-from <devicetree+bounces-277635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:02:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC122C846C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:02:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5C5F3233782
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A52B3B0AEE;
	Thu, 19 Mar 2026 08:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGMTW9t2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFCB3AF64A;
	Thu, 19 Mar 2026 08:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773910570; cv=none; b=Uaqwg2gR9zFXB52UEuKQrga3t8G67MFGAuWJJ/GEYzV2xZxSwqZPAeo1P3yGYZsmsKLa6URuRsUbta1lkV+JjzEJWwpEC68Vv7oM0AZl8hvfX3liwypJb1aEB+VhqohCLz9Rl61bs0KuLjqpRiCReFUPLiNRf9v1dpfhXh1Iw6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773910570; c=relaxed/simple;
	bh=sSNegPLyziBGZWviI09WAwRgGkM4jBEj89HIxzpU+Rk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jvm6ZHbk1zuojKl1Sh5cAxW819OH1DJfLah7VzAHAO/irH5uhgR5fSt3b8/wUrG6dz+WD9S+FY4Sq3GDh1wSDDr4ed+NA1z251kx7lUqEQGtP8IFY7ah+YjOjdrVqoHDgkgVxqSx/OMzqzd3LveFXSMSK/r+6ARgolk6RUomN7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGMTW9t2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52B04C19424;
	Thu, 19 Mar 2026 08:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773910569;
	bh=sSNegPLyziBGZWviI09WAwRgGkM4jBEj89HIxzpU+Rk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZGMTW9t2TE70a+eqxbeEmolrAq2fsQCtkxH+ThUUgmH6p85pd3PeEk1YyQk1FR7rk
	 VRxgbUfwN16DRpXgMtzPrx9ohyROv5+UrsQyNGsjeq8466MwyJfNcLJD6T0VkobEP4
	 DMETyAxI6QSsG+SORZ2umD3gBkXeCixM1S4qeYYl4Xdx97G13aCH7z61OEMBA5yrKQ
	 F0XV9Vn+hSyIOZm0rVzsjOrpMu6IedVkhvdrwB++AHtXC/3V3f3VU7O+F8dV6P2afR
	 xYARJXtayvGoyGCHotJj8peNvL9FlAEV8oDx6yj8boCcKCt7e4TpQxhpipd1fzSHXa
	 oxig50Kq7S55g==
Date: Thu, 19 Mar 2026 09:56:07 +0100
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
Subject: Re: [PATCH v4 1/2] dt-bindings: display: bridge: Add ITE IT6162 MIPI
 DSI to HDMI bridge
Message-ID: <20260319-conscious-grumpy-wren-2b05ee@quoll>
References: <20260319-upstream-6162-v4-0-7268483ef03d@ite.com.tw>
 <20260319-upstream-6162-v4-1-7268483ef03d@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260319-upstream-6162-v4-1-7268483ef03d@ite.com.tw>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277635-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RSPAMD_URIBL_FAIL(0.00)[ite.com.tw:query timed out];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6DC122C846C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 02:37:11PM +0800, Hermes Wu wrote:
> Add device tree binding documentation for the ITE IT6162 MIPI DSI to
> HDMI 2.0 bridge chip. The IT6162 is an I2C-controlled bridge that
> supports the following configurations:
> 
>   - Single MIPI DSI input: up to 4K @ 30Hz
>   - Dual MIPI DSI input (combined): up to 4K @ 60Hz
> 
> The chip also supports up to 8-channel audio output via 4 I2S data
> channels.
> 
> Signed-off-by: Hermes Wu <Hermes.wu@ite.com.tw>
> ---
> Changes in v4:
>   - Drop ite,support-hdcp
>   - Drop endpoint properties already in video-interfaces.yaml
>   - Fix data-lanes in example with <0 1 2 3>
>   - Add blanking line in example before endpoint subnode starts
>   - Add reset-gpio and power controls to required

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



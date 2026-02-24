Return-Path: <devicetree+bounces-267754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +A8RMktUnWk2OgQAu9opvQ
	(envelope-from <devicetree+bounces-267754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:33:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 277601830FA
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:33:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1D4A13024286
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E489E33A9DC;
	Tue, 24 Feb 2026 07:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOBj5hr6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0703CA52;
	Tue, 24 Feb 2026 07:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771918406; cv=none; b=BOvxSyWJH/9VZE1RykwdIkQC2klT3eypa+q2Ig9+tMb3q30jds8iGIZlxU+wLRXuwmY3m5y+gO+dIhLgpjY6ttB7DKWcIiMIwoPh5r+IC1eUJJknTBKUZciwm8lsknHD3rinxS46J6KZIdXXnH/kykq3nT6G2zFx8Z420IDH29Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771918406; c=relaxed/simple;
	bh=iSrxIteL09UwbTf0pHcuwTnurNV8ahNwtNfe1PxWgRw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ln9ehsUM+FmC0tbmR0E56brpmd7dpbeO5oPHE9FgJZIFOZjJoBpPMRZHB1GplMGBcJ3EL+CO8z1ya/+WH8ZiFeOyiLoaFoj3eHnGZQsNn3oTtUbUHsM2ZytZfK5RnRi03+xL2dBb83PG3IQX1eYhHjfxY/YUB+HNVQersryt55A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOBj5hr6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C02DFC116D0;
	Tue, 24 Feb 2026 07:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771918406;
	bh=iSrxIteL09UwbTf0pHcuwTnurNV8ahNwtNfe1PxWgRw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dOBj5hr66QT20j6MHiHga5gYS+yI48mcDrW/1Jl2T+HDmrJugSG+G/0RjSWZDLBqf
	 96+4YFsYuZkFtqQep2t7h/LBG59Av+HNH1VvDHq69DPCtWT9u6w44etw4G0Rrvtc4A
	 ov5NZZ/HQWe4JJmXf3PbiFPVAHHh8k40s9iaA7nVixyPTq29GdTyWR9jjohL4NJejJ
	 WaxFJbliI+bKEx+kFSpxkzDxL1OW/uXlsCu7ob4Fm29eXXJZ2fGbb9Roerj4mxk4Fj
	 LPymdkwGp/dLfp1+WtI0OToh53oT18tFYbuNZG/tIDy8Y38mdks5uk5SP3UccRTJz1
	 ZpHN/M1QYAgdw==
Date: Tue, 24 Feb 2026 08:33:23 +0100
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
Subject: Re: [PATCH 2/3] dt-bindings: display: bridge: Add ITE IT6162 MIPI
 DSI to HDMI bridge
Message-ID: <20260224-sassy-perch-of-enrichment-aa7c41@quoll>
References: <20260223-upstream-6162-v1-0-ebcc66ccb1fe@ite.com.tw>
 <20260223-upstream-6162-v1-2-ebcc66ccb1fe@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260223-upstream-6162-v1-2-ebcc66ccb1fe@ite.com.tw>
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-267754-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,bootlin.com:url,devicetree.org:url,ite.com.tw:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,60hz:email]
X-Rspamd-Queue-Id: 277601830FA
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 05:20:46PM +0800, Hermes Wu wrote:
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
>  .../bindings/display/bridge/ite,it6162.yaml        | 156 +++++++++++++++++++++
>  1 file changed, 156 insertions(+)
> 

Please organize the patch documenting the compatible (DT bindings)
before the patch using that compatible.
See also: https://elixir.bootlin.com/linux/v6.14-rc6/source/Documentation/devicetree/bindings/submitting-patches.rst#L46

> diff --git a/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..31f809a83c305447a152e14b20cb39ef1f816911
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ite,it6162.yaml
> @@ -0,0 +1,156 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/ite,it6162.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ITE IT6162 MIPI DSI to HDMI2.0 Bridge
> +
> +maintainers:
> +  - Hermes Wu <Hermes.Wu@ite.com.tw>
> +
> +description: |
> +  The ITE IT6162 is a high-performance, low-power HDMI bridge that converts
> +  2 MIPI DSI signal to 1 HDMI2.0. It supports 2 MIPI D-PHY 2.0 up to 10Gbps
> +  each DSI port (20Gbps total), compatible with DSI-2 v2.0.
> +
> +  The HDMI transmitter side supports up to 4Kx2K@60Hz resolutions, and is
> +  compliant with HDMI2.0.
> +
> +  For audio, the IT61620 supports up to 8-channel LPCM via I2S (multi-line or

typo - IT6162

With these two changes:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



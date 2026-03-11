Return-Path: <devicetree+bounces-274078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKtmJ3BosWnsugIAu9opvQ
	(envelope-from <devicetree+bounces-274078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:04:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E7E26417B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:04:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E7ADF3087D13
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:01:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C8E28641E;
	Wed, 11 Mar 2026 13:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ST66fgt7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903642773D3;
	Wed, 11 Mar 2026 13:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234099; cv=none; b=YRdqnOtk6MSuYlkmYT0JNUJsI3LP8ZIxNqMYVttEmoQQpgOD2I0R3LvYLh2jbuYMT2rMJBIomeVBn8ARlSKJ8bfGW6R1VpjEvRxUP3eY5BCoeUDx3f2XdICR0hr9OLTzVjdgGzAURHgZKWeFM+fso+GLckoU5V60aXPfP6VFGrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234099; c=relaxed/simple;
	bh=a0mm90LqBByU8JcPQHFkpu2cDYMi5t5OFUYWl2t0HkQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ssoK9OhzPD+DEFskMbBSiD6vR7DUqW7rCft0/sdMquOawv693uifdVuurLs7x1EC4zSndyd0WOdziU97t13ulvmRrxOHkFs0MQQz1olFkrkoqVcOn3ArI0wykE2XeXwiJCElKrPGMJQWgk2QuKR7BfH7fKju9QDiHrWmPmt2O8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ST66fgt7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7F67C19425;
	Wed, 11 Mar 2026 13:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773234099;
	bh=a0mm90LqBByU8JcPQHFkpu2cDYMi5t5OFUYWl2t0HkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ST66fgt7ntOC5LHkAIPMu8+1KnAUD76BPOoky9SpC47p9wwx6mGS0rTaJjr+ilYAd
	 cwEsxjJ5iFGzt+XX41jPOD7+O9zSKZN0cBPIIlqBqEfxKo+c8DYTD/f0WUcWaY5dVG
	 J+BQSvu+R2K0Cv/400wgamTZmSSgvQUCvxN3XfhV1tgeIjakMCuxhV32Q2JKaoyPOt
	 0HJv0Ym1e7nHk4mkOZgda9TT70dZ5UxAIAxTl84+O55Bje7WXBNgwqfZXTF9uPLB5E
	 wLCxp+uyhOzx+EJmtQ/CIi0OraUXUnLzc0Q5kD8HASwz2ffpZRJkosays2dfvnLWkH
	 M666zV4XpaoWA==
Date: Wed, 11 Mar 2026 14:01:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	nicolas.frattaroli@collabora.com, alchark@gmail.com, cristian.ciocaltea@collabora.com, 
	sebastian.reichel@collabora.com, kever.yang@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, 
	luca.ceresoli@bootlin.com, dianders@chromium.org, m.szyprowski@samsung.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/4] dt-bindings: display: rockchip: analogix-dp: Add
 support for RK3576
Message-ID: <20260311-toucanet-of-imaginary-authority-c9f0db@quoll>
References: <20260310105307.309765-1-damon.ding@rock-chips.com>
 <20260310105307.309765-2-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260310105307.309765-2-damon.ding@rock-chips.com>
X-Rspamd-Queue-Id: 06E7E26417B
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
	TAGGED_FROM(0.00)[bounces-274078-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,rock-chips.com:email]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 06:53:04PM +0800, Damon Ding wrote:
> The eDP TX controller on RK3576 is the same as that on RK3588.
> 
> The newly added clock 'hclk' is the video datapath clock.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml     | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> index d99b23b88cc5..4496a43881f9 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> @@ -15,6 +15,7 @@ properties:
>      enum:
>        - rockchip,rk3288-dp
>        - rockchip,rk3399-edp
> +      - rockchip,rk3576-edp
>        - rockchip,rk3588-edp
>  
>    clocks:
> @@ -26,7 +27,9 @@ properties:
>      items:
>        - const: dp
>        - const: pclk
> -      - const: grf
> +      - enum:
> +          - grf
> +          - hclk

And why it is not the same clock? Nothing in commit msg explains why
this clock input (not output!) is different.

Best regards,
Krzysztof



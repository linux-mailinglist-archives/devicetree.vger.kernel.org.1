Return-Path: <devicetree+bounces-278150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPrQOToRvWlf6QIAu9opvQ
	(envelope-from <devicetree+bounces-278150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:19:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBBA2D7E6E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:19:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 051B9302C5D9
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FF0D340A6A;
	Fri, 20 Mar 2026 09:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxsQxNPg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B74E31B839;
	Fri, 20 Mar 2026 09:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773998348; cv=none; b=trJYjxneZLp0saWfME+uqsuvKv8QtsiCyxeALdCtPGypIqVwrG8DgY8WzHkwSvgwQUub7XjFPDIepWigmVHboXoNToVqIDTS4LQqXxzZyb2Ssy7dJf2lpuW4SQbbPRe4hmxiIuhJm0kGkdoDBW/01rweekJefc6fYy82X71DTBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773998348; c=relaxed/simple;
	bh=LaFfclQJNpW8j4z2NNQXpLUkD7/mL0945GUUmdgcNYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D7Eq8CVPkk/KL828EvLpwUBE0pZpmjQJG+DtuiSMydT+8Ag2O6aQw9YmsvKpMgbIuP3SlUm963H8qUtCv1ZK6LfjazQ4Fj3ZfYBI1Uj5dXCtxkYT3hFJUrs1o+f60yvnEJF3leS+8XC4q3V72sAZ90lSA6ljdjMa6x+SU7tHIcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxsQxNPg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C66ADC2BC9E;
	Fri, 20 Mar 2026 09:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773998348;
	bh=LaFfclQJNpW8j4z2NNQXpLUkD7/mL0945GUUmdgcNYI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XxsQxNPgDUJHJqSei+eyT3/4wLXRMZEqzks3G36VQLFcfu9JWqwnY0mOg0MTOi1Ro
	 0xNBxOt4FxheBLRQZkCyILhWO4riIZOPSIilhvRCJqaqqdY6/5HF3hQPztctn6ucIX
	 1OKBg5jQrZDwH3wIHVCRAqYFJbjGKxwstlRNVQJe9i0P6mwq/PHNiGhZVoaXjuAI5d
	 muiNrzaa0qk78JgPptsfReDFcKvx/Swv28NN4rw22m1qkBYrrXH64UWHgS8AKL1EqF
	 sZayDTa+oC8LyGAjhTAcjJ2yxaJIEWbh77k+fYRJoB/Sn4EYeME3yGNRmV8G2OIOBE
	 oEPtO3LUNwjSg==
Date: Fri, 20 Mar 2026 10:19:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	nicolas.frattaroli@collabora.com, alchark@gmail.com, cristian.ciocaltea@collabora.com, 
	sebastian.reichel@collabora.com, kever.yang@rock-chips.com, heiko.stuebner@cherry.de, 
	tomeu@tomeuvizoso.net, amadeus@jmu.edu.cn, michael.riesch@collabora.com, 
	didi.debian@cknow.org, dmitry.baryshkov@oss.qualcomm.com, luca.ceresoli@bootlin.com, 
	dianders@chromium.org, m.szyprowski@samsung.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/9] dt-bindings: display: rockchip: analogix-dp:
 Expand clock-names "hclk" for the third clock
Message-ID: <20260320-amusing-magnetic-harrier-20cc40@quoll>
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
 <20260319104031.1986946-2-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260319104031.1986946-2-damon.ding@rock-chips.com>
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
	TAGGED_FROM(0.00)[bounces-278150-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org,ideasonboard.com,kwiboo.se,collabora.com,cherry.de,tomeuvizoso.net,jmu.edu.cn,cknow.org,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.892];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:email]
X-Rspamd-Queue-Id: 6DBBA2D7E6E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 06:40:23PM +0800, Damon Ding wrote:
> The RK3588 eDP controller needs the video datapath clock "hclk" to work
> well. Previously, it works without explicitly adding this clock because
> the 'rockchip,vo-grf = <&vo1_grf>' property implicitly enables HCLK_VO1.
> 
> Fixes: f855146263b1 ("dt-bindings: display: rockchip: analogix-dp: Add support for RK3588")
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml       | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> index d99b23b88cc5..d2bc8636b626 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> @@ -26,7 +26,9 @@ properties:
>      items:
>        - const: dp
>        - const: pclk
> -      - const: grf
> +      - enum:
> +          - grf
> +          - hclk

You just told me it is the same clock, no? I asked that and you
confirmed? Or you replied with an answer not relevant to the question?

If this device takes reference to grf, why does it also take grf clock?
Devices MUST NOT take clocks on behalf of other devices, so please
answer with a list of all clock inputs according to datasheet/manual.

Best regards,
Krzysztof



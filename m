Return-Path: <devicetree+bounces-263022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNfvCEechGmI3wMAu9opvQ
	(envelope-from <devicetree+bounces-263022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:33:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7684FF34ED
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 649263019BA4
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73A681FCFEF;
	Thu,  5 Feb 2026 13:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6eYmqV7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512121F461D;
	Thu,  5 Feb 2026 13:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770298301; cv=none; b=W61bvuvkL5vx3i+iYq4Y11avuFnFOqyzyi+ZgCDFXUb7gsdDZpxP+aPyAaS6/BEjzzHJyuIuoT4SxITHTCXqYDBnjTIE+R8/3RJhHi79Wum5NrHfHaqs4tdiDyuv5FQ/w9N5eIfRHbSDUt5pFp6WVCGiHAzod+N0qn+nXqC/kKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770298301; c=relaxed/simple;
	bh=AUQFfU1fkfkYPuW5V8T6xoRa8uZPnGIai8orsPwhtOk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nu7+3q5tRDBIjxwqL85FM/JHtR0uObxopiGgqCMyDXijV3ny/1L0WJ7WYp0k5kqJJmSpbBw3sU0AQAgP09z3ZVLUyizeGMGNUHN5Kmy+Iayo2PUiCAEO+EYcB9rQVOCLH8Upl3s5YRb4qn0cBdU3UYpmCOg5LcGEaTc/11gprXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6eYmqV7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DD79C4CEF7;
	Thu,  5 Feb 2026 13:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770298300;
	bh=AUQFfU1fkfkYPuW5V8T6xoRa8uZPnGIai8orsPwhtOk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M6eYmqV7WCmThEk7wZK3ZffIxf7rs/+OjSNoi+Fqwrb8lUVp8teCejpP7msvpLvAC
	 4im2YokdR2XeIVsdFhKS1AMFgnaIUEqaqEgAAlGFXaVd+WDqO2Y/XlvNY/GjsWgBnE
	 cJlxzesSJytLbOvjG0uVxaiRaFTcllpsD70oqQ3RrXAOjzXFeHRLwCVwe3LWlZwL+U
	 AMdJNOZqkoYM4tVUhoblnUENgUYy1Ql1+RUyRKPKItRDopgGlDABE21jldTeh9W6//
	 hr30x04VDIuYazXVMRJWmckA+1f3sKHc2sn5/BdAXrVKHgVKcUDxSM1cHzF1VxyhBQ
	 UONJYSp0vSOhw==
Date: Thu, 5 Feb 2026 14:31:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: dmitry.baryshkov@oss.qualcomm.com, heiko@sntech.de, alchark@gmail.com, 
	andrzej.hajda@intel.com, conor+dt@kernel.org, cristian.ciocaltea@collabora.com, 
	airlied@gmail.com, jernej.skrabec@gmail.com, jonas@kwiboo.se, 
	kever.yang@rock-chips.com, krzk+dt@kernel.org, Laurent.pinchart@ideasonboard.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, neil.armstrong@linaro.org, 
	nicolas.frattaroli@collabora.com, robh@kernel.org, rfoss@kernel.org, hjc@rock-chips.com, 
	sebastian.reichel@collabora.com, simona@ffwll.ch, tzimmermann@suse.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: display: rockchip: Add rk3576
 DisplayPort
Message-ID: <20260205-shrewd-honeybee-of-diversity-f3e9c6@quoll>
References: <20260201081338.407999-1-andyshrk@163.com>
 <20260201081338.407999-2-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260201081338.407999-2-andyshrk@163.com>
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-263022-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[163.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,sntech.de,gmail.com,intel.com,kernel.org,collabora.com,kwiboo.se,rock-chips.com,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7684FF34ED
X-Rspamd-Action: no action

On Sun, Feb 01, 2026 at 04:13:27PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The DisplayPort found on RK3576 is very similar to that of RK3588,
> but work in dual pixel mode. And itself does not depend on the I2S
> clock or the SPDIF clock when transmit audio.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> ---
> 
> Changes in v2:
> - Remove unnecessary maxItems
> 
>  .../display/rockchip/rockchip,dw-dp.yaml      | 27 ++++++++++++++++---
>  1 file changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> index 6345f0132d43..8a5299755abf 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> @@ -27,13 +27,11 @@ description: |
>    * Pixel clock up to 594MHz
>    * I2S, SPDIF audio interface
>  
> -allOf:
> -  - $ref: /schemas/sound/dai-common.yaml#
> -
>  properties:
>    compatible:
>      enum:
>        - rockchip,rk3588-dp
> +      - rockchip,rk3576-dp

Wrongly orderd. 76 < 88.

Best regards,
Krzysztof



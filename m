Return-Path: <devicetree+bounces-297715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iH+yCTb2BWpVdwIAu9opvQ
	(envelope-from <devicetree+bounces-297715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:20:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3525B5448FB
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:20:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D1893053E97
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 16:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DABF33439F;
	Thu, 14 May 2026 16:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3/AXt9h"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6F03F4132;
	Thu, 14 May 2026 16:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778775462; cv=none; b=pEqrhhhMHrxsPTgrG3UOyBBKK06FySSBS52a+G3X/imgrTcFI+JyvwLKke85bf2ftme1Sc1HRufjT6+Jm1SQa50eAsK+4N67FZBgi1C3Ihc8Qf3SzK2t5e9oOvS2vIJWWya/Vi1em/1DN7oU9s83qyUpz4jPdXIf1vB8MQB8yEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778775462; c=relaxed/simple;
	bh=NZmAc9HrKWORqZFVU2eBSr94To7Vjsv0TRyPrPbCY04=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ingL4uLOrQ7H6ooTcQLoQx+pMktM7WEmODQe1BLBF9v0tFaKg9JjUkMU4hBFSrKmYZjMyi0gwDi9UhATs5us1BRZFwMPBTYCZP002xEYdlLsVyN9GGaWxb1kQcH+bp2flJVrlXGALcRCSv9foOavY7iY1zdh/sEtbeTC8T6otO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3/AXt9h; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A914EC2BCB3;
	Thu, 14 May 2026 16:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775461;
	bh=NZmAc9HrKWORqZFVU2eBSr94To7Vjsv0TRyPrPbCY04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I3/AXt9hgkbcXNcCtG108srb1FZaFAJP6sB4eDR9jU82nD5FibRFXheIFU32QZ2Yl
	 XZgazWy5/KebCqspESsmlD7FBvOB6s60nGUeZjs5mhmOFpv03EXB2l9yDj5YDz9RCA
	 0K7zNwOaa7isDlDmveywQFSdAlcLYVgiq2CLGaQ4DKAtFQWwk8XBjWRXDjlcLb1DUl
	 iRu1GJFGA3ay+/bgWSEtjPM2OWIdmDoJtorc0MJ3HHSE7WlCuQUAXs9SIyPvu/jHS5
	 r2uplDqRbuiWkxFhffKXYet3msNBVZRRwV26I0xc071W+Z7d21AIUps3tgk6AQjN8H
	 VrPTqnSOU4kPQ==
Date: Thu, 14 May 2026 21:47:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	jonas@kwiboo.se
Subject: Re: [PATCH v2 4/5] phy: rockchip: inno-usb2: Add clkout_ctl_phy
 support
Message-ID: <agX1obJdYdNhnvnN@vaman>
References: <20260505170410.3265305-1-heiko@sntech.de>
 <20260505170410.3265305-5-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260505170410.3265305-5-heiko@sntech.de>
X-Rspamd-Queue-Id: 3525B5448FB
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
	TAGGED_FROM(0.00)[bounces-297715-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:email,kwiboo.se:email]
X-Rspamd-Action: no action

On 05-05-26, 19:04, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> The 480m clk is controlled using regs in the PHY address space and not
> in the USB GRF address space on e.g. RK3528 and RK3506.
> 
> Add a clkout_ctl_phy usb2phy_reg to handle enable/disable of the 480m
> clk on these SoCs.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 47 +++++++++++++++----
>  1 file changed, 38 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 7cec45192393..d8879fcd4291 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -179,6 +179,7 @@ struct rockchip_usb2phy_cfg {
>  	unsigned int	num_ports;
>  	int (*phy_tuning)(struct rockchip_usb2phy *rphy);
>  	struct usb2phy_reg	clkout_ctl;
> +	struct usb2phy_reg	clkout_ctl_phy;

This gives a kernel-doc warning. I have applied please send fix for this

-- 
~Vinod


Return-Path: <devicetree+bounces-315495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XHtMDDTOPGoWsggAu9opvQ
	(envelope-from <devicetree+bounces-315495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 08:44:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4CD6C31B3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 08:44:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="L5u/UClw";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315495-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315495-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B60D303F7C7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 06:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D6093C10B4;
	Thu, 25 Jun 2026 06:43:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FC03C1096;
	Thu, 25 Jun 2026 06:43:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782369815; cv=none; b=rcyhepHXJbJ1KaJZJ8U8vufZZweEKNEoIwgK09eE/U4L/DYTr/ISLdqWFFEp9GbPCTjj8WpnLvyu1+DO+vD70InQwr+rFCQ+2khe8byPonH/S9bcjn8/qtLedFiH9AvWl7fYu6OsZ4z6PSlEPcmvIvgeBmNa3Cc9w/BOEX2z7KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782369815; c=relaxed/simple;
	bh=JqNU4nkgtpDhZlieInLK9IDGEoJasbRDTRNi7RVkvWU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hrkmyoG53RVJqU+JkkU9YBWRs4H36sNc+GScOHa+s854fdJmSf916YUXqvBaEgc0qDHlSLQRUxQztLW/R0P+WM171lTwC/RQ2QhPgG7IO+JicG/iTw/MR09sFueUzn44XAWqLGVa5tfDDQ9e/677sNNIrN7JTLiU/c634tkn2Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5u/UClw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AC6A1F000E9;
	Thu, 25 Jun 2026 06:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782369813;
	bh=L75aBSsCGpBryRml4FN363qW1z8PZx29ZjzFOlFMwSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=L5u/UClwtiDhr17ilKFgEfTZ2MMjqkM08fRr4vse7c7eWk9w8wRKVi+QjH0rJBJoG
	 DTPv6CdQYFmK49eIhsSmj2YI+FWrrClAGY5ssliz0L4fqU1v/EY8WZkbboi0SbSPM1
	 a1gMJmnxb6UkuAY2SmEKTTg0f5Xsm5i9kRBOepU3oBrjWQu7+iNpcfuLDVm2LJ7r5k
	 JVOqGWfGckjV+boyeLoUNI9KRoMppggrQ6ZSfwfhZuIfPTt/ZD4jiqaw6+oZSQYaGF
	 8UPf28Z+snwLYheykEggC8ZYf71r7VC9CGF3YmkbhXlHN+LVpt2LHLz7cWKJo40BAf
	 hzV1dwhpQfPOg==
Date: Thu, 25 Jun 2026 08:43:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gerald Loacker <gerald.loacker@wolfvision.net>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rockchip,clk-lane-phase property
Message-ID: <20260625-lean-debonair-anteater-c22f83@quoll>
References: <20260619-feature-mipi-csi-dphy-4k60-v2-0-323356c2cc2e@wolfvision.net>
 <20260619-feature-mipi-csi-dphy-4k60-v2-2-323356c2cc2e@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260619-feature-mipi-csi-dphy-4k60-v2-2-323356c2cc2e@wolfvision.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315495-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:gerald.loacker@wolfvision.net,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC4CD6C31B3

On Fri, Jun 19, 2026 at 11:13:40AM +0200, Gerald Loacker wrote:
> Add support for the optional rockchip,clk-lane-phase device tree property
> to allow board-specific tuning of the clock lane sampling phase for
> improved signal integrity across supported data rates.
> 
> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> ---
>  .../devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml          | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> index 03950b3cad08c..010950a8a8856 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> @@ -56,6 +56,15 @@ properties:
>      description:
>        Some additional phy settings are access through GRF regs.
>  
> +  rockchip,clk-lane-phase:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 7

Missing default here. If default is unknown, explain that in commit msg.

Best regards,
Krzysztof



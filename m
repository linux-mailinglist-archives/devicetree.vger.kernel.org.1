Return-Path: <devicetree+bounces-314442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qQUjEMs3OWoEowcAu9opvQ
	(envelope-from <devicetree+bounces-314442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 15:25:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C543C6AFD51
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 15:25:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IZP4GKUd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314442-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314442-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E863300F5E2
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 13:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE6A33A380C;
	Mon, 22 Jun 2026 13:25:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF47334E761;
	Mon, 22 Jun 2026 13:25:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782134726; cv=none; b=BEJTc+xNx8hwA7o2ythPDvrp1DpNpPuOWYnaGAQbrlbWcEF3LUmLoxQ55DqWWWe+VrtxQLoPGZq2MnTdOkTEDJU6uF4KvCufyEOYo4UbdsJX0VtvtaiehE6sVmlWccphVzjyydR1+yNCuQDw9gqM1Qx0lUtvsS6dl51WSg2r/4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782134726; c=relaxed/simple;
	bh=rI/W0xY8eXvN7jITzVi2dKXVO639DRgHM0p7RL4HKkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eXKEr7kQSxRGQ4Np76sz5lF5Hs680cemXahSuZu9wj0ktO5eRaWp0A+dLG2jZW+xALbA+jxiF2RZuBVU481nEn9uSz1bekF4Oil+Ng/E9d/dkpcvA3zl9FzKP+8wQUypFz/xOt50RWZeQEAfRzIQ6RMTYjlp5WL4bAwBw1VMsqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZP4GKUd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB8BB1F000E9;
	Mon, 22 Jun 2026 13:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782134725;
	bh=t1/4BohhGo2EUrrvlpDhy0cqXEeTRxTzPlRg0AoQPr4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IZP4GKUdpXZ+B97QpIjc0FrjAYvpNtY1aUIlYxeckr2egsgSmZSHCnOfOXlBnjTLR
	 fpH9nKQblmVzdoytoSbVCqKxLV+cL8Q/wzIViiWMjo58VBhDD2fXztw8EJ9i/pqdbu
	 BHpBW3C9wxTGlqLlaIUHbOlQdNnrfF+ea7eb1i0ThrjY18vkwAb2PnHm/PpPgE3ftM
	 GR2/5RpG9LVytCklSbxeGe/tOdbnsaU6Je/kw6xnnoB4A29fGuf33CIqKemCcXz2Ed
	 /90h+rBYCu8V2XZAUScJF2kLzErXsLJ8FdIUIZa/xXZRkXlx+9OqGorlBsVKOKtVN2
	 DdkJPUfVoewCQ==
Date: Mon, 22 Jun 2026 15:25:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, kernel@collabora.com, 
	Andy Yan <andyshrk@163.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/9] dt-bindings: display: vop2: Add missing reset
 properties
Message-ID: <20260622-magic-unbreakable-agouti-85cad0@quoll>
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
 <20260617-dw-hdmi-qp-yuv-v1-1-a665cfd06d7d@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260617-dw-hdmi-qp-yuv-v1-1-a665cfd06d7d@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314442-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:cristian.ciocaltea@collabora.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:kernel@collabora.com,m:andyshrk@163.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[rock-chips.com,sntech.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com,collabora.com,163.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C543C6AFD51

On Wed, Jun 17, 2026 at 09:51:54PM +0300, Cristian Ciocaltea wrote:
> Document the VOP2 resets corresponding to the AXI, AHB and DCLK_VP0..2
> clocks, which are common to all supported SoCs, plus DCLK_VP3 which is
> provided only on RK3588.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../bindings/display/rockchip/rockchip-vop2.yaml   | 42 ++++++++++++++++++++++
>  1 file changed, 42 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



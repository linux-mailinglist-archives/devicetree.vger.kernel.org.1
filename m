Return-Path: <devicetree+bounces-326717-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XtHlC1s7V2o2HwEAu9opvQ
	(envelope-from <devicetree+bounces-326717-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:48:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FE675B977
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:48:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b="y3/wcrVG";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326717-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326717-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E78831848B0
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 07:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A4B3C4B93;
	Wed, 15 Jul 2026 07:43:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B803C4B68
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 07:43:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784101384; cv=none; b=egCTKl7hkrIM4nf6/nzfMn1STQcGTSoHOShNh09kELPxQhTC58gOWtSgfHpJiDWGqOXQ+FA9OB5Ej+3KMeDyDaaK/siNbrYtRF7BU997DYwZ2Y5a/V8LpXuAJfnEhloES61UJ+dWMG/WmsosBxQMAOSa7ufQGZQen0+GQTaTfYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784101384; c=relaxed/simple;
	bh=NcAElaD8sUPAH/N68yI6IGuU8KvxdjdQAR9Xh87DRg8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d+X6p78DJaDd8nQm35xURRUPpO9iy6cJF6gdUTsv4iF6mJw9evRY8RMSxW6v4p2l5MiQ87agcx0wVYMpcZtwoN0EIus5SO0hYze087F9iT3aLoB0J7ghAhW6b2aSDURTyCq8PtHgcKc7GKXsjFuDiW4kwe/Y/WlLmkL/AKQRHEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=y3/wcrVG; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 03312C2B9C3;
	Wed, 15 Jul 2026 07:43:16 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F1C456035C;
	Wed, 15 Jul 2026 07:42:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CB67711BD3B89;
	Wed, 15 Jul 2026 09:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1784101378; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=l5VRDyCcYFi+uaCDadAWQtjOhPYTHQGMGvYp4MEsRiQ=;
	b=y3/wcrVGRpQenD/40dpK7mGAXs97/j8JkHoT+sK0VgLZinBzeYlHoLP8kzwe2UbK4+tz2g
	djqHOAubn8ocLtRmxM6vaheZzZHK31iZQfroJsyvLqQY93fv2pltcPCnX8/T0+8U/sunGg
	rU4uqX4GolCr7k6FV4MYeWSkOZuKM1OwuSlP6Sw93YvHdebR81roekBgtTq6/OAc6XK5CT
	YFSVNKLzPLI7cGBKPywgofVBbdPLwAhcawjlVcJB/NyTTRayvg+88Q7GpvgGW+8PpPa1Wi
	kw3vnVowNZ/59rqdDoZIZ/q+20TK2bP51wBp+G4X9gSdHHsSJ8pv6FTuPXXt3w==
Message-ID: <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com>
Date: Wed, 15 Jul 2026 09:42:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
To: Coia Prant <coiaprant@gmail.com>, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch,
 robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de
Cc: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-8-coiaprant@gmail.com>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <20260714191341.690906-8-coiaprant@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326717-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,sntech.de];
	FORGED_SENDER(0.00)[maxime.chevallier@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:coiaprant@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:heiko@sntech.de,m:netdev@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-phy@lists.infradead.org,m:andrew@lunn.ch,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maxime.chevallier@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,bootlin.com:from_mime,bootlin.com:dkim,bootlin.com:mid,radxa.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93FE675B977

Hi,

On 7/14/26 21:08, Coia Prant wrote:
> The RK3568 SoC integrates a Synopsys DesignWare XPCS that is accessed
> via APB3 memory-mapped registers.
> This driver provides the glue logic to make the XPCS accessible to
> the generic pcs-xpcs core.
> 
> The XPCS block contains four MII ports (0..3), each of which can be
> routed to GMAC0 or GMAC1 via the pcs-handle property in the MAC node.
> The hardware maps these ports to different MMDs:
>   - port 0: MMD 7 (ROCKCHIP_MMD_MII)
>   - port 1: MMD 2 (ROCKCHIP_MMD_MII1)
>   - port 2: MMD 3 (ROCKCHIP_MMD_MII2)
>   - port 3: MMD 4 (ROCKCHIP_MMD_MII3)
> 
> This driver creates a virtual MDIO bus that translates MDIO operations
> to APB3 register accesses, with proper address remapping for each port.
> The generic xpcs driver then creates a phylink_pcs instance on top of
> this bus, allowing the MAC to use the PCS via the standard phylink API.
> 
> Link: https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part2%20V1.1-20210301.pdf (Page 2078)
> Signed-off-by: Coia Prant <coiaprant@gmail.com>

[...]

> +static int xpcs_rk_probe(struct platform_device *pdev)
> +{
> +	struct dw_xpcs_rk *pxpcs;
> +	int ret;
> +
> +	pxpcs = xpcs_rk_create_data(pdev);
> +	if (IS_ERR(pxpcs))
> +		return PTR_ERR(pxpcs);
> +
> +	/*
> +	 * The XPCS may be attached to a power domain (e.g. PD_PIPE). The domain
> +	 * must be powered on before any register access, otherwise the SoC will
> +	 * trigger a synchronous external abort (SError).
> +	 *
> +	 * Accessing the XPCS registers also requires a TX clock from the SerDes,
> +	 * which is needed for the soft reset.
> +	 */
> +	ret = xpcs_rk_serdes_phy_init(pxpcs);
> +	if (ret)
> +		return ret;
> +
> +	ret = xpcs_rk_serdes_phy_poweron(pxpcs);
> +	if (ret)
> +		return ret;
>
There are 2 unusual things here.

The first one is that you manage the serdes phy from the PCS driver, usually it's
the MAC driver doing so. In stmmac, we have the serdes_poweron and serdes_poweroff
callbacks to hook into for Serdes control.

The second thing is that you're setting the serdes ON at probe time, there's no
dynamic control of it. Usually we try to only power this on at admin-up time.

Can you explain the rationale behind controlling the serdes here directly, and not
from the MAC driver ? I don't see any mention of that in the commit log, and I'm not
convinced this is the correct approach.

Maxime


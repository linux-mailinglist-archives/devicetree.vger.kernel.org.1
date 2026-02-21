Return-Path: <devicetree+bounces-267112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CakLyzSmWmxWwMAu9opvQ
	(envelope-from <devicetree+bounces-267112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 16:41:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4433616D302
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 16:41:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7F35D300598E
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 15:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA91E21CFFA;
	Sat, 21 Feb 2026 15:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="YLgOqUSr"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8933121C17D;
	Sat, 21 Feb 2026 15:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771688489; cv=none; b=utf/7F9FpGzpwA2Urrb0JdKXVtPPfCfXd9pk5PiM0nlTFFrrPAYE5zfKra+dyb6Z/mzVpFdIiRLZ83y6pFu60Fp56wmduTMMSTV1KFNqDt5F5oSGGQW8U30XeY7JDMCMDluHspFDr7eRksMJczxGUKxbVPNVIXzImpRIutGizOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771688489; c=relaxed/simple;
	bh=1sRNBUjW1H+uAlVTqNDhoNAbgpEg5e/Qp7sjQo/ppr8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SY85XnfP6bRyUX5Cv7aH0MRiwRh3HsUb8r1AEmMJjhyzz87l2GQz1IwFveGc/QjQR/qxE0WTa10fbz1MZKqQMB3NPd1NDxnpQHyG0NvwHb5NJtIlvCOEya9ZcYkmIw+cZbnlKmzlvsDFdznEB4jZBwjL3P/CSvdkvUqBZpZrDtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=YLgOqUSr; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=WF7a5GzWEFZ0La2JwjVlCs++i1kUNnI0/gEMbMwKHjA=; b=YLgOqUSr1j9q4eH50aKOZ7sc2e
	Pavn+YoVmLqyNDw84LlNVWqeHrnagMiRUllON+HAigX4Y3PhBmSlMoqX6xje9G30A2g+iXjBTeECD
	9HQC6NdCbuErnH4VkYhmvMraiC7w7w8WTXWVwEsjqwel2JSc058f/mlpm61RD0W2XZHw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vtp6b-008BGY-Gk; Sat, 21 Feb 2026 16:41:17 +0100
Date: Sat, 21 Feb 2026 16:41:17 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Gabor Juhos <j4g8y7@gmail.com>
Cc: Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: armada-3720: drop
 'marvell,xenon-emmc' properties
Message-ID: <24cee5ef-30c8-44bd-9c4f-48f20457cc5e@lunn.ch>
References: <20260221-armada-37xx-drop-xenon-emmc-v1-1-3110e83091b8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260221-armada-37xx-drop-xenon-emmc-v1-1-3110e83091b8@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267112-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[bootlin.com,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4433616D302
X-Rspamd-Action: no action

On Sat, Feb 21, 2026 at 04:37:59PM +0100, Gabor Juhos wrote:
> The 'marvell,xenon-emmc' property used in some device trees of Armada 3720
> based boards is not documented. Due to this dtbs_check throws warnings:
> 
>   .../armada-3720-atlas-v5.dtb: mmc@d8000 (marvell,armada-3700-sdhci): Unevaluated properties are not allowed ('marvell,xenon-emmc' was unexpected)
>   .../armada-3720-espressobin-emmc.dtb: mmc@d8000 (marvell,armada-3700-sdhci): Unevaluated properties are not allowed ('marvell,xenon-emmc' was unexpected)
> 
> Apart from the warnings, 'git grep' says that the property is used in
> device trees only:
> 
>   $ git grep -n 'marvell,xenon-emmc'
>   arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts:85:        marvell,xenon-emmc;
>   arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi:81:    marvell,xenon-emmc;
> 
> Although handling of the property was there in an early version of
> the 'sdhci-xenon' driver during the initial submission [1], but that
> part has been removed in later versions.
> 
> Drop the property from the affected device trees due to the reasons
> mentioned above.
> 
> No functional changes intended, compile tested only.
> 
> Link: https://lore.kernel.org/r/0390e7a05b6163deabb545f93729ea615eeaaee2.1477911954.git-series.gregory.clement@free-electrons.com # [1]
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew


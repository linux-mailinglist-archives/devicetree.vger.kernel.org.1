Return-Path: <devicetree+bounces-321569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z5Y9CIAfTGpoggEAu9opvQ
	(envelope-from <devicetree+bounces-321569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 23:34:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B35715BFC
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 23:34:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lunn.ch header.s=20171124 header.b=BStsEw0m;
	dmarc=pass (policy=none) header.from=lunn.ch;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321569-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321569-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1011F301226B
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 21:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DBF747D93C;
	Mon,  6 Jul 2026 21:34:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEA83F58C6;
	Mon,  6 Jul 2026 21:34:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783373650; cv=none; b=X0N7cr8UlEWQWr5WnNgaOfd8byXLNSI9EZEn+/ms078G3+BszECLMZRqp6AQNLuLIF9fkdR8RtgL3Y8A1Nl1vIbeBiHyVqxvhhsa2ZNnYVh5vWjIh2KqY9vPAJQrmku2fX1Nk87gOhDHHMVJ+XGOJInVgEzh2iXRAb8QPMbaiRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783373650; c=relaxed/simple;
	bh=gLBHuq1Xa767xXQc3+ivgjlwWr2hYn0HHC38saTlrZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MgE2cz0vt5+ZMGisn74VVjsbGz0oiBmniUUn59DySPVt05YsmW2GuuA4HlakCIXVK/P2byL76uVk1l+V78pVQLtAp1j/MnLRjua9V1+hz19Im44VILoEiPp5fWnR1JcLBDxHcRnTtTulFuWKDVIriog9qjuzz/1ZCbCvaBdnEzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=BStsEw0m; arc=none smtp.client-ip=156.67.10.101
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=KGGKkAUXMo3mYXdgw//fbeNQbfmfA+U4ZlbWmELp4Rs=; b=BStsEw0mWdGD6P77NeD7XTo5E+
	tMLKRALNTsZjY+dYVGg+pUrA/xfylJQwIVxCtBV/v+NcdUnwcNNlhSbm8OfUZETKQzhumFXLFeL9M
	/Z+KfqBRJ9XLn7S7jLF2bA2KfbOz8TusckpW/R1qO6zjBNRWMOh+FwMlA7SXymDOCs6s=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wgqwy-00B4Ax-OS; Mon, 06 Jul 2026 23:34:00 +0200
Date: Mon, 6 Jul 2026 23:34:00 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Pufan Jin <2254650260@qq.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add EmbedFire LubanCat 4 board
Message-ID: <647b653e-d602-46d3-bbc1-0d3fa132696e@lunn.ch>
References: <20260705135014.1004166-1-2254650260@qq.com>
 <tencent_6D311DC5F405B157049538DD5B080082A10A@qq.com>
 <1ac2d0f4-e027-4633-9d34-2709cb3e43ec@lunn.ch>
 <tencent_BF5741F8151925AFF7A3026460204C2B3108@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <tencent_BF5741F8151925AFF7A3026460204C2B3108@qq.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321569-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:2254650260@qq.com,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[qq.com];
	FORGED_SENDER(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lunn.ch:from_mime,lunn.ch:dkim,lunn.ch:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 65B35715BFC

On Tue, Jul 07, 2026 at 05:20:35AM +0800, Pufan Jin wrote:
> On Sun, Jul 05, 2026 at 05:11:58PM +0200, Andrew Lunn wrote:
> > > +	/* The board has 1.5ns delays on RX lines; TX delay is provided by the MAC. */
> >
> > That is pretty unusual. How is this RX delay done?
> 
> You're right to question this, and I apologise -- the comment was
> inaccurate. I re-checked the board schematic and both TXC and RXC
> have ~2ns of trace delay added on the PCB (annotated as
> "TXC / RXC : delays 2ns" next to the RGMII bus).

O.K. So both having delays on the PCB is what i would call "somewhat
unusual", vs "pretty unusual" for a single delay.

> Since the PCB already provides the required clock skew on both
> directions, for v2 I will switch to:
> 
>     phy-mode = "rgmii";
> 
> and drop both the tx_delay property and the misleading comment.

Please correct the comment. One issue we have is that many boards use
"rgmii" and are broken. You have a board which uses "rgmii" and it is
in fact correct. It is good to explain why it is correct, otherwise
people could think it is just another broken board.

       Andrew


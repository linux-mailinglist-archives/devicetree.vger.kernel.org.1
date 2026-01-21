Return-Path: <devicetree+bounces-257950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAKqFCTTcGkOaAAAu9opvQ
	(envelope-from <devicetree+bounces-257950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:22:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 390F857790
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:22:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0044B6A077A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D85A30DEA6;
	Wed, 21 Jan 2026 13:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="rwF2PpK8"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7292B3A900B;
	Wed, 21 Jan 2026 13:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769000537; cv=none; b=R5nQXWSA5aLFO3bP3K4eZxQMDyA6/YG2qY4vPyV5kGxzGWsQjy2tTWq/Jyk9FhtEtq4dPq0sWPrcREMWh5cdHSDbtSur2nyyBrsnSQqj3Q/N8PsN7F3vDvBIc0yrseQxgrqL2/ad1ALLN4w47nQ3fV/TRrOk1quXxAr2KAJfRZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769000537; c=relaxed/simple;
	bh=b9Ot2W9tl+otwAuHAzpMFUHlxoGRtWbb5F5GJWnaBH0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jnUP8UDsCx7YV/NVEpQyCvKBftNXE9Pitlqqloz2OYeSDpE9DYXsuF6IRt0fjTCTzvxY8GNNFdJqG5iPwvngsSWSNRegXpFCr4GxEbTUR1oKnT9F4kF1hQy7GbZJ+oEN+Fd26NMiq5J0KM5mXp0VJEv3Ed+IUjrWC2GYRO+zBxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=rwF2PpK8; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=BT3tP66rH0wvEE2LeIJW9H044jCQJ8M0rzFx3qQjFpM=; b=rwF2PpK8kkYNSkY8nXq0fTW/oU
	swOsCkeyGZroMRAOR8yhC/brflVXBoH+IATMTlTeFD2UZs3JrhbJ9DDrXYiJ8iIl+AvL+9tT9qLCK
	b3RMMmTUZ243cE1wxmI5b5lNQo6Tiii4XeGgngnE/qeeAlO5RQax4fgvnNJkpwqG9tFo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1viXqT-003or3-4m; Wed, 21 Jan 2026 14:02:01 +0100
Date: Wed, 21 Jan 2026 14:02:01 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 board
Message-ID: <87589c3a-4888-4774-8743-770dbebb290d@lunn.ch>
References: <20260121031548.402-1-kernel@airkyi.com>
 <aXBlBHZIPQ6xhykE@venus>
 <15a3e449-25e5-4387-963d-0dbda7be90f5@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <15a3e449-25e5-4387-963d-0dbda7be90f5@rock-chips.com>
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257950-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,airkyi.com,kernel.org,sntech.de,gmail.com,rock-chips.com,radxa.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[lunn.ch,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,lunn.ch:mid,lunn.ch:dkim]
X-Rspamd-Queue-Id: 390F857790
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> > That allows using standard properties in DT instead of vendor
> > specific "rx_delay"/"tx_delay". This results in a much better board
> > description and shows how far boards derive from the the standard
> > 2ns (which can use rgmii-id without any extra delay specification).
> > 
> 
> Oh, your approach was also my initial thought.
> 
> I first asked whether it would be more appropriate to implement this
> in the PHY or in the GMAC, and Andrew told me it should preferably be 
> done in the PHY. But I'm not sure whether all PHYs support this
> operation.
> 
> Andrew, would it be possible to implement this in the GMAC for cases
> where the PHY does not support it? Thanks.

As i commented to one of the patches, the PHY will be adding 2ns by
default when 'rgmii-id' is used. If you read the RGMII standard, you
also see there is quite a wide tolerance for these delays. So unless
there is a badly designed PCB which needs something well away from
2ns, i don't think it is necessary.

     Andrew


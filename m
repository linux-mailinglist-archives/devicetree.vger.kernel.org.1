Return-Path: <devicetree+bounces-258188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBo7DFOOcWkLJAAAu9opvQ
	(envelope-from <devicetree+bounces-258188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:41:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B8661049
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:41:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5DFF84F5BC1
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8536538F94D;
	Thu, 22 Jan 2026 02:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="MqndBoLv"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC2D38F237;
	Thu, 22 Jan 2026 02:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769049676; cv=none; b=QEJIsQveHqY+BgLHxPFpJqqPm/ZxUzrZezm4Z+GlsQbgTQtZ44bYELMTtDQZgmlLFE9qqfGUgi7eF299eZZw96ktP802I3vTQYx31BxZtUGQyfQcgOzcowaDOFYLTU/fgq7SSfvwAv3CT+TpdIde5p/a8QMEJ6/0LGCQD7ilsAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769049676; c=relaxed/simple;
	bh=CkK8B687qJxzcCv/wDAr2l9zaUom6F3pJocBSd9WU2M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X+bOrS6cOZTYI5J76Gi0e91lVgHLI7V3MM0W/UkJhsOJ77e0r36uJomp49R6E6TcFRlK2k2bZUUBBuHBEeVHhSwH6VGGcNNLBWqeJf9hLRRIks/duwQjGZCfS55tKDRrqJxpmZTopSbiugmUCzaDpRzzWDpzLvI4bFyj2vdWsik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=MqndBoLv; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=YrPmST8jI7niC6e2a8Z2ytgeg5kAjBAHeBddbsgELu8=; b=MqndBoLvpfIaJH0zLCXrl23cMj
	vSCEZL1+oQQ486a1eYYfN3dX5ZTf6cx4kZPhLADSaOa0wlrbDRvVbE4i1QFYu7RS8mhrI52ppgsYz
	lStWQbpD0lO58KKprV+oE4Te1D4ZTnVT+xuPoNKeClIDJ1Zu2YCjUEB00ViXnuqdo93A=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vikcv-003uBU-9r; Thu, 22 Jan 2026 03:40:53 +0100
Date: Thu, 22 Jan 2026 03:40:53 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 evb1
Message-ID: <55c9b522-e43d-4df3-9f7a-3f2976b72854@lunn.ch>
References: <20260121031548.402-1-kernel@airkyi.com>
 <20260121031548.402-2-kernel@airkyi.com>
 <b87d0c82-b8b7-4e14-85c3-c4ba88aa4000@lunn.ch>
 <81D509A8F65F0243+c7b58aef-95a4-4f2a-a423-7e8b2c0bbeab@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <81D509A8F65F0243+c7b58aef-95a4-4f2a-a423-7e8b2c0bbeab@airkyi.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com,radxa.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258188-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[lunn.ch,none];
	DKIM_TRACE(0.00)[lunn.ch:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 97B8661049
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 09:38:17AM +0800, Chaoyi Chen wrote:
> Hi Andrew,
> 
> On 1/21/2026 8:55 PM, Andrew Lunn wrote:
> >> @@ -721,6 +719,7 @@ rgmii_phy0: ethernet-phy@1 {
> >>  		reset-assert-us = <20000>;
> >>  		reset-deassert-us = <100000>;
> >>  		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
> >> +		tx-internal-delay-ps = <1950>;
> > 
> > The PHY should add 2000ps, as required by the RGMII standard. The
> > difference is so small there is no need for tx-internal-delay.
> >
> 
> Thank you for the clarification. I chose 1950 here because I find that
> the MotorComm yt8xxx Ethernet PHY binding only offer the options of 
> 1950 or 2100. 
> 
> > In most cases, 'rmgii-id' should be sufficient, unless the PCB is
> > badly designed.
> > 
> 
> I suspect the ROCK 4D board might be an exception. Sebastian once
> reported that it wouldn't work properly under "rgmii-id". Well, I'm
> not sure what strategy to adopt in this case.

Please check the report. And also, check what the PHY is doing for
delays if you don't specify the property. Is it defaulting to near
2000ps?

	Andrew


Return-Path: <devicetree+bounces-258187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yF/dDgKOcWkLJAAAu9opvQ
	(envelope-from <devicetree+bounces-258187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:40:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 671A961022
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D4CA5466BA7
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B19338E5C4;
	Thu, 22 Jan 2026 02:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="3BtsDdP4"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303E938BF81;
	Thu, 22 Jan 2026 02:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769049593; cv=none; b=RPMAWe2OzR01ko9sSxF0HwPijoNOxBIfC5lGegAfzAkmhtxMFyxpCaz5FL6tz+HMrOTuStKckD1vuQViPSIvzdszyWqrU8RQ6VXWhlV6D3Gx16msitj4XiCcRY5IcMfJ6ASS3dg1HS0jj0g0MYYshmNnrKvcd0E5Wa53WhBJX8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769049593; c=relaxed/simple;
	bh=zIWcPEN2bvqMquCXVoPFdzV4/QezYUaROpJRzGtWVsQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Am7FmbecpckPiMWjVWizPuJjwlvNt/AmEuzOmkUx9Tdk6iF2H38Tyau2RUwyRk8qsDj8Z1s2YcxSqmHWoYWvnpp54QKwY/8pXXKjzAFX/5t6UvfuztPozgwwznNe5zWcTvx74JX3h12za1ajZ7co5sae7baqDSSqnkiY0TDr0Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=3BtsDdP4; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=rxitm8n7F29DifZwUQzj7gNr+yPEqpgmZn1ppHGtpbk=; b=3BtsDdP4E9nfirUm02GGHVDQt4
	7yGO1G/HoirThUsiWq8UGJ7P1cU2lCcrJVq48RV2+DdzRu/zYPOARWsn0x5AAsLt2TSM19d3qA/cg
	xrx4J68dgh+qNshT277mxchcUfeU0HTPrCtl2bcObOQHwwfqiNu25SzrJfLP7244JMqs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vikbN-003uAS-MA; Thu, 22 Jan 2026 03:39:17 +0100
Date: Thu, 22 Jan 2026 03:39:17 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jonas Karlman <jonas@kwiboo.se>, Hsun Lai <i@chainsx.cn>,
	John Clark <inindev@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
Message-ID: <b61182f9-36ca-40c6-aaf7-ae7d21698285@lunn.ch>
References: <20260121015357.291-1-kernel@airkyi.com>
 <20260121015357.291-3-kernel@airkyi.com>
 <aec69818-9fd0-4e50-bab9-f5e36304a4a2@lunn.ch>
 <305c6ceb-2b4d-496a-95c1-e6a0454347a5@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <305c6ceb-2b4d-496a-95c1-e6a0454347a5@rock-chips.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[airkyi.com,kernel.org,sntech.de,cherry.de,kwiboo.se,chainsx.cn,gmail.com,manjaro.org,collabora.com,rock-chips.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258187-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[lunn.ch,none];
	DKIM_TRACE(0.00)[lunn.ch:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 671A961022
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 09:41:19AM +0800, Chaoyi Chen wrote:
> Hi Andrew,
> 
> On 1/21/2026 9:15 PM, Andrew Lunn wrote:
> >> +&mdio0 {
> >> +	rgmii_phy0: ethernet-phy@1 {
> >> +		compatible = "ethernet-phy-ieee802.3-c22";
> >> +		reg = <0x1>;
> >> +		pinctrl-names = "default";
> >> +		pinctrl-0 = <&rgmii_phy0_rst>;
> >> +		reset-assert-us = <20000>;
> >> +		reset-deassert-us = <100000>;
> >> +		reset-gpios = <&gpio3 RK_PD3 GPIO_ACTIVE_LOW>;
> >> +		tx-internal-delay-ps = <1900>;
> > 
> > What PHY is this? Does it actually implement this property?
> > 
> > It is also close to the 2000ps default. Have you put the board in an
> > environment chamber and run tests at -20C to +70C to see if it will
> > work with the default 2000ps?
> >
> 
> It is MotorComm yt8xxx PHY. I chose 1950 here because I find that
> the MotorComm PHY binding only offer the options of 1950 or 2100. 

Without the property it should default to something near to 2000. Most
MAC/PHY pairs should work without this property, if the board is
designed correctly. So i suggest you only have a tx-internal-delay-ps
if it is required.

   Andrew


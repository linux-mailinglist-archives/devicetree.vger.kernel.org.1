Return-Path: <devicetree+bounces-252849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D170D03666
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6044F31304E6
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82CBF4A28B2;
	Thu,  8 Jan 2026 13:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="JVUG4h8h"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F1B487587;
	Thu,  8 Jan 2026 13:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767880425; cv=none; b=NFdDqu8df3s8ijn/mgE9qI/1+Fzjwt/Cpnv3DgWIdTTd2HaJ3V7w72zNJdbcZv5F3ddiEW0B3P+Q3epq8puDis1+GuKZ/yW+ccq0c3YiMYrZzAX0ro4I1CdXASeyhBKcHtF+TOWnkdpsjlJxjCHV9ALEy/BGxPfVySjVyYb1pQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767880425; c=relaxed/simple;
	bh=ONar0DycYYdtOJ7wAW4Prs02Jposl7jlvubE68+UZ2c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kyjd9dysMFYtqnLX7OkaGwZ+S6OkIDHj40I6iLUNuEUq5iNBUk/TuyeRoZM4Df9LHHvkjyDlk7S8NWJjYRCVr5AcAdU19dC4gWnv5VDc/JaSCOj30XsTgxy58tlpsTf0ZZBqiayxwsJqMDa0mtzJT9AbPpsQVc8EpcWHwc43F/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=JVUG4h8h; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=uaMs/qkebgishDrmE9uiVaCxWBWh/yvp5BcZyYxgF5o=; b=JVUG4h8hOR453YcHmXwM0S6LpA
	fhoxhP4UM8B7PuVPllxJlG0L/lZ9n9sjmAh91HpRPdZNR+ICv9vsP+Hsotoyk+Qvq7vxJY3aAJp46
	IWulTz4OZHB83nVO3iO2zfeWDKz2zqbfcqMhrFstgibhj9+xnExXF+Geu7FAEa0zNJfs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vdqS2-001xJY-QQ; Thu, 08 Jan 2026 14:53:22 +0100
Date: Thu, 8 Jan 2026 14:53:22 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>, John Clark <inindev@gmail.com>,
	FUKAUMI Naoki <naoki@radxa.com>, Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
Message-ID: <7728d9e5-f8c4-4289-9f87-3928314c712c@lunn.ch>
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
 <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
 <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com>
 <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>

> I've also see some dt that use {tx,rx}_internal_delay_ps inside the PHY,
> and compared to doing it in the MAC, which one is the better choice?

As pointed out in another email, we prefer the PHY does the
delay. That preference is to try to make all Linux systems the same.

And since the required delay is so close to the standard 2ns, you
should just say rgmii-id, and let the PHY add the RGMII standard
required 2ns, and it should just work, no need for any other DT
properties.

       Andrew


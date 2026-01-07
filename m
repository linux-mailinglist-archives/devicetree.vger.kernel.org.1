Return-Path: <devicetree+bounces-252482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 473B4CFFC6A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:36:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 040C7344644B
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 18:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6933B369977;
	Wed,  7 Jan 2026 18:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="S6jwNDPK"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE8A369970;
	Wed,  7 Jan 2026 18:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767809905; cv=none; b=DXImbnPDn4ASa/xW3bSqyK80WKLl1f1WzJbtUhAOUW1BhT85X8zokHBuuMda0nnlPGn/Sjmy1ChHbYNkrg4Ks/eoPKbaZ2Y+dtyw6nKOOceSwObma4EwYGoqnJ7oS2mcrJhbzXWOJC6Py4RKZKOW5YBIHlXyvTqhwLD6H+u5APU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767809905; c=relaxed/simple;
	bh=NKYmaaQaNBGFe0ny8yyUhGv32e3qDV9ZR+GNHTsI2VY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W/a7JdzPEv+AtkdVJ4cBm4tgF9McmYr1YbXXveus0fFOlGXNBAr2+wDRCumuBbqigVdVPzwPadW6YswICtMuZetzoFFYdaJrZqMQ5lBekO3diu3CKbxIRFN5XiHbHD98sJ/nTvqJ6lyXMfUArbC1VSoRd/KCUTmN41PeGx+C9R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=S6jwNDPK; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=NLxJzEAuCES3geMqNvzFCMY6goF2EGqYqOkgiIUgsAU=; b=S6jwNDPK2SZ61UorwD/NvWswSi
	BxM8CrcEXgskDOl2oXdOG6EdiBXrBNAS9WcwjeiqLoJ2ZItdWcXZkpRsjYv8F7EjBVoZUvzSh5U3G
	pgGd8gCiCmWoapbpGZUsQBCSg67jXnq/KMey+NR3mPGF3oSv0zBiydCw1Z52G8KP5ees=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vdY6V-001qIX-6H; Wed, 07 Jan 2026 19:17:55 +0100
Date: Wed, 7 Jan 2026 19:17:55 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>, John Clark <inindev@gmail.com>,
	FUKAUMI Naoki <naoki@radxa.com>, Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
Message-ID: <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107070322.323-3-kernel@airkyi.com>

> +&gmac0 {
> +	clock_in_out = "output";
> +	phy-mode = "rgmii-rxid";

rgmii-rxid is odd. Does the PCB really have an extra long TX clock
line, but a short RX clock line?

Try changing this to rgmii-id, and drop the tx_delay property.

	Andrew


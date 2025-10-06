Return-Path: <devicetree+bounces-223882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDC4BBE967
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:06:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB38B188F28E
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C4602D8DDD;
	Mon,  6 Oct 2025 16:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="HA4YuuoO"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5841DF982
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759766787; cv=none; b=PoUOozfDsrubFRAdIiDYw6rF21jLzH141o9nh2p4wCYC5pUWxf6wUlS4FhVqPE2tLA16lSmThObYa5CF9di+zoComPbRZcKD5UPmkNlZTd+H74GfdpgoHNrMclVZyf9oyPuLT8501avCF5XIHiNwB8Y7JEkqbp9eFz7FopYihMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759766787; c=relaxed/simple;
	bh=v3I3+Nb0oUDC+fgbfsWOdqsxZI5UzCh8nFKw6LzhycU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IxLTY/ycj1WzUiaRkhU2zs5+oBsItOZJD8lPHygZTHKy1l4lPlG2xZ3EeZWkGajQFUiTRvN97F7562hkKRV8K1HH8lnbHdrtd4hftKKFAkbDzDqj+RdaMn4tyXV18+4eB9tTSxDSgI4cL2CDlqfWmrSjRbMygTJMgtFEX3X6/As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=HA4YuuoO; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=BAgyMAPnS0Hb98FmqDxYvuYrFMU1TlWK4dPYQ9fT3xA=; b=HA4YuuoOqpokJk8bCto6LWkS/V
	WleA3AulFkSF3p82isDuCbu0Dh+q3ItRjOittlQj70j1jlclODyAkx+nmI55npIjVnSnzIWHd5rTS
	0Hb12jTUzyH/qw4Le25IpcIBwjkU0Eg5UmFSw6U4U3GFVIb2PsCLPHhFMqIsS6fsioho=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1v5njB-00AJ3z-A6; Mon, 06 Oct 2025 18:06:21 +0200
Date: Mon, 6 Oct 2025 18:06:21 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base
 device tree
Message-ID: <4d337915-e3a9-46b7-a30b-ccb47ad33556@lunn.ch>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>

> +&gmac1 {
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy>;
> +	phy-mode = "rgmii-id";
> +	phy-supply = <&vcc_3v3>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1_miim
> +		     &gmac1_rx_bus2
> +		     &gmac1_tx_bus2
> +		     &gmac1_rgmii_clk
> +		     &gmac1_rgmii_bus>;
> +	tx_delay = <0x42>;

Nice to see phy-mode 'rgmii-id', but 0x42 is pretty high in comparison
to other boards correctly using 'rgmii-id', and is asymmetric with no
rx_delay value.

I cannot say this is wrong, it is just odd, not what i would expect.

  Andrew


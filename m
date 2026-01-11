Return-Path: <devicetree+bounces-253652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB95D0FEB7
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 22:10:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 966C730021D9
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 21:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B52BE2580D1;
	Sun, 11 Jan 2026 21:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="1sv7RSXE"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422DD238178;
	Sun, 11 Jan 2026 21:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768165820; cv=none; b=Eq071jay73MpAUBv84smLPnv5C9Mev+VZZGrhYISiyL9XXvrCDdRWkS9v1+UW0xruOz2dXI6PCeRD0qOg9QGUIWi9tIUFR9raUUzlTSOl3w1F4VBuG7J7BaH79+0xxfURZdAFAIosdB7xHc1Rs6nwx47R9linFMJlYCwIRqil2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768165820; c=relaxed/simple;
	bh=ATIpsf1cClVXpcCdnsQS0qNU1/PvQ9XubVS37xv9hqY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W4vJowJ1fTHt79S7HTBUzfjUyEjRQV8dC8nS8SKQidvtWdHkdHGfckOxFDBuoMYhvwHQRV7g/LAlwwGR0pKQBMQLS6NctDQt2vniHnMgrCfZc+mNv2aReAryYbjDmc7kMAHc7DAhHYKLXD7lgj5FC3IM5O1OaWdIWrmfM8bcMZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=1sv7RSXE; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ss3B6MRAGxluOfMk+Ev7z+q95mmBhKsL2hIyydgCPbg=; b=1sv7RSXEIg2Tt+1Q9QvtJP4p0r
	grxYVR9RFSsjp9kCPIhciD4JuwcJsUq5XsJRGGtlFnGfCIPCdQbQIW3kDtVaFmqGkizT1eIZDlkwC
	fvRRIXDdn07ufceWRSAf73V2QXXYyVolrTCiXGfb1Mel2BDdNWFHl4V2znx1IaWFXUas=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vf2h0-002MOs-Hk; Sun, 11 Jan 2026 22:09:46 +0100
Date: Sun, 11 Jan 2026 22:09:46 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: Add Asus IPMI card
Message-ID: <fdfb7212-5133-4cf4-9448-15cbbaa34eff@lunn.ch>
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
 <20260111201040.162880-3-anirudhsriniv@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260111201040.162880-3-anirudhsriniv@gmail.com>

> +&mac2 {
> +	status = "okay";
> +
> +	/* Bootloader sets up the MAC to insert delay */
> +	phy-mode = "rgmii";

There has been many discussions about this. This is broken, 'rgmii'
means the PCB adds the delays, not the MAC/PHY pair.

Please drop Ethernet support until aspeed fix the broken MAC driver.

       Andrew


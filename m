Return-Path: <devicetree+bounces-81943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 564D991E029
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:02:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A65A1C22469
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBC2F15EFD4;
	Mon,  1 Jul 2024 13:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="JVsoXaZM"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFDD15EFB5
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 13:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719838901; cv=none; b=R8Nld1Rix3K/hcd7dXDESq1JFyuyEyEiza8tJFqRtiQfIM9FoyyjBe6hiyZGbLtRPFrArvQIa+VDoUL2my73ewH5r3JSmyBcOuKz7w76j88sPJc90ZPQxR77tZ+monGzHt6x7/9RW2HML92tNL9tX8JUpgUrMgk9HkP1Nalq7n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719838901; c=relaxed/simple;
	bh=HauSw4zfELNbrWNueC+loSiORyu0Xw6sROqF0ObZhpQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dQ6Yu2RK3MDy94hVEVrBS+dxRtOOdE4TSJ7TnX0+P7/bgy3GVAFxuc3us6cNvjQsJUHDIGu5ChaSFwOT2HUDnxSHIin/GAyBq9cUnbTJWB0lc5ZAqBIu4iU/M59Ke9tE5pCByHWiz+f0Gxq/gSWp4m0taxOAfPC34mlKv1zXFZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=JVsoXaZM; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=2E3BLTy0WuJ2t9f1JjinnzPKZ4WNi8N08TB4y741yVU=; b=JV
	soXaZMB7qfZzoGH+rlO6J9vbC07m2adjTV6NoeUq/GgsLZBU7IpcBGAxTJOkyzQdXeRzJvExlqqyA
	inksPSqK0cTQvUsuRanvmH7t/o7tGqycJ2q2Vj2Prh5Jnyb7MrGhRrq/9WS7Y7hE99YBiDCgIasO4
	5blkI7o0Ozu4sl4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sOGex-001XBo-8r; Mon, 01 Jul 2024 15:01:31 +0200
Date: Mon, 1 Jul 2024 15:01:31 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, soc@kernel.org,
	Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v13 7/8] ARM: dts: turris-omnia: Add MCU
 system-controller node
Message-ID: <f3ea3044-a64a-4c4f-ad86-2d2ce9220c41@lunn.ch>
References: <20240701113010.16447-1-kabel@kernel.org>
 <20240701113010.16447-8-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240701113010.16447-8-kabel@kernel.org>

On Mon, Jul 01, 2024 at 01:30:09PM +0200, Marek Behún wrote:
> Turris Omnia's MCU provides various features that can be configured over
> I2C at address 0x2a. Add device-tree node.
> 
> This does not carry a Fixes tag - we do not want this to get backported
> to stable kernels for the following reason: U-Boot since v2022.10
> inserts a phy-reset-gpio property into the WAN ethernet node pointing to
> the MCU node if it finds the MCU node with a cznic,turris-omnia-mcu
> compatible. Thus if this change got backported to a stable kernel, the
> WAN interface driver would defer probe indefinitely (since it would wait
> for the turris-omnia-mcu driver which would not be present).
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew


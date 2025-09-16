Return-Path: <devicetree+bounces-217620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 25561B589BF
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 02:37:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 332927A1D42
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 00:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6CE1B394F;
	Tue, 16 Sep 2025 00:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="E2LjKSHH"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E8CD528;
	Tue, 16 Sep 2025 00:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757983043; cv=none; b=ridDf8ah21V6jdZlrcFfgDNoliY/WM2ctFWQHDsoKeC8A1/r8Vpt+E8a7nImZ4+K2VS+xk2BFt/YwlJ3x6ahfWvh6L0lm5OoVoiXrohKAeZzJl+FJE6PIimqDUfosgRyjfEaEpOZk88DQ+Kc8aODNPMr1rkJcrZyicN8YPkj1cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757983043; c=relaxed/simple;
	bh=ikTm6uj0+srWdypX4iIZg25AU+MD0sFfVNG1DiPazbI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XVmuCYgCaJTJ8KqXN58MxGHgFjrByaCbisk0WL+HvRn10VPeU9+Xytjy0NcVYzbXncY+jjGhQt+64EzEpe+8gfvWnXbvMsRRvPMjiRAkKYjMlA5zB2Zd/c21YUJ7H7iIg3IAKhIQNK3pfqW+s4IlCct3GY1wo8LJs4IVpLBE/Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=E2LjKSHH; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=wJr+506HYavhLyAPNE14fMgJgbHbAikFhnzPhM0kVTM=; b=E2LjKSHHRSkxB/9Njm9q50MF83
	5VIRQcjknoMGoSETEPmq1ef9Bm/AV5jPSVpEYvzAaLcUJXhg10I9yN6duT7TuNjN+S7adLuZLbRLy
	tEvYLVQ0qxx+nfDYqjXvQHhOjUC17HFMHdR6O5up+6uOgNsk857c0y41t4QQwibbvQQA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uyJgs-008V93-Hj; Tue, 16 Sep 2025 02:37:02 +0200
Date: Tue, 16 Sep 2025 02:37:02 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Rebecca Cran <rebecca@bsdio.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: add device tree for ASRock Rack
 ALTRAD8 BMC
Message-ID: <74e68c53-2696-4f86-97d3-c0b0a74d4669@lunn.ch>
References: <20250911051009.4044609-1-rebecca@bsdio.com>
 <20250911051009.4044609-3-rebecca@bsdio.com>
 <58a092c5-5dd0-4718-831a-e25ecb184087@lunn.ch>
 <5ccc4945-87f6-4325-b034-ca3f2f90257a@bsdio.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5ccc4945-87f6-4325-b034-ca3f2f90257a@bsdio.com>

On Mon, Sep 15, 2025 at 06:26:04PM -0600, Rebecca Cran wrote:
> On 9/11/25 08:09, Andrew Lunn wrote:
> > There is no phy-handle here, and no mdio node in this file. What is
> > the MAC connected to? Does it connect to the hosts Ethernet interface?
> 
> Yes, it's connected to one of the host's 10Gb Ethernet interfaces.

O.K. Maybe add a comment please.

> > RGMII pinctrl is referenced here. This opens up the question about
> > RGMII delays. What is this MAC connected to?
> 
> It's the AST2500 MAC2, connected to the management LAN ethernet port.

And does it have a PHY? On an MDIO bus? Unless i'm mistaken, you don't
describe the PHY, a phy-handle pointing to the PHY, and don't have
phy-mode = 'rgmii-id'.

	Andrew


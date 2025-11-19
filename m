Return-Path: <devicetree+bounces-240408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C908C70D9E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 20:41:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C12AC34952C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 19:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 334F92F068A;
	Wed, 19 Nov 2025 19:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="AbWTHDUy"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765CB366567;
	Wed, 19 Nov 2025 19:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763581118; cv=none; b=eU3K7ELWL8n93yUQwCPR3kkJROOFgBSTfMkuH1QVIzGc8Gbw1QbfDtCnIAXuoFFeL7TfXeHpXcuaflHBVfbY8sCrGQbzGJPPDueJU10aC+bd1V8aJ8pp5ubCxTnAstxn/sKfsPLH2YB5VpzzKCkZevbE9IEgC33UJna6cuty4xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763581118; c=relaxed/simple;
	bh=K6LM68YWoONmwrI7wkbnZSqa4jeNNEY2XIZME51V9XI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CJhAebj8MvzdDT1Q/7DNT16qvWeg59u04Ag/bTnljDf5uiIlrCnyzLRIWMK7KWPl/NvpxEw0/kCpxdy2J5QndPt3voz8B5l1UGCV5JuHm/4kw+9AglO+CXshUFIZKIlRBYX8uNg66dT1N2f5qz21DRA9lW517ObW4hOgySjIyq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=AbWTHDUy; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=51LI3oWWDChQoHjTFp2JsPXvyEGeUUJtEnWFUqqWo/8=; b=AbWTHDUydquf6BtKm2QImSVNX5
	GDpcApPTPNFB24LJoSzreaPz+HEETkS6n1rbEHZiPhTiGSoOPaQN4NaFox39rSFkzvGDmbpVECml0
	Ks1kjjCNazX8QggUDT/wk05Z+dANB0lWhO1HVXPovbpdM+sE7qK3/nI9gXFGpb+Vgq24=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vLo0Y-00EXhX-BW; Wed, 19 Nov 2025 20:38:26 +0100
Date: Wed, 19 Nov 2025 20:38:26 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: lan966x: Fix the access to the PHYs for pcb8290
Message-ID: <5ca786cf-e919-4e7c-9134-23083cc93da5@lunn.ch>
References: <20251119134750.394655-1-horatiu.vultur@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251119134750.394655-1-horatiu.vultur@microchip.com>

On Wed, Nov 19, 2025 at 02:47:50PM +0100, Horatiu Vultur wrote:
> The problem is that the MDIO controller can't detect any of the PHYs.
> The reason is that the lan966x is not pulling high the GPIO 53 that is
> connected to the PHYs reset GPIO. Without doing this the PHYs are kept
> in reset. The mdio controller framework has the possiblity to control a
> GPIO to release the reset of the PHYs. So take advantage of this and set
> line to be high before accessing the PHYs.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew


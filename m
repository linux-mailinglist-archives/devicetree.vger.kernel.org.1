Return-Path: <devicetree+bounces-95596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8854195A270
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 18:09:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 402EA1F22439
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 16:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F18C714C5A4;
	Wed, 21 Aug 2024 16:08:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1983514A4DF;
	Wed, 21 Aug 2024 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724256535; cv=none; b=BoRvjjGLz2ipMiD6v/rSLZRNn1hfa58qZxRq4VvMUrzthd9PZ4fanFno7dHVdWK/XME57tl8fZ9secb55MkwdpLstKMAWwLISzI6q7WlUBU6lBTm6v1fF3l/DFw882KcR7DmeAfqyD4ZmXkNp4xH5kOFKolv/pMAD3C/4qHCaIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724256535; c=relaxed/simple;
	bh=1JzANl+3/IKE5ZxT3XsyYghLVULQ50mfZhGiLqib2aA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ftD25mtpg8Q9d8U3RakW5z8cJE2ombm2N8wOg/5/uwR0WMlktpIAXVLxM9tdis2wNWtZw/PNGPIDfikHCAHLOr8JrGO7WuqRKtLh+bnTR7JnX31f/Y5vcnk9UGmRcVV+Zu3NHqXY7q8FJL0CJULb+z2dxx/9iAlKNvyuP2BbPJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.98)
	(envelope-from <daniel@makrotopia.org>)
	id 1sgnt6-000000004oB-27Sw;
	Wed, 21 Aug 2024 16:08:44 +0000
Date: Wed, 21 Aug 2024 17:08:39 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Robert Marko <robimarko@gmail.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Chad Monroe <chad.monroe@adtran.com>,
	John Crispin <john@phrozen.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 1/2] dt-bindings: net: marvell,aquantia: add
 properties to override MDI_CFG
Message-ID: <ZsYRB54U5XPNZxiT@makrotopia.org>
References: <5173302f9f1a52d7487e1fb54966673c448d6928.1724244281.git.daniel@makrotopia.org>
 <2c4e03e9-6965-4e81-a986-e169eaea9e4b@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2c4e03e9-6965-4e81-a986-e169eaea9e4b@lunn.ch>

On Wed, Aug 21, 2024 at 06:00:36PM +0200, Andrew Lunn wrote:
> On Wed, Aug 21, 2024 at 01:46:30PM +0100, Daniel Golle wrote:
> > Usually the MDI pair order reversal configuration is defined by
> > bootstrap pin MDI_CFG. Some designs, however, require overriding the MDI
> > pair order and force either normal or reverse order.
> 
> Could you explain that in a bit more detail. Are you talking about
> changing the order of the 4 pairs? Or reversing the polarity within
> pairs?

It's about changing the order of the 4 pairs, either ABCD or DCBA.
Polarity of each pair is not affected by this.


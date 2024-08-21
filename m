Return-Path: <devicetree+bounces-95595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2CE95A26D
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 18:07:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D47F11F21C78
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 16:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F651149C42;
	Wed, 21 Aug 2024 16:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="QtlbtnCa"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2CE14F13D;
	Wed, 21 Aug 2024 16:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724256443; cv=none; b=mgfRRUB90BMRXRNh2/2ymKiQpGtkA0/XhAAJg/sbQDN9upprCDE7NMSqvDIJDuesuxd1jgm51egrdmUHBKt87QhgKhIrxznQeZmYXTe2nDVWti27ZRKxqf8CmaT9TA1MmpVLPC5F6iB0XEfV4D0nQW1DkSY6yTpe6gCeTSoW7qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724256443; c=relaxed/simple;
	bh=CmOALIetpEaQz+TS2hiMsxIZvUFdS2axs7ai/0z9YoU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f3ccpHW9GA1gZiCm8fOCQGrXjM2tI4TlX3LMfIASBe9cR8z8OCKaFrYWvJNQufHOTafDS2icGWxrAPXOaWEZi0b7lhyBQa1HNgRDwcZ9byqhQFxpMq9PAfV+XDQGQOPmgfMQUy1EdndD/06PkGIVvLl8zm+Zi6Vz58DbeHoeaZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=QtlbtnCa; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Ioopd0wHDYZxee38CZfSlNODSIu9Ew2RoGxxGw8XlQ8=; b=QtlbtnCanOmH2A2N+TcCCkfqRT
	9ZL5uqLeU60oamRrOpfa9W6u6h/rgk47rkbZPpKiltMpBieKodg4zOOsiyorYGKKLH75IAsr/l3hF
	j+nc8fd6d8ip9L9Y/kZN0ubq2Q1Ek5MPieyVhIF7Z3Mvw5twzu8S4TQ9GkcObccHVCiU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sgnrW-005LRb-Tx; Wed, 21 Aug 2024 18:07:06 +0200
Date: Wed, 21 Aug 2024 18:07:06 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Daniel Golle <daniel@makrotopia.org>
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
Subject: Re: [PATCH net-next 2/2] net: phy: aquantia: allow forcing order of
 MDI pairs
Message-ID: <a59be297-1a55-4cce-a3e1-7568e3d4e66c@lunn.ch>
References: <5173302f9f1a52d7487e1fb54966673c448d6928.1724244281.git.daniel@makrotopia.org>
 <ed46220cc4c52d630fc481c8148fc749242c368d.1724244281.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ed46220cc4c52d630fc481c8148fc749242c368d.1724244281.git.daniel@makrotopia.org>

On Wed, Aug 21, 2024 at 01:46:50PM +0100, Daniel Golle wrote:
> Normally, the MDI reversal configuration is taken from the MDI_CFG pin.
> However, some hardware designs require overriding the value configured
> by that bootstrap pin. The PHY allows doing that by setting a bit which
> allows ignoring the state of the MDI_CFG pin and configuring whether
> the order of MDI pairs should be normal (ABCD) or reverse (DCBA).
> 
> Introduce two boolean properties which allow forcing either normal or
> reverse order of the MDI pairs from DT.

How does this interact with ethtool -s eth42 [mdix auto|on|off]

In general, you want mdix auto, so the two ends figure out how the
cable is wired and so it just works.

      Andrew


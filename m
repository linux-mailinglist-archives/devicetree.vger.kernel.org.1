Return-Path: <devicetree+bounces-81939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 457B791E01A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:01:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E31361F236D5
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92186155CB8;
	Mon,  1 Jul 2024 13:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="56vdOH6u"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCC0154BE7
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 13:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719838890; cv=none; b=n3oQ44LnPonA96iiJPFpx06B0CpkTTC+W5r3Ky7yzOfZYXwFd46gNGJUqFzX3ALQcHayEiK0/50TVaFLilnjWedR532h4aM4TQrbnKche8BJK7OgGA+cAR2mTlcyViQoUGJGimNvB1QgEn5drj99MGnaqyc6/5KBD9lft5HTtFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719838890; c=relaxed/simple;
	bh=roMWLIGcv5qkeJL5vblrBxE/z+KLnC11saK1oGKAUSg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jkbiEuYmLzeWMgcwoLd0CdXuEEL+YuMbP85dmcHlWFfZ1ZfC1MMv3iyaOL/GR51HRepI+NXWzEWUUVi1K+TEtRjp3IH6DgGB2/JYsaEns8mkLKS4YY5ZPjGcMRHrB1ahX0CtAywK6gn1lLZQI1L8ohdAMQMKWxq3jSwQp6Eq0s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=56vdOH6u; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=cl/W0DPFRGQ0FbXoMmByDPPZheMpTBFwnsHqAhHg/mY=; b=56
	vdOH6uQ3o9KeKsJwnVEkmOTiHf6KZmrYBxZrWfqazA2GLDjoQQLZL9YG6c0pwq39G9ZDeueZGXOGU
	R0Ce/pWejq0G2KFoSlMSBuyavy29cHd+nUFZ6blEinMjVWAvdcB5EcZsIBCD55m8iXe+Kp2iiI88H
	0JSZfy7v9edpr9E=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sOGeY-001XBC-Ti; Mon, 01 Jul 2024 15:01:06 +0200
Date: Mon, 1 Jul 2024 15:01:06 +0200
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
Subject: Re: [PATCH v13 8/8] ARM: dts: turris-omnia: Add GPIO key node for
 front button
Message-ID: <562c1194-5c89-43ef-aa22-dbb71f5906bc@lunn.ch>
References: <20240701113010.16447-1-kabel@kernel.org>
 <20240701113010.16447-9-kabel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240701113010.16447-9-kabel@kernel.org>

On Mon, Jul 01, 2024 at 01:30:10PM +0200, Marek Behún wrote:
> Now that we have the MCU device-tree node, which acts as a GPIO
> controller, add GPIO key node for the front button.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew


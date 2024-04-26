Return-Path: <devicetree+bounces-63172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6E08B3F2B
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 20:22:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCD3A28865F
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9550E16F262;
	Fri, 26 Apr 2024 18:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="Lkd4kQSl"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81AA16DEDA
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 18:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714155718; cv=none; b=MZzJjjXvUAixqv01OP5OI34tali1j1LbcROrnqbD2FvR2EQ7ezLQB/jM9XnHmsaoaHnz6Y3ov7Yw7BwF7EJamENmiQdiXSF6f7wH8FFYTIeYjqVnZ0InX+qwNQK6Ceabi8eb/FnIUR/m0ClJ/aa12I4my0Ogu2spE331FSrML0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714155718; c=relaxed/simple;
	bh=P+gSEuJhLmHXoUBLRYik0l8ilAjNoxXVGvdX2fUdmDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kJHoAwD0/tNyN+trAU5xW01m6lf82N0rha0f3Eu2TCCXyqKE4CNeCreXcYECZKgGPbW3MffuYgzGIgvS7M7B/zInjo+bgDzONcZZaBo9ZNAAgM/nsM58KB6h1mMqoLZ1otSoE7bhV09ZI2W1AibelPz/jklYo3oaq50ytWln2rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=Lkd4kQSl; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=APx8CNyepfOybgKgsGIZF2EVtiy+hTSLRQRf/E9nabU=; b=Lkd4kQSlimcG5lR+SZQuW7x4KN
	PZ32NgZ7oaNfZktV7lUzWd6fZynuAB/CSVMfPhvJDY8SjHDfTLPg7Rqy+mxyz2m/N7OdiAkfpraX1
	sOAOmTUxR5Qkj/NirZOw8Hn1XLi4T5/+9opyOV5lI41mlpQBVYK06cQwmtvTHNGP7MXE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1s0QCd-00E66x-Qz; Fri, 26 Apr 2024 20:21:43 +0200
Date: Fri, 26 Apr 2024 20:21:43 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
	Arnd Bergmann <arnd@arndb.de>, soc@kernel.org, arm@kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v7 8/9] ARM: dts: turris-omnia: Add MCU system-controller
 node
Message-ID: <4c5993d2-a75b-4f52-a0c7-cbbb153b1e28@lunn.ch>
References: <20240424173809.7214-1-kabel@kernel.org>
 <20240424173809.7214-9-kabel@kernel.org>
 <87bk5w5d0v.fsf@BLaptop.bootlin.com>
 <20240426184004.2456f2e6@dellmb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240426184004.2456f2e6@dellmb>

> But I am guessing it might be because of what new U-Boot does: if it
> finds the MCU node in the device-tree, it will add a reset gpio property
> for ethernet PHY, linking it to the MCU node. So if this
> patch got backported to older kernel where the MCU driver is not
> present, and the board had this new U-Boot, the kernel would not create
> the eth2 interface, because it would be waiting for a driver providing
> the GPIO.

You should make this clear in the commit message. There is a danger
the ML algorithm which picks patches for back porting decides this is
a candidate. Hopefully a human will read the commit message and then
reject it.

       Andrew


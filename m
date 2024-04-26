Return-Path: <devicetree+bounces-63132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3472A8B3D02
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 18:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6610E1C211E8
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 16:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4200F14900B;
	Fri, 26 Apr 2024 16:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCWxMZMq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6D2146A6B
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 16:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714149614; cv=none; b=isVVZ1qaT2LuYNVsBMNmnRh4TTxUI7fVio0uRw5veVFZuDt3yRNflWLNn/COkxJeRP2BQnez0JjzzTGn/eLe5bESay/uU6aI90juqUoOZkeRaYCnenJxMdtdzKHGy8Wx8cWUqbYQtvF6mLpvL/owoM69ic3068tdCHcdsdfGVx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714149614; c=relaxed/simple;
	bh=9nlNpjXl2tclRLBwf7U2c3+7suexJGgJHSSMR5Q3zxM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=V/8yyrefWaZAyfQ30L8hY5ztB2VTBii3lBFELnX9AXwuWVIfZrNwOiEtnZrnpL9nVHxG2x5j27upFcOXENHb9AxYJiXL9s9BsrW3BAc9sq+SsAq9oH86/PQFWaB2KjXIllhf1wvm5URoNv9col0qGqO4BuDmTzzvDllU6jRsI9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCWxMZMq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5570C113CD;
	Fri, 26 Apr 2024 16:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714149613;
	bh=9nlNpjXl2tclRLBwf7U2c3+7suexJGgJHSSMR5Q3zxM=;
	h=Date:From:To:List-Id:Cc:Subject:In-Reply-To:References:From;
	b=dCWxMZMqrnYjsFMLJd4hWadH2UkfHRPpcOKTV9JmQqVgSg4+n2KdMaVNqCjvSPyAB
	 D+bSRM+tDfCbIyb3MyVCzHopupyN3JMmBAUT8DUrLvHXt1BDOsexBQ0IaXHQQmm2ji
	 8UoVjaaBSFZEm3F1/ZPoY8W+7hZd0+LEQB1XacfqZxbZ0lsKQC6/NSVf7axKv6ChEB
	 N/0yF8uSbseVxg/s65iYt9ILGYye/IyECbGA5f/6ePwWEc+K5foPciLeMPQZQAMB6o
	 seN+SbCWuWC5fFpod3qkv1vrbEu9ZGqtaEnmL/g7eGZpRESsGfLrmYgXPmYYqqTEpV
	 4OWKvNmlN2q9w==
Date: Fri, 26 Apr 2024 18:40:04 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Arnd Bergmann <arnd@arndb.de>, soc@kernel.org, arm@kernel.org, Andy
 Shevchenko <andy@kernel.org>, Hans de Goede <hdegoede@redhat.com>, Ilpo
 =?UTF-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>, Andrew Lunn
 <andrew@lunn.ch>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?=
 <uwe@kleine-koenig.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v7 8/9] ARM: dts: turris-omnia: Add MCU
 system-controller node
Message-ID: <20240426184004.2456f2e6@dellmb>
In-Reply-To: <87bk5w5d0v.fsf@BLaptop.bootlin.com>
References: <20240424173809.7214-1-kabel@kernel.org>
	<20240424173809.7214-9-kabel@kernel.org>
	<87bk5w5d0v.fsf@BLaptop.bootlin.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 26 Apr 2024 18:01:20 +0200
Gregory CLEMENT <gregory.clement@bootlin.com> wrote:

> Hello Marek,
> 
> > Turris Omnia's MCU provides various features that can be configured over
> > I2C at address 0x2a. Add device-tree node.
> >
> > Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")  
> 
> Is it really a fix ?
> 
> It seems that the node you add depends on the firmware support that was
> not yet added.
> 
> Gregory

It is a fix in the sense that Omnia always had the MCU, and so
device-tree without the MCU node was incorrect.

Since device-trees should be (if possible) backwards and forwards
compatible, this should not be a problem.

But I am guessing it might be because of what new U-Boot does: if it
finds the MCU node in the device-tree, it will add a reset gpio property
for ethernet PHY, linking it to the MCU node. So if this
patch got backported to older kernel where the MCU driver is not
present, and the board had this new U-Boot, the kernel would not create
the eth2 interface, because it would be waiting for a driver providing
the GPIO.

So hmm, maybe I should drop the Fixes tag.


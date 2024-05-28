Return-Path: <devicetree+bounces-69749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C168D1614
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 10:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BC931F22B7D
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 08:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22FEB7D07D;
	Tue, 28 May 2024 08:17:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA636F079;
	Tue, 28 May 2024 08:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716884277; cv=none; b=QwrKxi+v27jZGSrA/IM3iKi/XoulTSnUPA1uFQYffiVZunvZ2Gd1wZp8GPWJ3CTFeszj97S7kxdDS9mDZkZDx8oSX22nitLtzos9FpHHU5FfOHuXvnrcTTYMyoYCFTDk0veu0cvyuc23YEf0gKj/07tTLY4WhY6Pv1ky4i/WdKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716884277; c=relaxed/simple;
	bh=+gQk63qRjDxLOJj5cghiTQ8aHzfz80iixzwGh84NgYM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Bf1aQ7gkd79Ciyzn4UPsjmyWgoKnW+Fpd5/UJwHfOGA/AAVHzU0qUdFjkl1LlYeHigs++XgKzRcppp9f/fkR9dOUzyIx5OBDTCJifu8usdJjdQR/9t6f/k5r+2pOhFR1+XY80dlqFnAvzelE926DEL/aibQin8CNMdZ2QwS1NVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBs1d-0001f3-Il; Tue, 28 May 2024 10:17:41 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dmitry Yashin <dmt.yashin@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, Jianqun Xu <jay.xu@rock-chips.com>,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] pinctrl: rockchip: add rk3308b SoC support
Date: Tue, 28 May 2024 10:17:40 +0200
Message-ID: <4771649.rnE6jSC6OK@diego>
In-Reply-To: <20240517085832.365ac878@booty>
References:
 <20240515121634.23945-1-dmt.yashin@gmail.com>
 <81aa0e4e-a3c7-41d1-8cd2-4d060730b37a@gmail.com>
 <20240517085832.365ac878@booty>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Freitag, 17. Mai 2024, 08:58:32 CEST schrieb Luca Ceresoli:
> Hello Dmitry,
> 
> On Thu, 16 May 2024 17:06:46 +0500
> Dmitry Yashin <dmt.yashin@gmail.com> wrote:
> 
> > Hi Luca,
> > 
> > On 15.05.24 21:29, Luca Ceresoli wrote:
> > > I'm skeptical about this being bound to a new DT compatible. As far as I
> > > know the RK3308 and RK3308B are mostly equivalent, so it looks as the
> > > pinctrl implementation could be detected at runtime. This would let
> > > products to be built with either chip version and work on any without
> > > any DT change.  
> > 
> > 
> > Thanks for your feedback.
> > 
> > Indeed, these SoC's have a lot in common, but as I can see the rk3308b
> > has more blocks, like extra PWM's (rk3308 datasheet 1.5 [0] shows only
> > 1x PWM 4ch, when rk3308b and rk3308b-s have 3x PWM 4ch), 1-wire and
> > CAN controller (mentioned in the TRM, but dropped from rk3308b
> > datasheet for some reason).
> > 
> > So, in my view, it really makes sense to add rk3308b.dtsi, where extra
> > PWM's, pinctrl compatible and its pin functions can be moved. And if
> > its not worth it, then I will try to adapt the entire series to runtime
> > config based on cpuid like you suggested.
> 
> Having a rk3308b.dtsi would probably make sense, yes, as there are
> several differences as you described. However for the pinctrl it seems
> probably not necessary.
> 
> I've seen actual products being manufactured with two different RK3308
> variants in different lots of production, but with the same DT that has
> rockchip,rk3308-pinctrl in it. Those would need a _selective_ DT
> upgrade in order to benefit from your changes.
> 
> And even if a product had always used the B variant, it would need DT
> upgrade when upgrading to a kernel with your changes. Otherwise with
> patch 1/3 of this series the pictrl driver would lose many routes after
> upgrading the kernel (but not the DT): can this lead to
> previously-working devices to stop working? I think this is a
> fundamental question to reply.

If things can be runtime-detectable, they should be detected at runtime.
So yes, while we need to know that it is a rk3308-something before
via the dt, if we can distinguish between the rk3308 variants at runtime
we should definitly do so.

Heiko




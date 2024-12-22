Return-Path: <devicetree+bounces-133420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6D39FA790
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 19:25:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23C651649DF
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0687713A86C;
	Sun, 22 Dec 2024 18:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="DeJZxdG4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9D4157A48
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 18:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734891908; cv=none; b=QeNLxHlBgD0JOXw2mmIsQVfDVv4fFtT9RgV6qj7PhF2Q0VKOTn9Cc+vH69JuiOeLSmy6WJfh+k/ILjI7f733AEZDzzepLtpUEL9GUDv5NizYDpJtrA2Hn0R/JkLdxfF+TA1mH93y9mY25SWD8AEVdnIzX+PxFExBkk5HlOHFn/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734891908; c=relaxed/simple;
	bh=JeewzWKGSLkyAOw4YzUkKNLuvgHBMDeNnU3TuOpfAVo=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=WBOebcHpLp7y2fJDPEP1HVJcjsdiz7Udf1c1nzreTy6O/bFpjqjQCncIi+DRO3GwAv8UkD6rV6j0ccPqXfNSerCAHmgxOkaO4zJ2fD5L5NZFTCSZa33UaJn40goZgpB5v/51FVrMcvqg2auaWzADsP0y+KiBWsUfaFfbM2oYCgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=DeJZxdG4; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734891904;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N6HHZqHUNdVtJlOPyBhOIVZSJXQ5Yu5vErJJFMSA9nk=;
	b=DeJZxdG4Hy4iOrkXhJUxhoikUNyS8J6aPoaQxkcCx/aiREhoPibwMEKvgNUy5fHsVrzVUi
	nzCu5Jizs83gqciozYDkZvsac6BLAka3HeiB4ICV6uhCXdBTPdHNegrn5NcJp4qBKMz8ie
	jF3N+l/LbkyVtx84PZfMcxtHLMgJ4y87nmIQ7AMwiJ0WDWCt3Rsm2zPOlRcOsJhIL0S3I7
	m4na8aXg/FcbQl8xgvED+SPCxneL3Jgo1TEU3S6L+cxK6Q4IWbf14oYcqzaeGlq4WxxwQp
	pNmfWxFiMM/uBhLpui+tFAz2BSqQBERiH5uFTU9/XIoGAvHobplQm8ZxKj5cPg==
Date: Sun, 22 Dec 2024 19:25:02 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, tglx@linutronix.de,
 jonas@kwiboo.se, macromorgan@hotmail.com, andyshrk@163.com,
 liujianfeng1994@gmail.com, dmt.yashin@gmail.com, tim@feathertop.org,
 marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
 alchark@gmail.com, sebastian.reichel@collabora.com, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] irqchip/gic-v3: Enable Rockchip 3588001 erratum
 workaround for RK3582
In-Reply-To: <86msgoozqa.wl-maz@kernel.org>
References: <20241222030355.2246-1-naoki@radxa.com>
 <20241222030355.2246-2-naoki@radxa.com> <86msgoozqa.wl-maz@kernel.org>
Message-ID: <f93b3bfb5151e4b617b1c99c91b4956f@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Marc,

On 2024-12-22 10:04, Marc Zyngier wrote:
> On Sun, 22 Dec 2024 03:03:53 +0000,
> FUKAUMI Naoki <naoki@radxa.com> wrote:
>> 
>> Rockchip RK3582 is a scaled down version of Rockchip RK3588(S). Apply
>> Rockchip 3588001 erratum workaround to RK3582.
>> 
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>  drivers/irqchip/irq-gic-v3-its.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
>> b/drivers/irqchip/irq-gic-v3-its.c
>> index 92244cfa0464..c59ce9332dc0 100644
>> --- a/drivers/irqchip/irq-gic-v3-its.c
>> +++ b/drivers/irqchip/irq-gic-v3-its.c
>> @@ -4861,7 +4861,8 @@ static bool __maybe_unused 
>> its_enable_rk3588001(void *data)
>>  {
>>  	struct its_node *its = data;
>> 
>> -	if (!of_machine_is_compatible("rockchip,rk3588") &&
>> +	if (!of_machine_is_compatible("rockchip,rk3582") &&
>> +	    !of_machine_is_compatible("rockchip,rk3588") &&
>>  	    !of_machine_is_compatible("rockchip,rk3588s"))
>>  		return false;
>> 
> 
> Please use the relevant property for that purpose ("dma-noncoherent")
> at the distributor and ITS levels. We're not adding extra compatibles
> for this anymore, and you might as well fix the core dtsi to expose
> such property.

Thanks for your response.

After a more detailed look into drivers/irqchip/irq-gic-v3-its.c,
it seems that relying on the "dma-noncoherent" DT property may not
be equivalent to adding another compatible check.  Here are a few
quotations from irq-gic-v3-its.c, to illustrate this better:

4746 static bool __maybe_unused its_enable_rk3588001(void *data)
4747 {
4748         struct its_node *its = data;
4749
4750         if (!of_machine_is_compatible("rockchip,rk3588") &&
4751             !of_machine_is_compatible("rockchip,rk3588s"))
4752                 return false;
4753
4754         its->flags |= ITS_FLAGS_FORCE_NON_SHAREABLE;
4755         gic_rdists->flags |= RDIST_FLAGS_FORCE_NON_SHAREABLE;
4756
4757         return true;
4758 }
4759
4760 static bool its_set_non_coherent(void *data)
4761 {
4762         struct its_node *its = data;
4763
4764         its->flags |= ITS_FLAGS_FORCE_NON_SHAREABLE;
4765         return true;
4766 }

4814 #ifdef CONFIG_ROCKCHIP_ERRATUM_3588001
4815         {
4816                 .desc   = "ITS: Rockchip erratum RK3588001",
4817                 .iidr   = 0x0201743b,
4818                 .mask   = 0xffffffff,
4819                 .init   = its_enable_rk3588001,
4820         },
4821 #endif
4822         {
4823                 .desc   = "ITS: non-coherent attribute",
4824                 .property = "dma-noncoherent",
4825                 .init   = its_set_non_coherent,
4826         },

As visible above, using the "dma-noncoherent" DT property results
in not setting the RDIST_FLAGS_FORCE_NON_SHAREABLE flag, which the
its_enable_rk3588001() function does.  In other words, it doesn't
seem that "dma-noncoherent" is a "drop-in" replacement for adding
yet another compatible for the RK3582.

Modifying the current behavior of the "dma-noncoherent" DT property
doesn't seem like an option, because it's already used in a couple
of board dts(i) files.  Should we introduce another DT property,
perhaps "dma-noncoherent-rdist" or something similar?

Could you, please, advise on how to move forward with this?  I'm
willing to implement the required patches, but I'd prefer to reduce
the possible back-and-forth on them, to save everyone's time.


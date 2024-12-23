Return-Path: <devicetree+bounces-133498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 576859FAD01
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:11:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 736F41881375
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8B491917E8;
	Mon, 23 Dec 2024 10:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="MZiQWl3t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9242AF1D
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734948669; cv=none; b=AKHGEtGMKK7KOsBnqiHwzdHsQl/FgOf+FAZ5STrCThSlk6L6Df09AKVewqL2meEKuRoBrnUiSM7+MhpwX+Dn0aqb20jwQmsLDzmSSqitk1x5MSzJTgyW+W7W05Bkeoc8fYXgq2B+f7epB0iRGJzvb9V1EFp1AoD8s/HZtjoTAIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734948669; c=relaxed/simple;
	bh=7wYaE2ZZrrsYxE9bwroawsnJqulIu3EbYuWXThEBEzg=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=VyRomXsM6VjeRK2R9LKcdEiFeFNh1INMk/1XxxC/zCaFVqiXPGph+fgyGXa0RvcKwzrYsiI1FiaBaAiss8VN9jvgQMTjg+layKtigcrQ0g2jWOGrxqvDOHWm2uIQqLgHPBHNG26JtR2G9SDT6gKrZydtCebeFwcXe+kLvuXNV4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=MZiQWl3t; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734948664;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=msg5fBDnvA5A5aMJjXE3flrPRKktl7CdeY8acKw/CG0=;
	b=MZiQWl3tHRj4qFxgPuKj4evBjkB6Bg+thjSP4v2GN+xwMO1uydBc90L0CPa7r4qPLme4CB
	DGhy1ICtlQqZba59RPyB0yUNMEazxI3vZXo+ifjifFrCZZJk7jMCFLTxm/HJVMgynwjwnI
	HejW81XMaXOcTmXBQvt8phKf17/oAB+8sAPKFE8CwqmeM3u6bavPOU5Q63zvwADvsje+0i
	+XIj1hg/+4ZtyMEhy4faoFWYfAyxh5T8whEcYlmsy0k30mTXHNSSxf3I5MbEOhWBsLcQAw
	lh2CYnusld9w5koro71jsFN7R31hwWdW2OlmEEmXl2K07QCEq/YPNPlISJUifw==
Date: Mon, 23 Dec 2024 11:11:03 +0100
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
In-Reply-To: <871pxysq76.wl-maz@kernel.org>
References: <20241222030355.2246-1-naoki@radxa.com>
 <20241222030355.2246-2-naoki@radxa.com> <86msgoozqa.wl-maz@kernel.org>
 <f93b3bfb5151e4b617b1c99c91b4956f@manjaro.org>
 <8734ifs3zl.wl-maz@kernel.org>
 <e3498590dd81b150670e36561d99b6f4@manjaro.org>
 <871pxysq76.wl-maz@kernel.org>
Message-ID: <d9919917c5d518608a7d4e3cac8faf53@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-12-23 10:29, Marc Zyngier wrote:
> On Mon, 23 Dec 2024 06:10:21 +0000,
> Dragan Simic <dsimic@manjaro.org> wrote:
>> On 2024-12-23 00:16, Marc Zyngier wrote:
>> > On Sun, 22 Dec 2024 18:25:02 +0000,
>> > Dragan Simic <dsimic@manjaro.org> wrote:
>> >> On 2024-12-22 10:04, Marc Zyngier wrote:
>> >> > On Sun, 22 Dec 2024 03:03:53 +0000,
>> >> > FUKAUMI Naoki <naoki@radxa.com> wrote:
>> >> >>
>> >> >> Rockchip RK3582 is a scaled down version of Rockchip RK3588(S). Apply
>> >> >> Rockchip 3588001 erratum workaround to RK3582.
>> >> >>
>> >> >> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> >> >> ---
>> >> >>  drivers/irqchip/irq-gic-v3-its.c | 3 ++-
>> >> >>  1 file changed, 2 insertions(+), 1 deletion(-)
>> >> >>
>> >> >> diff --git a/drivers/irqchip/irq-gic-v3-its.c
>> >> >> b/drivers/irqchip/irq-gic-v3-its.c
>> >> >> index 92244cfa0464..c59ce9332dc0 100644
>> >> >> --- a/drivers/irqchip/irq-gic-v3-its.c
>> >> >> +++ b/drivers/irqchip/irq-gic-v3-its.c
>> >> >> @@ -4861,7 +4861,8 @@ static bool __maybe_unused
>> >> >> its_enable_rk3588001(void *data)
>> >> >>  {
>> >> >>  	struct its_node *its = data;
>> >> >>
>> >> >> -	if (!of_machine_is_compatible("rockchip,rk3588") &&
>> >> >> +	if (!of_machine_is_compatible("rockchip,rk3582") &&
>> >> >> +	    !of_machine_is_compatible("rockchip,rk3588") &&
>> >> >>  	    !of_machine_is_compatible("rockchip,rk3588s"))
>> >> >>  		return false;
>> >> >>
>> >> >
>> >> > Please use the relevant property for that purpose ("dma-noncoherent")
>> >> > at the distributor and ITS levels. We're not adding extra compatibles
>> >> > for this anymore, and you might as well fix the core dtsi to expose
>> >> > such property.
>> >>
>> >> Thanks for your response.
>> >>
>> >> After a more detailed look into drivers/irqchip/irq-gic-v3-its.c,
>> >> it seems that relying on the "dma-noncoherent" DT property may not
>> >> be equivalent to adding another compatible check.
>> >
>> > It is. My email makes it plain what needs doing.
>> >
>> >> Here are a few
>> >> quotations from irq-gic-v3-its.c, to illustrate this better:
>> >>
>> >> 4746 static bool __maybe_unused its_enable_rk3588001(void *data)
>> >> 4747 {
>> >> 4748         struct its_node *its = data;
>> >> 4749
>> >> 4750         if (!of_machine_is_compatible("rockchip,rk3588") &&
>> >> 4751             !of_machine_is_compatible("rockchip,rk3588s"))
>> >> 4752                 return false;
>> >> 4753
>> >> 4754         its->flags |= ITS_FLAGS_FORCE_NON_SHAREABLE;
>> >> 4755         gic_rdists->flags |= RDIST_FLAGS_FORCE_NON_SHAREABLE;
>> >> 4756
>> >> 4757         return true;
>> >> 4758 }
>> >> 4759
>> >> 4760 static bool its_set_non_coherent(void *data)
>> >> 4761 {
>> >> 4762         struct its_node *its = data;
>> >> 4763
>> >> 4764         its->flags |= ITS_FLAGS_FORCE_NON_SHAREABLE;
>> >> 4765         return true;
>> >> 4766 }
>> >>
>> >> 4814 #ifdef CONFIG_ROCKCHIP_ERRATUM_3588001
>> >> 4815         {
>> >> 4816                 .desc   = "ITS: Rockchip erratum RK3588001",
>> >> 4817                 .iidr   = 0x0201743b,
>> >> 4818                 .mask   = 0xffffffff,
>> >> 4819                 .init   = its_enable_rk3588001,
>> >> 4820         },
>> >> 4821 #endif
>> >> 4822         {
>> >> 4823                 .desc   = "ITS: non-coherent attribute",
>> >> 4824                 .property = "dma-noncoherent",
>> >> 4825                 .init   = its_set_non_coherent,
>> >> 4826         },
>> >
>> > Nothing tickles me more than having my own work being thrown back at
>> > me.
>> 
>> I'm sorry, that wasn't my intention.  I just wanted to make
>> referencing to what I was talking about a bit easier.  Though,
>> I now see that I was wrong, and I apologize for the noise.
> 
> No need to apologise. Just understand that the way you approached the
> discussion was suboptimal. Next time, just ask how the proposed
> solution works, rather than asserting that it doesn't.

Thanks.  Indeed, the way I approached it was waaay suboptimal.
I just wanted to clarify that it was an honest mistake resulting
from not looking at the code carefully enough, nothing else.

> Hopefully we can move on and you and Naoki can come up with a set of
> patches that does the right thing.

Of course.  I've already prepared a small patch series that,
hopefully, does the right thing when it comes to the Rockchip
3588001 errata.  I'll submit it soon, after I check the patches
a bit further.


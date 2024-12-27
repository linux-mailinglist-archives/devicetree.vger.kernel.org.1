Return-Path: <devicetree+bounces-134423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 532BC9FD65E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D6867A017A
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605B11F75B5;
	Fri, 27 Dec 2024 17:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="eKCauRBI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5391E1F708D;
	Fri, 27 Dec 2024 17:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735319338; cv=none; b=E90u/hZ/xdr/OSos8GOCd0RTPDdX+eoT2Wf425z4Rh69yhVS57LfQXzOPjiQV7KDvkTAnOQJzQcgbFn50r2njBx9Ufr5lSufnJeMC9Fb5LNJip2NwTvG5DFhD1WnlVwpwWgEFyMB2+ty9XHGXFuM9AYZw99z2T+wGlSu0MUxUAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735319338; c=relaxed/simple;
	bh=kX0F2IL7HO10JrwZylv4JAk9UaYIt1kashCVWl0FP+0=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=EKU7iFP8wSwzWAQuzExMX0zWSjdzE65QubTKreUg+JkU0kZCw5KmSn+WMG4h3SgMc2faiia2GpKifX71+jUxhwJr1Sx2NeFo79X4MM+TLLeKvc7ZSruSvYsMtOaPK6jLjXdihBb+Y8IHYyhL/RfIEug5ecCxNjEhxa70bbFJEsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=eKCauRBI; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735319333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=V+aVcM9v3TNGbuFeqCMbEPfxEC3QzdL9gjWHd99xPEg=;
	b=eKCauRBIFjWdhQRTKcWc34askPCgFz+/QKBbL9VFE3Xw9osf4GyHzpH6oZ+0TfW7tWmBHZ
	LcLNZgo3NzmNalz+TyxcFPOSLN/OxRc1L82X8CaA+2tfOqT878hisB9g5f4tH8HhzKnQis
	kx2LxlHV6EYSlHSC01/PNqeVRKtz/M6O+k6CEYa+UaYOftUJVGyDTzr2Y8kFHdLiSAkB+g
	6uOJY8OC8vxwEn35a8jL+l9NHaztpL0b28LlD013SAedVySmi5yTIiEpImiBlhXu8ZWB56
	/6lrON+YT/Xm0e2nARpCt8QIcr7L0D0DsiwEh7HhfoEDo00xFgQOKECMUAd0/A==
Date: Fri, 27 Dec 2024 18:08:53 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 2/2] irqchip/gic-v3-its: Make "dma-noncoherent" preferred
 for RK358x errata
In-Reply-To: <87bjwxoyzo.wl-maz@kernel.org>
References: <cover.1735313870.git.dsimic@manjaro.org>
 <1382cd99ec213b5fb6f3b23d4e895f078f587b8f.1735313870.git.dsimic@manjaro.org>
 <87bjwxoyzo.wl-maz@kernel.org>
Message-ID: <f90c39e7637eebb6e021e3a9754eaa4b@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Marc,

On 2024-12-27 17:46, Marc Zyngier wrote:
> On Fri, 27 Dec 2024 15:42:24 +0000,
> Dragan Simic <dsimic@manjaro.org> wrote:
>> 
>> The preferred way to denote hardware with non-coherent DMA is to use 
>> the
>> "dma-noncoherent" DT property, [1] instead of relying on the 
>> compatibles. [2]
>> Alas, older versions of the Rockchip RK3588 and RK3588S SoC dts(i) 
>> files
>> failed to specify this DT property, which means that checking the 
>> compatibles
>> remains required for backward SoC dts(i) compatibility.
>> 
>> Let's have the Rockchip 3588001 hardware errata handled the preferred 
>> way,
>> with newer versions of the Rockchip RK3588, RK3588S and RK3582 SoC 
>> dts(i)
>> files that properly specify the "dma-noncoherent" DT properties at 
>> both the
>> GIC redistributor and the GIC ITS levels, while falling back to 
>> checking the
>> compatibles for backward RK3588 and RK3588S SoC dts(i) compatibility.
>> 
>> [1] 
>> Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
>> [2] 
>> https://lore.kernel.org/linux-rockchip/86msgoozqa.wl-maz@kernel.org/
>> 
>> Cc: Marc Zyngier <maz@kernel.org>
>> Cc: FUKAUMI Naoki <naoki@radxa.com>
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
>>  drivers/irqchip/irq-gic-v3-its.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>> 
>> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
>> b/drivers/irqchip/irq-gic-v3-its.c
>> index fdec478ba5e7..982dcbb30f39 100644
>> --- a/drivers/irqchip/irq-gic-v3-its.c
>> +++ b/drivers/irqchip/irq-gic-v3-its.c
>> @@ -4747,6 +4747,18 @@ static bool __maybe_unused 
>> its_enable_rk3588001(void *data)
>>  {
>>  	struct its_node *its = data;
>> 
>> +	/*
>> +	 * The preferred way to denote hardware with non-coherent DMA is to 
>> use
>> +	 * the "dma-noncoherent" DT property, which the older RK3588 SoC 
>> dts(i)
>> +	 * files failed to specify, relying on the compatibles instead.
>> +	 *
>> +	 * Thus, check for the presence of "dma-noncoherent" DT property 
>> first,
>> +	 * to let the hardware quirk be handled the preferred way, and fall 
>> back
>> +	 * to checking the compatibles for backward dts(i) compatibility.
>> +	 */
>> +	if (!of_dma_is_coherent(to_of_node(its->fwnode_handle)))
>> +		return false;
>> +
>>  	if (!of_machine_is_compatible("rockchip,rk3588") &&
>>  	    !of_machine_is_compatible("rockchip,rk3588s"))
>>  		return false;
>> 
> 
> I'm sorry, but this patch serves no purpose. We already have a
> workaround in place, and we don't need to handle it *twice*.

Thanks for reviewing this series so quickly!

Regarding handling the workaround twice, I agree that this patch
is somewhat redundant, but without this patch and with the "dma-
noncoherent" DT properties in the proper places we'll actually
end up with some kind of double hanling.

More precisely, RDIST_FLAGS_FORCE_NON_SHAREABLE will be set twice,
which doesn't do any harm, but it's something that made me twitch
a bit and produce this patch.

> Worse, it is actively harmful. A DT that would only advertise the
> property on the ITS would result in a broken system, while it would
> work correctly with the current code.

Indeed, that possible issue bugged me as well.  Though, we can
probably rest assured that the RK3588 dtsi files are changed to
include the "dma-noncoherent" DT properties correctly.

> Additionally, look at what of_dma_is_coherent() does, and how it will
> fetch a property that is potentially completely unrelated to the GIC
> node, or eventually return some random default. The binding documents
> the dma-noncoherent property as part of the relevant nodes, and not
> anywhere else.

That's a possibility, but I think that the same argument about the
RK3588 dtsi correctness may also apply here.

> In the end, this is just dead code, and potentially worse. So while
> I'm rather supportive of your first patch in this series as it allows
> OSs other than Linux to *maybe* avoid this hack, the Linux driver
> doesn't need any change.

I'm happy to drop this patch, but I just wanted to describe the
rationale behind it, as explained above.


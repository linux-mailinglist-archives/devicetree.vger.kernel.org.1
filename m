Return-Path: <devicetree+bounces-71706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 850498D7AE5
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 06:52:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03CA7B213C0
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 04:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2326F18622;
	Mon,  3 Jun 2024 04:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Z0deRmJz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A277333D0;
	Mon,  3 Jun 2024 04:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717390323; cv=none; b=ai1R8z1isyBblnkm60waMSU2/ReluwixnBqHIjnkDXb3ob95rzjCyiCyrwR+5XtFkSYh0n4Dm+kRSn4FcBIQGrOOppQGRiQQwO9Qulo0ppgn7jPo171GJI1kp9QLTDqUbf4PQuV7OrTnbrMbyKK8iPtYcMbiRmbESHbczk85vd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717390323; c=relaxed/simple;
	bh=rrst0r4IQYykE8BQ78kVOdBfEcAuNNH8aQgRPAmhthM=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=QLb7KcRB4uSUY+PcyxpA7l03SagBKfaTcpOrQufuhKWvorDK1k1Xwxy1FEvSt+KCR6fx9X8L3MUYOXu0/6goVNdYsgtF2/mzVOxn8LdlCskg3zYFHsGsTFeSsQ0P+q8tpMXqIZPq55IcY0F7wOkMS2ZZaBcGE5mBdTFarSUABC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Z0deRmJz; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1717390318;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=k0Gs1/Xm+SzByk7vYVPFQerxO3rIBQQHPSkKE6omxtI=;
	b=Z0deRmJzRQAkQgM++4cd8mHuJqmI1o8aMCW6P98lQnAE/DWyt+DyOpuL/rVC3ntAzgEv5K
	PXAGff6IFD5zZbpApP23+WRgo18+r95O509kBaAJi/Cp4C0mdQauXksHphjBDT3FI7h9cj
	nhzKrfQf1m4k3IxECfWPFr1GMa+GKcb63fuwMdoo30AZvUztxILQAOKqTc/+3Id6NDAoH8
	XaRzV7hS26vBnL0VdEinnWFbXKl9UjKP+w67Wp/tPsBTr2528YASJhTdi2HJhahQ3clDic
	Eg/dz+M1MraVl+DAEylVXgbQD79Tpyw7Z2DRgyS0OJ1Jbdp1DNUGoJI+cYwrvg==
Date: Mon, 03 Jun 2024 06:51:58 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: wens@kernel.org
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix the DCDC_REG2 minimum voltage
 on Quartz64 Model B
In-Reply-To: <ee74c146d1e69bef118e208fdf5cf10f@manjaro.org>
References: <e70742ea2df432bf57b3f7de542d81ca22b0da2f.1716225483.git.dsimic@manjaro.org>
 <CAGb2v66DPvvRcq+98vF2mCF8URW_qys1+B_FM9kcm6ppuPvyeg@mail.gmail.com>
 <20cf041dcd6f752174bf29d2a53c61b3@manjaro.org> <1994616.CrzyxZ31qj@diego>
 <99ea0e0053d3ada3325bdfaec7a937f0@manjaro.org>
 <CAGb2v64K7fgeV9GVNnpoZ_4BZU7JKXHSCYU0hKxHmnyojFRu7g@mail.gmail.com>
 <ee74c146d1e69bef118e208fdf5cf10f@manjaro.org>
Message-ID: <d0ab380955c293cf676938be5ea5bf52@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-06-03 06:41, Dragan Simic wrote:
> On 2024-06-03 05:49, Chen-Yu Tsai wrote:
>> On Sat, Jun 1, 2024 at 6:41 AM Dragan Simic <dsimic@manjaro.org> 
>> wrote:
>>> On 2024-05-31 20:40, Heiko Stübner wrote:
>>> > Am Freitag, 31. Mai 2024, 00:48:45 CEST schrieb Dragan Simic:
>>> >> On 2024-05-29 18:27, Chen-Yu Tsai wrote:
>>> >> > On Tue, May 21, 2024 at 1:20 AM Dragan Simic <dsimic@manjaro.org>
>>> >> > wrote:
>>> >> >>
>>> >> >> Correct the specified regulator-min-microvolt value for the buck
>>> >> >> DCDC_REG2
>>> >> >> regulator, which is part of the Rockchip RK809 PMIC, in the Pine64
>>> >> >> Quartz64
>>> >> >> Model B board dts.  According to the RK809 datasheet, version 1.01,
>>> >> >> this
>>> >> >> regulator is capable of producing voltages as low as 0.5 V on its
>>> >> >> output,
>>> >> >> instead of going down to 0.9 V only, which is additionally confirmed
>>> >> >> by the
>>> >> >> regulator-min-microvolt values found in the board dts files for the
>>> >> >> other
>>> >> >> supported boards that use the same RK809 PMIC.
>>> >> >>
>>> >> >> This allows the DVFS to clock the GPU on the Quartz64 Model B below
>>> >> >> 700 MHz,
>>> >> >> all the way down to 200 MHz, which saves some power and reduces the
>>> >> >> amount of
>>> >> >> generated heat a bit, improving the thermal headroom and possibly
>>> >> >> improving
>>> >> >> the bursty CPU and GPU performance on this board.
>>> >> >>
>>> >> >> This also eliminates the following warnings in the kernel log:
>>> >> >>
>>> >> >>   core: _opp_supported_by_regulators: OPP minuV: 825000 maxuV: 825000,
>>> >> >> not supported by regulator
>>> >> >>   panfrost fde60000.gpu: _opp_add: OPP not supported by regulators
>>> >> >> (200000000)
>>> >> >>   core: _opp_supported_by_regulators: OPP minuV: 825000 maxuV: 825000,
>>> >> >> not supported by regulator
>>> >> >>   panfrost fde60000.gpu: _opp_add: OPP not supported by regulators
>>> >> >> (300000000)
>>> >> >>   core: _opp_supported_by_regulators: OPP minuV: 825000 maxuV: 825000,
>>> >> >> not supported by regulator
>>> >> >>   panfrost fde60000.gpu: _opp_add: OPP not supported by regulators
>>> >> >> (400000000)
>>> >> >>   core: _opp_supported_by_regulators: OPP minuV: 825000 maxuV: 825000,
>>> >> >> not supported by regulator
>>> >> >>   panfrost fde60000.gpu: _opp_add: OPP not supported by regulators
>>> >> >> (600000000)
>>> >> >>
>>> >> >> Fixes: dcc8c66bef79 ("arm64: dts: rockchip: add Pine64 Quartz64-B
>>> >> >> device tree")
>>> >> >> Cc: stable@vger.kernel.org
>>> >> >> Reported-By: Diederik de Haas <didi.debian@cknow.org>
>>> >> >> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>>> >> >> ---
>>> >> >>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 2 +-
>>> >> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>>> >> >>
>>> >> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>>> >> >> b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>>> >> >> index 26322a358d91..b908ce006c26 100644
>>> >> >> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>>> >> >> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>>> >> >> @@ -289,7 +289,7 @@ vdd_gpu: DCDC_REG2 {
>>> >> >>                                 regulator-name = "vdd_gpu";
>>> >> >>                                 regulator-always-on;
>>> >> >>                                 regulator-boot-on;
>>> >> >> -                               regulator-min-microvolt = <900000>;
>>> >> >> +                               regulator-min-microvolt = <500000>;
>>> >> >
>>> >> > The constraints here are supposed to be the constraints of the
>>> >> > consumer,
>>> >> > not the provider. The latter is already known by the implementation.
>>> >> >
>>> >> > So if the GPU can go down to 0.825V or 0.81V even (based on the
>>> >> > datasheet),
>>> >> > this should say the corresponding value. Surely the GPU can't go down
>>> >> > to
>>> >> > 0.5V?
>>> >> >
>>> >> > Can you send another fix for it?
>>> >>
>>> >> I can confirm that the voltage of the power supply of GPU found inside
>>> >> the RK3566 can be as low as 0.81 V, according to the datasheet, or as
>>> >> low as 0.825 V, according to the GPU OPPs found in rk356x.dtsi.
>>> >>
>>> >> If we want the regulator-min-microvolt parameter to reflect the
>>> >> contraint
>>> >> of the GPU as the consumer, which I agree with, we should do that for
>>> >> other
>>> >> RK3566-based boards as well, and almost surely for the boards based on
>>> >> the
>>> >> RK3568, too.
>>> >
>>> > Hmm, I'm not so sure about that.
>>> >
>>> > The binding does define:
>>> >       regulator-min-microvolt:
>>> >           description: smallest voltage consumers may set
>>> >
>>> > This does not seem to describe it as a constraint solely of the
>>> > consumer.
>>> > At least the wording sounds way more flexible there.
>>> >
>>> > Also any regulator _could_ have multiple consumers, whose value would
>>> > it need then.
>>> 
>>> The way I see it, the regulator-min-microvolt and
>>> regulator-max-microvolt
>>> parameters should be configured in a way that protects the 
>>> consumer(s)
>>> of the particular voltage regulator against undervoltage and 
>>> overvoltage
>>> conditions, which may be useful in some corner cases.
>>> 
>>> If there are multiple consumers, which in this case may actually 
>>> happen
>>> (IIRC, some boards use the same regulator for the GPU and NPU 
>>> portions
>>> of the SoC), the situation becomes far from ideal, because the 
>>> consumers
>>> might have different voltage requirements, but that's pretty much an
>>> unavoidable compromise.
>> 
>> As Dragan mentioned, the min/max voltage constraints are there to 
>> prevent
>> the implementation from setting a voltage that would make the hardware
>> inoperable, either temporarily or permanently. So the range set here
>> should be the intersection of the permitted ranges of all consumers on
>> that power rail.
>> 
>> Now if that intersection happens to be an empty set, then it would up
>> to the implementation to do proper lock-outs. Hopefully no one designs
>> such hardware as it's too easy to fry some part of the hardware.
> 
> Yes, such a hardware design would need fixing first on the schematic
> level.  When it comes to the RK3566's GPU and NPU sharing the same
> regulator, we should be fine because the RK3566 datasheet states that
> both the GPU and the NPU can go as low as 0.81 V, and their upper
> absolute ratings are the same at 1.2 V, so 1.0 V, which is as far as
> the GPU OPPs go, should be fine for both.
> 
> As a note, neither the RK3566 datasheet nor the RK3566 hardware design
> guide specify the recommended upper voltage limit for the GPU or the
> NPU.  Though, their upper absolute ratings are the same, as already
> described above.

Uh-oh, this rabbit hole goes much deeper than expected.  After a quick
check, I see there are also RK3399-based boards/devices that specify
the minimum and maximum values for their GPU regulators far outside
the recommended operating conditions of the RK3399's GPU.

Perhaps the scope of the upcoming patches should be expanded to cover
other boards as well, not just those based on the RK356x.

>>> > While true, setting it to the lowest the regulator can do in the
>>> > original
>>> > fix patch, might've been a bit much and a saner value might be better.
>>> 
>>> Agreed, but the value was selected according to what the other
>>> RK3566-based
>>> boards use, to establish some kind of consistency.  Now, there's a 
>>> good
>>> chance for the second pass, so to speak, which should establish 
>>> another
>>> different state, but also consistent. :)
>>> 
>>> >> This would ensure consistency, but I'd like to know are all those
>>> >> resulting
>>> >> patches going to be accepted before starting to prepare them?  There
>>> >> will
>>> >> be a whole bunch of small patches.
>>> >
>>> > Hmm, though I'd say that would be one patch per soc?
>>> >
>>> > I.e. you're setting the min-voltage of _one_ regulator used
>>> > on each board to a value to support the defined OPPs.
>>> >
>>> > I.e. in my mind you'd end up with:
>>> >       arm64: dts: rockchip: set better min voltage for vdd_gpu on rk356x
>>> > boards
>>> >
>>> > And setting the lower voltage to reach that lower OPP on all affected
>>> > rk356x boards.
>>> 
>>> Yes, the same thoughts have already crossed my mind, but I thought 
>>> we'd
>>> like those patches to also include Fixes tags, so they also get
>>> propagated
>>> into the long-term kernel versions?  In that case, we'd need one 
>>> patch
>>> per
>>> board, to have a clear relation to the commits referenced in the 
>>> Fixes
>>> tags.
>>> 
>>> OTOH, if we don't want the patches to be propagated into the 
>>> long-term
>>> kernel
>>> versions, then having one patch per SoC would be perfectly fine.
>> 
>> It's really up to Heiko, but personally I don't think it's that 
>> important
>> to have them backported. These would be correctness patches, but don't
>> really affect functionality.
> 
> On second thought, I also think that it might be better not to have
> these changes propagated into the long-term kernel versions.  That
> would keep the amount of backported changes to the bare minimum, i.e.
> containing just the really important fixes, while these changes are
> more on the correctness side.  Maybe together with providing a bit
> of additional safety.
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


Return-Path: <devicetree+bounces-70152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E89A8D2977
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 02:35:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 286BB1F258CA
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 00:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CA08159906;
	Wed, 29 May 2024 00:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="C1OW3VFy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2B617E8E4;
	Wed, 29 May 2024 00:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716942938; cv=none; b=lYAtxeURJwh4MZ/77vufcZPEIDWAJoh0XZeCgiOvLHtG8Mh+GBESyE0p9AhUEd13moOHUizJGapIFglQo3eIx3CFUvi9j++vfF3Zg0tBOjfLsU2gjAIYQRyHGMUSGe/VJjI98/ns1UEaNn5CU8FLHlIemfRG6AUMbVY2R57JyFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716942938; c=relaxed/simple;
	bh=pDF5uVZjP8nogCUiuKVbWn+Ir79wsPaKxGTKEXogdBc=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=ErKqdhPT+VSF0j+witg8n+3wiX4PCyN07sZKbw5IIrcpQIuK5P9+Bes9gaJV2+9zRfD9/s3aCZjaMbWwKFqjBxTOTxsmnArgCAW4v1lrAsnFAVE1Dg/HVncMBTgclFjz2Ucb0MRP2CBT1+p/FY8BSEhLbn5Sk5wYBcs4T7yx7Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=C1OW3VFy; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1716942934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=71X99pLxYEXtF/kBtjJLmEkhkBG5cLKD5nnB6W0SAu4=;
	b=C1OW3VFy+SO7kw6uH08RHiVPcT7IMWnvtM3S4sLhS8jy3VMPHLxLGvO6KjtjOuhbgx9xgU
	QA1y9QofRg6sRqoVPDCTH4epkik2pZaNUYD96LkNjm9JDxH5E0IGTz5SHb6MJ5R/5TX58S
	FrJuow9QXuSF/DfOgSbYfXCLqmpyK3HEJjhBOYkKXii3+DMt0hkjJOzTkVzLFK7lVq+Cf/
	UZZWDiBIXXTFibJcorWv6RJr+7tklxuzqak860Le6YPZGS3siE0bN6oChv0xqAwHF8biyl
	EYgd8+3GMaJWaCM55y+XOqliC9Blo+tF3KVvqxcq25GFIMPJD/B2Xpt709v5gg==
Date: Wed, 29 May 2024 02:35:34 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Quentin Schulz <quentin.schulz@cherry.de>, Heiko Stuebner
 <heiko@sntech.de>, Chen-Yu Tsai <wens@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, Diederik
 de Haas <didi.debian@cknow.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 0/6] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
In-Reply-To: <CABjd4Yxi=+3gkNnH3BysUzzYsji-=-yROtzEc8jM_g0roKB0-w@mail.gmail.com>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <5122636.irdbgypaU6@phil> <8727e1c29bd6f562a7fc3de0ddac62cf@manjaro.org>
 <6230150.aeNJFYEL58@phil>
 <CABjd4YyRJS0AGehuBTDn8ys9uRRkGc0Usme3GX1POq3AQiWTBA@mail.gmail.com>
 <646a33e0-5c1b-471c-8183-2c0df40ea51a@cherry.de>
 <CABjd4Yxi=+3gkNnH3BysUzzYsji-=-yROtzEc8jM_g0roKB0-w@mail.gmail.com>
Message-ID: <035a274be262528012173d463e25b55f@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Alexey and Quentin,

On 2024-05-28 21:26, Alexey Charkov wrote:
> On Tue, May 28, 2024 at 8:08 PM Quentin Schulz 
> <quentin.schulz@cherry.de> wrote:
>> On 5/28/24 5:42 PM, Alexey Charkov wrote:
>> > On Tue, 28 May 2024 at 19:16, Heiko Stuebner <heiko@sntech.de> wrote:
>> >> Am Dienstag, 28. Mai 2024, 17:01:48 CEST schrieb Dragan Simic:
>> >>> On 2024-05-28 16:34, Heiko Stuebner wrote:
>> >>>> Am Dienstag, 28. Mai 2024, 16:05:04 CEST schrieb Dragan Simic:
>> >>>>> On 2024-05-28 11:49, Alexey Charkov wrote:
>> >>>>>> Hi Heiko,
>> >>>>>>
>> >>>>>> Do you think this can be merged for 6.11? Looks like there hasn't
>> >> been
>> >>>>>> any new feedback in a while, and it would be good to have frequency
>> >>>>>> scaling in place for RK3588.
>> >>>>>>
>> >>>>>> Please let me know if you have any reservations or if we need any
>> >>>>>> broader discussion.
>> >>>>
>> >>>> not really reservations, more like there was still discussion going on
>> >>>> around the OPPs. Meanwhile we had more discussions regarding the whole
>> >>>> speed binning Rockchip seems to do for rk3588 variants.
>> >>>>
>> >>>> And waiting for the testing Dragan wanted to do ;-) .
>> >>>
>> >>> I'm sorry for the delays.
>> >>
>> >> Was definitly _not_ meant as blame ;-) .
>> >>
>> >> The series has just too many discussions threads to unravel on half
>> >> an afternoon.
>> >
>> >
>> > FWIW, I think the latest exchange we had with Quentin regarding the OPPs
>> > concluded in “false alarm”, given that this version of the series only
>> > introduces a subset of them which should apply to all RK3588(s)
>> 
>> Correct.
>> 
>> However... I'm wondering if we shouldn't somehow follow the same 
>> pattern
>> we have used for the rk3399 OPPs? We have a file for the "true" RK3399
>> OPPs, then the OP1 variant and the RK3399T.
>> 
>> We already know there are a few variants of RK3588 with different 
>> OPPs:
>> RK3588(S/S2?), RK3588J and RK3588M. I wouldn't be surprised if the
>> RK3582 (though this one has already one big cluster (or two big cores)
>> fewer than RK3588) has different OPPs as well?
>> 
>> So. We have already discussed that the OPPs in that patch are valid 
>> for
>> RK3588(S) but they aren't for the other variants.
> 
> Hmm. Looking at Rockchip sources [1] more closely as opposed to the
> Radxa tree I've been using as the basis, it does indeed show that
> RK3588J and RK3588M use a different OPP table altogether (frequencies
> are similar, but voltages differ).
> 
> We currently have an RK3588J based board in the mainline tree
> (rk3588-edgeble-neu6b-io.dts), so it can't be ignored. However, given
> that Rockchip sources only differentiate those OPPs by SoC revision,
> and that is (currently?) known for each board at dtb compile time, it
> seems easier to just include two different OPP tables for RK3588(S)
> vs. RK3588J - thus avoiding all the headache with opp-supported-hw.
> Similar to RK3399, yes.
> 
> Will split those out and send a separate version.

Ah, you already answered my question about the existence of supported
boards with the RK3588J and RK3588M variants. :) [2]  I totally agree
about splitting the OPPs into the separate .dtsi files, i.e. following
the approach already established by the RK3399.

Perhaps the new files should be named rk3588-opp.dtsi and 
rk3588j-opp.dtsi,
to (almost fully) follow the already established naming scheme.  Maybe
the OPP data could instead be added to the already existing rk3588.dtsi,
rk3588s.dtsi and rk3588j.dtsi files, which would actually make more 
sense
because those .dtsi files already address the specific SoC variants, but
the approach with the separate new rk3588*-opp.dtsi files seems cleaner
from the implementation point of view, and is a bit safer.

If you see a clean way for stuffing the OPP data into the already 
existing
rk3588.dtsi, rk3588s.dtsi and rk3588j.dtsi files, instead of introducing
new rk3588*-opp.dtsi files, I'd be happy to support it.

[2] 
https://lore.kernel.org/linux-rockchip/7b09e18e850ff0832bd7236810b83e64@manjaro.org/

>> In the downstream kernel, any OPP whose opp-supported-hw has a first
>> value masked by BIT(1) return non-0 is supported by RK3588M. In the
>> downstream kernel, any OPP whose opp-supported-hw has a first value
>> masked by BIT(2) return non-0 is supported by RK3588J.
>> 
>> This means that, for LITTLE clusters:
>> - opp-1608000000 not supported on RK3588J
>> - opp-1704000000 only supported on RK3588M (but already absent in this
>> patch series)
>> - opp-1800000000 only supported on RK3588(S), not RK3588J nor RK3588M
>> 
>> For big clusters:
>> - opp-1800000000 not supported on RK3588J
>> - opp-2016000000 not supported on RK3588J
>> - opp-2208000000 only supported on RK3588(S), not RK3588J nor RK3588M
>> - opp-2256000000 only supported on RK3588(S), not RK3588J nor RK3588M
>> - opp-2304000000 only supported on RK3588(S), not RK3588J nor RK3588M
>> - opp-2352000000 only supported on RK3588(S), not RK3588J nor RK3588M
>> - opp-2400000000 only supported on RK3588(S), not RK3588J nor RK3588M
>> 
>> This is somehow also enforced in downstream kernel by removing the OPP
>> nodes directly (hence, not even requiring the check of 
>> opp-supported-hw
>> value), c.f.:
>> https://git.theobroma-systems.com/tiger-linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
>> https://git.theobroma-systems.com/tiger-linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
>> 
>> You'll not that the RK3588J also has less OPPs for the GPU and NPU 
>> (but
>> those should also be masked by the opp-supported-hw value).
> 
> Same with DMC, but we don't currently have either DMC or NPU in the
> mainline tree, so it sounds like something to be dealt with later :)
> 
> [1] 
> https://github.com/rockchip-linux/kernel/blob/develop-5.10/arch/arm64/boot/dts/rockchip/rk3588s.dtsi


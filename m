Return-Path: <devicetree+bounces-134379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2FB9FD52B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:24:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF624161437
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FABE1F4E3F;
	Fri, 27 Dec 2024 14:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ut0dNskT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D351F4E3D
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 14:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735309487; cv=none; b=O0qKXgV6Je0i70Fnq7Xy5Yy88WdhwG61wC+fXeQvu7HfFlxMA8VFVBBx/BOH+aACtEDzPN69qIpFuv5uc/muN4wlOzQF/MQjA5WTOOyTxXVQGO2pNtQI66GIIan0S5QPLSAFYV91W1VfqtfCH9x60u4q/EuhusgfdiEQajGo/s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735309487; c=relaxed/simple;
	bh=yN3VCQ2eEgORihH+VjaLe4jj2hX5YThAKOA+kgDMBeI=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=iyXuG/VR/bqGX625ZSS/fWONGC4Dxu/5mHKgy3A/mkKZmyCRKLKoFRy9AIflEjDOWT3tvN7EtJZj88+3od7rpP6J2RFhzf216u6RGsvvdONYO462+nnwoD3IAjgZC3OwDDF048nipSg5x/PyLjID+46VXX51Pi60RsSzec8Mhkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ut0dNskT; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735309483;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X7apG0q46MEHqecnkYUy7rU574wIsENCI9mgJgDKee4=;
	b=ut0dNskTmiAvABEg8ub9FJjvur5A6EJOgFc6d//pXcwPebwLD+1USNgtK23DCrvT/lnjTH
	gmSGo0AB7sp1boZaXOOQC5L/7BhFXTgXyr5Dtx5fJb9XnjRozJJ4O7yTb0Q4/azp2+sz7K
	yPMki01qDID5Vm/5OYIENjPj+kH+h3EUCii/lB1oGWqZqihNiQjwfBg9b8WNTvAF0MQq/l
	uCKPn1RGcCy0WGShWPUA2u7NN7LWw4bcpH5ktNUD9ZFezy+NnBl46W9s2Si/zAN+ZWENbf
	ADxXfZAxn9bq/h9pNrUr9hDzWrPgAd7SRzz8r/HtgAeBJjDJZ8GlE99xV9Wy2w==
Date: Fri, 27 Dec 2024 15:24:42 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: Add Rockchip RK3588M
In-Reply-To: <CA+VMnFwjbXbjb5nP6FBASOr0Tz+nSNTx0OoQu31xtLHkoWgE_g@mail.gmail.com>
References: <20241227133420.169714-1-jagan@edgeble.ai>
 <8f40821508fde291aab01674618c0a2c@manjaro.org>
 <e03da44cd6ae417feeb3de3fbfbff7f9@manjaro.org>
 <CA+VMnFwjbXbjb5nP6FBASOr0Tz+nSNTx0OoQu31xtLHkoWgE_g@mail.gmail.com>
Message-ID: <340be9d5b8f187ba3eb8bee67fa04905@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-12-27 15:13, Jagan Teki wrote:
> On Fri, 27 Dec 2024 at 19:37, Dragan Simic <dsimic@manjaro.org> wrote:
>> On 2024-12-27 14:48, Dragan Simic wrote:
>> > Please see a comment below.
>> >
>> > On 2024-12-27 14:34, Jagan Teki wrote:
>> >> Rockchip RK3588M is the automotive-grade version of RK3588 SoC and
>> >> is operated with -40 °C to +85 °C temparature.
>> >>
>> >> Add rk3588m specific dtsi for adding rk3588m specific operating points
>> >> and other changes to be add in future.
>> >>
>> >> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>> >> ---
>> >>  arch/arm64/boot/dts/rockchip/rk3588m.dtsi | 7 +++++++
>> >>  1 file changed, 7 insertions(+)
>> >>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588m.dtsi
>> >>
>> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
>> >> b/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
>> >> new file mode 100644
>> >> index 000000000000..0bbeee399a63
>> >> --- /dev/null
>> >> +++ b/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
>> >> @@ -0,0 +1,7 @@
>> >> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> >> +/*
>> >> + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
>> >> + *
>> >> + */
>> >> +
>> >> +#include "rk3588-extra.dtsi"
>> >
>> > I don't think we need or want a separate rk3588m.dtsi file for this
>> > purpose, unless the RK3588M variant actually differs from the regular
>> > RK3588 variant from the software standpoint.  The latter is already
>> > described in rk3588.dtsi, so it should just be included in the new
>> > board dts(i) file.
>> 
>> Actually, after having a look at the downstream code, it seems that
>> the RK3588J and RK3588M variants share the same OPPs, so actually
>> rk3588j.dtsi should be used for the RK3588M variant.  Could you,
>> please, confirm this?
>> 
>> Alas, it seems we've got some serious issues in the OPPs currently
>> defined in rk3588j.dtsi, which I'll double check to make sure I'm not
>> going crazy, :) and submit a patch that fixes those OPPs.
>> 
>> If you could confirm the RK3588M == RK3588J assumption above, I can
>> add some additional clarification to the rk3588j.dtsi file in the
>> above-mentioned fixes.
> 
> As-far-as-i-know both OPPs were different due to computation grades J
> for Industrial and M for Automotive. What I saw from downstream
> linux-6.1-stan-rkr1 was a simple dtsi for M variant and might have
> changes to add OPPs which I cannot be sure at this point of time. I
> keep that dtsi as separate even though it is nothing as i was
> expecting some future changes on OPPs or so.

After checking the downstream code again, [*] it seems to me that
the RK3588J and RK3588M variants share the same OPPs.  Furthermore,
if the OPPs for the RK3588M variant cannot be defined accurately
at the moment, I'd suggest that the placeholder .dtsi is avoided
and that a complete per-variant .dtsi is added later, when the OPPs
are actually determined and defined.

Regarding the assumed issues with the current OPPs in rk3588j.dtsi,
it's all about the IPA complaining about the same-voltage, lower-
frequency OPPs being inefficient, which I already argued against.
I remain committed to proving that to be inaccurate, but until that
materializes, the current OPPs are there to stay.

[*] 
https://raw.githubusercontent.com/rockchip-linux/kernel/604cec4004abe5a96c734f2fab7b74809d2d742f/arch/arm64/boot/dts/rockchip/rk3588s.dtsi


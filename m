Return-Path: <devicetree+bounces-35371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F41A83D505
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:56:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A37311C216B8
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 08:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6750C25568;
	Fri, 26 Jan 2024 07:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="r7Ki8r/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3D562511E;
	Fri, 26 Jan 2024 07:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706253147; cv=none; b=G3tMatfKvmOn/EMhGXXojEkZboGldX+gfiXjo5rJnREpajQN+gXv8qIiuBzpMdUoIxDAz1RFNuqXWKxzTvfg20goF3pCEWr0iYhx2DmnS/rqB66MnqK4Na6VH9r7gOVxwEuCQLYebjdgWOg/E08t0GzFzYU71+ANDjDIssSyvV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706253147; c=relaxed/simple;
	bh=DecTU/CPqldmkZPTl/pP28a7SisONJrJ6hc7jiBLGfA=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=AabcDuCBwvUToqL+622uIuiIzdNN77Ba2qLbV+wItXW+az4lV0uu342yJoali6nhQuMGBYpNlRtfDd+QTnGs/5ynix+uKbQuzlmeCIOtlFYOOj1favTQtm4hzs3VfaRg6PyUBMC1iGpnhYRu8+8zdCzpZP/SUBqz8IZfnCuVS4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=r7Ki8r/v; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706252699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bjCHdJ0a2lNlVO12egQaAeCkKHH1kCrzRFTDescXGXk=;
	b=r7Ki8r/v8mApvwBcSjH+f7oN6Ek6MNlPHhCruhod24mqvf95HZ2rXFdSi8tUfXOBJFevlb
	PnqjVs6KKrhBpCmOA3xVKamzxKvj4HxeSSLPKShZ7CmZoDqxxWqrf8fYYUxeLvxR2h9Utr
	ziW+zDLAaRs4lZCg43lZlLtMOAfpIGXSSdfYu4mJQFD1BvBJQas5HNDynN6ocXZBO0oHtx
	vjbnf3s1iKxptjN4Q4hT+y4v7VRjfu39GKe4T3Dr+IjZ7xc8TmkDmC+DSRgQnEdt82UIdI
	JTK+/pDlcDSzcm5c7+JwVe23N7kZ9ljL8blm55Zvv2Po0aGeC990VaGDggV9iA==
Date: Fri, 26 Jan 2024 08:04:59 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add OPP data for CPU cores on
 RK3588
In-Reply-To: <CABjd4YxSTLZjrnSCn0fh81US682-uhZ16-cgydzz97shhCpq4w@mail.gmail.com>
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-4-5879275db36f@gmail.com>
 <731aac66-f698-4a1e-b9ee-46a7f24ecae5@linaro.org>
 <ccc004cfae513195351ce0a79e12f6af@manjaro.org>
 <CABjd4YxSTLZjrnSCn0fh81US682-uhZ16-cgydzz97shhCpq4w@mail.gmail.com>
Message-ID: <1f0608831cfb95c80edf16cd751eee76@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Alexey,

On 2024-01-26 07:44, Alexey Charkov wrote:
> On Fri, Jan 26, 2024 at 10:32 AM Dragan Simic <dsimic@manjaro.org> 
> wrote:
>> On 2024-01-25 10:30, Daniel Lezcano wrote:
>> > On 24/01/2024 21:30, Alexey Charkov wrote:
>> >> By default the CPUs on RK3588 start up in a conservative performance
>> >> mode. Add frequency and voltage mappings to the device tree to enable
>> >> dynamic scaling via cpufreq
>> >>
>> >> Signed-off-by: Alexey Charkov <alchark@gmail.com>
>> >> ---
>> >>   arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 209
>> >> ++++++++++++++++++++++++++++++
>> >>   1 file changed, 209 insertions(+)
>> >>
>> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> >> b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> >> index 131b9eb21398..e605be531a0f 100644
>> >> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> >> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> >> @@ -97,6 +97,7 @@ cpu_l0: cpu@0 {
>> >>                      clocks = <&scmi_clk SCMI_CLK_CPUL>;
>> >>                      assigned-clocks = <&scmi_clk SCMI_CLK_CPUL>;
>> >>                      assigned-clock-rates = <816000000>;
>> >> +                    operating-points-v2 = <&cluster0_opp_table>;
>> >>                      cpu-idle-states = <&CPU_SLEEP>;
>> >>                      i-cache-size = <32768>;
>> >>                      i-cache-line-size = <64>;
>> >> @@ -116,6 +117,7 @@ cpu_l1: cpu@100 {
>> >>                      enable-method = "psci";
>> >>                      capacity-dmips-mhz = <530>;
>> >>                      clocks = <&scmi_clk SCMI_CLK_CPUL>;
>> >> +                    operating-points-v2 = <&cluster0_opp_table>;
>> >>                      cpu-idle-states = <&CPU_SLEEP>;
>> >>                      i-cache-size = <32768>;
>> >>                      i-cache-line-size = <64>;
>> >> @@ -135,6 +137,7 @@ cpu_l2: cpu@200 {
>> >>                      enable-method = "psci";
>> >>                      capacity-dmips-mhz = <530>;
>> >>                      clocks = <&scmi_clk SCMI_CLK_CPUL>;
>> >> +                    operating-points-v2 = <&cluster0_opp_table>;
>> >>                      cpu-idle-states = <&CPU_SLEEP>;
>> >>                      i-cache-size = <32768>;
>> >>                      i-cache-line-size = <64>;
>> >> @@ -154,6 +157,7 @@ cpu_l3: cpu@300 {
>> >>                      enable-method = "psci";
>> >>                      capacity-dmips-mhz = <530>;
>> >>                      clocks = <&scmi_clk SCMI_CLK_CPUL>;
>> >> +                    operating-points-v2 = <&cluster0_opp_table>;
>> >>                      cpu-idle-states = <&CPU_SLEEP>;
>> >>                      i-cache-size = <32768>;
>> >>                      i-cache-line-size = <64>;
>> >> @@ -175,6 +179,7 @@ cpu_b0: cpu@400 {
>> >>                      clocks = <&scmi_clk SCMI_CLK_CPUB01>;
>> >>                      assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>;
>> >>                      assigned-clock-rates = <816000000>;
>> >> +                    operating-points-v2 = <&cluster1_opp_table>;
>> >>                      cpu-idle-states = <&CPU_SLEEP>;
>> >>                      i-cache-size = <65536>;
>> >>                      i-cache-line-size = <64>;
>> >> @@ -194,6 +199,7 @@ cpu_b1: cpu@500 {
>> >>                      enable-method = "psci";
>> >>                      capacity-dmips-mhz = <1024>;
>> >>                      clocks = <&scmi_clk SCMI_CLK_CPUB01>;
>> >> +                    operating-points-v2 = <&cluster1_opp_table>;
>> >>                      cpu-idle-states = <&CPU_SLEEP>;
>> >>                      i-cache-size = <65536>;
>> >>                      i-cache-line-size = <64>;
>> >> @@ -215,6 +221,7 @@ cpu_b2: cpu@600 {
>> >>                      clocks = <&scmi_clk SCMI_CLK_CPUB23>;
>> >>                      assigned-clocks = <&scmi_clk SCMI_CLK_CPUB23>;
>> >>                      assigned-clock-rates = <816000000>;
>> >> +                    operating-points-v2 = <&cluster2_opp_table>;
>> >>                      cpu-idle-states = <&CPU_SLEEP>;
>> >>                      i-cache-size = <65536>;
>> >>                      i-cache-line-size = <64>;
>> >> @@ -234,6 +241,7 @@ cpu_b3: cpu@700 {
>> >>                      enable-method = "psci";
>> >>                      capacity-dmips-mhz = <1024>;
>> >>                      clocks = <&scmi_clk SCMI_CLK_CPUB23>;
>> >> +                    operating-points-v2 = <&cluster2_opp_table>;
>> >>                      cpu-idle-states = <&CPU_SLEEP>;
>> >>                      i-cache-size = <65536>;
>> >>                      i-cache-line-size = <64>;
>> >> @@ -348,6 +356,207 @@ l3_cache: l3-cache {
>> >>              };
>> >>      };
>> >>   +  cluster0_opp_table: opp-table-cluster0 {
>> >> +            compatible = "operating-points-v2";
>> >> +            opp-shared;
>> >> +
>> >> +            opp-408000000 {
>> >> +                    opp-hz = /bits/ 64 <408000000>;
>> >> +                    opp-microvolt = <675000 675000 950000>;
>> >> +                    clock-latency-ns = <40000>;
>> >> +            };
>> >> +            opp-600000000 {
>> >> +                    opp-hz = /bits/ 64 <600000000>;
>> >> +                    opp-microvolt = <675000 675000 950000>;
>> >> +                    clock-latency-ns = <40000>;
>> >> +            };
>> >> +            opp-816000000 {
>> >> +                    opp-hz = /bits/ 64 <816000000>;
>> >> +                    opp-microvolt = <675000 675000 950000>;
>> >> +                    clock-latency-ns = <40000>;
>> >> +            };
>> >> +            opp-1008000000 {
>> >> +                    opp-hz = /bits/ 64 <1008000000>;
>> >> +                    opp-microvolt = <675000 675000 950000>;
>> >> +                    clock-latency-ns = <40000>;
>> >> +            };
>> >
>> > It is not useful to introduce OPP with the same voltage. There is no
>> > gain in terms of energy efficiency as the compute capacity is linearly
>> > tied with power consumption (P=CxFxV²) in this case.
>> >
>> > For example, opp-408 consumes 2 bogoWatts and opp-816 consumes 4
>> > bogoWatts (because of the same voltage).
>> >
>> > For a workload, opp-408 takes 10 sec and opp-816 takes 5 sec because
>> > it is twice faster.
>> >
>> > The energy consumption is:
>> >
>> > opp-408 = 10 x 2 = 20 BogoJoules
>> > opp-816 = 5 x 4 = 20 BogoJoules
>> 
>> I'd respectfully disagree that including multiple OPPs with the same
>> voltage
>> but different frequencies isn't useful.  Please allow me to explain.
>> 
>> See, the total amount of consumed energy is, in general, the same for
>> such
>> OPPs and the same CPU task(s), if we ignore the static leakage current
>> and
>> such stuff, which isn't important here.  Though, the emphasis here is 
>> on
>> "total", i.e. without taking into account the actual amount of time
>> required
>> for the exemplified CPU task(s) to complete.  If the total amount of
>> time
>> is quite short, we aren't going to heat up the package and the board
>> enough
>> to hit the CPU thermal throttling;  this approach is also sometimes
>> referred
>> to as "race to idle", which is actually quite effective for
>> battery-powered
>> mobile devices that tend to load their CPU cores in bursts, while
>> remaining
>> kind of inactive for the remaining time.
>> 
>> However, if the CPU task(s) last long enough to actually saturate the
>> thermal
>> capacities of the package and the board or the device, we're getting
>> into the
>> CPU throttling territory, in which running the CPU cores slower, but
>> still as
>> fast as possible, may actually be beneficial for the overall CPU
>> performance.
>> By running the CPU cores slower, we're lowering the power and
>> "spreading" the
>> total energy consumption over time, i.e. we're making some time to 
>> allow
>> the
>> generated heat to dissipate into the surroundings.  As we know, having
>> more
>> energy consumed by the SoC means more heat generated by the SoC, but 
>> the
>> resulting temperature of the SoC depends on how fast the energy is
>> consumed,
>> which equals to how fast the CPUs run;  of course, all that is valid
>> under
>> the reasonable assumption that the entire cooling setup, including the
>> board
>> surroundings, remains unchanged all the time.
> 
> On the other hand, convective heat dissipation is approximately
> proportional to the temperature differential, therefore heating up the
> core to a higher temperature over a shorter period of time would let
> it dissipate the same joule amount faster. Given that total joules

Let me point out that the emphasis is again on "shorter period". :)
Yes, when the CPU load is bursty, having multiple same-voltage OPPs
almost surely won't help us at all, as I already noted.  However,
the things will surely change when the CPU cores are loaded for
longer amounts of time and, as a result, the defined thermal trips
are reached, because the cooling system gets saturated.

> generated for a particular load are approximately the same for
> different frequencies as long as voltage remains the same (as Daniel
> pointed out), higher frequency seems to lead to better heat transfer
> to the environment for the same load. And also the task completes
> sooner, which is probably always good, ceteris paribus.
> 
> Not sure how that all changes when throttling enters the game though :)

As I already noted above, the things are quite different when the CPU
load isn't bursty.  Once the cooling setup is saturated, the heat no
longer gets transferred effectively to the surroundings, while the CPU
cores keep producing the heat, which cannot continue indefinitely.  As
a result, the CPU cores need to run slower and "spread" the total amount
of joules over time, but they still should run as fast as possible.
Another option is to introduce active cooling, which also comes with
its own set of limits, but the initial assumption is that the cooling
setup remains unchanged.

In the end, if all that weren't the case, we wouldn't need CPU thermal
throttling at all, or not as much. :)


Return-Path: <devicetree+bounces-95028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6C1957BE8
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 05:26:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA6D01F2383C
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 03:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF914962C;
	Tue, 20 Aug 2024 03:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="S3hDBGLv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F8B481CE;
	Tue, 20 Aug 2024 03:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724124383; cv=none; b=oJ6k0pKNxXwLaIvlhYijIJag9xXx59V6ZD4wZ3o+gbm1v/6jQgQyUgIJB762oZr5vI4S125C60ys1BGOUd7cuJlS13ZrhuKFsFiHsJx0ZL4bIJ8cIKp5AKWZipgPdsor86+C5ShOq3Ei9RarlAYMNkp6YTj5DxZnT+u4Yoq+sYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724124383; c=relaxed/simple;
	bh=KE/PULkJsZKFrnjGgWeIrSqHAyb40nU3jcf8fplExkQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=h0IqND8cv1LMIPfbhSrFVU6ZDGxNYbmOtLI0MtXCer7qLBoQWk+xEzjlfziZeed9ywW/32dvjRxp6PO6i+r4QYVHZgIzkFh38qLXoANqvAKHx9/3MtC04OtGUSV8Lg9mnzpb3uykuxc/hcj0CC49jCHnRcVYuYGNN+zACv6MRdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=S3hDBGLv; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724124377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=emZjidsQEPIpW+TQw3p+hYsmcENgp0Z3u/QNNP8WrEA=;
	b=S3hDBGLvWkRgUwq01kVm2Qbh70Ui1A4q0GC9d/lu/xMJgx0L6DvgqNH8NysWDgIDiLUyjA
	zX8rztTIj9px4oSnXwl4it4kSa2PNOleesZfCBQOjEXV3I6L/CBd7kEHvYpErJZHHdI/gI
	8upN0DvTku2eOVy530tx+iBQXYCJU0I38brGykFlbCpvb1LDJz3ns1mLnTaz5R6FgcPOpK
	pdxXBaaViZkBHjJTV87R3B21fgto3FwLfySbHgITxIyM50RSHkjwDT4vTLjHlIJ9mQ3DDY
	ZGwrsEcH2E6zDkTbxImUzRHAvIFtDwWmWY2PEw9u/0Qr0dGD49Yuoiizaau/zw==
Date: Tue, 20 Aug 2024 05:26:15 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Icenowy Zheng <uwu@icenowy.me>, linux-sunxi@lists.linux.dev,
 wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, wenst@chromium.org, broonie@kernel.org
Subject: Re: [PATCH] arm64: dts: allwinner: Add GPU thermal trips to the SoC
 dtsi for A64
In-Reply-To: <d8584ac7-5576-4f26-8bc8-1ecbb4bd4611@linaro.org>
References: <a17e0df64c5b976b47f19c5a29c02759cd9e5b8c.1723427375.git.dsimic@manjaro.org>
 <24406e36f6facd93e798113303e22925b0a2dcc1.camel@icenowy.me>
 <25b65e9ef1cae59a8366532cc8db576b@manjaro.org>
 <d8584ac7-5576-4f26-8bc8-1ecbb4bd4611@linaro.org>
Message-ID: <124e8c2a984d3c2775264fae85cd41b7@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Daniel,

On 2024-08-19 17:42, Daniel Lezcano wrote:
> On 12/08/2024 04:46, Dragan Simic wrote:
>> On 2024-08-12 04:40, Icenowy Zheng wrote:
>>> 在 2024-08-12星期一的 04:00 +0200，Dragan Simic写道：
>>>> Add thermal trips for the two GPU thermal sensors found in the
>>>> Allwinner A64.
>>>> There's only one GPU OPP defined since the commit 1428f0c19f9c
>>>> ("arm64: dts:
>>>> allwinner: a64: Run GPU at 432 MHz"), so defining only the critical
>>>> thermal
>>>> trips makes sense for the A64's two GPU thermal zones.
>>>> 
>>>> Having these critical thermal trips defined ensures that no hot 
>>>> spots
>>>> develop
>>>> inside the SoC die that exceed the maximum junction temperature.
>>>> That might
>>>> have been possible before, although quite unlikely, because the CPU
>>>> and GPU
>>>> portions of the SoC are packed closely inside the SoC, so the
>>>> overheating GPU
>>>> would inevitably result in the heat soaking into the CPU portion of
>>>> the SoC,
>>>> causing the CPU thermal sensor to return high readings and trigger
>>>> the CPU
>>>> critical thermal trips.  However, it's better not to rely on the 
>>>> heat
>>>> soak
>>>> and have the critical GPU thermal trips properly defined instead.
>>>> 
>>>> While there, remove a few spotted comments that are rather 
>>>> redundant,
>>>> because
>>>> it's pretty much obvious what units are used in those places.
>>> 
>>> This should be another individual patch, I think.
>> 
>> Perhaps, which I already thought about, but it might also be best
>> to simply drop the removal of those redundant comments entirely.
>> Let's also see what will other people say.
>> 
>>>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>>>> ---
>>>>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 22 
>>>> ++++++++++++++---
>>>> --  1 file changed, 16 insertions(+), 6 deletions(-)
>>>> 
>>>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>>> b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>>> index e868ca5ae753..bc5d3a2e6c98 100644
>>>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
>>>> @@ -212,7 +212,6 @@ timer {
>>>> 
>>>>         thermal-zones {
>>>>                 cpu_thermal: cpu0-thermal {
>>>> -                       /* milliseconds */
>>> 
>>> The unit of a 0 isn't not so obvious I think, so I suggest to keep
>>> this.
>> 
>> Quite frankly, I think it should be obvious to anyone tackling
>> the thermal zones and trips.
> 
> You can remove also polling-delay-passive and  polling-passive when
> they are equal to zero. If they are absent they will be set to zero by
> default.

Good point, thanks!  Though, I'd rather leave those "... = <0>;"
removals for a small follow-up series, because those changes touch
more actual code than just the comments, so it's better to keep them
as separate changes for easier bisection later, if it's ever needed.
Hopefully never. :)

I just made a note for myself to create and submit those follow-up
cleanup patches later, for all affected Allwinner and Rockchip SoC
dtsi files.

> That said, I take the opportunity to spot some inconsistency in this
> DT not related to this change.
> 
> 1. There is a passive trip point and one cooling device mapped to it.
> With a polling-delay-passive=0, the mitigation will fail

Huh, how is the CPU throttling working then?  Thanks for pointing it
out, I'll address this issue in the follow-up patches.

> 2. There is a second mapping for the hot trip point. That does not
> make sense, it is not possible because there is no mitigation for
> 'hot' and 'critical' trip points.

Yup, I see no special handling of tz->ops.hot, so having the hot trip
point makes no sense.  Thanks again for pointing it out, I'll address
this issue in the follow-up patches as well.

I'll send the v2 soon, as a small patch series, and I'll send a few
follow-up patches later.


Return-Path: <devicetree+bounces-133501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 090E79FAD0C
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:17:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 787D5164E0D
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC81189B80;
	Mon, 23 Dec 2024 10:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="OS6lF9DA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF6417BB35
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734949066; cv=none; b=crGE3ubBiXqPgPefWpSil3DXbi6sJ9ig+GmxXx8FuCnO36icdCZLE9prP5pjUZg8gpt3AmWS/EXGVzu6LbzXJnG4aPsBqPbsYJ0Xb7c4fp6gp+3EprzjXZAA/EFIKvwzL1U7/+Sbq8sMHz5NW2WEvHfBpbiVrbM/+SBa8lKB+uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734949066; c=relaxed/simple;
	bh=yv41EqSGqvwQ0rCt+u49dQfBErVVdzza6knHvpfKbnQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=X1wQog/E/7KbIW2TJWNWApJGZHIo9GjorFsYnTC4NMvf/tESsCAV4FgVLhY9jivwk4tuox0XywrjLjgYe20wCR7uFS9g3088R2HO9k4YSvTWZcz1oyLlnSWxKSBS4RVJKRgribxQi3fkmfMeR9yWOQb+FUUoTnbsfIft9y8SadY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=OS6lF9DA; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734949062;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=enmGRB08NO3QtmnFWnrY/j35Ct4goMW51ko1m6ZxXIE=;
	b=OS6lF9DA3Qk56GSVsHBoA4h/fjqlpxfSN90yeEsrNDQqipZ75LyawXRLUOupkoFB+jtvSQ
	8e+hh/d3Fy895oHRhXzAw9fB5oDpvosl8xHP/CTroTzSlfqv9wdmuHBt50Pfx9ACjmNNhR
	5cC76hhTuFWsL2crVeHQGFxlxhkBhKkVEodCtkfKf3N9AoCA5UgWLrV6jSz4TZSCbGiEC3
	/+4T+wN4YSi96It+UCRalHnGu2eKDdbz5cZUM3DalRXJ0kTwWbWUlQTLQKu1ePrLehqHec
	EYH53Xpm9QvXi9urcH18XEc26NhOocnLusK7BXwy67QomvFsHkBta2N5OAKYgQ==
Date: Mon, 23 Dec 2024 11:17:42 +0100
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
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E52C
In-Reply-To: <87zfkmrb4u.wl-maz@kernel.org>
References: <20241222030355.2246-1-naoki@radxa.com>
 <20241222030355.2246-4-naoki@radxa.com> <87zfkmrb4u.wl-maz@kernel.org>
Message-ID: <2a00f25b95cca5f43631188c996d98b9@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Marc,

On 2024-12-23 10:39, Marc Zyngier wrote:
> On Sun, 22 Dec 2024 03:03:55 +0000,
> FUKAUMI Naoki <naoki@radxa.com> wrote:
>> 
>> Radxa E52C is a compact network computer[1] based on the Rockchip
>> RK3582 SoC:
>> 
>> - Dual Cortex-A76 and quad Cortex-A55 CPU
> 
> So you have *two* big cores.
> 
>> - 5TOPS NPU
>> - 2GB/4GB/8GB LPDDR4 RAM
>> - 16GB/32GB/64GB on-board eMMC
>> - microSD card slot
>> - USB 3.0 Type-A HOST port
>> - USB Type-C debug port
>> - USB Type-C power port (5V only)
>> - 2x 2.5GbE ports
>> 
>> [1] https://radxa.com/products/network-computer/e52c
>> 
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>  .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 729 
>> ++++++++++++++++++
>>  2 files changed, 730 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> 
> [...]
> 
>> +&cpu_b0 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b1 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b2 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
>> +
>> +&cpu_b3 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
> 
> And yet you configure 4. If your HW only has 2 A76s, surely something
> should remove these cores for this platform rather than keep them
> around.

Indeed, U-Boot will do that, based on the efuses that contain the
data required to determine which CPU cores (and/or clusters) are
defective and need to be marked as disabled.

Maybe we should add a comment block above the "cpu_b0" node, to
describe that a bit better.  Perhaps something like this:

   /*
    * In the Rockchip RK3582 SoC, some CPU cores end up disabled
    * and unused because they're marked in the efuses as defective.
    * The disabling in the DT is performed by the boot loader.
    */


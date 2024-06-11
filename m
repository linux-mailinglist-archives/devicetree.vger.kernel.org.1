Return-Path: <devicetree+bounces-74644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE63903DDA
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 15:45:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E19401C235B5
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 13:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2776717BB35;
	Tue, 11 Jun 2024 13:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="laDIbpet"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C1D17CA1F
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 13:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718113517; cv=none; b=lqLPBsRRR57XSJR6DaEjhzrU7KiiDJ4ET5qC1gooB8rYdtHGxlbVRU/VHtkJlhEEk6msDTZWHuwEzX2GfAzghlf+dlEfFepfDDbwWFZwJtM3XLNCOQXc3QpECU/dWccFFKmq1EIiuMRG3Ci9YTNmFPnjtiUL3qq2twB5SLmeE/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718113517; c=relaxed/simple;
	bh=tGV0yW6Vqjn0pOmxf0hMfTrTF1CAaRfTdcEk+AEoUtM=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Z8abkF2s+Jpa41VmNekZmEteqnpeSsOjruDHgg7GUpoy3woc5XGqq5MqHMnJjnctdvU8rsimaIQCEoeIvNCRIBwWnBDAiEQtcbTJ/F+SNlEen2xwCgF04+HctDQvlWHDXkMjrvPQraWJy57iM66o3lyniIBeNbX3JH4KlrVW8wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=laDIbpet; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1718113512;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mq+XUbOQTasbljOXG9FBMpNsbA7KaBvpm+EiPTkx5jc=;
	b=laDIbpetIWRCx+4xc5V97cy6sqdkD4+CBP+ua3/W3LmK8WU4kHCiVayQDNQNdXouzjmyij
	wOqGNzBmyBtDLiLXIVUFJHRYJUWlEUdEjhmLQxNEY8KVj2YZ5MiLnDRtXGWFKQFh4IqujM
	myLKWH5l5HXw1FuO8AVsY9IwecsXgHcr3YOD0+LtHmLnDe10YP24fJ3JmhVSkxQLOTZ0VZ
	XyNWbIaKjxjcPx/w1bOF+7ixYeTCyGkoz92dJyHGSiC8gRQKCoVvZpR5h3P4OSrzpiTPyk
	w9N1JPtSFONdLNMkQqSHMmP+qEG3qRzie986WQb821mP3yVdRtpaMsSw4a65zQ==
Date: Tue, 11 Jun 2024 15:45:12 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: make "poweroff" work on rock-5a
In-Reply-To: <f623e316c7f94a318c78da9c48f66dc7@manjaro.org>
References: <20240611122746.751-1-naoki@radxa.com>
 <f623e316c7f94a318c78da9c48f66dc7@manjaro.org>
Message-ID: <bf202a47cc6453d5aaacf09a29009380@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-06-11 15:37, Dragan Simic wrote:
> Hello Fukami,
> 
> On 2024-06-11 14:27, FUKAUMI Naoki wrote:
>> to make "poweroff" command work, add "system-power-controller;" into
>> pmic@0. without this, "poweroff" works as same as "reboot".

Sorry, I forgot to add that the description above could be reworded
a bit, e.g. not to repeat what's already visible in the patch itself.

For example:

     Designate the RK806 PMIC on the Radxa ROCK 5A as the system power
     controller, so the board shuts down properly on poweroff(8).

The patch subject could also be tweaked a bit, e.g. to refer to the
board as "Radxa ROCK 5A".

>> Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> Looking good to me, with a small remark below.
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> 
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 2 ++
>>  1 file changed, 2 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> index b070955627be..cf7b878a3eb2 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> @@ -395,6 +395,8 @@ pmic@0 {
>>  			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
>>  		spi-max-frequency = <1000000>;
>> 
> 
> I don't think there's need for the empty line right above, i.e.
> between the "spi-max-frequency" and "system-power-controller" lines.
> 
>> +		system-power-controller;
>> +
>>  		vcc1-supply = <&vcc5v0_sys>;
>>  		vcc2-supply = <&vcc5v0_sys>;
>>  		vcc3-supply = <&vcc5v0_sys>;
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


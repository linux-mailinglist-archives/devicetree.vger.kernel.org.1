Return-Path: <devicetree+bounces-140743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B5850A1B397
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 11:37:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 109E916A3A0
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 10:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8DDE1CDA04;
	Fri, 24 Jan 2025 10:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Y2m7JB18"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E0E81CDA01;
	Fri, 24 Jan 2025 10:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737715030; cv=none; b=Jxa9mfjTyLBswGQGCCujdPqxZvkJtSD7HlSTdi9Q6kjmGMBSgNvOh7xbI8zpMYmMtWSRU1yMIlhHzKVl68EmAh6X2IHtchmZpgEBqoZ4wmIb3Hy99g2geU9kcY/C1LvPQrXXNEEPD1N4/O8n3TD76YawN5dQsO82b44nwI26xNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737715030; c=relaxed/simple;
	bh=yAI4mR83QOPaWvR9W7t90n1loE991vvjaa2bLBnx1bI=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=jWZSpBFMYY3j3Hxtt6/vASSHLeIlE3cyUKMqQs4kfLDNgS1TuZpnQn+fushYi6BC19WEJIVcYwGn8mnAwP58icMmo24wu2walNpEuXTJX4cvG/aBbrhJbECtS9ZvpJAvYvrhw/ovjAj15GHsUttaiGGBEonjrbvqcc31pK9td00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Y2m7JB18; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737715026;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qut7dtNiJ0EjOhPsNaw96lXsUIuxlOfalPVxYzFJpjE=;
	b=Y2m7JB18UVW2v/MAOSH+OVb7u4Hh6y+MVpWW22Nem84MrECxywTcgUdUUgMV94srqTzNKW
	tuwLyeA4A55lbOVIjtUWBJqCiXcRpeDmL5WnOYJ6BcJkeALU+yumIoYaNe+qJ6rgkYCh6K
	UHGDAt0XBYObNFqqGZoK1UN44FdpXNQOjaM0kyCPhDVMRaUacs3+XIulRF7uxbZtwFrs3T
	H8uFGVZLsgz3laMWT7F32C+/Ovps2X/ZqyhEGuGCVVfHk/if/UroELY9OTK4SJmZfX2cOf
	HHLhbYw3uEWkpNw150PTUL53OQsItUFnrcdNelKzY3zu5SRA01Pr5WSnMz3hIg==
Date: Fri, 24 Jan 2025 11:37:05 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>, Rob Herring
 <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, devicetree@vger.kernel.org, Sebastian Reichel
 <sebastian.reichel@collabora.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
In-Reply-To: <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
 <a76f315f023a3f8f5435e0681119b4eb@manjaro.org>
 <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
Message-ID: <61b494b209d7360d0f36adbf6d5443a4@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2025-01-24 11:25, Alexey Charkov wrote:
> On Fri, Jan 24, 2025 at 2:06 PM Dragan Simic <dsimic@manjaro.org> 
> wrote:
>> On 2025-01-24 09:33, Alexey Charkov wrote:
>> > On Fri, Jan 24, 2025 at 9:26 AM Alexander Shiyan
>> > <eagle.alexander923@gmail.com> wrote:
>> >>
>> >> There is no pinctrl "gpio" and "otpout" (probably designed as
>> >> "output")
>> >> handling in the tsadc driver.
>> >> Let's use proper binding "default" and "sleep".
>> >
>> > This looks reasonable, however I've tried it on my Radxa Rock 5C and
>> > the driver still doesn't claim GPIO0 RK_PA1 even with this change. As
>> > a result, a simulated thermal runaway condition (I've changed the
>> > tshut temperature to 65000 and tshut mode to 1) doesn't trigger a PMIC
>> > reset, even though a direct `gpioset 0 1=0` does.
>> >
>> > Are any additional changes needed to the driver itself?
>> 
>> I've been digging through this patch the whole TSADC/OTP thing in the
>> last couple of hours, and AFAIK some parts of the upstream driver are
>> still missing, in comparison with the downstream driver.
>> 
>> I've got some small suggestions for the patch itself, but the issue
>> you observed is obviously of higher priority, and I've singled it out
>> as well while digging through the code.
>> 
>> Could you, please, try the patch below quickly, to see is it going to
>> fix the issue you observed?  I've got some "IRL stuff" to take care of
>> today, so I can't test it myself, and it would be great to know is it
>> the right path to the proper fix.
>> 
>> diff --git i/drivers/thermal/rockchip_thermal.c
>> w/drivers/thermal/rockchip_thermal.c
>> index f551df48eef9..62f0e14a8d98 100644
>> --- i/drivers/thermal/rockchip_thermal.c
>> +++ w/drivers/thermal/rockchip_thermal.c
>> @@ -1568,6 +1568,11 @@ static int rockchip_thermal_probe(struct
>> platform_device *pdev)
>>          thermal->chip->initialize(thermal->grf, thermal->regs,
>>                                    thermal->tshut_polarity);
>> 
>> +       if (thermal->tshut_mode == TSHUT_MODE_GPIO)
>> +               pinctrl_select_default_state(dev);
>> +       else
>> +               pinctrl_select_sleep_state(dev);
> 
> I believe no 'else' block is needed here, because if tshut_mode is not
> TSHUT_MODE_GPIO then the TSADC doesn't use this pin at all, so there's
> no reason for the driver to mess with its pinctrl state. I'd rather
> put a mirroring block to put the pin back to its 'sleep' state in the
> removal function for the TSHUT_MODE_GPIO case.

You're right, but the "else block" is what the downstream driver does,
so I think it's better to simply stay on the safe side and follow that
logic in the upstream driver.  Is it really needed?  Perhaps not, but
it also shouldn't hurt.

> Will try and revert.

Awesome, thanks!

> P.S. Just looked at the downstream driver, and it actually calls
> TSHUT_MODE_GPIO TSHUT_MODE_OTP instead, so it seems that "otpout" was
> not a typo in the first place. So maybe the right approach here is not
> to change the device tree but rather fix the "gpio" / "otpout" pinctrl
> state handling in the driver.

Indeed, "otpout" wasn't a typo, and I've already addressed that in my
comments to Alexander's patch.  Will send that response a bit later.

I think it's actually better to accept the approach in Alexander's
patch, because the whole thing applies to other Rockchip SoCs as well,
not just to the RK3588(S).


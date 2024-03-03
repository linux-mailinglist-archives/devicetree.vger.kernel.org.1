Return-Path: <devicetree+bounces-47957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B30E186F6B2
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 20:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 690A91F213E1
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 19:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B766876C68;
	Sun,  3 Mar 2024 19:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="appIAN0W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCC576402
	for <devicetree@vger.kernel.org>; Sun,  3 Mar 2024 19:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709493029; cv=none; b=oLqyrAx45dzJ2XJq9qHhmRhV57xLLnbnL1RmHZbfhfGoLsH6Gusd4aoliE54iLcdE4+QqoZUo5tz+oZuT+pGZ7ky+wDU64EogCXfJks4mrXcIHILFtFArW1x9lMoGKJFJFbnW8yha4oT5/G6wRpeORpWl76x7wQsBWAY23J17KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709493029; c=relaxed/simple;
	bh=33c4ErlDXydXzS4lvPrHb2tYkuIJDzIGCiPlGZkRFB0=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=LJ9HHrPZH9d0fNlv/N1uB+NalxqoYs394zBpM2Xun8lZjefJbfIi5IQibpPwpUzxzfpuoeAPpDkl4LZSDJLULHUshJd8jyHDPVtAMtRf6/Ofu+lJ2PV3LrguHXtGJ2jhlXzlbE8Q5VavPRm6JNIWKmhSQIqKaT9d4PmUTKx8h+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=appIAN0W; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709493025;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9zsci0ipfb28kkSEvdT94LtEYGi67KuOJBD6SRMRDTM=;
	b=appIAN0WS0DzsDeQV+CUAHLw6i6dwasbBxNCU8PRK4Kj8YEVBYYqld5SqoF4dV5n6CjwVR
	vSbLLXvjfW+LiGX0BGHvnW0IgTh3fXSm8AVnALEqW727WtnINhQnpPJRdvfphd1J2LMoj0
	4Vt9nBOs7ohcUvI+6kCkWe6J6YVQjGK+v1IRFU+TVtcPHb2C4YjnmJh+D/y+vbQazkbSCl
	w85hZrMZJSeQ2WPh0KLx42+M/KKNxgQuO9OLuzGfmYRw1TrUEyD626VU2Vhb8wtjhSDVNx
	wgDsxS6b9KOkgmzlOboHHMmeE1q+m368Odiw6QCWZiJn8GmbVgWyrVP0gJ1r1A==
Date: Sun, 03 Mar 2024 20:10:25 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, Kyle Copperfield
 <kmcopper@danwin1210.me>, Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3399
In-Reply-To: <7e1d4611079375f92f6ab7d446160200@manjaro.org>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
 <0476656a-6d3d-4662-879a-1caf0efb4d9e@linaro.org>
 <fc03e6046bba49b6a4b0794412e0bac6@manjaro.org> <2157455.yIU609i1g2@diego>
 <7e1d4611079375f92f6ab7d446160200@manjaro.org>
Message-ID: <a9f7d25d3fc89fb5ea1b2c2c72fb2682@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-01-04 10:12, Dragan Simic wrote:
> On 2024-01-04 10:07, Heiko Stübner wrote:
>> Am Donnerstag, 4. Januar 2024, 09:55:35 CET schrieb Dragan Simic:
>>> On 2024-01-04 09:51, Krzysztof Kozlowski wrote:
>>> > On 04/01/2024 09:50, Dragan Simic wrote:
>>> >> Just checking, is there something preventing this patch from becoming
>>> >> accepted?  I'd appreciate if you'd provide some feedback and let me
>>> >> know if there's something in the patch that needs adjusting.
>>> >
>>> > Merge window? Is it a fix? If not, the cutoff is around rc5-rc7,
>>> > depending on your SoC maintainer preferences.
>>> 
>>> Ah, I see, thanks for the clarification.  It isn't a bugfix, so I'll
>>> send the patch again during the next merge window.
>> 
>> no need to resend.
>> 
>> The main thing holding the patch back was xmas ;-) .
>> 
>> But as Krzysztof wrote, the merge-window is upon us, so I'll pick this 
>> up
>> for 6.9 .
> 
> Awesome, thank you! :)  I'll move forward and prepare a few more
> similar patches for other Rockchip SoCs, after I recover from some
> nasty flu I've unfortunately contracted.

It took me a while, but pretty much the same patches for the RK3328 [1]
and the RK356x [2] are now on the mailing list.  Please, have a look.

[1] 
https://lore.kernel.org/linux-rockchip/e61173d87f5f41af80e6f87f8820ce8d06f7c20c.1709491127.git.dsimic@manjaro.org/
[2] 
https://lore.kernel.org/linux-rockchip/2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org/


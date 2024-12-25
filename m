Return-Path: <devicetree+bounces-133918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1B89FC46B
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 10:35:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BA151883AB0
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 09:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAB43150981;
	Wed, 25 Dec 2024 09:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="CzvMFrhF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC50A935
	for <devicetree@vger.kernel.org>; Wed, 25 Dec 2024 09:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735119337; cv=none; b=p3l5eD16kPDF28y+dvIBzgN9sFqWv/13ZkSed8agm02dm7M3fS5/BzAXrsr5R/x2hHME3q9H8hGR0tLXF1gg8f8VLYgKDLvLjlGGr1TA5BPD1AnTPkIuT8ptMH57cG0Tyoz4VWFtC9eneOT+4L8j8Fx5gwGXz5LQBD4t81m4BYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735119337; c=relaxed/simple;
	bh=qqfBQZnZKdJYvrR11UaMqbURB2C8KRdXO2UyYd632Xc=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=d4DBFLAR9OnUVJ8gq80blW2oRnClVLJQgS3wOioRxP6sPxwFb/emU4oP6aWvn/HMkGQRBTHIvTQ6WhgGc7NuCBhr6JWnIQ+lSaHUmo+pDM3f8SiVpdpCLVxwemAUT1SZXFAzIDq47/5RpwBjs6/98c3GT4e+IduHP4qMGkEpHW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=CzvMFrhF; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735119327;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fpIa73iwb0+bmyk8l/k9K8qRAzYUQwzwLHgKuu6+iTA=;
	b=CzvMFrhFpjw048BmP5O7rSRZbXlQiIg8VslRibB+4JdDrHyzErWcVo0lXSn3HtB07hLtcV
	5g6C+P7lxXfnnAzAvaYKYDOMGfGlwQP9PUQ+l6gZstPKnFxNzMeZRn80W1j+tUAqaLLfK6
	OkvTKkGw1Fyt1q3TB/49hN/hKX+9j1OrjikdRewn+Rb2/Ts7Zq80m9uheG5hQv4l9O4/QA
	Kqtar8qNCV7P1jVEZdXiFQSFdnfYeZfnhEo25zFyJ9Zepikkqdtu5e968aA72kxQ8043yb
	xkdtt/dfPsOGQH2ykGuNonQrI2n62LUcAKyPc/1jvEreDxaSQv3ll11mcEZHNA==
Date: Wed, 25 Dec 2024 10:35:26 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 conor+dt@kernel.org, inindev@gmail.com, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, dmt.yashin@gmail.com, sebastian.reichel@collabora.com,
 tim@feathertop.org, kever.yang@rock-chips.com,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase
 Radxa ROCK 5B
In-Reply-To: <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
References: <20241224210912.2121-1-naoki@radxa.com>
 <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
Message-ID: <4bac4d58493cb0e7fc863095e02ffad3@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Alexey and Naoki,

On 2024-12-25 09:32, Alexey Charkov wrote:
> On Wed, Dec 25, 2024 at 12:22 PM FUKAUMI Naoki <naoki@radxa.com> wrote:
>> 
>> The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.
>> 
>> This patch series introduces a shared .dtsi that can be used on the
>> new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
>> ROCK 5T.
>> 
>> This patch series includes "arm64: dts: rockchip: Add USB-C support to
>> ROCK 5B" by Sebastian Reichel[1].
>> 
>> [1] 
>> https://patchwork.kernel.org/project/linux-rockchip/patch/20241210163615.120594-1-sebastian.reichel@collabora.com/
>> 
>> FUKAUMI Naoki (3):
>>   dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
>>   arm64: dts: rockchip: Add Radxa ROCK 5B+
>>   arm64: dts: rockchip: Convert Radxa ROCK 5B to use shared .dtsi
> 
> This one doesn't look equivalent to the existing ROCK 5B device tree
> after your changes (I've noticed in particular that fan cooling levels
> are different - but that's just the part I remember well since I
> modified it earlier, there might be more differences).
> 
> Would you mind rearranging the patches so that the split of ROCK 5B
> dts into a common .dtsi and per-board .dts additions could be made
> one-to-one equivalent without functional changes, and then add ROCK
> 5B+ and any other required changes on top of that?
> 
> See what Dragan did where he prepared parent .dtsi for per-variant OPPs 
> [1]
> 
> [1] 
> https://lore.kernel.org/linux-rockchip/9ffedc0e2ca7f167d9d795b2a8f43cb9f56a653b.1717923308.git.dsimic@manjaro.org/

Just a brief note that I agree with Alexey's recommendation above.
These patches should be reworked in a way that makes the transition
to using the shared dtsi file much more obvious.

Besides making these changes easier to review that way, and giving
better chances to ensuring there are no issues that managed to slip
through the cracks, it will also be much easier later to track down
any possible regressions, in case they eventually are discovered.


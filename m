Return-Path: <devicetree+bounces-133925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C73D9FC4C2
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 11:25:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2A381882A12
	for <lists+devicetree@lfdr.de>; Wed, 25 Dec 2024 10:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40CCA14F9CC;
	Wed, 25 Dec 2024 10:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="MKLL6Bc2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4573513B7BC
	for <devicetree@vger.kernel.org>; Wed, 25 Dec 2024 10:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735122347; cv=none; b=OHDrPgJt+ZMQUMk3zkUxW4IHcmswktzdDo2nIU4h358PNKjGD0yOkFZOB7iQLfOowKxP8VisMahj4lxhLNg92JR8TP0nFWdhF1WydJlz4qPoHJQOIppFSX8xICsUiwJvi4U7Jpz7BkA9idcDoOuiCIzfw5/RrVfJQj3U1F0drn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735122347; c=relaxed/simple;
	bh=6rTyFrPXSeAxoLaYKdvGcTb7qPzXz2mup7XzZxvcaWg=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=tpAFiFbh7K5QXJYS/Jz8tKr+FnSaBiApB2yS4y0Y2WZOVSzxQkRKHQGnrkGtn09NmLTgqULXGaFT1OLLH0pVeqxRm1cowcl4QxBSZgQAJCyyow6oThJjLpckAD5SXqsPwRUUgggLW9D7OUMjGSxZuE+cQ9q/Jw4fKMlQlAP9vIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=MKLL6Bc2; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735122342;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KJoO6N3feJ2TrVEWe6L5F7MU+fuXqYGMTmx6IRrrj2E=;
	b=MKLL6Bc2Jq5aCx0UgqelyptWb3w8Qv8mhbqwZyaxInilv37UiyPbNTyb1c1ql8gA8Bqc5P
	0Hdm2vobl8F1mxV/z9dsSJ5WNdMbNJaSbFySfaede3hCIr4mz3IbbJ8TU6ZHbAqjhiulOY
	9IjVUuFxrttMmWgO+F0G0BJXN3SbfmgsJyRJ6kYA7KISr3oPjCXXNF/YFkpTO9wm6JCKlN
	RNLzp3fdd3kg6Tc2dPuvnM4r0rUnAxaFqWFbyLCCCzIf5b3dXdbr+JI5+xva4aikEISbNW
	CzbasdlR/wR/2zsNnmYovQ41FF63qcqXzAjUNOdV36MgIhWfk47guiEbWM2V0g==
Date: Wed, 25 Dec 2024 11:25:41 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Alexey Charkov <alchark@gmail.com>, heiko@sntech.de, robh@kernel.org,
 conor+dt@kernel.org, inindev@gmail.com, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, dmt.yashin@gmail.com, sebastian.reichel@collabora.com,
 tim@feathertop.org, kever.yang@rock-chips.com,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase
 Radxa ROCK 5B
In-Reply-To: <4FAC0C844CFF6787+c12ba0e7-c1da-4fe7-aa0f-79340b9ff81a@radxa.com>
References: <20241224210912.2121-1-naoki@radxa.com>
 <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
 <4FAC0C844CFF6787+c12ba0e7-c1da-4fe7-aa0f-79340b9ff81a@radxa.com>
Message-ID: <28cff8b07bc271da3672076b32f13b44@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Naoki,

On 2024-12-25 11:09, FUKAUMI Naoki wrote:
> On 12/25/24 17:32, Alexey Charkov wrote:
>> On Wed, Dec 25, 2024 at 12:22 PM FUKAUMI Naoki <naoki@radxa.com> 
>> wrote:
>>> 
>>> The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.
>>> 
>>> This patch series introduces a shared .dtsi that can be used on the
>>> new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming 
>>> Radxa
>>> ROCK 5T.
>>> 
>>> This patch series includes "arm64: dts: rockchip: Add USB-C support 
>>> to
>>> ROCK 5B" by Sebastian Reichel[1].
>>> 
>>> [1] 
>>> https://patchwork.kernel.org/project/linux-rockchip/patch/20241210163615.120594-1-sebastian.reichel@collabora.com/
>>> 
>>> FUKAUMI Naoki (3):
>>>    dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
>>>    arm64: dts: rockchip: Add Radxa ROCK 5B+
>>>    arm64: dts: rockchip: Convert Radxa ROCK 5B to use shared .dtsi
>> 
>> This one doesn't look equivalent to the existing ROCK 5B device tree
>> after your changes (I've noticed in particular that fan cooling levels
>> are different - but that's just the part I remember well since I
>> modified it earlier, there might be more differences).
> 
> Thanks for pointing!
> 
>> Would you mind rearranging the patches so that the split of ROCK 5B
>> dts into a common .dtsi and per-board .dts additions could be made
>> one-to-one equivalent without functional changes, and then add ROCK
>> 5B+ and any other required changes on top of that?
> 
> My priority goal is to add support for ROCK 5B+ and 5T. This time, I
> will not make any changes to ROCK 5B so as not to break it. Therefore,
> I will drop PATCH 3/3.
> 
> (I would like to make changes to ROCK 5B at some point.)

I see, but I think that just dropping the patch 3/3 wouldn't be the
best possible option.  That way you'd end up with a "dangling" dtsi
file, used by just one board dts file, which is a bit suboptimal.

I'd suggest that you actually do it the right way, so to speak, by
actually converting the ROCK 5B dts file to use the shared dtsi file
in a way that makes the transition more obvious and, as a result,
easier to review, as already suggested above.

As another option, I'm going to ask Radxa for a sample ROCK 5B+ board
soon, for my Rockchip SoC binning project, and if I actually get it,
I could take over this series, to help you that way with getting the
patch series in better shape.


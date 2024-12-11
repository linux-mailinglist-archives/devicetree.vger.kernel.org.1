Return-Path: <devicetree+bounces-129615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 007229EC56D
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:15:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 109CC1889DB9
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC2681C1F04;
	Wed, 11 Dec 2024 07:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="TJEtEtzU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4E4179BD
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 07:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733901346; cv=none; b=knSHAKnSQoIwYZDKQlYp6jP13aYtmkJ4GudpXahXhEFh6hMu8kzMlwiUMlKECvGMWAoyUYp44dJvKEyhmIzuaYb0HzGrD6Q6fp28nXkXV3X/JpI/skUC0974DtLKuXGUI5zPrWizJ/GjWvkYGs0b/O3Ag0yb+ROwga+CP0+PtSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733901346; c=relaxed/simple;
	bh=3vzQflAvNURCnkEZXFHgL6JcM4/onzCd/oHYreReDYk=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=jRCKHw1EvZpZPvPGju2hGNwpzCpJPai9Zvj+zLoCL0d0GiDNYe8T+Im5Xu+5Gd27oB4kRFcPTtT0TOQhVZFv05D5yZ0g1EhOHGgSbsNDcV0K/hAyVr8vcR0AukzdFEtOwOams4U/kdk3yIojWZpK1pHLPmTN871nb9FOcrOp7v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=TJEtEtzU; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733901343;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2BpPH1yZVswMH1Wf+Y33W6T2e9E3vXeSE18Bj4y0Ye0=;
	b=TJEtEtzUYqQ65e01lVtM681qqNU2jM0jqtJAS7rK7ThybCuRlVT688yGCNBfKjfjhl2sRw
	8BuqvkjWK259jzvkHOOYxp9XERUJxHorLH0TcxZKstcUTyYAlxPwOiGGKn1QJTckJCCBH9
	HEQWOv6Eu6pSfnxtBRL9wcJohWrZkTV1zm3VZSnhy0Pi+04+wwZ4MxvOwxrmmOxI7IE66U
	uc8lIrUUzCmFNVW5FGOjPwD+V+luBLKhOaOFtKPcwHMgOBSDTWWKfhZVHOXyxik2YbUE7t
	ManjtLTHPtzovdeVn+HjHDrP6t3oYkMZxOyWX/5grq3FEiru8LIpdpR1SlKjEA==
Date: Wed, 11 Dec 2024 08:15:42 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 andyshrk@163.com, liujianfeng1994@gmail.com, tim@feathertop.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
In-Reply-To: <699843916ED096AB+f9c38503-2cd7-4ffb-9832-494f57a21b41@radxa.com>
References: <20241211060936.57452-1-naoki@radxa.com>
 <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
 <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
 <699843916ED096AB+f9c38503-2cd7-4ffb-9832-494f57a21b41@radxa.com>
Message-ID: <63b8a250281548896755cb0496031349@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-12-11 08:02, FUKAUMI Naoki wrote:
> just FYI,
> 
> https://lore.kernel.org/linux-rockchip/?q=e52c

AFAICT, it isn't too late to introduce "rockchip,rk3582". :)

> On 12/11/24 15:44, FUKAUMI Naoki wrote:
>> On 12/11/24 15:36, Dragan Simic wrote:
>>> On 2024-12-11 07:09, FUKAUMI Naoki wrote:
>>>> The Radxa ROCK 5C Lite uses a different SoC (RK3582) compared to the
>>>> Radxa ROCK 5C (RK3588S2), but the two are compatible from a software
>>>> perspective.
>>>> 
>>>> Fixes: df4e08a5eed1 ("dt-bindings: arm: rockchip: add Radxa ROCK 
>>>> 5C")
>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>> 
>>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> index 753199a12923..2254ee079094 100644
>>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> @@ -895,7 +895,7 @@ properties:
>>>>            - const: radxa,rock-5b
>>>>            - const: rockchip,rk3588
>>>> 
>>>> -      - description: Radxa ROCK 5C
>>>> +      - description: Radxa ROCK 5C/5C Lite
>>>>          items:
>>>>            - const: radxa,rock-5c
>>>>            - const: rockchip,rk3588s
>>> 
>>> I think it would be better to use "rockchip,rk3582" here, to allow
>>> us to possibly use that information later.  For example, we might
>>> want to be able to recognize RK3582-based boards in U-Boot without
>>> the need to look into the e-fuses at some point, for which purpose
>>> having a clear designator in the DT would fit perfectly.
>> 
>> It may be okay to introduce "rockchip,rk3582", but reading e-fuse
>> is still required in U-Boot because which unit (cpu coreX, gpu, etc)
>> is broken cannot be determined without reading e-fuse at run-time.
>> 
>>> As a reminder, using "rockchip,rk3582" would also require a small
>>> addition to drivers/irqchip/irq-gic-v3-its.c.


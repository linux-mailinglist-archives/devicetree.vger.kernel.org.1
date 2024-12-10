Return-Path: <devicetree+bounces-129061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 650759EA93F
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 08:06:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C52C282720
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 07:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EBA922CBC0;
	Tue, 10 Dec 2024 07:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="FzKEU1gD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8774822CBF7
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 07:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733814405; cv=none; b=dM1bTkqXyHqXTCUcaHqgxdZ/uC04kIhYSyK8JRs6LpWag3y2rorWwMAn0S8/K9OEZgcqdmvpBzc/XAGzWaWP9me9zyguERFoAyG1Dequ4P9lPfMrQ8P3MLyehLSq9krTNphAtEPCJa0kbw68ENV9p05fvGK6C5fpKZCGfcgYXOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733814405; c=relaxed/simple;
	bh=wdiXVAMvYCLwtbqG0YScPMJW+pp4rzF8UfrIVpIx+h8=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=ogZH8yfptFYYBggJ/HZBuPI6UJrFFbiNfkbtXKdNYi/FbvhBudQoGd39H7JcyOmOdzKYofvOVbpHgBo/4Glc5svGaKBt5R87jHGpfN41n2BsqKahIjnSkFFgeXQf+TOITBwaGlfirTcCUQlNKKsiVzjdptzcG6dNOtiWsF6p3H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=FzKEU1gD; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733814401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YOGVrRwUxYBtjrnaFEq4fe751QG4XVw2WupUMsMaI2s=;
	b=FzKEU1gDU+ZNnUfkVo5abiar+Z53XhQzDkOqWMXqbxg9DBsoIB447f+yTqGrGtEjxn4Qkf
	hv9LiydJCd3mXaZ7EU6QcZwmCzjVz5uNqiG55lf6JNUBcaYohIWhU0TiK+RHRyI598BA/c
	YaO8N9rmV5NTwk64NuwFoP8eMjErbqrdlPf/0wtNJ5BrmUjXddwzQaS/5rsCmDPd6s66T2
	4wh/LjlQQ0KVisFwrefZ2xN7ItHw3piUBFJg+M9UJ0wSQ4hqLaAuMKzm2+2U431jYZxV6r
	5X20gXNd35z48fh0fb1p/TIkFOcBtTLbHOegBfqt0prXUURGmw48pUGk3qXv2Q==
Date: Tue, 10 Dec 2024 08:06:40 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 03/12] arm64: dts: rockchip: fix property for pwm-fan
 for Radxa ROCK 5C
In-Reply-To: <CABjd4YyV1Pf5RZcwbvd0Ms8UA2kFzq2PuTzq=VVYC+EZtfNrog@mail.gmail.com>
References: <20241209125131.4101-1-naoki@radxa.com>
 <20241209125131.4101-4-naoki@radxa.com>
 <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org>
 <CEFF3F7FDF50046C+6bccd571-3475-46b9-a7b9-e2e8cb94ed91@radxa.com>
 <CABjd4YyV1Pf5RZcwbvd0Ms8UA2kFzq2PuTzq=VVYC+EZtfNrog@mail.gmail.com>
Message-ID: <77af12634c45c5ae14c6da82aa616f5a@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Alexey,

On 2024-12-10 01:40, Alexey Charkov wrote:
> On Tue, Dec 10, 2024 at 3:30 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>> Thanks for your review!
>> 
>> On 12/10/24 01:32, Dragan Simic wrote:
>> > Hello Fukaumi,
>> >
>> > On 2024-12-09 13:51, FUKAUMI Naoki wrote:
>> >> fix pwm period to match with vendor kernel[1].
>> >
>> > Instead of simply referring to the downstream vendor kernel, in this
>> > specific case the reasons for adjusting the fan PWM parameters should
>> > be explained by referring to the actual fan setup you're using, the
>> > observed fan RPM behavior, etc.
>> 
>> original commit message is:
>> 
>> | arm64: dts: rockchip: modify fan pwm period to 60us
>> | Reduce pwm frequency to 16.6 KHz for a larger adjustable range of
>> AO3416 mosfet.
>> 
>> I have no knowledge about this kind of things. Is quoting this message
>> enough?
> 
> I think it would be better to expand a bit to make sure the commit
> message explains the whole rationale without too much extra digging.
> Something like this:
> 
> arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa ROCK 
> 5C
> 
> The fan on Radxa ROCK 5C is driven via an AO3416 MOSFET, which has a
> total switch-on time of 0,6us and a total switch-off time of 6us [1],
> meaning that the current PWM period of just 10us is too short for
> fine-grained fan speed control. Increase the PWM period to 60us, so
> that the switch-on and switch-off time of the MOSFET fall within a
> more reasonable ~10% of the full period, thus making lower PWM duty
> cycles meaningful.
> 
> [1] https://www.aosmd.com/pdfs/datasheet/AO3416.pdf

Well written, thanks.  That's pretty much the same how I wanted
to explain it, but you were faster. :)

Additionally, it's quite strange that the AO3416 FET is used in
that place.  Its large continuous current-carrying capability
(over 5 A at 70 oC!) is an absolute overkill for driving a small
fan, and its integrated ESD protection ends up basically useless
in this case.  Radxa could've easily redirected a few pennies into
something else by using a much less beefy FET.


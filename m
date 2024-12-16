Return-Path: <devicetree+bounces-131454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E84EE9F3475
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 16:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34E0F163D49
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 15:26:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B28145FE8;
	Mon, 16 Dec 2024 15:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="mJ9QFtn7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B45137775
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 15:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734362765; cv=none; b=JPZfmta5lb219Gl2/RWllX3gb5/KFNjJRjSDFErF3iNdaxGyB3UhkcRPhxsSqtjpqaJ4QnINY5jfVLDzC53EDns00njPk5TuQpF2OANOefusscKobiQyWDHx6b7oS7iU/lToRSRy4M+TuM4fisuvyquBY2wCtXELLBWo+bQtRKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734362765; c=relaxed/simple;
	bh=fAD0WQaWCaDDUmv6qCQgfJWWnVaV942ZEh8NW4RWEE8=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=qdeucVFCUYtjM95XVYdsxE6XNW4uvE+FWylWQm8TwLDj8aD5JTJP/U3Eyiysk5mJOzaeiXbrmR+n/MB4PcYpXgOKyUlzoo4BCrfinj4RaSLjlqL1S1fH143RJ7SY0G0pmm9OUW+FrQtubp84wrZGUdiY3MAoAQX84tWL0lmxQp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=mJ9QFtn7; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734362762;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9evQ+oPwTCUbzQzP5U3dWXf4KUBJHrskKrWQezN528Q=;
	b=mJ9QFtn7nrpc6dSqMwQmwR2hVj26Hea+JmbiiOxWpe/731Bv1aM9gdihwFgcA9i9tRJjmP
	OgmMwf362G1ouxy+31U85v2Wzy4dXAJSIuvQe6LfMURMM/J0/YBL+lv7edUNeyyUYOlp1l
	35a0mw1vfeOtdW6xUBPbHT6bf6puPAyX/KGDLDDOhxEGhT+q2YT451BwrxHfC8yDFYDCZF
	XTAk8X0JDbB30/2+T8BrBUTnGNRRazg/ngzb55G8babyDjy1KUrcqoCIrDLE1zWgjMLlj5
	IQLDL193YFCV93Lt1TfkRUi0VSAbvwrO0OJ8TydHJK2jFrG+roxWzCAp6UVwJw==
Date: Mon, 16 Dec 2024 16:26:02 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
In-Reply-To: <E3B9E510C4F8D95A+7a184f12-902b-47ea-894c-4552e189d19b@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
 <5707EE9715A7E332+f33721f1-8b50-4262-bdaa-468ad2c79ecc@radxa.com>
 <281bce4e-cec5-4ad8-940a-c9ef16202a43@kernel.org>
 <C6FD94DDF2E16CAE+22e3003e-0d66-4092-a9a2-def5daa6c202@radxa.com>
 <feec46a1-76b9-4479-b364-b09cd79b3d69@kernel.org>
 <E3B9E510C4F8D95A+7a184f12-902b-47ea-894c-4552e189d19b@radxa.com>
Message-ID: <cf1ccb80597d1a2421c5c60decd6412a@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-12-16 15:38, FUKAUMI Naoki wrote:
> On 12/16/24 23:27, Krzysztof Kozlowski wrote:
>> On 16/12/2024 15:19, FUKAUMI Naoki wrote:
>>> On 12/16/24 22:56, Krzysztof Kozlowski wrote:
>>>> On 16/12/2024 14:48, FUKAUMI Naoki wrote:
>>>>> On 12/16/24 22:37, Krzysztof Kozlowski wrote:
>>>>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>>>>> Use more common name "pwm-fan" for pwm-fan node. No functinal 
>>>>>>> change.
>>>>>> 
>>>>>> No, generic name is fan.
>>>>> 
>>>>>     
>>>>> https://lore.kernel.org/all/71aa84af7a030e66487076e0976c8cad@manjaro.org/
>>>>> 
>>>> And? That's incorrect advice.  There is no such device as "pwm-fan".
>>>> There is a "fan" and whether it is pwm or gpio it does not matter.
>>>> 
>>>> See DT spec and generic names recommendation.
>>> 
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml#n67
>>> 
>>> Is it wrong?
>> Yes.
> 
> Okay, please fix it.

Good point.

> Feel free to use:
> 
> Reported-by: FUKAUMI Naoki <naoki@radxa.com>



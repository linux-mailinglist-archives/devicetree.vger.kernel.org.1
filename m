Return-Path: <devicetree+bounces-129614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2ADB9EC569
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:14:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE156284822
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 176761C5CBB;
	Wed, 11 Dec 2024 07:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="mig7R1za"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6D01C2443
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 07:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733901245; cv=none; b=FwnjpTx9G6MIdhfsHGfZaOAZ3iJJsmKmB9DG4xm2B5W+C5bULPYljVvh4jomh1Q7+b9bvwxzUVtFxcLTxtgTavaFycCvXrGnJLL41aeLG1+MRt/C4r1Cv0aPHuRZRDfmoucof0taJPexJCQl/8S3PbfxFWIIAUWZkcq1RQrV4xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733901245; c=relaxed/simple;
	bh=UWopCaFKKtI3uHvetUoSjrnvZ581dQYTn5j5xYyq2gA=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=fgvdq+Outbv5mQWCTOBzWNWDoQTarOZ7ul2dxI6Vt1j46oG+RXgwZAEq2L2E/HqTirrU99jf7vyP/Sq4lBREMgk+4NP2yZnRs3vH46x+RNpVmXLlH2sq4viXRqG2CgMOkehoWqhTqPRLk68q3EPsBG4n7eBhETHIJ1jEXqCUP6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=mig7R1za; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733901240;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JHl9gzsBHUpWjWrE/MPO0hV7MPKXbQVYexA7ms6rlMY=;
	b=mig7R1zalvHErfR+nvWbOvZdJXIZnMmqpGsrkYxd4DwIhOlFzU300lm1pKO5NWx+azG/RN
	jgk/vjg4MhM+KSVDUVzmUIctlfvJxrk3AWInyv53xzvyR54SZyKntSukQtYkC5c5eq6WaF
	I0ew/ksLXrrdss/jMx3RNKcrzxAq9AR3KfC3kPqCzzHTY3WB9cQESHSz0/7feLbcUHUzMM
	p0dwUcBInH+vxxd8Nwc1Un0hPGvjO8+HWXXl/rRWhUFGsmHDGIS5tdO/4uwidPr9QRGprn
	5xGJaHqLXvfHYhFvGjnxthFlxgY8qlML2Q7Uyml4vUchHbEZLrO+4OW5Qp3nrQ==
Date: Wed, 11 Dec 2024 08:14:00 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 andyshrk@163.com, liujianfeng1994@gmail.com, tim@feathertop.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
In-Reply-To: <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
References: <20241211060936.57452-1-naoki@radxa.com>
 <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
 <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
Message-ID: <99758008e8501d799c2a93e192645590@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-12-11 07:44, FUKAUMI Naoki wrote:
> On 12/11/24 15:36, Dragan Simic wrote:
>> On 2024-12-11 07:09, FUKAUMI Naoki wrote:
>>> The Radxa ROCK 5C Lite uses a different SoC (RK3582) compared to the
>>> Radxa ROCK 5C (RK3588S2), but the two are compatible from a software
>>> perspective.
>>> 
>>> Fixes: df4e08a5eed1 ("dt-bindings: arm: rockchip: add Radxa ROCK 5C")
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>> ---
>>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>> 
>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> index 753199a12923..2254ee079094 100644
>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> @@ -895,7 +895,7 @@ properties:
>>>            - const: radxa,rock-5b
>>>            - const: rockchip,rk3588
>>> 
>>> -      - description: Radxa ROCK 5C
>>> +      - description: Radxa ROCK 5C/5C Lite
>>>          items:
>>>            - const: radxa,rock-5c
>>>            - const: rockchip,rk3588s
>> 
>> I think it would be better to use "rockchip,rk3582" here, to allow
>> us to possibly use that information later.  For example, we might
>> want to be able to recognize RK3582-based boards in U-Boot without
>> the need to look into the e-fuses at some point, for which purpose
>> having a clear designator in the DT would fit perfectly.
> 
> It may be okay to introduce "rockchip,rk3582", but reading e-fuse is
> still required in U-Boot because which unit (cpu coreX, gpu, etc) is
> broken cannot be determined without reading e-fuse at run-time.

Sure, but I think it would be rather bad to miss this opportunity
to introduce a clear DT designator for RK3582-based boards.  It's
better to have the designator unused, than to bang our heads later,
if we conclude that we need it at some point. :)

>> As a reminder, using "rockchip,rk3582" would also require a small
>> addition to drivers/irqchip/irq-gic-v3-its.c.


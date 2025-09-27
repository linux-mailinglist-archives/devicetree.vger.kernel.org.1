Return-Path: <devicetree+bounces-222119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 584F3BA5FF3
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 15:53:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10AC73802C2
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 13:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C2032E0B55;
	Sat, 27 Sep 2025 13:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eVPoSmdD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A842D949F
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 13:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758981178; cv=none; b=KMJL3wH8IIk2dv9eEFYLrptPvcyU+oKcSL0BKG35noZuW0++d8eT7NiVsJAU0WNnBOOLAVYFMDZt9yGgT21qVkqh9E6RRUUGw/82ssXOLKwjGtg5Nj/GSFk4pRINtrcqD4Yiht59nRBMgA9haR6ntV3pvbkh3t9nExItazcWRg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758981178; c=relaxed/simple;
	bh=s7xAGJVX+7/SpfJzM9KpN+ZiBOCbGQQ2hWAFAPmv8Zo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A3+r/8xNUEXEjmeeMq+XBe/3xDy5I0FhKZHgFzjVzUQt4hhhKzWjhfQ7xcFcz2P7QLUVG4WCJtaZ5k1aqBafNs4jsAzrnmue5F5hBROSwfwivAH3nncsY9EaXm+wCJLWxXJh+tU2u4ETyMpR91jGPJlTQ9ePSfLvMdcLrxd5nAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eVPoSmdD; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-26d0fbe238bso24629615ad.3
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 06:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758981176; x=1759585976; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U3sQOBC6lgm5wwqQEZglJIx1GXGiTvsN3EI8B1cA2h8=;
        b=eVPoSmdDbg2w8PLl0R/Nznkb81WBlpoW8XmYLTxqhhVBJnaIsrKmqwLUJAK/KUSAYb
         PPrCGHPlQ2p5AC10i/FlS15xW0PJlk6PwemJToXf4p0Dsr2hY/LzmFL2V+NU21I8cPW8
         GFZQhq8+YK+6yOZvFdxKTBi8JX424UTJ3Sgafm03ayPqe3QVWQ8mCduPsDbKkNUZsm+u
         ckFvBdFPjtgaKy3AmKGGNIpAyfRTLjaC3sdltJKH2tBcJaunksKPsxrbz6IM4ZNlThnO
         4W5UFm+TaXdX29lVEegYHqK0OTXfVT6xa4QOcfRht86yJj4BxC4oE8Kk2oCokkrtLbtK
         LBQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758981176; x=1759585976;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U3sQOBC6lgm5wwqQEZglJIx1GXGiTvsN3EI8B1cA2h8=;
        b=BgDJ7aDMGUra0Q4Ds3BJ5T7t4JamPW6Xq5rs4Jb3EDLv4RtGE3v2HIw1bezO38PLmj
         fl6k6HdOvGr0FzC0eUNFfJfk2SyhfauNCMdPQP6MTGC4V34nSDTODFAnl1UEGn2/JzBS
         20XY1xaL428T7xd+9FlQSKTJL9pjEpfC/8Svg+N4m9vlsogkKXlcz49Ra8iMDylJeQyA
         FGV77pDQRNE5fV+jYVHhAwMAAF+E1MaZYMxAQLjAc61vVPiD3cdnDHZ20FstovAZYfgg
         T0o0oHeDFZI1i3Zp7MzcHaynGwO51hdjFuDB4VhMASdbnRwm564EU0B2Y0k5WwolHi5c
         iuzA==
X-Forwarded-Encrypted: i=1; AJvYcCXXLEoDJV1Vy0CO7vfjV/WNa4KbUqqG77LlusK1cHyUX+0Bqfbz5SmLjd2qpCAvxLiI2FC66DhheOsU@vger.kernel.org
X-Gm-Message-State: AOJu0Ywmgkx/d3A7l4tsisn6DgpG+X8XPhpwwVx52p6Q5jPykBZyojyn
	XwbnUZC+hUx13xVY8x+q4+796KSBrIxDTO9gRVPT3bm0g8wLyNiV2FKB
X-Gm-Gg: ASbGnctj2Y23PwAd0YbDiq6G5Io6HsULtxp+R4odNk0GhRj40gBmcM24A9qYIJjDRJ5
	inSE4bwBAL12bF8u62JEpWQVfEGodb6e9QQpZPiFuikpFCIrLjob8a6Xsgq7tnCdtzmtWNEUf8C
	0woFp3MVHWuK3lcQFG9l+ch12VErvfAEEf/RRKorFx+S5I1hoOd/VAE1ryLh5+ue8I+TTZF+JCn
	UFKvzW0PZG6F9Cs7qIJI/FJqB7lcwZ2lpFOMys/Fjsz7pUiLec82YiE04ikJopJNZeM5HZihGlC
	cqOd673oqvCFdS8bNsKQ6VP6fuwdqOqkIBbFAPcckivpOhP62OaIFDoHFAtBnpbIez/VhTW/89v
	mEhOhM3o3
X-Google-Smtp-Source: AGHT+IGK3h2/r66srXllsDk0MF+E1eFXN/e+nA4aTq6KJiKioeHUCHrtJSdf7ekPUt2zU2bJKgRb5g==
X-Received: by 2002:a17:903:3845:b0:246:2e9:daaa with SMTP id d9443c01a7336-27ed4a09580mr134300995ad.2.1758981175683;
        Sat, 27 Sep 2025 06:52:55 -0700 (PDT)
Received: from CNSZTL-PC.lan ([2401:b60:5:2::a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6adca51sm82134025ad.147.2025.09.27.06.52.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 06:52:55 -0700 (PDT)
Message-ID: <ad4a7dda-8f6f-4d2a-84d9-838611f2285f@gmail.com>
Date: Sat, 27 Sep 2025 21:52:51 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add devicetree for the
 FriendlyElec NanoPi R76S
To: Dragan Simic <dsimic@manjaro.org>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250922091509.2695565-1-cnsztl@gmail.com>
 <20250922091509.2695565-2-cnsztl@gmail.com>
 <DD2V17FJ29MV.3YDX1VUWGKEH@cknow.org>
 <1bb00ad6-ffe1-4783-909b-032dfb984180@gmail.com>
 <DD3EST9Y5UHF.12FJMDJUSZNYL@cknow.org>
 <d0a3d5d4480eac12ba5e2b15bcbc578f@manjaro.org>
From: Tianling Shen <cnsztl@gmail.com>
In-Reply-To: <d0a3d5d4480eac12ba5e2b15bcbc578f@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Dragan,

On 2025/9/27 21:47, Dragan Simic wrote:
> Hello Diederik and Tianling,
> 
> On 2025-09-27 09:37, Diederik de Haas wrote:
>> On Sat Sep 27, 2025 at 3:19 AM CEST, Tianling Shen wrote:
>>> On 2025/9/27 0:07, Diederik de Haas wrote:
>>>> It is recommended to use the labels in the schematics to define the
>>>> pinctl nodes (and thus their references). In quite a lot of cases 
>>>> that's
>>>> indeed the case, but not for gpio-keys (USER_BUT) or these gpio-leds
>>>> pinctls.
>>>
>>> I cannot find any specific naming rules from the gpio-keys[1] and
>>> gpio-leds[2] bindings, did I miss any update?
>>>
>>> I think this naming matches the current practice at least in rockchip's
>>> dt tree.
>>
>> There is an unofficial rule/aim:
>> https://lore.kernel.org/linux-rockchip/5360173.ktpJ11cQ8Q@diego/
>> But granted, there is 'some' inconsistency.
>>
>> And used in f.e.
>> https://lore.kernel.org/linux-rockchip/20250727144409.327740-4- 
>> jonas@kwiboo.se/
>>
>> Where you can just copy the pinctrl labels from the dts[i] and paste
>> that in the schematic document and you're instantly at the right place.
>> Which is the exact purpose of that rule/aim.
> 
> Is the schematic actually publicly available?  I tried searching for
> it, but found nothing, unfortunately.

The schematic for NanoPi R76S is available at 
https://wiki.friendlyelec.com/wiki/images/6/60/NanoPi_R76S_LP4X_2411_SCH.pdf

For more information please move to 
https://wiki.friendlyelec.com/wiki/index.php/NanoPi_R76S.

Thanks,
Tianling.


Return-Path: <devicetree+bounces-109376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E50E9963A4
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 10:49:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C4D81C24E27
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 08:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD6D18E740;
	Wed,  9 Oct 2024 08:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="D753RUIG"
X-Original-To: devicetree@vger.kernel.org
Received: from omta40.uswest2.a.cloudfilter.net (omta40.uswest2.a.cloudfilter.net [35.89.44.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE75C18E351
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 08:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728463483; cv=none; b=XiuVdtX3OJabUeAT5+OluEzogr+bCbhJ7/Hp8LI0lvgUI1f4LgVK/N9u6NvmZvjbDqxN40X29EF3jw61r/GUkS3s6dQSiYO9kZCbNYwoyxPGm4eSKi5hK/RSv68gN0va0X6RyY3z6F55BhY2aAz+vUFQXrAeefxK1tM/ILdvL9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728463483; c=relaxed/simple;
	bh=dvnsPxMliHeqbRIQiioXG8o912SFDQg2gZbzOnOIUoM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BBtTbIkVctuioiP408ISzaEgeimT4R7XkEhhJhWh8avX8W032hEgk3lwa1vzi6RvhsOaCP2GHHKQN9U8emlGo+0KnpoiaX5tYO7kglWsA2cCb8pgSDPNCxJMs7dbPAPOLJA8/eJDz7x9kStl7WF7owrmSt0rq86s0VW6F3vOxDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=D753RUIG; arc=none smtp.client-ip=35.89.44.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6009a.ext.cloudfilter.net ([10.0.30.184])
	by cmsmtp with ESMTPS
	id xynZs25znvH7lySJ8s1H5c; Wed, 09 Oct 2024 08:44:34 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id ySJ4sOub5V7ozySJ6sRLkx; Wed, 09 Oct 2024 08:44:32 +0000
X-Authority-Analysis: v=2.4 cv=Ur9lNfwB c=1 sm=1 tr=0 ts=67064270
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=DAUX931o1VcA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=L2ZAzL5Tc2YXbkthkrQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kjer777veAS4MsonIO7ZNfH7bB3CmtYfsy4XksivrrU=; b=D753RUIG2S8fD8Ru8o2mx55yae
	3fJdjxM1T8dU6bdAMMYpi2K3noLZ20hXFebknCjNlyB4/zpfbTYGS24Qh0LbmFzzyiFEdVwpDENwD
	CyJtohV6Les7xWAtw2AswcfooQd0N5WFK4hJejeAld9LhnDQWhODzdcAx4pg7c0iDxYE0Krx3ly4E
	hdvLDTTQluEKjqEpNt9a4MYI33gR5P0IW4M+nUIH0u/Xy//nTRM0R4Sq1lFEQW8QJ+TqtdL1nBCs5
	8mbjyGOuUztafcR/HO+9wDzpKHqO08+089fWXt+buLaVwF5KmBULkswmIYbyBERGor4EZYqIdk+hu
	9VDxWzxQ==;
Received: from [122.165.245.213] (port=35160 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1sySJ2-00125N-1R;
	Wed, 09 Oct 2024 14:14:28 +0530
Message-ID: <1562366d-34eb-4698-a722-d9e2d400397f@linumiz.com>
Date: Wed, 9 Oct 2024 14:14:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: watchdog: rockchip: Add
 rockchip,rv1126-wdt string
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, alexandre.belloni@bootlin.com,
 wim@linux-watchdog.org, linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <ddca4051-0e83-4d39-8654-12210ffa5685@linumiz.com>
 <37e26b46-2f6a-4db4-b003-59088ef1dcc1@linumiz.com> <1988046.PYKUYFuaPT@diego>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <1988046.PYKUYFuaPT@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sySJ2-00125N-1R
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:35160
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 6
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfCCzXjYMVttTu/mQwAof+5yaAQ038BrZyCN9bQFY8D489UlCK+L2DOYonOxAB++0pDS9EMSc/RPrs21waZbdHYd+3HKIhimxibLOhzVj6nvanoNJJaKj
 eQr73QmSsSEeLjCSOWk+oVadGVLPqC4vGfvqbcR/A8LsOQjzqdaKS9q5IEPH5Hfmq9XRGlFKNjLkx4XBhEEfpJGhzdAGgeBHMps=



On 10/9/24 00:56, Heiko Stübner wrote:
> Hi,
> 
> Am Montag, 7. Oktober 2024, 15:56:58 CEST schrieb karthikeyan:
>>
>> On 9/18/24 12:59, karthikeyan wrote:
>>>
>>>
>>> On 9/18/24 04:46, Heiko Stuebner wrote:
>>>> Hey,
>>>>
>>>> Am Donnerstag, 12. September 2024, 16:24:46 CEST schrieb Karthikeyan
>>>> Krishnasamy:
>>>>> Add rockchip,rv1126-wdt compatible string.
>>>>>
>>>>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
>>>>
>>>> I think this patch misses some recipients because neither
>>>> the watchdog maintainers nor the watchdog list is included.
>>>>
>>>> We'll need for them to at least Ack this patch, so they'll
>>>> need to be included. Please check your scripts/get_maintainer.pl
>>>> call
>>>>
>>>>
>>>> Thanks
>>>> Heiko
>>>>
>>> Apologies for missing them. Adding them in this reply mail.
> 
> I don't think that will have worked.
> 
> Ideally can you include Conor's Ack and resend only the watchdog binding
> patch to the watchdog maintainers (and lists and me too please) .
> 
> Because just adding more people to a reply probably won't tell them
> that some action is expected.
> 
> Heiko
> 
> 

Thanks for your info. It's my mistake. I will resend the watchdog patch 
alone.

Best regards,
Karthikeyan


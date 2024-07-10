Return-Path: <devicetree+bounces-84719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC6192D470
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 16:43:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 05F30B24C9D
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 14:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 493E019346A;
	Wed, 10 Jul 2024 14:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="dQRWMx0k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA099193479
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 14:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720622601; cv=none; b=kvJ1Vi55b68fLNuvLUQW30yLODh1GK+gIdMudZAlggEYFKvxwvDNB9NMt105fT633xlZEQSD5YyCYccw7fMFX7gsc0RRHXFA8gjmpnlnvxwgvdUhMol7bKq+YFvu/WrWyCqZugzlyy9ay+gCzbFPiztGqCyDfZ5ruiXn4ZilfhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720622601; c=relaxed/simple;
	bh=gzD91Lc+TFKAzfZaYsU1hvL5P3UN/LvwShzPyx8Kj5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oqbtolVeYt0tY3Ta2xekOadeBxGAW3GAExt2M7iVYHbCo0hepDTKjKXvusuWWZP6Z4/v7TYQ1yJNVmmJDsFIay3bjudwjSOym9hgJhl2ZihaynM4h87KrqlOzF2sDnr9T2DfwcfNTbDck2tykVCOei+ieGW2MaOY0MMTjeNf3cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=dQRWMx0k; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1720622588;
 bh=hZhXVKWV0BbCE5f7SbJ+Zt2x4Pus6WrIiDPVjBe5XNY=;
 b=dQRWMx0kaHTYOwcrnUZOPAfX+6CxkUq6/RoeA4JpUOfPuoZSu0ebSQio5pw54QC82GeQw2TdN
 OGGUZg06LljOaenmGqPqV4uQxM/DBRRy8UnU3rkY0x2A28xWfEJf2GWC+lbRMOLysPe/0IOUYRS
 ch4cSt5ts106iBY4DmvRgYlNQ7CQDluNTrIPJAPKAOHMAwnMkB1iWSEqdf2V1wmn62hfjPE1b40
 5EAARTj0u6XsTJW543TX1Ue8blncl95VaDNdshko5B4OYCFAxBITKEdTOtskSPHr92gNw4/VwNx
 VdS2qGVlZR6tJGODyPFChPEmGPEmBYZeUQxZKZp8YkSQ==
Message-ID: <caf55fe6-4674-4c89-a94e-f4ad348e2ba0@kwiboo.se>
Date: Wed, 10 Jul 2024 16:30:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/9] arm64: dts: rockchip: use generic Ethernet PHY
 reset bindings for Lunzn Fastrhino R68S
To: Chukun Pan <amadeus@jmu.edu.cn>, heiko@sntech.de
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org
References: <2210411.C4sosBPzcN@diego>
 <20240710133029.676677-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240710133029.676677-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 668e9b26a862f9d735124bc1

Hi,

On 2024-07-10 15:30, Chukun Pan wrote:
>> what's the reason behind the changed timings?
>>
>> The original comment stated,
>> 	/* Reset time is 15ms, 50ms for rtl8211f */
>> so that timing change needs an explanation please :-)
> 
> I don't know why this comment says that, but it's clearly wrong.
> According to the PHY datasheet, the RTL8211F PHY needs a 10ms
> assert delay and at least 72ms deassert delay. Considering the
> possibility of mixed use of PHY chips, the reset time should be
> further increased.

Where do you find the 72ms in the datasheet?

In RTL8211F-CG v1.1 I see 10ms and minimum of 30ms, in v1.2 and v1.4
I see 10ms and minimum of 50ms.

I have used 50ms on a few recently added boards and they seem to all
work fine with 50ms, wonder if the deassert delay should be changed for
those boards.

Regards,
Jonas

> 
> Thanks,
> Chukun
> 



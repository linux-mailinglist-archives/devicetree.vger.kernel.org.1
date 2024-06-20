Return-Path: <devicetree+bounces-78148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1FF9113F6
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 22:59:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 695621C20C02
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 20:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9CB974BE8;
	Thu, 20 Jun 2024 20:59:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA46B65D
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 20:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718917155; cv=none; b=oykWEfj+LRmAz92kHx4INU2hZAGM+5ZiDUG6z7D7ACL25fWZV1/aPS74jZz+CxrBCK1RCYFuQltctD8LRIjcO1UUOpl+EazqDLkPND7eHqZXEAyEfpz3YcAWBAqVcifSpp0fL3ZwwLQb8mq8LfpJI293kEeg9/sopiPZZu+CO2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718917155; c=relaxed/simple;
	bh=kQ4XFxQy+STQWRYvmI834Vv9j6KnOhFToKrc0mnTkuc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lU+s2n/3EY3xWtc8epEghiPBcgH6HFgQaS2w5eMI+xROmoRdc5PdgGTY87VDRtcwU8GQPW971NhCAjqXbt7QJeXcJAJcb8avRSrA09G/d39mCeTwzrTa78i0VusRSE2U3oIyKZqr8b54MKiJr7smGtVpvC48Q71lpn9+uuLFy6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpsz4t1718917097tm5f1kn
X-QQ-Originating-IP: uO/26qzv3iDQK1W9oyz8S8UFqJ5jycG6m2/2BWstDe8=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 21 Jun 2024 04:58:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11653067985614190756
Message-ID: <552DCDA324D37FD9+83963e69-a869-49aa-baec-3185c6be7a03@radxa.com>
Date: Fri, 21 Jun 2024 05:58:15 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO
 3E/3W
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: jonas@kwiboo.se, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240619232734.1126-1-naoki@radxa.com>
 <10613118.nitPUkWRp2@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <10613118.nitPUkWRp2@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0

Hi,

On 6/21/24 05:35, Heiko Stübner wrote:
> Hi,
> 
> Am Donnerstag, 20. Juni 2024, 01:27:34 CEST schrieb FUKAUMI Naoki:
>> align with other Radxa products.
>>
>> - mmc0 is eMMC
>> - mmc1 is microSD
>>
> 
> so yes we can still change the mmc aliases as the zero will only become part of 6.11
> But mmc aliases should start at 0 and not contain holes.
> 
> So if you care much about the ordering, move the alias block out of the zero-3.dtsi
> and introduce separate blocks for each board.
> 
> 
> In zero-3w:
>    	aliases {
> 		mmc0 = &sdmmc0;
>    	};
> 
> In zero-3w:
>    	aliases {
> 		mmc0 = &sdhci;
> 		mmc1 = &sdmmc0;
>    		mmc2 = &sdmmc1;
>    	};

okay, I'll send v2.
thank you for your comment.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Alternatively, leave the aliases as they are now
> Heiko
> 
>> Fixes: 1a5c8d307c83 ("arm64: dts: rockchip: Add Radxa ZERO 3W/3E")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi | 2 +-
>>   arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts | 2 +-
>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
>> index 623d5939d194..85d76d535338 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
>> @@ -7,7 +7,7 @@
>>   
>>   / {
>>   	aliases {
>> -		mmc0 = &sdmmc0;
>> +		mmc1 = &sdmmc0;
>>   	};
>>   
>>   	chosen {
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
>> index 9bf4f464915f..188147c4b78b 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
>> @@ -9,7 +9,7 @@ / {
>>   	compatible = "radxa,zero-3w", "rockchip,rk3566";
>>   
>>   	aliases {
>> -		mmc1 = &sdhci;
>> +		mmc0 = &sdhci;
>>   		mmc2 = &sdmmc1;
>>   	};
>>   
>>
> 
> 
> 
> 
> 


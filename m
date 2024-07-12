Return-Path: <devicetree+bounces-85199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 135E092F473
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 05:41:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52834B220B0
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 03:41:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B824EF9D9;
	Fri, 12 Jul 2024 03:41:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast2.qq.com (smtpbguseast2.qq.com [54.204.34.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49EC8BE5
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 03:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720755679; cv=none; b=oISz1Z3uopgIh+GqiZFU7H7UzOxCznnJkyOHxlKOC66hatn7N+Sj5pyruWYyn12kiPjBGp7uc0XuH+ZE2CtEfu5mDrG33a/lPF1UiBBQ1Q3wwczvJmK3tMGp/aG/exUGzrggOdvMxqoNhy16lPH/oq+a1u3v2xBT8OE22UXnIQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720755679; c=relaxed/simple;
	bh=BMAomnDghxs6abug18o16O0jXUsd5jes7Lmxwo09gv4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QYAGee1stsmD4Du4uuNevhTlzI/7fRcEg2XHsqjPLhj/OPk19aRGIX/vTJtLd0eBPXnZXrJR7GwFx1mLDU9YqcyrvjI5S3TRSkgPjQKuwIDd8gcHocMcyAdHf1rHwz2yVYnlDIAQQm0SWGYUDvQN3/0V91L7D2XC+KdWs2Kk90M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpsz7t1720755611t6drgaj
X-QQ-Originating-IP: yNLfQGZ+RcZlY39cE3yRtP7XpoC5rc7V8MYl4buS170=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 12 Jul 2024 11:40:09 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1781228452713325488
Message-ID: <64319FB6206F6D90+691cf441-ada8-43a6-84f2-5d628f97d3c3@radxa.com>
Date: Fri, 12 Jul 2024 12:40:09 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E
 v3.0
To: Diederik de Haas <didi.debian@cknow.org>, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org
References: <20240711210526.40448-1-naoki@radxa.com>
 <8266220.dYGNU97SPr@bagend>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <8266220.dYGNU97SPr@bagend>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi

On 7/12/24 08:02, Diederik de Haas wrote:
> On Thursday, 11 July 2024 23:05:25 CEST FUKAUMI Naoki wrote:
>> Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
>> RK3288 chip.
>>
>> [1] https://radxa.com/products/rockpi/pie
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> b/Documentation/devicetree/bindings/arm/rockchip.yaml index
>> 1ef09fbfdfaf..3caa4e6428be 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -782,6 +782,7 @@ properties:
>>         - description: Radxa ROCK Pi E
>>           items:
>>             - const: radxa,rockpi-e
>> +          - const: radxa,rockpi-e-v3
>>             - const: rockchip,rk3328
>>
>>         - description: Radxa ROCK Pi N8
> 
> This is about modifying the binding, but the patch subject indicates something
> else (and is the same as patch 2).

thank you for pointing. I'll fix them in v2.

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.


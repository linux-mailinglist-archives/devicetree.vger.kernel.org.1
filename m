Return-Path: <devicetree+bounces-93756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B6E95230F
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 22:06:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28C6E1C2192E
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 20:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04AC11B9B28;
	Wed, 14 Aug 2024 20:05:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.67.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2766220B0F
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 20:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.67.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723665955; cv=none; b=KRkqV/oBFfoZCF/w6kQkRZ7e4WuIMCk0ptg2RlJBI4KEwpu5mKozA1WUsnTi4rI9Kf4jOJLjqHMr3DO1kUHJrNZu5s+dpZLwl9SEkSHJyHit6uwgqlvwPHz78acbhm8WTxiZQxSuNFNBMLUX5qaBnmX4E3m5SV4YEL8ywZ8qnA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723665955; c=relaxed/simple;
	bh=SK8/bq3xlFX+Fq7ez/6ZhWMKz09IT+iSGQCwi8oDDKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SAXnFl5L0lvF8FAnbtIxYvo37zYC8tjOqURFdz0BumTiwfLiIsVoAVFROH9STyZsQ+/l2vJmG6naRX3h5CB1mplnKUDLXqcdStCzVofsnJ9pP87ZkMo5DAUEhXRZN45Gr5QPzWb1XYzkA/UxlvUziT6G/vNL6v/pQjBNvxX+Dik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=114.132.67.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp78t1723665894tol9pfmz
X-QQ-Originating-IP: 0CmNpw7wIhF2CU58efNS/vbtmCYFa8T0Mz7UAFubGZs=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 15 Aug 2024 04:04:51 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11596511658323087123
Message-ID: <4F2DC0BFBC9A7038+cd76538a-6a56-44a1-9ae6-f81e9088ff48@radxa.com>
Date: Thu, 15 Aug 2024 05:04:51 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa
 ROCK Pi E v3.0
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240814095727.1662908-1-naoki@radxa.com>
 <9908246.lRi8OiJO2u@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <9908246.lRi8OiJO2u@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

thanks for the review!

On 8/14/24 20:30, Heiko Stübner wrote:
> Am Mittwoch, 14. August 2024, 11:57:26 CEST schrieb FUKAUMI Naoki:
>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
>> RK3328 chip.
>>
>> [1] https://radxa.com/products/rockpi/pie
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v4:
>> - update compatible string for OpenWrt
>> - drop A-b tag
>> Changes in v3:
>> - collect A-b tag
>> Changes in v2:
>> - fix typo in commit message
>> - add missing --- in commit message
>> - add new section instead of new item in rockchip.yaml
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index 2ad835f4068e..1d426d4e1928 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -790,6 +790,11 @@ properties:
>>             - const: radxa,rockpi-e
>>             - const: rockchip,rk3328
>>   
>> +      - description: Radxa ROCK Pi E v3.0
>> +        items:
>> +          - const: radxa,rock-pi-e-v3
>> +          - const: rockchip,rk3328
>> +
> 
> Please don't add a separate entry for the simple updated version.
> Instead group it with the original Rock Pi e above.
> 
> For how to do it, look at the Radxa Zero 3w/3e .

https://patchwork.kernel.org/project/linux-rockchip/patch/20240711210526.40448-1-naoki@radxa.com/

is this right way?

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.


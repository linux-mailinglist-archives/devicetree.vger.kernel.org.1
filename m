Return-Path: <devicetree+bounces-134000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3C79FC792
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 03:26:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43E6A16280C
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 02:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84201145B0B;
	Thu, 26 Dec 2024 02:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="AjwRRWxW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731102.qiye.163.com (mail-m19731102.qiye.163.com [220.197.31.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E05224D6;
	Thu, 26 Dec 2024 02:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.102
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735179969; cv=none; b=QWIpmN4/10KfD0UpaPz4ZL9WqazFXqqBxFmx7wRu3d1rVSo/Bw2biGA3J3zyogiCAVd8zYgQb0rKh+nGnlRYpKI57SGaxa+75n6PZwf4uY/E95GJQdT9kW0BS0wnShzlZ3QhputyfWXcRyS6QqRbZW+9y11Q+0Beot/6OY0YlK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735179969; c=relaxed/simple;
	bh=VW13ONuryCt7WFrtPrpYd5RRMiqbLtt+4rY/wWNohC4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RUeTFz2ZRpPluy2w8CBJt6QmjYCUz5mUftdooW91jKNIRGl+Jt6Jqz8pKgwCxVpPk7gMW3tMkU5Ql9IvY0NjRg/bUI9WNxKaI1BdxwoERsfX1ZS9ViIGV0+CWlf1An2F52k9BN87upBzXQBH57RTLL0/pIz4nhJBNSnq+x9Xui8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=AjwRRWxW; arc=none smtp.client-ip=220.197.31.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6d43afb9;
	Thu, 26 Dec 2024 10:10:37 +0800 (GMT+08:00)
Message-ID: <573e04c0-6f41-4117-9b04-d2628266a34b@rock-chips.com>
Date: Thu, 26 Dec 2024 10:10:37 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/15] dt-bindings: display: rockchip: analogix-dp: Add
 support for RK3588
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-3-damon.ding@rock-chips.com>
 <tdhs45ac2ivdke7idrzxrhlgsqlnswkb2maorau3guzrrwpce3@emdq7xx6cpwz>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <tdhs45ac2ivdke7idrzxrhlgsqlnswkb2maorau3guzrrwpce3@emdq7xx6cpwz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkNCSlZNTR5OGklCGRhOGRpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9400baec2b03a3kunm6d43afb9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OT46NDo*ATIPDE0IIRUaEj4p
	EU8wC0NVSlVKTEhOSkxCS0hCSE9JVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIS0xCNwY+
DKIM-Signature:a=rsa-sha256;
	b=AjwRRWxW2Lo9PBQrMB93fBRqQgmHVgRneeSxy1NxFuTPTplCxu8M1n6NHtCxIimsfW+zqimpyP+daoPBlzbBkrRD8AvpGH2CTSccCW74+ixNRnAbQApAMZW8u5SU/BIAn6146qlaGNtb6h3dvOIdYhq5ImgOX22F79eENRu6ztg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=IZzb2ZQ3hoZVRBl4yIEiLAbS1Ry1GkYmH+p0gvL9IqE=;
	h=date:mime-version:subject:message-id:from;

Hi Krzysztof,

On 2024/12/19 16:28, Krzysztof Kozlowski wrote:
> On Thu, Dec 19, 2024 at 04:05:51PM +0800, Damon Ding wrote:
>> Compared with RK3288/RK3399, the HBR2 link rate support is the main
>> improvement of RK3588 eDP TX controller, and there are also two
>> independent eDP display interfaces on RK3588 Soc.
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Drop, patch was very different.
> 
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v2:
>> - Add the main defferences of the RK3588 eDP and the previous versions
>>    in commit message
>>
>> Changes in v3:
>> - expand the property clock-names, resets and reset-names
> 
> Adding new properties invalidates reviews. The patch is entirely, really
> significantly different so keeping the review is not acceptable.
> 
>> ---
>>   .../display/rockchip/rockchip,analogix-dp.yaml     | 14 +++++++++++---
>>   1 file changed, 11 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> index 60dedf9b2be7..4f84e8849876 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> @@ -15,6 +15,7 @@ properties:
>>       enum:
>>         - rockchip,rk3288-dp
>>         - rockchip,rk3399-edp
>> +      - rockchip,rk3588-edp
>>   
>>     clocks:
>>       minItems: 2
>> @@ -25,16 +26,23 @@ properties:
>>       items:
>>         - const: dp
>>         - const: pclk
>> -      - const: grf
>> +      - enum:
>> +          - grf
>> +          - spdif
> 
> No, this cannot be flexible for existing variants.

I will drop the 'spdif' because the audio feature has not been added to 
the analogix-dp driver in this patch series.

> 
>>   
>>     power-domains:
>>       maxItems: 1
>>   
>>     resets:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 2
> 
> No, you must list the items.
> 
>>   
>>     reset-names:
>> -    const: dp
>> +    minItems: 1
>> +    items:
>> +      - const: dp
>> +      - enum:
>> +          - apb
> 
> I don't understand what happened here but all this is NAK. Why suddenly
> existing variants became different/changed? Nothing in commit msg
> explains this.

The newly added 'apb' reset is to ensure the APB bus of eDP controller 
works well on the RK3588 SoC. I will mention it in commit message in the 
next version.

The fixed patch will be like:

@@ -31,10 +32,12 @@ properties:
      maxItems: 1

    resets:
-    maxItems: 1
+    maxItems: 2

    reset-names:
-    const: dp
+    items:
+      - const: dp
+      - const: apb

    rockchip,grf:
      $ref: /schemas/types.yaml#/definitions/phandle

And I will add the APB reset operation in Rockchip analogix-dp driver, 
which was forgotten in the [PATCH v3 03/15].

Best regards,
Damon



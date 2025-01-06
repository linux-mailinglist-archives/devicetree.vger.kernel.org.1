Return-Path: <devicetree+bounces-135757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD53A02109
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 09:44:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F402F188265D
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 08:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8874D1990C9;
	Mon,  6 Jan 2025 08:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="ai/xbz6e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49239.qiye.163.com (mail-m49239.qiye.163.com [45.254.49.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1061591EA;
	Mon,  6 Jan 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736153039; cv=none; b=X255xJRZG9xRCNPuys2Lrziw2rNRFatnQ2rdQ+EamVwUx1sBt73goxkRKaSA3WxnkpuQ+LyNbvM/Dhg8nlRtiMfjDHTkHwTcYL3cpnb2itEVWtEtv4mwJ4gpRYahrbjdjMnAbMD+fQcfk9CKktrutF7WXQpXVuERtUkCzvrumXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736153039; c=relaxed/simple;
	bh=MzRm0TDFc0lQmI1fq8qZ2FqqkKm4ZcYb03A0Pc9UUPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I4LjX5yAYb9Wv8abLlI5/OKhcb/H8+VzdgMpzJPAtIdvOrPkQxFlZs5S9Xk9qFwRqzy/Gk56l9EkB5smblLi+tmdwmsfvau4gKli/c+i1PcbDrZKonv6UL3LJm+7wM4pfKPecy5PA28Gjx3h1RhITaENXVlcMDXCDsMCoGLpsQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=ai/xbz6e; arc=none smtp.client-ip=45.254.49.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7d0a3508;
	Mon, 6 Jan 2025 15:28:16 +0800 (GMT+08:00)
Message-ID: <2d9c71cf-6612-44cb-a223-a2184e027d1c@rock-chips.com>
Date: Mon, 6 Jan 2025 15:28:15 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 02/17] dt-bindings: display: rockchip: analogix-dp: Add
 support for RK3588
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com,
 cristian.ciocaltea@collabora.com, l.stach@pengutronix.de,
 andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com,
 kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-3-damon.ding@rock-chips.com>
 <63c14ff2-d3c2-4bbb-8d54-376b75c62fd4@kernel.org>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <63c14ff2-d3c2-4bbb-8d54-376b75c62fd4@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk5DSlZISk1PGEIZQk5DTENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a943a83aeb503a3kunm7d0a3508
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OVE6Thw5DjIIFx8iATNILD4U
	PBEwCxRVSlVKTEhNSk9DT0JMTU1NVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSElJNwY+
DKIM-Signature:a=rsa-sha256;
	b=ai/xbz6eBCaRmZIOhnTAI58fU8w5eQMTuuFWwyKYYDz/RALnEKKosakJy2RwfTWOzfoGPf+ChfE47Xyjl8zNYpnraWRC+3qO2Y9klUpIT/V3rTgD3djlhMWpcuCCDw0H6ScoQ57DO4Hg/ybZ9xipULhPIG0uJiX0vMXVyWZbuRA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=OGrkyu2TC7xLdj/Df8CnWXafSpzpS9J9hFV3qgsUsbY=;
	h=date:mime-version:subject:message-id:from;

Hi Krzysztof,

On 2024/12/27 15:13, Krzysztof Kozlowski wrote:
> On 26/12/2024 07:32, Damon Ding wrote:
>> Compared with RK3288/RK3399, the HBR2 link rate support is the main
>> improvement of RK3588 eDP TX controller, and there are also two
>> independent eDP display interfaces on RK3588 Soc.
>>
>> The newly added 'apb' reset is to ensure the APB bus of eDP controller
>> works well on the RK3588 SoC.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v2:
>> - Add the main defferences of the RK3588 eDP and the previous versions
>>    in commit message
>>
>> Changes in v3:
>> - Expand the property clock-names, resets and reset-names
>>
>> Changes in v4:
>> - Remove 'spdif' clock which added in v3
>> - Add the comment of newly added 'apb' reset in commit message
>> ---
>>   .../bindings/display/rockchip/rockchip,analogix-dp.yaml  | 9 +++++++--
>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> index 60dedf9b2be7..200703905b29 100644
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
>> @@ -31,10 +32,14 @@ properties:
>>       maxItems: 1
>>   
>>     resets:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 2
>>   
>>     reset-names:
>> -    const: dp
>> +    minItems: 1
>> +    items:
>> +      - const: dp
>> +      - const: apb
> 
> I asked why existing variants get this new reset. This is not supposed
> to be flexible (which I wrote as well), but constrained per variant. Or
> explain why not.
> 
> 
> 

I misunderstood you before. Indeed, the new reset is only for RK3588, so 
the patch should be similar to the modifications made for RK3576 HDPTX 
PHY dt-bindings [0].

Best regards
Damon

[0]https://patchwork.kernel.org/project/linux-rockchip/patch/20241231092721.252405-1-andyshrk@163.com/


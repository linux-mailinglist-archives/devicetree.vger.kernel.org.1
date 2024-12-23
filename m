Return-Path: <devicetree+bounces-133513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B43629FAD6A
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DE701644B1
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D585F19342E;
	Mon, 23 Dec 2024 11:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="jPUVWrsg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32122.qiye.163.com (mail-m32122.qiye.163.com [220.197.32.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02264171CD;
	Mon, 23 Dec 2024 11:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734951892; cv=none; b=aLecvpclGcE1wDQGw73C2KCFDMHbv8v2gHpvv4DsUvLOuPyejEfJOX6N01Ssq6wFYjWb1tn2ooKBBCoz9+xyM697DDCq9pFOHLmweVi0di7O+c+21SNRXc+csSaI4rZv396LnHoNqDzfgQE3/W1hRsSkXdx0ECcfuK1OjrUCVOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734951892; c=relaxed/simple;
	bh=JLtV6VEhJLXpILrmhrFxeAA+f1fJ9YgRXqwz8YG1Ve8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FtV7QGpZnQaHEttHUwWfvUuFT9yVBQYhZ1heF+WdICQeA7wJaZbnbqX76CSuWs2zdnT6mewbHhPb2ZmqJE2a3hS/DptzBbF297+prtFvc5+4vc2BhJUJLN2ltOBkyfPeCK2IUMcecEHw5y2yee6nDM/HhUkA2/BH9QEUhVc5TS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=jPUVWrsg; arc=none smtp.client-ip=220.197.32.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.67] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 68e43e06;
	Mon, 23 Dec 2024 18:49:23 +0800 (GMT+08:00)
Message-ID: <bfd84b6b-9b19-4d9b-b0a3-cb6ed1f8084c@rock-chips.com>
Date: Mon, 23 Dec 2024 18:49:23 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] dts: arm64: rockchip: Add rk3576 pcie nodes
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Liang Chen <cl@rock-chips.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20241220101551.3505917-1-kever.yang@rock-chips.com>
 <20241220101551.3505917-4-kever.yang@rock-chips.com>
 <i54jjqt7uaxrurdapsyxwmb5iokiwzgm5cvlaamlggycrpyd3v@azhmfwgetrzm>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <i54jjqt7uaxrurdapsyxwmb5iokiwzgm5cvlaamlggycrpyd3v@azhmfwgetrzm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhLSlZOTkgYTxoZTkkaHhhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f322c9a803afkunm68e43e06
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTY6Mio4HDILLgECNy8#Dx82
	NwIwFC5VSlVKTEhPQk5LQk1PQkhJVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKTU1PNwY+
DKIM-Signature:a=rsa-sha256;
	b=jPUVWrsgyzKi94L9A8rKusVeSNeYfH7N6p8iP3gNWad+4NpdkFj6cn7s91hmeDuM6sCh0VBHf9h6oj6jDopFv+rZ4wkLpHWMmy/OxyVnp1pZDPHa6ks2evflHT1JziZs7SkZjHRSsAwnPppEVGBBoZXyiqIPY1zDMp+XBmKNxWA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PV13Ub+8jid25AmeIHH2+OOK0XdtZ0k68I4uUJsLJ/Y=;
	h=date:mime-version:subject:message-id:from;

Hi Krzysztof,

On 2024/12/22 14:38, Krzysztof Kozlowski wrote:
> On Fri, Dec 20, 2024 at 06:15:47PM +0800, Kever Yang wrote:
>> rk3576 has two pcie controller, both are pcie2x1 used with
>> naneng-combphy.
>>
>> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
>> ---
> Please use subject prefixes matching the subsystem. You can get them for
> example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
>
Will update with arm64: dts: .
>> Changes in v2:
>> - Update clock and reset names and sequence to pass DTB check
>>
>>   arch/arm64/boot/dts/rockchip/rk3576.dtsi | 109 +++++++++++++++++++++++
>>   1 file changed, 109 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> index a147879da501..df7dfe702221 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> @@ -1016,6 +1016,115 @@ qos_npu_m1ro: qos@27f22100 {
>>   			reg = <0x0 0x27f22100 0x0 0x20>;
>>   		};
>>   
>> +		pcie0: pcie@2a200000 {
>> +			compatible = "rockchip,rk3576-pcie", "rockchip,rk3568-pcie";
>> +			bus-range = <0x0 0xf>;
> Follow DTS coding style in properties order and everything around here.

I can do it for most of the properties, but is there any other rules 
other than sort,

eg. compatible and reg in the beginning and status in the end?


Thanks,

- Kever

>
> Best regards,
> Krzysztof
>
>


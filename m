Return-Path: <devicetree+bounces-91195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C109485E3
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 01:25:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 276CD1F2349D
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 23:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AA4216CD0E;
	Mon,  5 Aug 2024 23:25:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu2.qq.com (smtpbgeu2.qq.com [18.194.254.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA38E1547FB
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 23:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.194.254.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722900326; cv=none; b=OYqqFTOYW/KpYVVeVdshl8T1nQ6ifztyzCPYM7p/hc/l91bc2wMWRs3jRt70n/DZ/xgLWuLMEBj0MyC1KIJcoZx3kPfUAPbUOA/IbrKbf7Bk8UecE5ZZ/zdXEFDaOSvyvSsVT1mO7tRvIVUcQPCMwNShxpN1MTYaFtWB60A12bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722900326; c=relaxed/simple;
	bh=AT6kWeOCHq95SI2KansoCn7d5qli3s1hUngM/teDw6E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JW4fD1tn3NxdWVSCGegPR/xzPmryjwRnRROdxz5r2lw784mxFzgf09iJPTcHLzFH9gjAy9XnHuNCYAfCikMjxFMAcWck8Nk16RRr81x2UDEjVBmkW8u6QIIot3gC4pVmG+EL0+CfOGgytaVVxingY+LF0xZdTuo4BqbtmI/ckts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.194.254.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpsz15t1722900267tpeo75
X-QQ-Originating-IP: YcvZYpuZzRqFPAd8+YiKe/+8etp6nj0Nj72quv2wVss=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 06 Aug 2024 07:24:25 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18052963144677796663
Message-ID: <97941DF28EB65ED9+0f5a5695-5aa9-4e48-8274-dae4595c093a@radxa.com>
Date: Tue, 6 Aug 2024 08:24:25 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: add support for Radxa
 ROCK Pi E v3.0
To: "Rob Herring (Arm)" <robh@kernel.org>, heiko@sntech.de
Cc: conor+dt@kernel.org, krzk+dt@kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <20240712215300.720113-1-naoki@radxa.com>
 <172104541069.3725239.3048756738341305722.robh@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <172104541069.3725239.3048756738341305722.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi Rob and Heiko,

On 7/15/24 21:12, Rob Herring (Arm) wrote:
> 
> On Sat, 13 Jul 2024 06:52:59 +0900, FUKAUMI Naoki wrote:
>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
>> RK3328 chip.
>>
>> [1] https://radxa.com/products/rockpi/pie
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v2:
>> - fix typo in commit message
>> - add missing --- in commit message
>> - add new section instead of new item in rockchip.yaml
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>    pip3 install dtschema --upgrade

following warnings are not related to my changes.
btw patch 2/2 need to be rebased, I'll send v3.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240712215300.720113-1-naoki@radxa.com:
> 
> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']


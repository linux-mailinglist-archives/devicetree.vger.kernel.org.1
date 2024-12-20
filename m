Return-Path: <devicetree+bounces-132942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 099059F8C82
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 07:18:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 157C218975B7
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 06:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D724D155743;
	Fri, 20 Dec 2024 06:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="deB0Jb94"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731107.qiye.163.com (mail-m19731107.qiye.163.com [220.197.31.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CC825949A;
	Fri, 20 Dec 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.107
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734675501; cv=none; b=G0qKM8Y7Sbk4AQFNkZecYQmNU9p5rhoC/gG70uYA4LF8bciDgnSbxUumpT8Vgrdd+z/Ti56dZA2ptCHHziMG3elpXILy7WMTc4mo2aJ2jy4JnRbzJyoSOkB+Ox+THkbbM8hU3SLbDoLJnSZbRqk36WAQrt1JnjZ/J5lFvWqyRhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734675501; c=relaxed/simple;
	bh=XQTZtteqGqDaVsCUwxJ2NuGuvslccuaVjS3bNKz6Yio=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V2ckHAH7cnszd6wkY79cTxzE6Ez8OKZPjGT3qNdVawulnHkxaW/qUdwTUglIrmcjL+ag4/hCaTp5TCVJ8egPBdJU7upq7HfrIr86kzaWq47ai6SHkRCickoZVCsF6UFtTDrFKVtTC4pPWdzFvnMxY1/HSnZnhFfo9DD+imw/8Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=deB0Jb94; arc=none smtp.client-ip=220.197.31.107
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 64782b86;
	Fri, 20 Dec 2024 10:48:57 +0800 (GMT+08:00)
Message-ID: <c06381b7-1e38-4af4-9873-15862e91937d@rock-chips.com>
Date: Fri, 20 Dec 2024 10:48:58 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/15] dt-bindings: display: rockchip: analogix-dp: Add
 support to get panel from the DP AUX bus
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-11-damon.ding@rock-chips.com>
 <bjkcue3dfgaf5i66cqbiczifo7r3xngupghklxgevwqpwfeeix@i2jfd477igri>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <bjkcue3dfgaf5i66cqbiczifo7r3xngupghklxgevwqpwfeeix@i2jfd477igri>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhlNSFZIGR8fTklCTR1CQx1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e1f7db9703a3kunm64782b86
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NFE6Szo5QjIOEAo1SjlCL0IM
	Mw5PCxpVSlVKTEhPTU1JQkhCSUtOVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSUlINwY+
DKIM-Signature:a=rsa-sha256;
	b=deB0Jb94udSAo7ZPYkOoiDXrtBIRVqu0+kLEM19169DFiIFcei1LSpKufWBIrzG6vYJv5PNC9OwrY6G8JVKp9RAHMygxg6l2KSWfpJn8SbqdhLiwpx2+U5psTdmjjWKAY+wR/edr5OSCkURTbAKVIwCMiFIC2KPVTL/z0ZaZ9oo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=BnTG/sbpkXhlifAr32NESdvTHkU0t98XHfRuC7OuuwQ=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2024/12/20 8:18, Dmitry Baryshkov wrote:
> On Thu, Dec 19, 2024 at 04:05:59PM +0800, Damon Ding wrote:
>> According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
>> it is a good way to get panel through the DP AUX bus.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   .../bindings/display/rockchip/rockchip,analogix-dp.yaml        | 3 +++
>>   1 file changed, 3 insertions(+)
> 
> Business before pleasure.^W^W^W Bindings before the driver.

I couldn't agree more. ;-)

> 
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> index 4f84e8849876..c45d92a2d901 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> @@ -49,6 +49,9 @@ properties:
>>       description:
>>         This SoC makes use of GRF regs.
>>   
>> +  aux-bus:
>> +    $ref: /schemas/display/dp-aux-bus.yaml#
>> +
>>   required:
>>     - compatible
>>     - clocks
>> -- 
>> 2.34.1
>>
> 

Best regards,
Damon


Return-Path: <devicetree+bounces-139638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 139D6A16725
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:13:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B9BB3A4A26
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 07:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564E318E75A;
	Mon, 20 Jan 2025 07:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="hvLcnqb6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49240.qiye.163.com (mail-m49240.qiye.163.com [45.254.49.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418313D51E;
	Mon, 20 Jan 2025 07:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737357209; cv=none; b=VvEU9zeB2mEJne9AsohORluiI4whiyfF6cU0C4WuG1LoCMKu3qyqedAD4bGyd10LS80FRmYWcOEYISWjCKae3Yq3mE0Q6BitJbuL3iaa9twZ9Ljv9CCICksPkZlNthALc+QPbNYcv52zkBTctIkW+D8E9aedrYjXJYngTsXiLJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737357209; c=relaxed/simple;
	bh=Nnen72gHZLhFvUX5mJ8im62AAuRs5GECOUUy2wMiBHc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=IZ1BegX+2J2+6gTU39tyr4Hjdu/HDnIvzrgdje1jDD3qIhNC+2cxX0pMCBnliAV0h2hvZUCP5ZTR+NZwxY1yjGXGQz+Vj3BsjgaMoKjdfwEw14xulr/y7quasUNZyxhK+X2RRn8zRlqZFGs89clQXkn+8qa0QxoLRxzszAP1Pjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=hvLcnqb6; arc=none smtp.client-ip=45.254.49.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 92ac8289;
	Mon, 20 Jan 2025 15:08:08 +0800 (GMT+08:00)
Message-ID: <d6211c5e-a38d-46aa-8d33-6dba2a71e018@rock-chips.com>
Date: Mon, 20 Jan 2025 15:08:06 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v5 13/20] dt-bindings: display: rockchip: analogix-dp: Add
 support for RK3588
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org,
 sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com,
 l.stach@pengutronix.de, dmitry.baryshkov@linaro.org,
 andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com,
 kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-14-damon.ding@rock-chips.com>
 <gmwmnjc4pzyzzstyozlfcdaw2ntfxg6ixofio2j746hmixhblc@sjbcvwcgitmy>
Content-Language: en-US
In-Reply-To: <gmwmnjc4pzyzzstyozlfcdaw2ntfxg6ixofio2j746hmixhblc@sjbcvwcgitmy>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhCHlYaHhkfTRlOQ0gaHU5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a94828a484603a3kunm92ac8289
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTI6Hgw*ITIVSzcfAx8VFAgj
	OD5PChBVSlVKTEhMSE5NQ0NCQ0xNVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIT0tPNwY+
DKIM-Signature:a=rsa-sha256;
	b=hvLcnqb6GgruYOfRwgMuBJZ5apTXhXgbcphlrkpMcxbPR5AkNTHTqVs27FdGFp2qS4UbOwsMJtceiuvVU3BYIcVm87yzf0e7mntk7p3YiHcAdCM+LrQ54/L6zU9oFUg93nqycd1I8fukZYoTuqCY5ssqkZGmSlzKRMo0UPBECpc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=d9x5PVUE1JktG04GVLVpq/qvvHEgshZnb4IAcFz1hy0=;
	h=date:mime-version:subject:message-id:from;

Hi Krzysztof,

On 2025/1/9 16:54, Krzysztof Kozlowski wrote:
> On Thu, Jan 09, 2025 at 11:27:18AM +0800, Damon Ding wrote:
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
>>
>> Changes in v5:
>> - Put the differences between RK3288/RK3399 and RK3588 into 'allOf'
>> ---
>>   .../rockchip/rockchip,analogix-dp.yaml        | 37 ++++++++++++++++---
>>   1 file changed, 31 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> index eaf4e67e232e..3cdea9e63522 100644
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
>> @@ -30,12 +31,6 @@ properties:
>>     power-domains:
>>       maxItems: 1
>>   
>> -  resets:
>> -    maxItems: 1
>> -
>> -  reset-names:
>> -    const: dp
> 
> Widest constraints are always here. You only needed to add allOf.
> 
> https://elixir.bootlin.com/linux/v6.11-rc6/source/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> 
> 

I see. I will keep the widest constraints of 'resets' and 'reset-names', 
and only add RK3588 related constraints in allOf.

And I may also need to add the 'minItems' and 'maxItems' for 'resets' 
and 'reset-names' like the 'qcom,ufs.yaml':

diff --git 
a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml 
b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index a4c0c3a5de5a..baee021314e7 100644
--- 
a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ 
b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -32,9 +32,12 @@ properties:
      maxItems: 1

    resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2

    reset-names:
+    minItems: 1
+    maxItems: 2
      const: dp

    rockchip,grf:

If not, the CHECK_DTBS will failed with the logs:

/linux/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: edp@fdec0000: 
resets: [[31, 469], [31, 468]] is too long
         from schema $id: 
http://devicetree.org/schemas/display/rockchip/rockchip,analogix-dp.yaml#
/linux/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: edp@fdec0000: 
reset-names: ['dp', 'apb'] is too long
         from schema $id: 
http://devicetree.org/schemas/display/rockchip/rockchip,analogix-dp.yaml#


Best regards
Damon




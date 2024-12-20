Return-Path: <devicetree+bounces-132913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D0D9F8A7D
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 04:14:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A62CB188D838
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 03:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C31E62868B;
	Fri, 20 Dec 2024 03:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="A8qVBaED"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49206.qiye.163.com (mail-m49206.qiye.163.com [45.254.49.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E34122098;
	Fri, 20 Dec 2024 03:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.206
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734664464; cv=none; b=ha6XTt6Bm1lriHrHSGSiGg91+OtfqMes/3rq/aAb11VmytPd7uyY8o8gaqguEsGFLro7X5P0jzetdZ+7BcBEuKQVMyaoR0RUKf0nLR4hS4wcA+XNuC/7hIaplYYmvWfooxb2kq2DkE1OGT2ieiIU/UVspOKK9zubRlvZSwvM0Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734664464; c=relaxed/simple;
	bh=tzUX+lthpKQUHbsxhiFUbwnsjA3vXrCylafZG5hQj2c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y1uhbtoKIDjyfFRBFzsOfT3pVYcI3dZI5B6BEkXMy6hOHHxcFeTLHwBYENF5B+EIt+COACyVZv7zmA4UnDqBXKJPxWjuiCdVHVLD5xpXv0mpZvofVXq07EmTNVEvp9Bn6iTL+t7yTwIskbQb228OO2EJZwXQbBAkEcuhQcUowRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=A8qVBaED; arc=none smtp.client-ip=45.254.49.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6471a82d;
	Fri, 20 Dec 2024 10:38:48 +0800 (GMT+08:00)
Message-ID: <d2b47813-45fa-4148-8a4a-6cf4a18ee7ca@rock-chips.com>
Date: Fri, 20 Dec 2024 10:38:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/15] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
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
 <20241219080604.1423600-15-damon.ding@rock-chips.com>
 <cg7bnhol4gvzji7agxazas7nkxy7zammzy67rjvhp35yqyraju@73daepsbmuae>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <cg7bnhol4gvzji7agxazas7nkxy7zammzy67rjvhp35yqyraju@73daepsbmuae>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhhLTFZOHx0eGkJPTUhOQ09WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93e1ee8f8203a3kunm6471a82d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NT46PAw6HDIVUQpMFjw5HS8u
	LUswCy1VSlVKTEhPTU1JSElCQ0NDVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIS0hNNwY+
DKIM-Signature:a=rsa-sha256;
	b=A8qVBaED3moEexWbmxTX0uIE4JtNKgnCz0rvl14Oua2kyttsbBvYnqqNWb/jOpim28o1B1/geTDzwzzWYp5b4YeXqaC1HFRvy4ER8UU4sEgU17gRAlFtAww+S64mHq4cQn1DqNRp1TESg+RXS51+aX7s3QNTJwg/1PlYlAC/6WA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=J9jrXyKQlgCN3Z+wY6wP74KB04Bf5lEp5T52IcpdDIw=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2024/12/20 8:20, Dmitry Baryshkov wrote:
> On Thu, Dec 19, 2024 at 04:06:03PM +0800, Damon Ding wrote:
>> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
>> - Add edp-panel node
>> - Set pinctrl of pwm12 for backlight
>> - Enable edp0/hdptxphy0/vp2
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v2:
>> - Remove brightness-levels and default-brightness-level properties in
>>    backlight node.
>> - Add the detail DT changes to commit message.
>>
>> Changes in v3:
>> - Use aux-bus instead of platform bus for edp-panel.
>> ---
>>   .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 52 +++++++++++++++++++
>>   1 file changed, 52 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>> index bc4077575beb..9547ab18e596 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>> @@ -9,6 +9,7 @@
>>   #include <dt-bindings/gpio/gpio.h>
>>   #include <dt-bindings/input/input.h>
>>   #include <dt-bindings/pinctrl/rockchip.h>
>> +#include <dt-bindings/soc/rockchip,vop2.h>
>>   #include <dt-bindings/usb/pd.h>
>>   #include "rk3588s.dtsi"
>>   
>> @@ -238,6 +239,41 @@ &combphy2_psu {
>>   	status = "okay";
>>   };
>>   
>> +&edp0 {
>> +	force-hpd;
>> +	status = "okay";
>> +
>> +	aux-bus {
>> +		panel {
>> +			compatible = "lg,lp079qx1-sp0v";
> 
> Why do you need the particular compat string here? Can you use the
> generic "edp-panel" instead? What if the user swaps the panel?
> 

The eDP panels used in conjunction with the RK3588S EVB1 have broken 
identification, which is one of the valid reasons for using a particular 
compat string. So the generic_edp_panel_probe() can not return success 
when using the "edp-panel".

>> +			backlight = <&backlight>;
>> +			power-supply = <&vcc3v3_lcd_edp>;
>> +
>> +			port {
>> +				panel_in_edp: endpoint {
>> +					remote-endpoint = <&edp_out_panel>;
>> +				};
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&edp0_in {
>> +	edp0_in_vp2: endpoint {
>> +		remote-endpoint = <&vp2_out_edp0>;
>> +	};
>> +};
>> +
>> +&edp0_out {
>> +	edp_out_panel: endpoint {
>> +		remote-endpoint = <&panel_in_edp>;
>> +	};
>> +};
>> +
>> +&hdptxphy0 {
>> +	status = "okay";
>> +};
>> +
>>   &i2c3 {
>>   	status = "okay";
>>   
>> @@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
>>   };
>>   
>>   &pwm12 {
>> +	pinctrl-0 = <&pwm12m1_pins>;
>>   	status = "okay";
>>   };
>>   
>> @@ -1168,3 +1205,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
>>   		};
>>   	};
>>   };
>> +
>> +&vop_mmu {
>> +	status = "okay";
>> +};
>> +
>> +&vop {
>> +	status = "okay";
>> +};
>> +
>> +&vp2 {
>> +	vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
>> +		reg = <ROCKCHIP_VOP2_EP_EDP0>;
>> +		remote-endpoint = <&edp0_in_vp2>;
>> +	};
>> +};
>> -- 
>> 2.34.1
>>
> 
Best regards,
Damon


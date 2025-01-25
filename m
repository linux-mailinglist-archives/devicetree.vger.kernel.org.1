Return-Path: <devicetree+bounces-140876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71288A1C0A9
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 04:30:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6FD5164997
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 03:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91400433A4;
	Sat, 25 Jan 2025 03:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="i90GOSOV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973172.qiye.163.com (mail-m1973172.qiye.163.com [220.197.31.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5983D3595E;
	Sat, 25 Jan 2025 03:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737775845; cv=none; b=SeuRLG6gKNpcHFE5Or313Tm8JVngCOD+qxf6yE+gSuDL6q+sPAIMnCUiebh/NcrGHRnGx+m9Bj2jMl2FSDajAcSdCARSxc4WfLNeIE9q1igYBTJs9J+ZlRfkqxMkm64mVPXyUDNz+2b0mYtMoKv1M8PAd3LJe4a7IZ/tGJHKyr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737775845; c=relaxed/simple;
	bh=3Q8Cez/gOyC5CcHlNd1OyE5t7NJDi+6jODpuigf1JsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XE2/tUq3tSD+FluasFXD2abqERk0T7bLd5pRN//h+OabOpudwLVTcgvAYbsYLJaAijsqoqRsLRXbw/00ZIuKfnjrsVzsJHc7u/Y23G8U4++c74ZD+O/Su//4FR2GaV01mF7RJFcDKb3a44VTCmpcfehk62ZbiL89UnS5CihloRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=i90GOSOV; arc=none smtp.client-ip=220.197.31.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9a41508b;
	Sat, 25 Jan 2025 11:25:23 +0800 (GMT+08:00)
Message-ID: <be3883ca-913a-4ca3-b203-ce6e4d53aa49@rock-chips.com>
Date: Sat, 25 Jan 2025 11:25:23 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 14/14] arm64: dts: rockchip: Enable eDP0 display on
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
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-15-damon.ding@rock-chips.com>
 <u3qiasthay5xrtu4bfu5ihag7x2wajrpbktrcs7bxutvc2iwrk@on5ymtwq5vwx>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <u3qiasthay5xrtu4bfu5ihag7x2wajrpbktrcs7bxutvc2iwrk@on5ymtwq5vwx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0pPGVYYQxpOHUtJHkpOHU9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a949b7e27fe03a3kunm9a41508b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pkk6ISo4MjIWKBkrEjEvST4N
	LSJPFA9VSlVKTEhMTExOTklOT05PVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIQkpINwY+
DKIM-Signature:a=rsa-sha256;
	b=i90GOSOVKov9ch4IdolcO1Z29iwfGzmWMLjaVWh3YmbO8GUwW36x+gQAI5kP9tEdHEvR3Q8mJGc35GOfiMNX0r7+RDd9pp7Ld3YLRyK9lQOQSrQFtqSiIQtjnPX6sA39CHdTklmYML+XFUUO1NkmMp5F1C4rSJG1SdOv1vRLp1U=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=c7MldcMAKTGJgYwoCbGLzVzEW02VyfkoG5ILQhtNfYE=;
	h=date:mime-version:subject:message-id:from;

Hi Dmitry,

On 2025/1/23 19:32, Dmitry Baryshkov wrote:
> On Thu, Jan 23, 2025 at 06:07:47PM +0800, Damon Ding wrote:
>> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
>> - Set pinctrl of pwm12 for backlight
>> - Enable edp0/hdptxphy0/vp2
>> - Assign the parent of DCLK_VOP2_SRC to PLL_V0PLL
>> - Add aux-bus/panel nodes
>>
>> For RK3588, the PLL_V0PLL is specifically designed for the VOP2. This
>> means the clock rate of PLL_V0PLL can be adjusted according to the dclk
>> rate of relevant VP. It is typically assigned as the dclk source of a
>> specific VP when the clock of relevant display mode is unusual, such as
>> the eDP panel 'lg,lp079qx1-sp0v' paired with RK3588S EVB1, which has a
>> clock rate of 202.02MHz.
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
>>
>> Changes in v4:
>> - Add comments related to the use of panel compatible "lg,lp079qx1-sp0v"
>>    in the commit message.
>>
>> Changes in v5:
>> - Use "edp-panel" instead of "lg,lp079qx1-sp0v"
>> - Remove unnecessary comments in commit message
>> - Assign the parent of DCLK_VOP2_SRC to PLL_V0PLL
>>
>> Changes in v6:
>> - Add PLL_V0PLL related descriptions in commit message
>> ---
>>   .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 54 +++++++++++++++++++
>>   1 file changed, 54 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>> index bc4077575beb..a8c151b41e21 100644
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
> 
> Why? Please mention the reason in the commit message.
> 

The 'force-hpd' is set for edp0 because the HPD pin on the panel side is 
not connected to the eDP HPD pin on the SoC side according to the 
RK3588S EVB1 hardware design.

And I will add this description to the commit message in the next version.

>> +	status = "okay";
>> +
>> +	aux-bus {
>> +		panel {
>> +			compatible = "edp-panel";
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
>> @@ -1168,3 +1205,20 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
>>   		};
>>   	};
>>   };
>> +
>> +&vop_mmu {
>> +	status = "okay";
>> +};
>> +
>> +&vop {
>> +	assigned-clocks = <&cru DCLK_VOP2_SRC>;
>> +	assigned-clock-parents = <&cru PLL_V0PLL>;
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



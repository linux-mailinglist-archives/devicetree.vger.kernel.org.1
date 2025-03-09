Return-Path: <devicetree+bounces-155760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1912FA58124
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 07:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F67D188DD9E
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 06:38:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6DF7602D;
	Sun,  9 Mar 2025 06:37:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu2.qq.com (smtpbgeu2.qq.com [18.194.254.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444BD383A2
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 06:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.194.254.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741502274; cv=none; b=M9QZHXc/xZ0LhmPWxO/3P/9gA+hqoMyYkbeQg7OO1YNenJqEgv5r6Cd3okNctDF5L+tx7MhkD0nuYR/079IX6QiEXUJNEISbqs/vmIN+VmjUPtCSp3kGdUxgPamRYJvq4tKL42sKKqdKFocjYXmgRExEofZeYgq9bTKJBaa9iuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741502274; c=relaxed/simple;
	bh=/fOLXHkAsCxPZjc64DW9dMH8H/ht8L+hRC6aW4aqF+E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Cp5Z30vOhEuLojEgcHkYJs/xUb4YE9m7XuNJ3k9AjVPiyLtiE1hH6JUDMmA9bd54hmId9VESBjY8AXiuwUY2q2+k08MZhLoIVSS/4qPl3CdpuzIG+R2mJ7eSYn3gEPUDtconQL9IfCEH/YUy5wxDvX3zt6PDT3XIMDvN79ZAhos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.194.254.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1741502154t5gjj86
X-QQ-Originating-IP: PIiBMmc3En4vJW7/I3LQGRV2j1PvNOrAV1RB8S3SouM=
Received: from [IPV6:240f:10b:7440:1:893e:bed3 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 09 Mar 2025 14:35:47 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2792177622462223588
Message-ID: <3605ABCB7EF60115+2de06a28-1b3d-4a0e-b960-9e0a74c6e19d@radxa.com>
Date: Sun, 9 Mar 2025 15:35:46 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: rockchip: Enable DisplayPort for rk3588s
 Cool Pi 4B
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, hjc@rock-chips.com, mripard@kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 yubing.zhang@rock-chips.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250223113036.74252-1-andyshrk@163.com>
 <20250223113036.74252-7-andyshrk@163.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20250223113036.74252-7-andyshrk@163.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MZChPk4K8ikNtuyS7LmElWHQBKIqfKMszzDt39qR9elumF/p30V6QFbJ
	g+bDMddl4L2ApOzqZsf6BbZqpxBhQ8FxlQ8Zf+QdPmMV+fFKC1g0OGLvHKC4B11VRqLmUJd
	xiJvrpfa5nXJrykU6ICAAYD4loiCATrc9CqFfOjsShImDiiwyk1r1yjkwrhcmqmGkR2cjgC
	goMlrGbz1T27s0luW/t6sHOhgbzTNMaHoiqeYcBNTU78fIrsJKXGCaV5wZ9fpKob/vS7IlO
	259OA+3xlSlakEOJno/qIxnfzWa0gWvdQchNhkytETnW4tfOjJvne91omeqp19Wmxwl6/kw
	lue5yo3oV7uP6utcktSeuot/tjA8lJi3xY3CIiWW7TPI04mn7+27Hlkj2Fc/4q+WTkpCKwO
	1g0uiwPHAOcaQQT1XyKGgzeNdkkKLajaSq2dxTpVMCsh27QeC4XGEVvHSoW9wJO2lN/bu1n
	Xj0jgd+UNV4+U6prlBRe+wa8DosFlbEWJ7zaLIguRHnI9+SpDSBOSErYd3JG5GuJAhbvFsX
	fod++gkfC/Cds41922fNBjUSYxrw/VUxYqHooPfvqgqG7VXcYpno40I9rmfWKNq56S83+I0
	8ZXosFu+XW8ps4DDD/9ay4Wb2f7/ubYCkJ+sCo5UtTegm4TjSlQzsxqgvcsouuLQYZXggXp
	YZSVRDzL1MfQg+ltqk5MhKEFl9d4E9yCtkGVE1yfd7Ec2mO4TnuYxjFtbmkA2Y06CJPZor0
	lGequf4me6fo4y+ZQAWTyG5aGXOK1SK5EuUekyM4j1z91kqezczR4FUKIUu0WXliPLRpwqZ
	dDMd00y+16hTjAYKXqUhUHRLZEpY+fqPNTaYz0AZd82wVG6n94riOOVn/z64x2Y5D+IBo6r
	Rw/LghJEQj8ssX89MtUYd6y+FKqMVJxJlwEY/kUV8LOwluUMHEMK+omZ+NaS551jzPEjbkk
	Zvk0SFrhguJxxzRAxuP/QQaLv
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

Hi Andy,

On 2/23/25 20:30, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Enable the Mini DisplayPort on this board.
> Note that ROCKCHIP_VOP2_EP_DP0 is defined as 10 in dt-binding header,
> but it will trigger a dtc warning like "graph node unit address error,
> expected "a"" if we use it directly after endpoint, so we use "a"
> instead here.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>   .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 37 +++++++++++++++++++
>   1 file changed, 37 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
> index e892dd7c91aa..0f58eb56557f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
> @@ -39,6 +39,18 @@ chosen {
>   		stdout-path = "serial2:1500000n8";
>   	};
>   
> +	dp-con {
> +		compatible = "dp-connector";
> +		label = "DP OUT";
> +		type = "mini";
> +
> +		port {
> +			dp_con_in: endpoint {
> +				remote-endpoint = <&dp0_out_con>;
> +			};
> +		};
> +	};
> +
>   	hdmi-con {
>   		compatible = "hdmi-connector";
>   		type = "d";
> @@ -220,6 +232,24 @@ &gpu {
>   	status = "okay";
>   };
>   
> +&dp0 {
> +	status = "okay";
> +	pinctrl-0 = <&dp0m0_pins>;
> +	pinctrl-names = "default";
> +};
> +
> +&dp0_in {
> +	dp0_in_vp2: endpoint {
> +		remote-endpoint = <&vp2_out_dp0>;
> +	};
> +};
> +
> +&dp0_out {
> +	dp0_out_con: endpoint {
> +		remote-endpoint = <&dp_con_in>;
> +	};
> +};
> +

These three nodes should be placed above the &gpu node.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>   &hdmi0 {
>   	status = "okay";
>   };
> @@ -889,3 +919,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
>   		remote-endpoint = <&hdmi0_in_vp0>;
>   	};
>   };
> +
> +&vp2 {
> +	vp2_out_dp0: endpoint@a {
> +		reg = <ROCKCHIP_VOP2_EP_DP0>;
> +		remote-endpoint = <&dp0_in_vp2>;
> +	};
> +};



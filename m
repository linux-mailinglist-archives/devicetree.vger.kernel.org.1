Return-Path: <devicetree+bounces-125176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9CD9DB20C
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 05:09:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA79A2826CB
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 04:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E507E86252;
	Thu, 28 Nov 2024 04:09:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53939134BD
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 04:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732766954; cv=none; b=bvicGCwrp3/ckroVSGK15fWwwsMJxd0DxP19rEfW661Y0UmnE6Xtc0ajy8+hUTg35cDbUfQRFGPCC5dMTOAXiS+iPtXvrTnNzF01yBu4ZkLgkoRxhzv6ALJVodyCRASO7BOO/e/Vm3io9Y0ve2b8VasLTI9PzWo/Bz9Vtl0KIHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732766954; c=relaxed/simple;
	bh=FR59HmHLZGfL3e1PSVa/vnNyh3Po/o3151UAYw7cnF0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mnurXkusgQ7gldQa+auS22FpuampEv6n33NYpPwxL9fYOJjNc+8mQHAsFvw5fY6nP6AxHaMluzffn5OwudqTooQyuTK+PNYWSKUJG4KYZZ0VhZNlZlpWF5ASMDNm/dnGu/sVD617z+tm2wjFfbrgMOc3JK82ApD4kYXnmjyhaWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip3t1732766925ted63rw
X-QQ-Originating-IP: xe53a//2xl3JpmBtauqS21l8bhVkOwbZKHqLYmQWGOk=
Received: from [IPV6:240f:10b:7440:1:d502:63f8 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 28 Nov 2024 12:08:40 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 474718591288794163
Message-ID: <002469435A2D5C9E+b9a05cda-1ccf-46c9-8f4e-7a8534b1a875@radxa.com>
Date: Thu, 28 Nov 2024 13:08:39 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rename rfkill label for Radxa ROCK
 5B
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com,
 geert+renesas@glider.be, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 alchark@gmail.com, jbx6244@gmail.com, krzk+dt@kernel.org, dsimic@manjaro.org
References: <20241127015224.2361-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241127015224.2361-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OTaQrRjuGKLth4kdlceDwVvZZ5FBQiScaVzLPsFpEaAxQ0t+uCsojhF/
	4F0e37w50WJ3Kw7UCHayMvnLf1RXCeSk2FXUpMnr+W8NEET9OuRlJh8A+efWrhVXCqKG2AB
	MBpJBUd19AI/lRBr5jH264c5iiTEj9EVkVqPTXRxA7VkUvUhAd7r3k5EDW0ZU3au3dzeZ80
	CnkL6Ibb45FPNx6hP8xTDDFnvi0XJK1BFKohKe/kYFkReYJ3/gGbd2FqzUpJVMXeWRwXqPF
	xUqHx1D1j7it9peleKf2f6hrmseChyA2ju/ULBGNOqDK5F0zM67XsdOabIKrCDNzkRd7fZS
	bICEIfct4/QODt+ZI0na1hs47x3AZs6k22vvH+XjWN+fkTS2R2JBuHWwSZ0r3q2sXHv0Jea
	bgbKhopR6g8GBt6KBBkYEs8/L6QJYKhDbktfLXOKc40ReWVCZ8LgVqNrfqGJg8fs3qawVIO
	15Fi249EaqM7VTx/swPuM4AtivVbYCrBhdlnkkrFCSNMwyLYMk9FZD3P+Iu9ZkKDdOWv4+a
	S5iBMgokourAxr077lcN76XHwLT0Erq9CSGZIr9LlZkOMSCsRlDFE0Hy2cfAtOXkhtKEeE9
	8k4b6umoAWttstMTHmaH7Idz3X1zim/K0CN3hDfG2G7g3bYUa1P8rfNzARdo44Rl8OgR4Gw
	S4LZDit+sx1fpqj1mwH+6khFDdosQMJjS5oYys6DeY+ILXi6+t+JIPlcRw4BaMh9HU6Dq5U
	DNQpzM65jU8S2q0fmMm19uErotrF4tEh2bmryOZS+d0XUvrZJrmgnxT4DFK12kWW3u+QyWn
	ff5BfoNSuNHqwyFNKfPslJca6omH27qQZWFKoNKmX6RN622mgdzyNY4WFJsDlPAXwAP4kb+
	i3SPw+GPcVAUSFFFzGYgj5eMdNSbbP3Oud1le7RBMk0=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0

Hi,

I forgot one thing...

On 11/27/24 10:52, FUKAUMI Naoki wrote:
> on ROCK 5B, there is no PCIe slot, instead there is a M.2 slot.
> rfkill pin is not exclusive to PCIe devices, there is SDIO Wi-Fi
> devices.
> 
> rename rfkill label from "rfkill-pcie-wlan" to "rfkill-m2-wlan", it
> matches with rfkill-bt.
> 

Fixes: 82d40b141a4c ("arm64: dts: rockchip: add rfkill node for M.2 Key 
E WiFi on rock-5b")

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index c44d001da169..d597112f1d5b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -72,7 +72,7 @@ fan: pwm-fan {
>   
>   	rfkill {
>   		compatible = "rfkill-gpio";
> -		label = "rfkill-pcie-wlan";
> +		label = "rfkill-m2-wlan";
>   		radio-type = "wlan";
>   		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
>   	};



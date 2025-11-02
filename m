Return-Path: <devicetree+bounces-234105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49813C28C2C
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 09:29:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 043183A9A3F
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 08:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA3E217704;
	Sun,  2 Nov 2025 08:29:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu2.qq.com (smtpbgeu2.qq.com [18.194.254.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27B51DE4C9
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 08:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.194.254.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762072181; cv=none; b=dQU7+sICK7iojmDe9EHPIYL7plX7KNqyL1w2y9kddYO0RnGgCiub1C3zQBSnlEYi+5DPy9KsDGf3v4irR85sqEAbkAC7UnKYQXgOgHLfyuGaG6UL10+DZG0Y1B3MhNYtrApMfZCOs0SSDly56VroO3ZF8HX7kjWq+qd7J18rN34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762072181; c=relaxed/simple;
	bh=RPaIiqmBq2+WepJUm3ghqU0jwmixYsDvDZqlYUckTZ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mw6IGfBC/N6bXOawIZUEDN5bkzK8iWTLewUHezqe7vKg8xwdlWhZEjFdbJgMoUJYhK0E/5Erfyq7matH6sM782ry65cQtwLJehqAVqfMrAbF7GilV2LdTbqyFfqOh0qx3hhbiTuBfrjSMLfkZ3B1RUO7aA0+kKWtO0RRHPEiHLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.194.254.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762072098t29d25fd9
X-QQ-Originating-IP: F3nUd10RVTVpzZzYzC7rcdSDgxfgei8hzpDP6AiJ6ro=
Received: from [IPV6:240f:10b:7440:1:cc75:a886 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 02 Nov 2025 16:28:14 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2998007456399229446
Message-ID: <DAF1CC9361853E89+ce2c6a94-2aba-45c6-b0ca-ad2c3b7208a1@radxa.com>
Date: Sun, 2 Nov 2025 17:28:13 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Fix USB Type-C host mode for
 Radxa ROCK 5 ITX
To: heiko@sntech.de
Cc: dmitry.baryshkov@oss.qualcomm.com, robh@kernel.org, conor+dt@kernel.org,
 liujianfeng1994@gmail.com, detlev.casanova@collabora.com,
 linux-rockchip@lists.infradead.org, sebastian.reichel@collabora.com,
 damon.ding@rock-chips.com, dmitry.osipenko@collabora.com, jbx6244@gmail.com,
 andy.yan@rock-chips.com, krzk+dt@kernel.org, didi.debian@cknow.org,
 shreeya.patel@collabora.com, nicolas.frattaroli@collabora.com,
 devicetree@vger.kernel.org
References: <20251029130200.987580-1-naoki@radxa.com>
 <20251029130200.987580-2-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251029130200.987580-2-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MjQ00mYXMHtuiaHRtmsnbZ71p27SbPYJAnkPxF+fspNwr9rKTmCwqZX0
	IyisjlyuQLcb1Qdscz/J6RNYu7Tp/NfLGJQl24+adOjEdhZhXCYyznzbjpgWtsReZlTiKst
	WE8bI1aZjxQzqmlW1SaPZ1FJHHDXGMTEA/LqetpaPmjwtxkuIh8NAQBxE2MlqZG56RyOuE5
	jGCfQQr+HhrDT2vGXnA2PT9FFuQtk3fp+nYuTWoNyNkJ2W16jyQaUZH6BEqAtNMvD5mJl/N
	ujPNmrvuqH9opLVQl4vQvFXJXQiGYsdCNk0w3A1AZRmCv3gw9H9HTAnXIBpVwt8kAPHW1gE
	WfmxmZtssCf2i+2oQ7BUUnr0Roh8iIpa+EiAQq6933G4pY26lUvdh2+VGzIwSWV6162xp2Q
	dKWsWv2FbwJYe9qjxRh6kIsSm6w5yXVlUjIQE9uHCKodZTJibkML91CDCnoPc7cVUpgBaKK
	/QOUMK9Kb9EP7HNYlENmoJdR4J9+peyVbFpmOlpwv72Q54NccaqdnDrHayJilbrsnqx/kX5
	AsoV+HPtuay/tDq8fdTxuHGLmz4g1Is4osOGlYOp85MbxNC9kmyzMX+MzaVztxOVF9vyRqK
	91FF2Kk/eA2NMV1XPx9OeyhStsRt2+GVs+iirv2TMDeiyIeGy/FG9dkZWaCHNW8xeSqDKyu
	Cv6cacP71QMHXGQV+th2GsnE5LsWZS40Dbac2vIv0cMk2WaFy/t7H7D6v/tkZwRN/y5m+uQ
	LPUYWfjp8y+wmGEF0Q0oMCfiMeben7lxAbpHvlT34caR/KQO7Ko7Y71buCBu3nH+r+CyeIW
	xUCsDc6Ax0zjV/8BxNYf//nD/vhTNVW1hizBjOpheZiD13QAs8o7gOd+SccwrFI2O3MQ0XF
	3UEzSM7USlzhMnLz2vZiagTxiu3QPEPCJ7S7s4KkI98WeB7ZhNSh/Pm5liMdHxbyMPDFMwS
	YicVt6/gaavMtAAldCogwf75Yehl2X79Kw9U=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

Please ignore this patch.

By the way, could someone try a bus-powered USB Type-C device with the 
ROCK 5 ITX(+) and let me know the result?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 10/29/25 22:02, FUKAUMI Naoki wrote:
> The Radxa ROCK 5 ITX USB Type-C port supports Dual Role Data and
> should also act as a host. However, currently, when acting as a host,
> only self-powered devices work.
> 
> As a workaround, set the power-role property to "dual" and the
> try-power-role property to "sink". (along with related properties)
> 
> This allows the port to act as a host, supply power to the port, and
> allow bus-powered devices to work.
> 
> Note that there is a separate known issue where USB 3.0 SuperSpeed
> devices do not work when oriented in reverse. This issue should be
> addressed separately. (USB 2.0/1.1 devices work in both orientations)
> 
> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - Refine commit message
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index bc8140883de47..1664f85db4aaa 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -484,9 +484,14 @@ usb_con: connector {
>   			compatible = "usb-c-connector";
>   			data-role = "dual";
>   			label = "USB-C";
> -			power-role = "source";
> +			op-sink-microwatt = <50000>;
> +			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
> +			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
> +			power-role = "dual";
> +			sink-pdos = <PDO_FIXED(5000, 10, PDO_FIXED_USB_COMM)>;
>   			source-pdos =
>   				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> +			try-power-role = "sink";
>   
>   			ports {
>   				#address-cells = <1>;




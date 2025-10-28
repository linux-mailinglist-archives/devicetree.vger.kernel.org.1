Return-Path: <devicetree+bounces-232191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B98F0C1541D
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:54:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A26819C161B
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 14:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E79724E00F;
	Tue, 28 Oct 2025 14:51:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E9A2472A4
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761663080; cv=none; b=ITFLWjGIH579FDgQeegFSyeSh7+Fu93CuXzlmtgANs6go5igUbYMjVp4xFeMVgE7SmR8tdn7o29beyGvlLQhgFGrAeHyXbSMoaeTjmkSNu/W/hCn9Cx/usY0mrP7yk0UZ3O6QeajILklCUNii3SRbkWH10NXwsO9mub7khfDepM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761663080; c=relaxed/simple;
	bh=ceU/8ZmxWlKbo8xaYakmPPm28sYKFNUijYlK7lw/+7E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lJheeCd8afH+KlZ7wlAqDDBlOjm5m4cm08Jur378cQmbUI+HFKz0FvSJ7w2J081QJWJpl3L7cPC8poZ0CkAdX1mJS9QntzV0iV9ph9OIOdV6oNTJh7lLYGf/owAmvv4Q0l8fUl4nwPBsDYRJE1FMcIgOAxsfGlYVttYiQANWLBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1761663048t634afc42
X-QQ-Originating-IP: N3D2Y/ycKWBHdmH0R78SWRdM4s9dXaooUn9/4ftBn5o=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 22:50:41 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10947994854737333038
Message-ID: <8DBE8BDF78244903+c3dab9f1-e7ae-484f-8a8b-ae3454543117@radxa.com>
Date: Tue, 28 Oct 2025 23:50:40 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix USB Type-C host mode for
 Radxa ROCK 5B+/5T
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
 sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
 nicolas.frattaroli@collabora.com, damon.ding@rock-chips.com,
 jbx6244@gmail.com, detlev.casanova@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251028115040.101156-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251028115040.101156-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MvyKdZyVtFx3IN4fMYPxLThTvddxedoVJ9gZULPSFo+CkkVVtXBi1IAu
	E9GjUpfAVox0FODyQS5+e1YFGDiCvktIRVQy0xYts8KAL3a2sdwdWAScHT/74QicIr8rWWQ
	O36RNOcIGaPeecOkRQyOExaGRCZXez3Me2p1AEaya8XDlLluVvZnpyHwt+2eOWmfRAov7sC
	XIwbeCepqN/9kSAMn73frrbWEKhMSR7pbF5/0ppR3rnEV9QBq0rp6x2EQOVZjPK2+DRPpY/
	tjfXzmY7iTRZUpCQ6f3wuvLqYhmHiU+XtlEnQEdJJAUP8ohbJK+a2AOfz6/iOBxYOCVmM+N
	NZ0IZzpLQPDbAr+JhTF3is/Wxe1nxgw2BY6dReDZN8rjclaAJCfeQ7gc+6/fSLd8dGe47Ka
	dnFDpH4ItOqS9QaDdJDIZ/GgQbgOG9E9kYAaYcbLd5jlRYf/xEhfJNN39VFi4gmIarFpTGK
	CckT08FQ/7f9mFt9pGq3xiGgQGgY0SRROX02CxU9w6580ATpYDAL4vGe60wIjg9e/qMcDvE
	anPi0CmctTprPKiwFaykoaozRtXAjDw08DZtT5OL/w8UUnrXC3h1w2MfS6RLtvYEICMMv7Z
	ABwus5pjHcH+EReLTIDJLwL2SlIJShLiOr06Yo/4DEza8MlO9CNTlN5UuXUc3uVncmAV+mi
	47N8/vLuxNU3Ji+PLvsv7NIug5KzycEMs7u65M92BRwXSxCB717V9B92dINbh8969X3keY+
	7SJZsuMeGwgf39Dxhs0BqQsg3wekE/cf/i6dujzJaXFaQtU+o4IUzibEYT3+9vRU5/5xglt
	gQsuYkJRpA27YhaDzpAsTZ1xrwPoZuHcwv72Nn3tnEfDt97nABHPnMj6buayEuzfFE9yXFX
	fuznMGODFj2AEHW1DRRjYblL/WtzjFoIUEcODC5mlqHymiwMkpWysH/7Q+TVBH2dGB55Oxh
	SKDz1UG98INqS9SwqDUSSNZHSzE693hdLrFs=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

On 10/28/25 20:50, FUKAUMI Naoki wrote:
> The USB Type-C port on the Radxa ROCK 5B+/5T supports Dual-Role-Data
> and Dual-Role-Power. However, currently it cannot operate as host/
> source.
> 
> By setting "power-role" to "dual" (along with adding related
> properties), the power role can operate as source and the data role
> can operate as host.
> 
> Unfortunately, a remaining issue is that when a USB 3.0 SuperSpeed
> device's orientation is reverse, the root port is detected but the
> device itself is not. This must be addressed separately.
> (USB 2.0/1.1 devices operate even in reverse orientation.)
> 
> Furthermore, this file is also used by the Radxa ROCK 5B, but the
> Type-C port cannot operate as a host regardless of this fix. This must
> also be addressed separately.
> 
> Fixes: 67b2c15d8fb3c ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> index 3bbe78810ec6f..b77c5a8229e75 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> @@ -331,12 +331,14 @@ usb_con: connector {
>   			data-role = "dual";
>   			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
>   			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
> -			power-role = "sink";
> +			power-role = "dual";

Ah, this shouldn't be applied for ROCK 5B (which is only "sink").
I will revise the patch to target only ROCK 5B+/5T.

By the way, even without applying this fix, the Type-C port on the ROCK 
5B still won't work as a host. The kernel outputs the following message:

i2c 4-0022: deferred probe pending: typec_fusb302: cannot register tcpm port

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>   			try-power-role = "sink";
>   			op-sink-microwatt = <1000000>;
>   			sink-pdos =
>   				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>,
>   				<PDO_VAR(5000, 20000, 5000)>;
> +			source-pdos =
> +				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
>   
>   			altmodes {
>   				displayport {



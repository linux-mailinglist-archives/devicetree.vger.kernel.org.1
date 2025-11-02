Return-Path: <devicetree+bounces-234103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB94C28BD7
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 09:08:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBD7D3A5FEE
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 08:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C360261B9E;
	Sun,  2 Nov 2025 08:03:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast2.qq.com (smtpbguseast2.qq.com [54.204.34.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0512147FB
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762070638; cv=none; b=MU056uvHRPMGNHBZLIZM7AF/68luuCxWxxRX94VSUHabQ5oztQLKRmdPIKefbncWVFToQs+jJdiSCrUkRnNAtLvXi9XiMJpQxe2fLhrBLub7dsdlmufnAkQitjBtKaJbVMxp2/Ux93kIoRniG13X3Je80pWsIqOvSRS+/SyMZOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762070638; c=relaxed/simple;
	bh=3eZQoripGm6MxpXghydd9XpiaTFk+Vq/IloOFg87pTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jSu2cczRy/ZtTY+IKBaX9//ZaEG+HTgAUj4XrhrhY09fLuawhr8cJMgVcGiu58Pwa+LUw+DdUgLNnCAEKtuSHUH29Yds16Ek84CQsIlB2+HfHymAZCbv/0O6FUiJtNZPIsfcs+0CBNhv7/AQDX64P6lSBZGwcPgRUYteCME/YKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1762070550te7e84098
X-QQ-Originating-IP: CQeDud448vugJ62KQs+40lT8SOXQ8JP/dkE3j6ydtdo=
Received: from [IPV6:240f:10b:7440:1:cc75:a886 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 02 Nov 2025 16:02:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7687083282293934441
Message-ID: <0E9BD1F921A89A99+8730cb12-0d40-4c50-b423-51c47120c9f8@radxa.com>
Date: Sun, 2 Nov 2025 17:02:25 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: Fix USB Type-C host mode for
 Radxa ROCK 5B+/5T
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
 andy.yan@rock-chips.com, sebastian.reichel@collabora.com,
 nicolas.frattaroli@collabora.com, dmitry.osipenko@collabora.com,
 damon.ding@rock-chips.com, jbx6244@gmail.com, shreeya.patel@collabora.com,
 didi.debian@cknow.org, cristian.ciocaltea@collabora.com,
 detlev.casanova@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251029130200.987580-1-naoki@radxa.com>
 <3389401.44csPzL39Z@phil>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <3389401.44csPzL39Z@phil>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: Obfty5iaetlmiAAxFUNPrIkLLQPgMfeSFiwezx7E1Gydz9RycscFz+ds
	d0UURpEb7QSyGeEdrRBPysYXAcioflQeDjr2/UBnLKBTp0pYAxp6TB8lFYORdgAu5BhGYMk
	cvxsO2gNnxKH6/Dx1ycCwbmCMNSAorXonwl/fEmfIxRIh+xjXP6iAY99Xwhsh/d+VsId9UA
	p223JmZ2jomCvUmMKh28I5mqxqn4Lyc/DLZNdPczINQzt9CWBsSlpciKFQk/jfD/rIciXFj
	9GC1ANXwiUDMzX5RLNmkQEdSqqctqvC5uXbfGQAVZLc7xxChrQ+lA8BI8Ys5Hd+H2Z4xzvv
	Su5hKB09VdKMfsxsSPnTvoNEK0S+rRK0YJ1VZVBDOJQyqALJ3iFl7YrfQuHbXLh0GHsaLFT
	SQERVd3IafrR6JJly6kb8q7J65E81j77GXeesswnC8v6kKIWQladTU4lEu37qmjCMF5CTZs
	xj9PrYTXFWmWf6gUbXdZoNh/gHF91O0zMwcXwsVzCJxtwYCbHHJFmrpHGOgcE5wBAfy40ce
	42/47GnH8UIPGF8w+CwWOYxlQx4yBh6A+LOMyfG0xfu4ZJ0Q2Up/xXraZSQX7wVh5KKLrLG
	crGrHbyQ/G7/icv1ZkpD4TlCCi1Pc9jvPY067r2SGOFJ1SHlXBXrerUdekVC5v3I+NkNhuc
	rhQX44uS7ezyCGQkTkJR2Z2z/5cJ23uFzzWV3jwclTdN9zyJX1UolIhmhH8e22XssmmPn3R
	fMI1HJHRXCgGSRDblHOyJU5mf25ZCg2rvU3Z0q0Q7xUHLI1wGQh/I6mRWl1s2dfra+qRzpH
	UMJkpTlrvmZN1rMoabId0niGqbMMh/aAmj8rnKEyXwjQjuLv6RAiZV9RTH67jhXGuPmf7sS
	eVxgTOg9SK2yFQhzo0eML1SKADXemRUCCAHUKgNidTWFh+sFgapVFnty1ETNskA5NeCYuHC
	mgM0SmRhAJtYJUg==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

Hi Heiko,

On 11/1/25 20:51, Heiko Stuebner wrote:
> Hi,
> 
> Am Mittwoch, 29. Oktober 2025, 14:01:59 Mitteleuropäische Normalzeit schrieb FUKAUMI Naoki:
>> The Radxa ROCK 5B+/5T USB Type-C port supports Dual Role Data and
>> should also act as a host. However, currently, when acting as a host,
>> only self-powered devices work.
>>
>> Since the ROCK 5B+ supports Dual Role Power, set the power-role
>> property to "dual" and the try-power-role property to "sink". (along
>> with related properties)
>>
>> The ROCK 5T should only support the "source" power role, but when the
>> power-role property is set to "source", when acting as a host, only
>> self-powered devices work. As a workaround, set the power-role
>> property to "dual" and the try-power-role property to "sink".
>>
>> This allows the port to act as a host, supply power to the port, and
>> allow bus-powered devices to work.
> 
> So it sounds like you're working around an issue coming from the Linux
> usb stack here? If the usb stack handles those power roles wrongly
> shouldn't it be fixed instead of introducing wrong hacks to generic
> hardware descriptions?
> 
> Like Linux isn't the only consumer of Devicetrees, so hacking them
> together to walk around driver issues feels wrong.

You are right. I will amend the patch for the ROCK 5T to set the 
power-role to "source". This will correct the current erroneous setting 
of "sink", surface the problem in the Linux USB stack (which should be 
fixed separately), and allow us to discuss this problem.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Heiko
> 
>> Note that there is a separate known issue where USB 3.0 SuperSpeed
>> devices do not work when oriented in reverse. This issue should be
>> addressed separately. (USB 2.0/1.1 devices work in both orientations)
>>
>> Fixes: 67b2c15d8fb3c ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v2:
>> - Refine commit message
>> - Use board-specific dts to describe (try-)power-role
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 ++--
>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts    | 5 +++++
>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 4 ++++
>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts         | 5 +++++
>>   4 files changed, 16 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
>> index 3bbe78810ec6f..7aac77dfc5f16 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
>> @@ -331,12 +331,12 @@ usb_con: connector {
>>   			data-role = "dual";
>>   			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
>>   			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
>> -			power-role = "sink";
>> -			try-power-role = "sink";
>>   			op-sink-microwatt = <1000000>;
>>   			sink-pdos =
>>   				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>,
>>   				<PDO_VAR(5000, 20000, 5000)>;
>> +			source-pdos =
>> +				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
>>   
>>   			altmodes {
>>   				displayport {
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
>> index 5e984a44120e4..07a840d9b3859 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
>> @@ -110,6 +110,11 @@ vcc5v0_host_en: vcc5v0-host-en {
>>   	};
>>   };
>>   
>> +&usb_con {
>> +	power-role = "dual";
>> +	try-power-role = "sink";
>> +};
>> +
>>   &usbdp_phy0 {
>>   	pinctrl-names = "default";
>>   	pinctrl-0 = <&usbc_sbu_dc>;
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> index 8ef01010d985b..da13dafcbc823 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> @@ -49,6 +49,10 @@ vcc5v0_host_en: vcc5v0-host-en {
>>   	};
>>   };
>>   
>> +&usb_con {
>> +	power-role = "sink";
>> +};
>> +
>>   &usbdp_phy0 {
>>   	pinctrl-names = "default";
>>   	pinctrl-0 = <&usbc_sbu_dc>;
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
>> index c1763835f53d4..96ffffec7e05d 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
>> @@ -130,6 +130,11 @@ usbc_sbu_dc: usbc-sbu-dc {
>>   	};
>>   };
>>   
>> +&usb_con {
>> +	power-role = "dual";
>> +	try-power-role = "sink";
>> +};
>> +
>>   &usbdp_phy0 {
>>   	pinctrl-names = "default";
>>   	pinctrl-0 = <&usbc_sbu_dc>;
>>
> 
> 
> 
> 
> 



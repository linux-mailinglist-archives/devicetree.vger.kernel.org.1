Return-Path: <devicetree+bounces-232391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 239C0C17396
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 23:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43CAA19C5962
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 22:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 554A4433B3;
	Tue, 28 Oct 2025 22:46:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3862E092D
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 22:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761691612; cv=none; b=KZqYkpFXLz2In/CHJRrUOJxzP6cNkjTrjUDHFwvakBCSWw23MVkwLezAEsUI/L+DiXSoXW1HnvslA5QgI1ksv9pfXAtthOCsS5NSqLlTXfy71CLrQbSNYSE2+h5DnyGJzI5K/Rv9IsWzNBiXhRJUz94qkYB7Zp8EQpFRuIENYC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761691612; c=relaxed/simple;
	bh=0twSq3c+ObXAcgVkvMfjw4uCd6uqp/alZJw+M9nkGsw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GyiciANRG0GB/BXCvUPpiqKTx4WDzXb5PxK2xOXNK9FE+BszIIJ7EcsabYAxqZqNDOJOpGNREj9Oz9tzBPe3/7XgG9ij7f3ET0u7fsVMHaRy7+mkmRjaanWY5sIBpAIs7Up7Z7xFP/cU5dEI0K5qv/ZGZt7CoGKUJ5pcXea+NbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1761691579t1a7344d0
X-QQ-Originating-IP: yt9xKjmej3y85LEm5BR5RfZpa0N3FfHfegGDCFQlBq4=
Received: from [IPV6:240f:10b:7440:1:7dcf:d79: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 29 Oct 2025 06:46:13 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7599762567883759102
Message-ID: <FAF4CA2A84F989D3+3f447970-cc22-4eba-badc-92ab9dad00fc@radxa.com>
Date: Wed, 29 Oct 2025 07:46:13 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Fix USB Type-C host mode for
 Radxa ROCK 5 ITX
To: Diederik de Haas <diederik@cknow-tech.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
 sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
 nicolas.frattaroli@collabora.com, damon.ding@rock-chips.com,
 jbx6244@gmail.com, detlev.casanova@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251028115040.101156-1-naoki@radxa.com>
 <20251028115040.101156-2-naoki@radxa.com>
 <DDU4P6569O9M.3DKFYS1FDBROU@cknow-tech.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <DDU4P6569O9M.3DKFYS1FDBROU@cknow-tech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MB5+LsFw85NoYruGqZhgImwR9d6VNO722z8j04GzwZOD2NoejRDtHG2M
	E0Qsvw/dy7rOVIte9oCwmZJudUtvuBssOGegP6n6PVQMgnNYNA6y9MA7Bm9/OJ21RtuF8tv
	pvRZx0QSuQJ/qPDnouXFrbvQjRQRfvd6z5HNx7E9X54LuVI86wq4uYypr2OmTUI7yxF8Oaw
	YTwlB9rX2s2G3evxm87VyKrRybuXnuMfRYKQNteuaSQ80ClWW/p3Gb+NI1rFAFQRe8Mvdo1
	YgGCSgDWcpvHWa5lNKC10M72OHqRijFTcG/849Zt1vd+p4hnMMtjhPw+MzF42C0UYC5/u5+
	Uhofhp3nSeyS4d+XHcIlw5RnGXo6GIATebaWLMHUWqXNzuk55T86auPBCDgpnTZXjJE4ZiV
	w8Blqa0QxECMtRf+Xwd/g6mVl4dAspEB+jQRqm84yOs18PmAtM07CBHhi1ivl22zfYXH9Yz
	zQAjUU6zr2RU4edVwf63aF1FHt6Ebir2aHuenHl1t5tnUIe/LDzm9rWldN74zRpO5cLgBbe
	urn3KtlKmlJOnA66mH5vHAjUbaTxKV7AN2j6HmQGnx/duJKFaE+1oMsha8Zdub6c3xabbuj
	GvlxFo7pVm7S0BjcHrM/EbpjUl+HxYwdIrevbN9wUjx/B+oKtmqYNhKh8pWui7p3hWFRjh+
	JMyt2cQ4GudAXGw0JNE724WxJ1RAx3xM6ER9oB8eh+WRcTpzaYIxn+F3mtE4IuvTEchcIuU
	OGO6EdmdpGOWmoNM/6PeEzwN7VM5CyjKDyhFyh78FCY38No6MEbljuEVKI7ICDb7Et6l0P/
	tEBOP3pp1Tzd+eLxF8rNVFSbDHGqy0pP8yanYt0+Mxo3N1PuXpOeZQ59DDQ7T2rpnHY20DU
	bTGTY1wJbCji0IgawKXKJvCtugpMmBbiTtHFIRKy/csd1wdOClKlLmR2sz052joI3JwFkp0
	S+dLIs4WPLzE0wjHEtReUQ1130HjlYfXjfDj5kP70zF1C84qqIN7S4LMQ
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0

Hi Diederik,

On 10/29/25 02:24, Diederik de Haas wrote:
> On Tue Oct 28, 2025 at 12:50 PM CET, FUKAUMI Naoki wrote:
>> The USB Type-C port on the Radxa ROCK 5B+/5T supports Dual-Role-Data
>> and Dual-Role-Power. However, currently it cannot operate as host/
>> source.
> 
> You describe the ROCK 5B+/5T while modifying the 5 ITX. If the exact
> same logic applies to the 5 ITX, then ``s/5B+\/5T/5 ITX/`` above?

Oh, yes, it should be "5 ITX" :)

Thanks!

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Cheers,
>    Diederik
> 
>> By setting "power-role" to "dual" and "try-power-role" to "sink"
>> (along with adding related properties), the data role can operate as
>> host.
>>
>> Unfortunately, a remaining issue is that when a USB 3.0 SuperSpeed
>> device's orientation is reverse, the root port is detected but the
>> device itself is not. This must be addressed separately.
>> (USB 2.0/1.1 devices operate even in reverse orientation.)
>>
>> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> index bc8140883de47..1664f85db4aaa 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> @@ -484,9 +484,14 @@ usb_con: connector {
>>   			compatible = "usb-c-connector";
>>   			data-role = "dual";
>>   			label = "USB-C";
>> -			power-role = "source";
>> +			op-sink-microwatt = <50000>;
>> +			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
>> +			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
>> +			power-role = "dual";
>> +			sink-pdos = <PDO_FIXED(5000, 10, PDO_FIXED_USB_COMM)>;
>>   			source-pdos =
>>   				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
>> +			try-power-role = "sink";
>>   
>>   			ports {
>>   				#address-cells = <1>;
> 
> 




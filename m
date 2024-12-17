Return-Path: <devicetree+bounces-131587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3129F3FD1
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 02:12:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 18ECE7A5B97
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 01:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1199E14A85;
	Tue, 17 Dec 2024 01:12:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8EAC125
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 01:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734397950; cv=none; b=Ei0tLf5yXzEphuvlO976GOLNeTFO96+LC+H4aW6BnsVrraA47iT9SAQMnR/6r9iImfDNcKUpE2f7aMDz/iNktzu85bR5jy0d/2KifophhoeGnpAjSnvIfzAymtVewGWb0axBzG5x+3P1cxZRBxxEjy4+e3iYKfE0jPgU8RQ/EOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734397950; c=relaxed/simple;
	bh=4jefY+1slTM/giLRhosIm76U3hs1EpCJ9xlnczqOBHA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pxloya1zsOlpyPQZmt1GymZhGs8grVHmzWmiQQc8FTMYgAgXLs+1xH78EErR4TXXnqEIzq9eQoQMXncXTD5fFL1OvvXPpKNjrfLNEUaIOCHjBN51wc4UdUu0vTZ8cJERdUM7H9A0AVRqEx9VLyPwRNIGZHTnICtUTZBsTg8R1ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1734397880t7frbfl
X-QQ-Originating-IP: nzE4y3/Pr5QG2slSJITReEI1AXS8a0jTP5zD1xzVETU=
Received: from [IPV6:240f:10b:7440:1:1e5c:5a5f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 17 Dec 2024 09:11:16 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18083944749719747068
Message-ID: <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
Date: Tue, 17 Dec 2024 10:11:16 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NRkWGnbnkwTmexKZhjCDgicqwzkNDSygwsjmxKTrRsDS+EsaswtYOfDQ
	96NaqTlnw0AjfwocNvokYKPtxPp7Jr0mgQfyZdWgK103/lKV7PCfJnjlq29Ki/O+EyhwQcH
	xrcCOBS7kVq3tQ7UAl6oQ+xKWfIwMTHqo4aKkrP54UDStEAlzAOiuFLeEFBYW7mm0Z46OiU
	RoW77sCAIa762GuhLuZh4c7L14pKp5lwqw0jdhmrVaKG0fU2vf80zraRmAyuBrKebPkIUtk
	McQdWKHWfNm+K7JR+DaB+hb0HxwybozpdssnBLYn4hJAUgk1ooW9SvIarHEaL+Z+qiX6Htu
	PyCUgGxaEPLOs2JvFUg+W3bXGT1ElviSvxD9vCQZGRFpqp4hEWF2xvA8J4o5j3Vr1Yz91PS
	C0qdJ7/gz+OZE/Qcs/gfKm004YTKAZMzB1um7slNEAh2JsB0T5BZ7Jw2C97RD5THJWQP/yc
	KOVVGbR67HmRmSpMla9JgSmg4xAr6xokao8LZpYVMmIZRDya2hNE8krwan6vFjTu0gEzm5d
	UBnOrKFl6grAFDUMG1wWirlHrzjxnHWYwPHTiWLgcKULt1OO3u1fHU7Wa9CbTDr83D92TGc
	1A+jPAwB4vXFXLlO63W6QdW0+B2is2MvhQxI+aL+w0ftshrxgqVm2+nSA2CBDoFPe9kzjk3
	RnN2EY+r2lBMgQ8htyA/LEOVfBsyxunX/H8CmNTedzVYp45j4LHEctGUUzd/ck2wVfk1X+n
	1uflTGfGE0mvvQlSbb/SmS67yWVVpHUm9VSqEHb4KVZ2uzN7HVu9Ph1n1Yt7KfMYCYMUXk6
	wEGNQ6iBGV9RVj0i1ajpSBVOHc6mngBY8++RmgXV4bFZzezTFWyt+JyZ45mYAZYIBNPOSPW
	c8p+ofyScTbNdJNHEi8qMm/0GAOB+Mkzr7gaYL5FpkVdPOLbJ+nhXN7V2kGYKm+2
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

On 12/16/24 22:38, Krzysztof Kozlowski wrote:
> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>> Use consistent name with other regulators. No functional change.
>>
>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v5:
>> - Reword commit message
>> Changes in v4:
>> - reword commit message
>> Changes in v3:
>> - none
>> Changes in v2:
>> - new
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> index 85589d1a6d3b..61d75ab503b2 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> @@ -76,13 +76,13 @@ pwm-fan {
>>   		pwms = <&pwm3 0 60000 0>;
>>   	};
>>   
>> -	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
>> +	vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
> 
> No, neither explained, nor correct. See DTS coding style.
> 
> Please use name for all fixed regulators which matches current format
> recommendation: 'regulator-[0-9]v[0-9]'
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml?h=v6.11-rc1#n46

'regulator-[0-9]v[0-9]' is preferred, but 'regulator-[0-9a-z-]+' is also 
permitted, right?

i.e. regulator-vcc3v3_pcie2x1l2 should be regulator-vcc3v3-pcie2x1l2


Or, should we revert below patch and use 'regulator-[0-9]v[0-9]'?

  https://lore.kernel.org/all/0ae40493-93e9-40cd-9ca9-990ae064f21a@gmail.com/

Is 'regulator-0v0' valid?
Is 'regulator-12v0' invalid?

How should we handle multiple 1v8/3v3/5v0 regulators?

Are examples in fixed-regulator.yaml valid?
'regulator-name' should be '[0-9]v[0-9]' even if there is same name?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 



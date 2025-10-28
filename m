Return-Path: <devicetree+bounces-231954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0099C134F9
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 08:33:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 366E3466839
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 07:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1256269D18;
	Tue, 28 Oct 2025 07:31:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF20F1C84A0
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 07:31:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761636669; cv=none; b=JqY988Vkdw+2Eqf7DANabyJU9mLJtjaCloj1X5ZBZK6TFtxi6kBoqVBid5DF3ODHXEsnIezJYn/oKYx4xaNPqndQav1KwNScYFIOydSjXSOZ19bccU53E+gjU1BJ8JJ/2E6joZTW+sBIsU69HuSu1LJpB+dWG0HQ18Eb+x2s+pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761636669; c=relaxed/simple;
	bh=RJtPlEVYyShFTNSYU99mE8jMJSuXSJB9ldYerE2/Aqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CJidQTrupfbNrBRWhfPDEkMJOMQpwFIYJH9ARhcGmmCZREDj9n0UlKYnF3CzTFVODVZHel0X9fzFtQ58y272FmBHFuGmJ9kTIpbhnNHQpIss4y+PD+N/39/K+j83LUMYMjnZv0hf/82+L/7slQx9KFzrlBjbipq7B/ACMQlfyy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1761636589t561f20e6
X-QQ-Originating-IP: Z9ofJTy/4V9GYiUUEoWjwp0mZmyXtvCFrkn4y1tSXKM=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 15:29:42 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3051709390252911974
Message-ID: <A39F9BCC6572BA03+67736ed4-86a0-4a78-98af-b2f39aeb785e@radxa.com>
Date: Tue, 28 Oct 2025 16:29:41 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Reorder the Radxa board
 entries
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, dsimic@manjaro.org, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-5-naoki@radxa.com>
 <67e7badd-4b38-4f93-872b-e51a43281d3b@kernel.org>
 <6B986FE9E161F74F+f2826946-a3e9-4618-b5c8-6e29f9f6b83c@radxa.com>
 <1fc497ee-3363-49c9-93eb-20acd4373df9@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <1fc497ee-3363-49c9-93eb-20acd4373df9@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NNCgUTg3ctKTko4szyorCihpTWEu0D1DKx9TQRyvuQg8T49GejY1m67D
	xCV2FYw+BZCo2BXeurGNMug0Tvj9/aFHodFX7a+LH/GAe4FJ9oJuT3xsgUJgDG0Zso0jI03
	ZzihXAT9pus84LPBBnYRXgvDE3JZNV/9DRpPcC0dLTroWfizVED41z1txTmQSuGLSKDK0PG
	nmA6bzc5ldq3mJDfuQK4/0CO8yqTiP4AIwRQhPulgONn3ZPv4CZLgHWUG77dWqzIM9xUHKK
	+5SXMgZt70CC/FmW5X9DixUUhh77Tn2L8chkpNuc34Tdm6t8GBOoQDNQvQ2JfT3PGeWCaJ4
	OZXZFdDUkTp05oLjyBXYutVL3tIXsZ/tT0HCBYvtE+/2MI5A9WsSEPM9PKkogIl7Wnym9gV
	XhgPOreWslEK1FoxghC1w/LU1L6gAQL8TOHWiWeBAuuv808EzPHhvsJl1X0Vb5mjVYt1nQm
	l1etu+AdhapbwjMMVDNDs50MhSBQr2VJhad2iMIx9JjfxvJY7ce+cFTPP6UqqOj5VANYCYu
	wN18C4zaQjMmIL/MnLckJM7nUgK/TTPoEkQNL4CkoupZHlNnNn+Ua8JOKXCEvF6Yx8c/ZuP
	eLxSzqw4etgN7hxV3tDSSh8DoAY45aNbuGCBTp8Y/fWJCjeM17YqPh5mgiaiN2M6al6FiQ1
	4PEoGYpPBH/LNcfEuUSF+8XlQblUd+d2TXIabgSY6Q4QLcxQAQBTNFJISfPJRJGjMYcKNx3
	Mo0VRBl3dmtn8jlerXV9WBJVZWoj9J6L5wHLCc/KX45GnDK0xujJ4OqPCtP5T7V/7LeQzpl
	u+2Hcp/tplZV0wX6e4yJyfR/NMYdn82YSoK2j0FdXJ4kGAUDDG3890fNKDtY0zHJtOeMD3C
	ZwM0qDQrZBWynABGoKoiac9SBeqixR1Xjh3Dz+2pRE4RJXyjhY4w07CUxr7Ur2K9tqZOPb5
	1UQmxp2LbAn3JNZnTaGF6UJcF
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0

Hi Krzysztof,

On 10/28/25 16:26, Krzysztof Kozlowski wrote:
> On 27/10/2025 23:30, FUKAUMI Naoki wrote:
>> Hi Krzysztof,
>>
>> On 10/28/25 04:08, Krzysztof Kozlowski wrote:
>>> On 27/10/2025 13:26, FUKAUMI Naoki wrote:
>>>> Reorder the Radxa board entries alphanumerically, with the following
>>>> exceptions:
>>>
>>>
>>> Why? You must explain that in the commit. What sorting is being used by
>>> this file? Why do you think your re-order matches that sorting rule?
>>
>> I understand there is no rule, only your preference. Thanks.
> 
> 
> Really there is no? Are you sure?

Could you please tell me what sort of sorting is being used for this file?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 




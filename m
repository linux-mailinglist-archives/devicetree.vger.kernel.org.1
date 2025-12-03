Return-Path: <devicetree+bounces-243907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E02C9E52C
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 09:57:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F411F348CB9
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 08:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 407712D5A14;
	Wed,  3 Dec 2025 08:55:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85372D9487
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 08:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764752149; cv=none; b=r1LYs/JzEBHug5HgZLKRKIBjqJnvMPx4toDAhb1zCmuGPjxCcpxcGU7LozSPjqmcrUfoPYdNZcNoPabbtwMdEm+6qo5ygNx/kVb+ruSwxllI3aKNP2PI4vrlJCvlodgO+fDAYgB6kJ+aqNlwkkd6+4q2uVKb5GUERK3v3VaydBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764752149; c=relaxed/simple;
	bh=ew3wmS8TnMdQ4OEdGaof0QhD71r88b8CL4uJL5v6CuY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=RtkLg2mvSM/BCI+sr4f6CbtXLgKty4NwcYcgWiSAxcmx/zMS3QYjZ/urPseCovJ5INFQRDxygv0zPPI0DZ+JM9jbIj+959hEU4Ay/XSOjQRuczhKXop9ds1Q0I/PJU0jWHsHAo2WRRRUXSkmKSKn0Yk+ooDFw5TsxJhm9xI4/3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpgz1t1764752118t99a65be2
X-QQ-Originating-IP: RHMRvkO7bNUZP2aT3Z2Y0jigv5xKHA9O/yp7n6n+N9I=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 03 Dec 2025 16:55:14 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18252387431315069170
Message-ID: <5D1F62998F80D03D+6b662fa3-4c6d-49da-b43c-d3363fe36553@radxa.com>
Date: Wed, 3 Dec 2025 17:55:12 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND2 PATCH v5 0/3] Add Radxa CM5 module and IO board dts
From: FUKAUMI Naoki <naoki@radxa.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de,
 jonas@kwiboo.se, kever.yang@rock-chips.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202084052.1517-1-naoki@radxa.com>
 <185BFDE915D4629C+83d852ac-617c-48a0-aeba-a881e3542e78@radxa.com>
 <CALWfF7+ESPGscJNrxxSEyNmJsFTRDM2crjAduiCfqaMUETd2_A@mail.gmail.com>
 <206BC4BB06898B7D+3cb294a2-5e06-41f1-83da-714e810d0d95@radxa.com>
Content-Language: en-US
In-Reply-To: <206BC4BB06898B7D+3cb294a2-5e06-41f1-83da-714e810d0d95@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M5ksmywBLdRIAKogbnGhw4H6NLelpNgDodjZJT9G5Ks1wxhuh3RLaZqE
	jHv1JKd8Azm5Sr6SxZuVQQEBIhTm6nKaYatRzs57dLlfqeMNOELkjyzRPC4LWQtq0CFTjn4
	Ki8r5pyLa7z1nQyhUxSKOQXhNCVhb2t4EUBxNPva5pR23BbYjaw7prM74iHF1yUyHJH3dNH
	IZpdd4bTQ7TiZaSIFpzSwfhsr41GzQZYBqDcoIE/n8sv8rQTbERQ8TvlvuqkPQPRxJ3nolR
	uqQ+4CHVTnvFIS4gL+LBMltXvx2nud6DTt03b7tv1+yV0vLQD8h3SVNDAbdBh1+6XECgxT+
	+n/Y4KGSUV+txzTuq2M9B9MmI35IAoHiuw4JhwicArt8RaiVVOqyH/gJ4NN3IXZS4CUSe96
	ktXyvzdxVzrVsQk+M0eXy75vcRsT2GlOWgQFgazMHDVUTE0FW6+7fn7jvDqExl86WGExfzM
	dEEmFSUHivp6yS8JpuAaz0g2cGxNMNNbDznC1PDLLIvGNg21zT8ypRIi3b+TXhw5yOO83nV
	1ex84WJTB9m1v296uxCnVGBbDS9vF+xZyRP9PgblC+194rgD+8NHgLS3um/97hYkMkYiZw2
	IHwcWBzC9OhSjPoInvsm++lPM2Sx/jpHey7/v6ZiY8xXqNyLwQj6tvW6nJrv3tM122f2uOc
	/Ek6b0ZuMKW9H1M09YlrFQHbOZKxuYPr6ukWtmzxfqXVoZ8hon/O6sncX+/b5ZROtpngxjB
	mIqQyd8+yU3+zHnd4TwvjpRURyXKF/MujbfZ1KaeA+4XznGIFPwypo+cwghf2/ioSii56TW
	rvjUozy/LO0HJBVAHn7qmHriu9vASpI9oXTduIvo8xGpwSRMOIxnTRbgN2XAifv/KsxAezu
	0jHQ6M0NqpWXsLn/wVmijkmBym+8NNfCFvmV06YKcLmF/A+b0dU1ukm66Z3rTZaOSsC2kO1
	bXGCAwFw8RCpuLqf6FUbdfh4N9p7Njg4VLZk6X1XK5NV93w==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

On 12/3/25 17:45, FUKAUMI Naoki wrote:
> Hi Jimmy,
> 
> On 12/3/25 14:42, Jimmy Hon wrote:
>> On Tue, Dec 2, 2025 at 4:16 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>>
>>> Hi all,
>>>
>>> I sincerely hope the following will be helpful in your review.
>>>    https://github.com/RadxaNaoki/linux/blob/cm5-io-v999-20251201/ 
>>> arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
>>>    https://github.com/RadxaNaoki/linux/blob/cm5-io-v999-20251201/ 
>>> arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
>> Could you elaborate on why you're linking to the "v999" branch? The
> 
> When you review something (e.g., v5), you might find it helpful to refer 
> to another similar thing (e.g., v999).
> 
>> content of that branch doesn't match the contents of this patch series
>> (i.e. RESEND 2 of v5). The "v5" branch looks closer to this
>> submission.
>> https://github.com/RadxaNaoki/linux/blob/cm5-io-v5-20251201
>>
>> Comments on the "v999" branch...it does have the improvements:
> 
> You do not need to review v999, as it is not part of this patch series 
> (it is Joseph's work). Please only review v5 and subsequent versions.

"it" before "is Joseph's work" was unclear... I meant "this patch series 
is Joseph's work".

>> - that allows the usage of the Radxa eMMC to uSD adapter
>> - defines the gmac1 in the SoM dtsi, but only enables the gmac1 in the
>> IO board's dts.
> 
> Thanks anyway.

I'll reflect your suggestion in v6.
  https://lore.kernel.org/linux-rockchip/CALWfF7+G6MRvuSm8a-a0KcPduXz=sYsJT0bB300rAqmtt2w-cg@mail.gmail.com/

> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>>>
>>> Best regards,
>>>
>>> -- 
>>> FUKAUMI Naoki
>>> Radxa Computer (Shenzhen) Co., Ltd.
>>
>> Jimmy
>>
> 



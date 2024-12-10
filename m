Return-Path: <devicetree+bounces-128990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 545999EA414
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 02:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E44D6166DE5
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 01:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1B9C12E4A;
	Tue, 10 Dec 2024 01:04:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9672AD16
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733792699; cv=none; b=XfZnJtoUaPxkOtQLuUa0RGQ/9rLk1NH6lEQVv+BeTSys0U7zSuJ0lLWp/G+TrXLs8PvZgpuIfQbMY7oiyCzfuMuG9Ek8DSvfvE0S2pLT0jXOx+eEw7pzvRDwfe5LBOjoDRbIlDF9zcqx9U8nfi+DKOzhdlCMEJOs/FdW7DShVYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733792699; c=relaxed/simple;
	bh=BF9jCa4InfX3O5W3ebiTVpILw5M+XzUkiF+s4LCqay8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mqG7Bh7DueoKS6kkVvfn/UmA0FM0BJabgTUwN0CyrWuFnT7w7M7WyMSR+h29QPBMMK7Trj7w9iUhwAVmXnr2aOx8HTr41qNnycH+nC4p9eQzzEx2kpIdfjO+9djDHtPV52drviI1JjNReLvR0sjBfZGL7lUFCVHhtsFId/SzBHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip3t1733792607tdnkr8b
X-QQ-Originating-IP: S0xv3uTVvbNyqbYOtMAphrw8OJ3b0mzGtTRcyQzlrJU=
Received: from [IPV6:240f:10b:7440:1:42fa:d92a ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 10 Dec 2024 09:03:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12074367792504866138
Message-ID: <21A3A011A88AD09C+e896c409-7a51-41a1-a7ca-a0db5796dbea@radxa.com>
Date: Tue, 10 Dec 2024 10:03:23 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/12] arm64: dts: rockchip: fix property for pwm-fan
 for Radxa ROCK 5C
To: Alexey Charkov <alchark@gmail.com>
Cc: Dragan Simic <dsimic@manjaro.org>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241209125131.4101-1-naoki@radxa.com>
 <20241209125131.4101-4-naoki@radxa.com>
 <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org>
 <CEFF3F7FDF50046C+6bccd571-3475-46b9-a7b9-e2e8cb94ed91@radxa.com>
 <CABjd4YyV1Pf5RZcwbvd0Ms8UA2kFzq2PuTzq=VVYC+EZtfNrog@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CABjd4YyV1Pf5RZcwbvd0Ms8UA2kFzq2PuTzq=VVYC+EZtfNrog@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Of2cEohDBRJB4EkLmyXqFelVLNVWs8C5oTP/4dBJ0NWMGBdLTgYb1PBS
	1/g9gZKTsCEdbQkPPeeBYL1/8AfjAFVmUhZmtd5Zn6gL7DW/MC/7xZuvE3ZRxlfZjILNGUh
	gm+rq/jr3VGBbOTn5cRSePBY1O7vjFyL224x+iRQLDZNZtBfktxoxE5AJi+1HXImeXRtWW8
	Ccr+CiP970eJedtTPLCJ8t7l2i7Dtp5q028cCsCBuRKxUReRiKo0Eyig6KvctEAL9HJbl2j
	0RvVTQ8929MxcNX3wORFXvCWoqdEirL5XTeqe0xm+E/kIWWiOYoKMF/yK4e5sqb2ufLaVoz
	J7U9TvaIAzcUx5pmKh+i6uGReDy1nOD+5Pa9oUK6G+vgB51kbDfb/DmdMSZ5QpAtzBJLx2J
	zVZ0jFRMd7RnZPql7QlzFRTH8i8Gj2w1beeaf1JKPAAyvlvqDlyH4GvOqykJsUVR4LhR2U3
	kJqalJuPwjvou8eVAXFqY/fCLbVknfpRN54uy5wQnqdtGJY35Lk9ZX5jZbnCm74U8DPpfVY
	kKcWActqZ6D8b8Dkm416SLjV81CsqrVqLL4oMfmB1nUjAWvLbUNea3VhfoxCq5WkWuPkl7m
	LH0AQb+IlXgR6L5jsSjLwxyIpLu23zXK17NX0UyQG2BEPZ5MX8atF8EuYsk1L0tujSXtzFy
	KKYhWSIp3X3o9vNK8ppJ0Gt6TyyPHfEhELQdNvZ4fd/b/Xkg6qN+SXFgcp76WsJVHAS5Mh1
	sLRczUmbtFxRXj293om6UB+RzBtfr62Ca1UBvKuaqN1qAfrsiDHSU0nN7yLbOtUu8XOhkoD
	666iuBbocvKVM8e5pIkNsPWXyKM0raSKao6LmljXeXpWUEvkNE5++HEew5wfyngcPluYmZX
	Xjczpi3HA2Pp9bMggpahVcQ0pffXL9mTpQuw8eP7LafVSRh+IE07aw==
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

Hi Alexey,

On 12/10/24 09:40, Alexey Charkov wrote:
> Hi Naoki,
> 
> On Tue, Dec 10, 2024 at 3:30 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>
>> Hi,
>>
>> Thanks for your review!
>>
>> On 12/10/24 01:32, Dragan Simic wrote:
>>> Hello Fukaumi,
>>>
>>> On 2024-12-09 13:51, FUKAUMI Naoki wrote:
>>>> fix pwm period to match with vendor kernel[1].
>>>
>>> Instead of simply referring to the downstream vendor kernel, in this
>>> specific case the reasons for adjusting the fan PWM parameters should
>>> be explained by referring to the actual fan setup you're using, the
>>> observed fan RPM behavior, etc.
>>
>> original commit message is:
>>
>> | arm64: dts: rockchip: modify fan pwm period to 60us
>> | Reduce pwm frequency to 16.6 KHz for a larger adjustable range of
>> AO3416 mosfet.
>>
>> I have no knowledge about this kind of things. Is quoting this message
>> enough?
> 
> I think it would be better to expand a bit to make sure the commit
> message explains the whole rationale without too much extra digging.
> Something like this:
> 
> arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa ROCK 5C
> 
> The fan on Radxa ROCK 5C is driven via an AO3416 MOSFET, which has a
> total switch-on time of 0,6us and a total switch-off time of 6us [1],
> meaning that the current PWM period of just 10us is too short for
> fine-grained fan speed control. Increase the PWM period to 60us, so
> that the switch-on and switch-off time of the MOSFET fall within a
> more reasonable ~10% of the full period, thus making lower PWM duty
> cycles meaningful.
> 
> [1] https://www.aosmd.com/pdfs/datasheet/AO3416.pdf

Thank you so much!

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Alexey
> 



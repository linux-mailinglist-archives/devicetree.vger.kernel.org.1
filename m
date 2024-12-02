Return-Path: <devicetree+bounces-126272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0182C9E0D68
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 21:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C57F71654D2
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 20:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A91391DEFE6;
	Mon,  2 Dec 2024 20:55:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bg1.exmail.qq.com (bg1.exmail.qq.com [114.132.67.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055A51DF244
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 20:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.132.67.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733172936; cv=none; b=HuHf7r77dyU7b8GFqBrjFkls8ZSsDF8V2sKVYOF2BphHBColV9F+hXQAZ58SYGgVbHMwqjsxkTWYBxNNP405U1Plgr/XK7DhGi4XqteFzlg41ul3Z9nM59TCzpgfFSETgdnYwWtD2+tBaCzU/bHUWCnwCkJRvtaGzIrqskXjVR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733172936; c=relaxed/simple;
	bh=+4Pd0RozTfmSWy69UTHJILTVgfiuUNmVYhId2QYXvpM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bYoWc07oyRdDYDHwXrAJwL2yOBgGEj1LNmaZD23+bOstzBFEiUXQq9mPVh3DsVj6GYaFPXpB/pnWpnGmbYxWngol9vfnsMBWzUbs3IsZY49X05JQKlWoGUzXLinxHTWwqV6rrTSbSzSXZ+yUVroTlcGbMWLtT9znLYK1onrqbrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=114.132.67.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip3t1733172800taphm59
X-QQ-Originating-IP: yfeuoxNRc4pZbZXJt/e0w2Jss9XwsDJsEXxWLmTCVTQ=
Received: from [IPV6:240f:10b:7440:1:f61a:d8:e ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 03 Dec 2024 04:53:17 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18155569705233720239
Message-ID: <A07B861A96D3A9C1+08466c7f-2d6d-4264-bb3c-ea2cbc173d72@radxa.com>
Date: Tue, 3 Dec 2024 05:53:17 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: rockchip: fix pwm-fan node for Radxa ROCK
 5B
To: Alexey Charkov <alchark@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, dsimic@manjaro.org
References: <20241130004057.7432-1-naoki@radxa.com>
 <20241130004057.7432-6-naoki@radxa.com>
 <CABjd4YwV+cthjL4uYkpnwxzTzEUWsWEyoOZCkt+Un2iB=GMgxA@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CABjd4YwV+cthjL4uYkpnwxzTzEUWsWEyoOZCkt+Un2iB=GMgxA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OS4uHVcO72Zr83IO6CBA6GvW4/bYrOMXcgv/PuVmghvs7Sbub50SXOu8
	wtGW6YyNgLHo63HdpQn/AcDdUN1qY5iSLG/klzixfIYJVGkhHeSJGLlSyOor7Qt5vDh4MO3
	Pg2DglIXf/ngE8EtgvstDK7acb1UqMxhsLbt0WOPlpSAt/2XNIx19ion5Giw8ww+/8nn3Mn
	MVyKPXz+1C0rCk8jpm5EkfDhltSGoi2P9n+eUNuaRxbkClDkloqLQ/aFgaMJANNSb8XdEjR
	VclT13VvgWeOiZbg4dkzbCOVMWDN8rBMdZloPEu3Wwk5SEhHZrN6tE/RIphnD7htC3ceUV0
	j4Orc7s3EHIDmZKhHyqvoryt8XIFag52DDslFyJuYybdas1YEJ8anwjOvZiti1t8pBzc9t7
	WGQRgyMKtNhQsDL5OF6dvHBBcUVonweRZ2G4N63QAa19KteYUAKQnjN8ycB/fZVnMV3TvSb
	aDKd6L+h/x+4m6Sh4jncCgtW9bAuC+cXOPkcOT7a5e9872Z+Qprx5qnLxw7wm37gHZN9Btk
	+M1Qj/y6HqwWt5DJg0mG8anhKVjrvm5JyQqf0SK41xEOd6lkIJdsfvIoCrgPsWJ2Rcdk9Nk
	+jJ9l97EQl1NxCbbjwE6kDoxx4O3HqUhzQtRwNRQujSU+0m/0GrqGhXGsOhg8NHlmSv/rOD
	2tG9x+antVZbxiGLyAiarbYF+Ta2XKUVUNX7SSzLIFEatKkuFTRIteJLooxWxUUnPgLeyqo
	mwTYRY45EL6N9DGZhg25vPGtDvrkP6hxQg+awYOgBISTKLeVzFIodrcrGDpadbyp6rttXHw
	I0Xorq2Fh/JxjyxiJEdv7qftoN3xHY1HN7WoHJOsW1ywaPkyg+be1V5DOi7DlPzN+hxABd0
	EfnoN0xonb3Di19Fvu9Ly44sMvOrfBNa
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

Hi Alexey Charkov,

On 12/2/24 22:39, Alexey Charkov wrote:
> Hi Naoki,
> 
> On Mon, Dec 2, 2024 at 5:35 PM FUKAUMI Naoki <naoki@radxa.com> wrote:
>>
>> fix properties to match with vendor kernel.
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> index 7c8359fe712a..6a02febaefb7 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> @@ -64,10 +64,10 @@ led-0 {
>>
>>          fan: pwm-fan {
>>                  compatible = "pwm-fan";
>> -               cooling-levels = <0 120 150 180 210 240 255>;
>> -               fan-supply = <&vcc5v0_sys>;
>> -               pwms = <&pwm1 0 50000 0>;
>>                  #cooling-cells = <2>;
>> +               cooling-levels = <0 64 128 192 255>;
> 
> Could you please share your testing setup for this part? In my
> experience using Radxa 4010 fan, it didn't spin up reliably below 120,
> so the value of 64 looks not helpful here.

I'm sorry, I have only 2513, it doesn't work on 5B with/without this 
patch. so I couldn't test this part. (btw I'll get 4012 soon)

then, thank you for your test report, I'll keep old value.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Alexey
> 



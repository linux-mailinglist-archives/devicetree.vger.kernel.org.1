Return-Path: <devicetree+bounces-57200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E060889C7EC
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 17:14:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DFD61C214CE
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 15:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD55B13F44A;
	Mon,  8 Apr 2024 15:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="As/SAD4H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C2113F439
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 15:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712589294; cv=none; b=uvBChoCQCTCcr4NbRGo55eytgP86cKH4YrdNl5jda4QW9WAAiow4OGJm+qLmPHrswWJX/lmiDK6TTFXM4NbkxYvt6II0Zglr/89Bs0NP6fQRyNufPBvYUsCi7wbl0Lzqub2K1NlwiLl6u05nAc9BimnrC+4WNaKBeqvSMKzG4SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712589294; c=relaxed/simple;
	bh=+kNnKO0fDHO+c634OAXCZq6G+lN8r31DQX28xKeAm2M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aF23meTUO5tL4fkKd0mwBDuilVcct3GOHb3gYqndoIgXhB7qqQXasmfuEmOg9W0WGspAiHO+iBcsLNNJO5r9lgl7qSrp3hA+rq64X1FxNvPLo796Y5mi/gTROi3aRu11AiC9okcNChy3myxUscJIaIDc32lwf4PhupW1egdMWWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=As/SAD4H; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1712589287;
 bh=4Z0LBlRO9DzPCsRdqe9rsbK3UJ8PBblYy0Cmk5n/lz0=;
 b=As/SAD4HXF91//0fKggr1TGq+grPgujAJk7MYEagQNIoLbcfcp9Hedu8VfM12QmaKk4vH1mfX
 yFNC8l32zugzKq/QTO7Pcq0XMlTRzNsqjexMFwNm+0lLW7RCh7SsW4PLoLkQc7Q0Qw07nnJ0h5R
 Xi/b82kks3ZXaMsnxjYUoiitkNkLKNGDQ0NsvAs8UedNnXS4zSdY01qU8jdJjJs/IIWckImuKN7
 Z+/PJ3kJK3Yk3dxrXDejogFvk/vx4hBuebytqAF4xP7Ob+H8Y0sx2QA9QProjyMggza6rlxWToO
 oPGT0Qu5Sd3Y8nD8yVaRa73U8eFmpEYwpbejH4hO03zw==
Message-ID: <fb57172e-2517-498c-9412-76f62929d24a@kwiboo.se>
Date: Mon, 8 Apr 2024 17:14:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable onboard spi flash for
 rock-3a
To: "=?UTF-8?Q?Heiko_St=C3=BCbner?=" <heiko@sntech.de>, Chukun Pan
 <amadeus@jmu.edu.cn>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240408124005.182565-1-amadeus@jmu.edu.cn>
 <421ab43b-ff92-41c6-9904-3c7681c926be@kwiboo.se>
 <b32c284e-f3ec-44b0-abbd-7fa403bc9870@kwiboo.se> <3066222.xgJ6IN8ObU@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <3066222.xgJ6IN8ObU@diego>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 661409e594faae8761be3e7a

On 2024-04-08 17:04, Heiko Stübner wrote:
> Am Montag, 8. April 2024, 16:56:59 CEST schrieb Jonas Karlman:
>> On 2024-04-08 16:44, Jonas Karlman wrote:
>>> On 2024-04-08 14:40, Chukun Pan wrote:
>>>> There is a mx25u12835f spi flash on this board, enable it.
>>>>
>>>> [    2.525805] spi-nor spi4.0: mx25u12835f (16384 Kbytes)
>>>>
>>>> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
>>>> ---
>>>>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 12 ++++++++++++
>>>>  1 file changed, 12 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>> index a5e974ea659e..d8738cc47c73 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>> @@ -757,6 +757,18 @@ &sdmmc2 {
>>>>  	status = "okay";
>>>>  };
>>>>  
>>>> +&sfc {
>>>
>>> This is missing:
>>>
>>> 	#address-cells = <1>;
>>> 	#size-cells = <0>;
>>>
>>>> +	status = "okay";
>>>> +
>>>> +	flash@0 {
>>>> +		compatible = "jedec,spi-nor";
>>>> +		reg = <0x0>;
>>>> +		spi-max-frequency = <50000000>;
>>>
>>> At least in U-Boot the spi clock only support 24, 100 or 200 mhz and I
>>> am pretty sure the spi flash support 100mhz, so I would suggest you test
>>> with 100mhz, same as used on other rk356x boards.
>>
>> Sorry, looked at spi clock instead of sfc clock.
>> sfc clock support 24, 50, 75, 100, 125 and 150 mhz.
> 
> I think in some previous discussion the agreement was that the node
> should specify the max frequency the flash supports and have the
> controller worry about its own clock ranges.

Interesting, sounds like there is a need to do some modification to spi
and clk drivers in U-Boot to support that.

> 
> Though in this case the 50MHz for the flash even matches the clock
> frequency supported by the sfc

I think the on-board spi nor flash support 104/108/133 mhz so 50 mhz is
wrong in any case.

Regards,
Jonas

> 
> 



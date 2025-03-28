Return-Path: <devicetree+bounces-161674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA31A74F34
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 18:25:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A8161723A1
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 17:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1651DE2C4;
	Fri, 28 Mar 2025 17:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rkmijI6e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92AB91DDA36
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 17:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743182681; cv=none; b=S6LR6QMCboX/MyZzdyJCbX1q636BaSI0/PjKlh9XNyT3jeMmLry9Tk27pKoKIEB3fv5iiNZR7Qvqd1X2ITR5wC9MdN60eRjnRFejfG996i6hhVUmaI/0V4xqNRfOhNMqZ43rrKpg3TkPYCusXe8Wb5SBOj0aPbGvWCC/cX71JxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743182681; c=relaxed/simple;
	bh=A2iV1R4x78HPNIt4Yh0n/qz71rAxVerxDRYyntJ5mIA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bx1JbhDR+/sb4p8PwZQaadEClm3w+Vwzg3npNnRSGHiycbkQLhKMu0bY4isNl2Kt+6ObKPTi37PA+4Tk0N3hAA3BToH6u4eusmAqvcVV0+92HOlQqI2daArZno1AjHkeb5ossfga6xPjFjBQqyGwsIQoyL1tUDtz5IYia/ZFjfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rkmijI6e; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-601ebdf02daso1363150eaf.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 10:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1743182678; x=1743787478; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HLrzm/zQ4gwThho8YYqEd980PysyFD6/Tw5SCyS4qEg=;
        b=rkmijI6eKH3mq3S+u/VNyht0Ya8YEYCjbvDn8TWH4bQpVC5bWwZUKzx/nBG1SzweC1
         /lHQEBhjBJpDF03nd9Vo/69oTv6R+7N+xS1xzbA0KpYwg3NC2/gklmPgg6ygW5T/eH1M
         tfVFXAXrzSeOPDG14/um23J0AbB4DcACoi80IljMDdUQKjjN8zZVUw9/HlJZGAIZLJNk
         83dbfP94/NhRceKfKUNovaz400wONkstxrdGM1/xQBiz2KbxtWSD8jzGbSGbfpTQV1Qv
         35M+wn34sMNle0/emwK/Kggy7ZN6WZhmR5nKt0Kf+fjj6dQeX+pUpPX4YUHe65vY+dXv
         QMoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743182678; x=1743787478;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HLrzm/zQ4gwThho8YYqEd980PysyFD6/Tw5SCyS4qEg=;
        b=g5dkygieRjNliwdkmKdP+xcn38zoJvMA2YnbbEl1S0YBcjhOBqxkK1g2/2QUM9DWmK
         flZsQ/M8EzG7hg+sdnv8oQ+9JWtjQhfooLMcBDcOt/EYbiGCuKzHQQtiO4rIPQg5FW2G
         agYpoJKT7jCrpfQTQdt2ToTP2WKqG2lm5yCRyqNwVc+5WEqM1YM528rqxdCyjmmIzF7w
         yYrm6QdMQ02XkW0uFW5FxCNeiis1uUDjlYyG3lPQU84p9wLZMep1sHjWkIsbSmuYsALF
         YKWM5a4ROC32iqmsEZrIv9DgH63WSio4a5CT2eMpjG+s7pnT2CypiXYKbqxJqjQI0WhE
         4xDg==
X-Forwarded-Encrypted: i=1; AJvYcCVPED8AL3cHgcJRI6KJKMD2DwnshCNmQHxk2o3N5IizSLF1fx7QjlbrgMRNtGdYwOAt1JIfQ1z4MKUq@vger.kernel.org
X-Gm-Message-State: AOJu0YzigHGGoyCINzhewV/WHQYcjcbAv22uJrzjq6bwV0CBe0OAudjV
	D/QR2iQEVY48iOwyAkF7YdgnbpcYibOH5MVVZj1eSJfXg/jZ6HmEY6IPFUMVz1Y=
X-Gm-Gg: ASbGncunBJCgY7XyYjJgxpeUUzXO8gFrSFZSnXTO1iqPrtP3vxmY4FBhsNTj7KqABv5
	j584ExUAj+oF0KgR5lqtICK7bo5fT8VPYybtboepqXuMStEbBmMbdiJQuhtqdPEybwdHy3WWKZs
	IkpQY3dNwj9fPfv/28zulhti9yoQ2PGSL6mmfyGAdWFxOdpLq+usMM6fo10SOoGfuxptPz34lS1
	FZYpOPe5R2IhtcACoxDU1WiUTrheVKpOMyYUOW38U0AJ/CuCq4ZKvGYaCnM9E6JoeEQJS872U1s
	0AMGvnYDGXgY4umqyMY9hqzWqRvYerQdi/uq9MDZHjKpsHERCPJcZ3Pd/20ev4fL8MOI1O6ILOr
	nViaOFOM0
X-Google-Smtp-Source: AGHT+IGsEzLTxyMqQfC/rhlkp/3Yy0FWpMm5miVCQoyz9/uttGUbad/c15R9zzLWjxbYr4ZawMaYsw==
X-Received: by 2002:a05:6820:1885:b0:601:d595:3b08 with SMTP id 006d021491bc7-60290414a86mr192697eaf.2.1743182678377;
        Fri, 28 Mar 2025 10:24:38 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-602844e6574sm401475eaf.2.2025.03.28.10.24.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Mar 2025 10:24:37 -0700 (PDT)
Message-ID: <8211eca2-c768-4472-a849-17208848d361@riscstar.com>
Date: Fri, 28 Mar 2025 12:24:36 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 6/7] clk: spacemit: define new syscons with only
 resets
To: Yixun Lan <dlan@gentoo.org>
Cc: p.zabel@pengutronix.de, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heylenay@4d2.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250321151831.623575-1-elder@riscstar.com>
 <20250321151831.623575-7-elder@riscstar.com> <20250322164247-GYD11633@gentoo>
 <c080eb55-943e-4564-8dcc-dd5f27b296a9@riscstar.com>
 <20250324062129-GYA19363@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250324062129-GYA19363@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/24/25 1:21 AM, Yixun Lan wrote:
> Hi Alex:
> 
> On 08:23 Sun 23 Mar     , Alex Elder wrote:
>> On 3/22/25 11:42 AM, Yixun Lan wrote:
>>> Hi Alex:
>>>
>>> It occur to me it's a little odd to implemnt reset driver
>>> for RCPU block, but after check with vendor the RCPU region can
>>> be accessed both by ACPU and RCPU, then I'm fine with this.
>>
>> I implemented just the resets that were found in the downstream
>> code.
>>
>> I first implemented a separate reset driver, very simple, which
>> only implemented the resets.  I had a separate DTS binding (like
>> was done for the PLLs).  I was ready to post it for review, then
>> noticed that the registers used were shared with clocks.  So I
>> merged all of that separate code into the clock driver, as you
>> see here.
>>
> ok
> 
>>> ACPU - RISC-V Main CPU, with mmu, running Linux
>>> RCPU - real time CPU, without mmu, running RT-OS
>>
>> I didn't realize there was a separate CPU running its
>> own OS.  Is this managed as a remoteproc by the RISC-V AP?
>> The reset signals, I hope, are only touched by the AP
>> and not the real-time CPU.  Can you provide any further
>> information about this?
>>
> As far as I know, the RCPU region can be acccesed via AP and real-time CPU
> from hardware perspective, there is no guarantee of isolation,
> so maybe software should take care of this in case only one side can touch

The downstream code implements clocks and resets that are
apparently associated with that real-time CPU.  Now that
you've pointed this out, I investigated a little further.

In "k1-x.dtsi" I see these used (in downstram):
   CLK_RCPU_UART1 and RESET_RCPU_UART1
   CLK_RCPU_I2C0 and RESET_RCPU_I2C0
   CLK_RCPU_IR and RESET_RCPU_IR
   CLK_RCPU_CAN, CLK_RCPU_CAN_BUS, and RESET_RCPU_CAN
   CLK_RCPU2_PWM0 through CLK_RCPU2_PWM9 and
   RESET_RCPU2_PWM0 through RESET_RCPU2_PWM9

In "k1-x-hdmi.dtsi" I see these used:
   CLK_RCPU_HDMIAUDIO and RESET_RCPU_HDMIAUDIO

Also, the memory region associated with the "RCPU2"
really is 0xc0888000 in the downstream code, even though
that isn't seen in the documentation.

Yixun, do you think we should remove code that supports
RCPU resets *and* clocks, until we really need it (and
we understand better how/why they're used)?


In the next version of my reset series (which I plan to
send today) I will keep the RCPU resets.

> for remoteproc, I haven't checked, and it's unrelated to this discussion
> (doesn't change shared resource fact whether remoteproc supported or not)

I don't understand why the AP would manage multiple
clocks and resets for a separate processor.  I'm not
going to look at that now though.

>>> On 10:18 Fri 21 Mar     , Alex Elder wrote:
>>>> Enable support for three additional syscon CCUs which support reset
>>>> controls but no clocks:  ARCPU, RCPU2, and APBC2.
>>>>
>>>> Signed-off-by: Alex Elder <elder@riscstar.com>
>>>> ---
>>>>    drivers/clk/spacemit/ccu-k1.c | 106 ++++++++++++++++++++++++++++++++++
>>>>    1 file changed, 106 insertions(+)
>>>>
>>>> diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
>>>> index 17e321c25959a..bf5a3e2048619 100644
>>>> --- a/drivers/clk/spacemit/ccu-k1.c
>>>> +++ b/drivers/clk/spacemit/ccu-k1.c
>>>> @@ -130,6 +130,37 @@
>>>>    #define APMU_EMAC0_CLK_RES_CTRL		0x3e4
>>>>    #define APMU_EMAC1_CLK_RES_CTRL		0x3ec
>>>>    
>>>> +/* RCPU register offsets */
>>>> +#define RCPU_SSP0_CLK_RST		0x0028
>>>> +#define RCPU_I2C0_CLK_RST		0x0030
>>>> +#define RCPU_UART1_CLK_RST		0x003c
>>>> +#define RCPU_CAN_CLK_RST		0x0048
>>>> +#define RCPU_IR_CLK_RST			0x004c
>>>> +#define RCPU_UART0_CLK_RST		0x00d8
>>>> +/* XXX Next one is part of the AUD_AUDCLOCK region @ 0xc0882000 */
>>> this comment looks odd, XXX?
>>
>> Yeah, I meant to remove that before sending but I forgot.
>>
>> The downstream code treats this one register as being
>> part of the RCPU memory region, and extends that region
>> to be 0x2048 bytes to "fit" it.
>>
>> The hardware documentation actually defines a different
>> "RCPU Audio Clock" memory region, and it might be more
>> correct (though less convenient) to define that as a
>> distinct region of memory.
>>
>> What do you think?
>>
> I'm not sure, but from DT perspective, is it an independent device?
> if yes, then need to describe as a distinct region..

I think we should just remove these definitions.  And
because of that, I'm going to leave this as-is (included
with the existing RCPU memory region and device) in the
next version of my code.  If we decide to keep them, I
can separate them later.

					-Alex

>> 					-Alex
>>
>>>> +#define AUDIO_HDMI_CLK_CTRL		0x2044
>>>> +
>>>> +/* RCPU2 register offsets */
>>>> +#define RCPU2_PWM0_CLK_RST		0x0000
>>>> +#define RCPU2_PWM1_CLK_RST		0x0004
>>>> +#define RCPU2_PWM2_CLK_RST		0x0008
>>>> +#define RCPU2_PWM3_CLK_RST		0x000c
>>>> +#define RCPU2_PWM4_CLK_RST		0x0010
>>>> +#define RCPU2_PWM5_CLK_RST		0x0014
>>>> +#define RCPU2_PWM6_CLK_RST		0x0018
>>>> +#define RCPU2_PWM7_CLK_RST		0x001c
>>>> +#define RCPU2_PWM8_CLK_RST		0x0020
>>>> +#define RCPU2_PWM9_CLK_RST		0x0024
>>>> +
>>>> +/* APBC2 register offsets */
>>>> +#define APBC2_UART1_CLK_RST		0x0000
>>>> +#define APBC2_SSP2_CLK_RST		0x0004
>>>> +#define APBC2_TWSI3_CLK_RST		0x0008
>>>> +#define APBC2_RTC_CLK_RST		0x000c
>>>> +#define APBC2_TIMERS0_CLK_RST		0x0010
>>>> +#define APBC2_KPC_CLK_RST		0x0014
>>>> +#define APBC2_GPIO_CLK_RST		0x001c
>>>> +
>>>>    struct spacemit_ccu_clk {
>>>>    	int id;
>>>>    	struct clk_hw *hw;
>>>> @@ -1781,6 +1812,69 @@ static const struct k1_ccu_data k1_ccu_apmu_data = {
>>>>    	.rst_data	= &apmu_reset_controller_data,
>>>>    };
>>>>    
>>>> +static const struct ccu_reset_data rcpu_reset_data[] = {
>>>> +	[RST_RCPU_SSP0]		= RST_DATA(RCPU_SSP0_CLK_RST,	0, BIT(0)),
>>>> +	[RST_RCPU_I2C0]		= RST_DATA(RCPU_I2C0_CLK_RST,	0, BIT(0)),
>>>> +	[RST_RCPU_UART1]	= RST_DATA(RCPU_UART1_CLK_RST,	0, BIT(0)),
>>>> +	[RST_RCPU_IR]		= RST_DATA(RCPU_CAN_CLK_RST,	0, BIT(0)),
>>>> +	[RST_RCPU_CAN]		= RST_DATA(RCPU_IR_CLK_RST,	0, BIT(0)),
>>>> +	[RST_RCPU_UART0]	= RST_DATA(RCPU_UART0_CLK_RST,	0, BIT(0)),
>>>> +	[RST_RCPU_HDMI_AUDIO]	= RST_DATA(AUDIO_HDMI_CLK_CTRL,	0, BIT(0)),
>>>> +};
>>>> +
>>>> +static const struct ccu_reset_controller_data rcpu_reset_controller_data = {
>>>> +	.count		= ARRAY_SIZE(rcpu_reset_data),
>>>> +	.data		= rcpu_reset_data,
>>>> +};
>>>> +
>>>> +static struct k1_ccu_data k1_ccu_rcpu_data = {
>>>> +	/* No clocks in the RCPU CCU */
>>>> +	.rst_data	= &rcpu_reset_controller_data,
>>>> +};
>>>> +
>>>> +static const struct ccu_reset_data rcpu2_reset_data[] = {
>>>> +	[RST_RCPU2_PWM0]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
>>>> +	[RST_RCPU2_PWM1]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
>>>> +	[RST_RCPU2_PWM2]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
>>>> +	[RST_RCPU2_PWM3]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
>>>> +	[RST_RCPU2_PWM4]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
>>>> +	[RST_RCPU2_PWM5]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
>>>> +	[RST_RCPU2_PWM6]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
>>>> +	[RST_RCPU2_PWM7]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
>>>> +	[RST_RCPU2_PWM8]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
>>>> +	[RST_RCPU2_PWM9]	= RST_DATA(RCPU2_PWM9_CLK_RST,	BIT(2), BIT(0)),
>>>> +};
>>>> +
>>>> +static const struct ccu_reset_controller_data rcpu2_reset_controller_data = {
>>>> +	.count		= ARRAY_SIZE(rcpu2_reset_data),
>>>> +	.data		= rcpu2_reset_data,
>>>> +};
>>>> +
>>>> +static struct k1_ccu_data k1_ccu_rcpu2_data = {
>>>> +	/* No clocks in the RCPU2 CCU */
>>>> +	.rst_data	= &rcpu2_reset_controller_data,
>>>> +};
>>>> +
>>>> +static const struct ccu_reset_data apbc2_reset_data[] = {
>>>> +	[RST_APBC2_UART1]	= RST_DATA(APBC2_UART1_CLK_RST,	BIT(2), (0)),
>>>> +	[RST_APBC2_SSP2]	= RST_DATA(APBC2_SSP2_CLK_RST,	BIT(2), (0)),
>>>> +	[RST_APBC2_TWSI3]	= RST_DATA(APBC2_TWSI3_CLK_RST,	BIT(2), (0)),
>>>> +	[RST_APBC2_RTC]		= RST_DATA(APBC2_RTC_CLK_RST,	BIT(2), (0)),
>>>> +	[RST_APBC2_TIMERS0]	= RST_DATA(APBC2_TIMERS0_CLK_RST, BIT(2), (0)),
>>>> +	[RST_APBC2_KPC]		= RST_DATA(APBC2_KPC_CLK_RST,	BIT(2), (0)),
>>>> +	[RST_APBC2_GPIO]	= RST_DATA(APBC2_GPIO_CLK_RST,	BIT(2), (0)),
>>>> +};
>>>> +
>>>> +static const struct ccu_reset_controller_data apbc2_reset_controller_data = {
>>>> +	.count		= ARRAY_SIZE(apbc2_reset_data),
>>>> +	.data		= apbc2_reset_data,
>>>> +};
>>>> +
>>>> +static struct k1_ccu_data k1_ccu_apbc2_data = {
>>>> +	/* No clocks in the RCPU2 CCU */
>>>> +	.rst_data	= &apbc2_reset_controller_data,
>>>> +};
>>>> +
>>>>    static struct ccu_reset_controller *
>>>>    rcdev_to_controller(struct reset_controller_dev *rcdev)
>>>>    {
>>>> @@ -1959,6 +2053,18 @@ static const struct of_device_id of_k1_ccu_match[] = {
>>>>    		.compatible	= "spacemit,k1-syscon-apmu",
>>>>    		.data		= &k1_ccu_apmu_data,
>>>>    	},
>>>> +	{
>>>> +		.compatible	= "spacemit,k1-syscon-rcpu",
>>>> +		.data		= &k1_ccu_rcpu_data,
>>>> +	},
>>>> +	{
>>>> +		.compatible	= "spacemit,k1-syscon-rcpu2",
>>>> +		.data		= &k1_ccu_rcpu2_data,
>>>> +	},
>>>> +	{
>>>> +		.compatible	= "spacemit,k1-syscon-apbc2",
>>>> +		.data		= &k1_ccu_apbc2_data,
>>>> +	},
>>>>    	{ }
>>>>    };
>>>>    MODULE_DEVICE_TABLE(of, of_k1_ccu_match);
>>>> -- 
>>>> 2.43.0
>>>>
>>>
>>
> 



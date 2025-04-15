Return-Path: <devicetree+bounces-167285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE50A89C95
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:38:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08B3E1902DDF
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B46A28DEE2;
	Tue, 15 Apr 2025 11:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="tYITBGxX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D7C275867
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 11:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744716824; cv=none; b=sL0UeQEMKoKfOLGLqpxYIKtbtrhzurcdkQQqIG8TzbuVfrbdOXq7BxaH+DnJ7S0HOHLDW+KSqEJUVUxPF9e29MO+3OmluqMsGHtszySNhHAJ0WEck1kn0pKnu+BsXtN8lliiz8HOljeCfbfCkZ/JkelMhZZxFfSmFMsHvXNZVi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744716824; c=relaxed/simple;
	bh=r2wFSvAGdnijWNUAAafq0qFsek3liCAmo5FEP4Sjric=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g6mY52ZWBL7HpoCG4C8embkxYI42nwYbNSZPjTI3ZePaYkq0SEBLJFqU/7JuQGJvBd0XNVfdzYVqwG14QpFxXAcY7+dE++JEPCbjgDRskV4TLJV7aQoBsPQ2w/V9mBsbgjE3jXmgn9iHBf7N7WHq6NMd+nDJC7hbrP4Xb7jSxTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=tYITBGxX; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-861b1f04b99so25493839f.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 04:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744716820; x=1745321620; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BEN8NSjUS40oEvDS4Uv025vPGmuL5XNuea1dSWlYY68=;
        b=tYITBGxXhIwJf5FvnB8zQu5W3dCB42l3H7+isYk0MGZQUBJ2Owtvbs9qWYW2VlRw5i
         Wz8WDE8hFkLgNl4Ffl2wGs1rxFpeaCyssed0CHPL5OymMJk0RUmevZPNCJmVpHFq9gLm
         cfrXxnsjT/p33C060iEG5+lYD9ZjqW9waqi5P709hToSiq4fKF+ucySqwTUgwOjgyMdk
         9UBfiZcNas8ixHIloSr7ynH2H0mhcK1VWASeZ1AxlSHFL3XuTFbskF1JvBjldvWvNh0v
         PX9/A/VCjRRYv60X6L2SZXGtPY9V0nBWzuiDQJBDdiN5x5qR3Ln1ZxEOqLu99DStZONj
         E4fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744716820; x=1745321620;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BEN8NSjUS40oEvDS4Uv025vPGmuL5XNuea1dSWlYY68=;
        b=t6lkViUjJud2DUtDFsRablkpRq06LivmXyK97/KJEtVscGZufe5JImKtt1LYGYFxt5
         tewHbM1t9iOXuFLVPnG3nMEhvMq2C9D7N6kreN3DQ59L7TsfiC2Zmw36BqPJ7XaE67xF
         42m4QPn0O6mLGBXt0Va0tFRyY6lFL8pFhDAUaFM+VbHR8Yv7ik8sT87nr89jTkbHGTUF
         uctB8yWyLz/Vumgsyc/Oc0rQIN1FqWl6yaR2ZsZI6rNdSqeKVzNUttJI8kz9k6F+tJz6
         ioeoMhXpZ8ga72gooBzVK9Pvu+exzkj+c0IWsXobZ5fOdiE5vyb68DKBbSLDHrzlpE0I
         VMsw==
X-Forwarded-Encrypted: i=1; AJvYcCWLMobIfn6vuXTBndorqYh6WTJO+QRYU2VHcvxe076UWLbjMWLs1k+dt56I69aIBoe4a9uX9E6Hm8c+@vger.kernel.org
X-Gm-Message-State: AOJu0YwUw++AOflhte/7X+wgKItysd08twDAiSYhCLfptmriu9b3MQT9
	gjIJL6MrBeZ6nLugRO7r8mvZAE6KUldfqfWUCzLA2yW8QJIrKA+83R6va6/OoTM=
X-Gm-Gg: ASbGncvYRrH4JZf9gc7tSwORChpRJ5n6xCfgpLkaL1epiQB/seu/853Bkg3YWYQ2f0O
	NWDACQ7jvKMvNhV1MJeO0nJrAxkxZuR3MCwt5V0grJyPo5s6+lr/mJhHOWsfU6ELxG7EjTJtSS2
	hEftZvCRmF0YNV+O0rgSfd5s45EyEoBpiaELXp0XZt/4b2kxdbX1qB/aUKwQO2hnTa5xNv1L2gb
	xU1i7u1vLvCBKvwNNXsPO+QQq2cDQpzUcixebm2SB8Lwj4/D/ah7siHEjucd0zaG15Uez98Qy91
	3IUN73qWiPG9O+cQhyVIkScqwwuZXI/XNGvUqpQH69LhFKHnmKJ2lPi1UBo7oNYM/uP6DxVOd2W
	X9VQG
X-Google-Smtp-Source: AGHT+IFKkxJRsXzR7nky7WLvCENHLBsur2OzCblaH3VpEQ3uFHRRX61ZERpvrmJSp4XMt/JAkHbCEg==
X-Received: by 2002:a05:6602:3785:b0:85e:201e:3e35 with SMTP id ca18e2360f4ac-8617cb61445mr1651925539f.3.1744716820321;
        Tue, 15 Apr 2025 04:33:40 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-861656e18b2sm251622939f.45.2025.04.15.04.33.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 04:33:39 -0700 (PDT)
Message-ID: <fa4ae3d7-7683-4205-a36b-3bda3ac177c9@riscstar.com>
Date: Tue, 15 Apr 2025 06:33:38 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/7] clk: spacemit: define new syscons with only resets
To: Philipp Zabel <p.zabel@pengutronix.de>, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: dlan@gentoo.org, heylenay@4d2.org, guodong@riscstar.com,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250414191715.2264758-1-elder@riscstar.com>
 <20250414191715.2264758-7-elder@riscstar.com>
 <eee41968ecb0c16da214819b9a43e9dd881fcf13.camel@pengutronix.de>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <eee41968ecb0c16da214819b9a43e9dd881fcf13.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/15/25 3:22 AM, Philipp Zabel wrote:
> On Mo, 2025-04-14 at 14:17 -0500, Alex Elder wrote:
>> Enable support for three additional syscon CCUs which support reset
>> controls but no clocks:  ARCPU, RCPU2, and APBC2.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>

You are correct that those reset-only CCUs could have
their spacemit_ccu_data be const.

I'm going to give this series a little more time for
review but I'll gladly submit v5 with the added const
qualifier in those places.

Thanks.

					-Alex

>> ---
>>   drivers/clk/spacemit/ccu-k1.c | 93 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 93 insertions(+)
>>
>> diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
>> index 7494c97c3c7ec..cd1a0668bd203 100644
>> --- a/drivers/clk/spacemit/ccu-k1.c
>> +++ b/drivers/clk/spacemit/ccu-k1.c
>> @@ -130,6 +130,36 @@
>>   #define APMU_EMAC0_CLK_RES_CTRL		0x3e4
>>   #define APMU_EMAC1_CLK_RES_CTRL		0x3ec
>>   
>> +/* RCPU register offsets */
>> +#define RCPU_SSP0_CLK_RST		0x0028
>> +#define RCPU_I2C0_CLK_RST		0x0030
>> +#define RCPU_UART1_CLK_RST		0x003c
>> +#define RCPU_CAN_CLK_RST		0x0048
>> +#define RCPU_IR_CLK_RST			0x004c
>> +#define RCPU_UART0_CLK_RST		0x00d8
>> +#define AUDIO_HDMI_CLK_CTRL		0x2044
>> +
>> +/* RCPU2 register offsets */
>> +#define RCPU2_PWM0_CLK_RST		0x0000
>> +#define RCPU2_PWM1_CLK_RST		0x0004
>> +#define RCPU2_PWM2_CLK_RST		0x0008
>> +#define RCPU2_PWM3_CLK_RST		0x000c
>> +#define RCPU2_PWM4_CLK_RST		0x0010
>> +#define RCPU2_PWM5_CLK_RST		0x0014
>> +#define RCPU2_PWM6_CLK_RST		0x0018
>> +#define RCPU2_PWM7_CLK_RST		0x001c
>> +#define RCPU2_PWM8_CLK_RST		0x0020
>> +#define RCPU2_PWM9_CLK_RST		0x0024
>> +
>> +/* APBC2 register offsets */
>> +#define APBC2_UART1_CLK_RST		0x0000
>> +#define APBC2_SSP2_CLK_RST		0x0004
>> +#define APBC2_TWSI3_CLK_RST		0x0008
>> +#define APBC2_RTC_CLK_RST		0x000c
>> +#define APBC2_TIMERS0_CLK_RST		0x0010
>> +#define APBC2_KPC_CLK_RST		0x0014
>> +#define APBC2_GPIO_CLK_RST		0x001c
>> +
>>   struct ccu_reset_data {
>>   	u32 offset;
>>   	u32 assert_mask;
>> @@ -1177,6 +1207,57 @@ static const struct spacemit_ccu_data k1_ccu_apmu_data = {
>>   	.reset_num	= ARRAY_SIZE(apmu_reset_data),
>>   };
>>   
>> +static const struct ccu_reset_data rcpu_reset_data[] = {
>> +	[RESET_RCPU_SSP0]	= RESET_DATA(RCPU_SSP0_CLK_RST,	0, BIT(0)),
>> +	[RESET_RCPU_I2C0]	= RESET_DATA(RCPU_I2C0_CLK_RST,	0, BIT(0)),
>> +	[RESET_RCPU_UART1]	= RESET_DATA(RCPU_UART1_CLK_RST, 0, BIT(0)),
>> +	[RESET_RCPU_IR]		= RESET_DATA(RCPU_CAN_CLK_RST,	0, BIT(0)),
>> +	[RESET_RCPU_CAN]	= RESET_DATA(RCPU_IR_CLK_RST,	0, BIT(0)),
>> +	[RESET_RCPU_UART0]	= RESET_DATA(RCPU_UART0_CLK_RST, 0, BIT(0)),
>> +	[RESET_RCPU_HDMI_AUDIO]	= RESET_DATA(AUDIO_HDMI_CLK_CTRL, 0, BIT(0)),
>> +};
>> +
>> +static struct spacemit_ccu_data k1_ccu_rcpu_data = {
> 
> Could be const.
> 
>> +	/* No clocks in the RCPU CCU */
>> +	.reset_data	= rcpu_reset_data,
>> +	.reset_num	= ARRAY_SIZE(rcpu_reset_data),
>> +};
>> +
>> +static const struct ccu_reset_data rcpu2_reset_data[] = {
>> +	[RESET_RCPU2_PWM0]	= RESET_DATA(RCPU2_PWM9_CLK_RST, BIT(2), BIT(0)),
>> +	[RESET_RCPU2_PWM1]	= RESET_DATA(RCPU2_PWM9_CLK_RST, BIT(2), BIT(0)),
>> +	[RESET_RCPU2_PWM2]	= RESET_DATA(RCPU2_PWM9_CLK_RST, BIT(2), BIT(0)),
>> +	[RESET_RCPU2_PWM3]	= RESET_DATA(RCPU2_PWM9_CLK_RST, BIT(2), BIT(0)),
>> +	[RESET_RCPU2_PWM4]	= RESET_DATA(RCPU2_PWM9_CLK_RST, BIT(2), BIT(0)),
>> +	[RESET_RCPU2_PWM5]	= RESET_DATA(RCPU2_PWM9_CLK_RST, BIT(2), BIT(0)),
>> +	[RESET_RCPU2_PWM6]	= RESET_DATA(RCPU2_PWM9_CLK_RST, BIT(2), BIT(0)),
>> +	[RESET_RCPU2_PWM7]	= RESET_DATA(RCPU2_PWM9_CLK_RST, BIT(2), BIT(0)),
>> +	[RESET_RCPU2_PWM8]	= RESET_DATA(RCPU2_PWM9_CLK_RST, BIT(2), BIT(0)),
>> +	[RESET_RCPU2_PWM9]	= RESET_DATA(RCPU2_PWM9_CLK_RST, BIT(2), BIT(0)),
>> +};
>> +
>> +static struct spacemit_ccu_data k1_ccu_rcpu2_data = {
> 
> const
> 
>> +	/* No clocks in the RCPU2 CCU */
>> +	.reset_data	= rcpu2_reset_data,
>> +	.reset_num	= ARRAY_SIZE(rcpu2_reset_data),
>> +};
>> +
>> +static const struct ccu_reset_data apbc2_reset_data[] = {
>> +	[RESET_APBC2_UART1]	= RESET_DATA(APBC2_UART1_CLK_RST, BIT(2), (0)),
>> +	[RESET_APBC2_SSP2]	= RESET_DATA(APBC2_SSP2_CLK_RST, BIT(2), (0)),
>> +	[RESET_APBC2_TWSI3]	= RESET_DATA(APBC2_TWSI3_CLK_RST, BIT(2), (0)),
>> +	[RESET_APBC2_RTC]	= RESET_DATA(APBC2_RTC_CLK_RST,	BIT(2), (0)),
>> +	[RESET_APBC2_TIMERS0]	= RESET_DATA(APBC2_TIMERS0_CLK_RST, BIT(2), (0)),
>> +	[RESET_APBC2_KPC]	= RESET_DATA(APBC2_KPC_CLK_RST,	BIT(2), (0)),
>> +	[RESET_APBC2_GPIO]	= RESET_DATA(APBC2_GPIO_CLK_RST, BIT(2), (0)),
> 
> Superfluous parentheses.
> 
>> +};
>> +
>> +static struct spacemit_ccu_data k1_ccu_apbc2_data = {
> 
> const
> 
>> +	/* No clocks in the APBC2 CCU */
>> +	.reset_data	= apbc2_reset_data,
>> +	.reset_num	= ARRAY_SIZE(apbc2_reset_data),
>> +};
>> +
>>   static int spacemit_reset_update(struct reset_controller_dev *rcdev,
>>   				 unsigned long id, bool assert)
>>   {
>> @@ -1351,6 +1432,18 @@ static const struct of_device_id of_k1_ccu_match[] = {
>>   		.compatible	= "spacemit,k1-syscon-apmu",
>>   		.data		= &k1_ccu_apmu_data,
>>   	},
>> +	{
>> +		.compatible	= "spacemit,k1-syscon-rcpu",
>> +		.data		= &k1_ccu_rcpu_data,
>> +	},
>> +	{
>> +		.compatible	= "spacemit,k1-syscon-rcpu2",
>> +		.data		= &k1_ccu_rcpu2_data,
>> +	},
>> +	{
>> +		.compatible	= "spacemit,k1-syscon-apbc2",
>> +		.data		= &k1_ccu_apbc2_data,
>> +	},
>>   	{ }
>>   };
>>   MODULE_DEVICE_TABLE(of, of_k1_ccu_match);
> 
> regards
> Philipp



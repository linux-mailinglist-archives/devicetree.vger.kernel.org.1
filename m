Return-Path: <devicetree+bounces-81167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E2691B873
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 09:32:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28A792888BC
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 07:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AF28140369;
	Fri, 28 Jun 2024 07:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Jkn/0ttF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311893B29D
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 07:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719559957; cv=none; b=ED498LIzA5Cb0LDPcqGhcMG6tnTYb1MM1S5RrUispZ51vfq4KC9wl7fSmcpp1gfudxWCzEKFC5cUXKoi6DaILAGi0c16QG34R84h4qoX3Ivu6WGnEVDuov/U+Y7PvnZD7f9AKFuE9fYxG+xHzo3v+MrmMPXQDDJZhy7NOIuszhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719559957; c=relaxed/simple;
	bh=A401YoRPY2BYXZXMptssJ0+FDFzALUl8OZ77lFAkgzk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hjO4sGdkwzUXkq0KC29Sb4ujhxldQ3InScpImCkOCgm/SoxnEfyV43LsoXrabMD2ruOB5FJ9kvcBU8qh+/S4rnm83/qPjICjVb23nn0JkiQMpfnYmVVhQylnzliG1v9c+HsYTtmVjMK2XOY2XMuNbLcKSs1OV9HyxDVLW1U9wfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Jkn/0ttF; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-354b722fe81so251442f8f.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 00:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719559952; x=1720164752; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VSdYYsERq4BglkmF4kqFHjBMai4DxG/z1x2hgxRtp5s=;
        b=Jkn/0ttF1CI2FXescTgDoYlEjfed/AcregGivi1Ddl9fjId7teviDdlhKl/JYaUZtA
         W2MFRoeQ0VtKr/d6dGDU89S411L4ipN8NcLFdroX5zCGUwyxKnDlxAoYe7ALt9CHcgsV
         6tA9vlgDMzcfPHNroIlne4g2HSeKxy9h+/+xNYkT8kbdzmr1vZCoO/LFc0JUAc5JPX7M
         ShB7WC/fARN9U71jhZzIbzJJuPlRXcaDHyr5214int9p/pJw6cFEstAI6KdbmmFj429A
         dJz/srT57YHBZlHpMMe36hGJc3wv86w6Q9knBk6fwvIdBEzoMsqFi3c70Clh+UQc0R/9
         163Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719559952; x=1720164752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VSdYYsERq4BglkmF4kqFHjBMai4DxG/z1x2hgxRtp5s=;
        b=KdNVgKXFj5Q4SFALTC747BePlvrwT0L3VUv6NRNw2ti3Uz5QIbwTEfOh6jN6A4Zztn
         hbupTv0dlUB22PO0gRGVvLSIiDxPzP9B05PkItlmvojp1tC3Yt/J7G24SvFUJ1UDa/N7
         nC++S4SX0hJoggUl+7QBRoIABEQNFbMyMsItEdYMt+5b/AP9Ypk+oL9ouXTCy8CnjydI
         O95eqUW2gey5lX0JxbNoxaV/fJkNfCAdIsNkZCCqokmZf+tymqSxlaysnTE6Zd43g2v9
         kvAb+2ETcwtAUAAZ7BAKgIHTF2Ywyl1buoWWU8Cw6r+cgCFCgzEeBrR37tC7TKOiPH5F
         kh9w==
X-Forwarded-Encrypted: i=1; AJvYcCUixQ5JQBQvLru4qFgmQierg0ROCWO4h9N52tox7cI3XT6c6vgKEDR0dQUe9chwyYxlbV9hRzpl2lvjt6G11NMp5UAqEXIUcEuNkQ==
X-Gm-Message-State: AOJu0YxKcnb0ZysJY2ZgYXXxllNUdNkiUnVd9Hi7PLUZOMGh8hcaOLRR
	TP3nx7YuQkJQA3P40q0qbHFFIYgsiS7ish7Aoej2j8MCewY5G7K/VCnNFjkaUjw=
X-Google-Smtp-Source: AGHT+IFt/kJGpdjMPUeslt8Yxh3oy1C0tE/fivaQ2JuElWKWqWkX3ZHZ5uko3ECPJTY2FRQhBkKh7Q==
X-Received: by 2002:adf:f887:0:b0:361:dde2:87a0 with SMTP id ffacd0b85a97d-366e4f0cd03mr10365925f8f.65.1719559952307;
        Fri, 28 Jun 2024 00:32:32 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0fc623sm1382868f8f.87.2024.06.28.00.32.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 00:32:31 -0700 (PDT)
Message-ID: <6289f329-118f-4970-a525-75c3a48bd28b@tuxon.dev>
Date: Fri, 28 Jun 2024 10:32:29 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/12] i2c: riic: Define individual arrays to describe
 the register offsets
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Chris Brandt <Chris.Brandt@renesas.com>,
 "andi.shyti@kernel.org" <andi.shyti@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
 <20240625121358.590547-8-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB11346EF9A001F68162148B70F86D02@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB11346EF9A001F68162148B70F86D02@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Biju,

On 28.06.2024 08:59, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: Claudiu <claudiu.beznea@tuxon.dev>
>> Sent: Tuesday, June 25, 2024 1:14 PM
>> Subject: [PATCH v2 07/12] i2c: riic: Define individual arrays to describe the register offsets
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Define individual arrays to describe the register offsets. In this way we can describe different IP
>> variants that share the same register offsets but have differences in other characteristics. Commit
>> prepares for the addition of fast mode plus.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v2:
>> - none
>>
>>  drivers/i2c/busses/i2c-riic.c | 58 +++++++++++++++++++----------------
>>  1 file changed, 31 insertions(+), 27 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c index
>> 9fe007609076..8ffbead95492 100644
>> --- a/drivers/i2c/busses/i2c-riic.c
>> +++ b/drivers/i2c/busses/i2c-riic.c
>> @@ -91,7 +91,7 @@ enum riic_reg_list {
>>  };
>>
>>  struct riic_of_data {
>> -	u8 regs[RIIC_REG_END];
>> +	const u8 *regs;
> 
> 
> Since you are touching this part, can we drop struct and
> Use u8* as device_data instead?

Patch 09/12 "i2c: riic: Add support for fast mode plus" adds a new member
to struct riic_of_data. That new member is needed to differentiate b/w
hardware versions supporting fast mode plus based on compatible.

Keeping struct riic_of_data is necessary (unless I misunderstood your
proposal).

Thank you,
Claudiu Beznea

> 
> ie, replace const struct riic_of_data *info->const u8 *regs in struct riic_dev
> and use .data = riic_rz_xx_regs in of_match_table?
> 
> Cheers,
> Biju
>>  };
>>
>>  struct riic_dev {
>> @@ -531,36 +531,40 @@ static void riic_i2c_remove(struct platform_device *pdev)
>>  	pm_runtime_dont_use_autosuspend(dev);
>>  }
>>
>> +static const u8 riic_rz_a_regs[RIIC_REG_END] = {
>> +	[RIIC_ICCR1] = 0x00,
>> +	[RIIC_ICCR2] = 0x04,
>> +	[RIIC_ICMR1] = 0x08,
>> +	[RIIC_ICMR3] = 0x10,
>> +	[RIIC_ICSER] = 0x18,
>> +	[RIIC_ICIER] = 0x1c,
>> +	[RIIC_ICSR2] = 0x24,
>> +	[RIIC_ICBRL] = 0x34,
>> +	[RIIC_ICBRH] = 0x38,
>> +	[RIIC_ICDRT] = 0x3c,
>> +	[RIIC_ICDRR] = 0x40,
>> +};
>> +
>>  static const struct riic_of_data riic_rz_a_info = {
>> -	.regs = {
>> -		[RIIC_ICCR1] = 0x00,
>> -		[RIIC_ICCR2] = 0x04,
>> -		[RIIC_ICMR1] = 0x08,
>> -		[RIIC_ICMR3] = 0x10,
>> -		[RIIC_ICSER] = 0x18,
>> -		[RIIC_ICIER] = 0x1c,
>> -		[RIIC_ICSR2] = 0x24,
>> -		[RIIC_ICBRL] = 0x34,
>> -		[RIIC_ICBRH] = 0x38,
>> -		[RIIC_ICDRT] = 0x3c,
>> -		[RIIC_ICDRR] = 0x40,
>> -	},
>> +	.regs = riic_rz_a_regs,
>> +};
>> +
>> +static const u8 riic_rz_v2h_regs[RIIC_REG_END] = {
>> +	[RIIC_ICCR1] = 0x00,
>> +	[RIIC_ICCR2] = 0x01,
>> +	[RIIC_ICMR1] = 0x02,
>> +	[RIIC_ICMR3] = 0x04,
>> +	[RIIC_ICSER] = 0x06,
>> +	[RIIC_ICIER] = 0x07,
>> +	[RIIC_ICSR2] = 0x09,
>> +	[RIIC_ICBRL] = 0x10,
>> +	[RIIC_ICBRH] = 0x11,
>> +	[RIIC_ICDRT] = 0x12,
>> +	[RIIC_ICDRR] = 0x13,
>>  };
>>
>>  static const struct riic_of_data riic_rz_v2h_info = {
>> -	.regs = {
>> -		[RIIC_ICCR1] = 0x00,
>> -		[RIIC_ICCR2] = 0x01,
>> -		[RIIC_ICMR1] = 0x02,
>> -		[RIIC_ICMR3] = 0x04,
>> -		[RIIC_ICSER] = 0x06,
>> -		[RIIC_ICIER] = 0x07,
>> -		[RIIC_ICSR2] = 0x09,
>> -		[RIIC_ICBRL] = 0x10,
>> -		[RIIC_ICBRH] = 0x11,
>> -		[RIIC_ICDRT] = 0x12,
>> -		[RIIC_ICDRR] = 0x13,
>> -	},
>> +	.regs = riic_rz_v2h_regs,
>>  };
>>
>>  static int riic_i2c_suspend(struct device *dev)
>> --
>> 2.39.2
>>
> 


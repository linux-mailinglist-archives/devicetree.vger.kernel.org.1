Return-Path: <devicetree+bounces-160142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF232A6D9F3
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82A2B3A7D17
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66ACD25E808;
	Mon, 24 Mar 2025 12:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="MpAoxs/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1148925E440
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742818643; cv=none; b=sobnsWZG647dRD1mFCiNfsrlF6ITSZIuPcl7btX5h+DqZfmHKaOfull4yZbfIg3TfPvSzOd8u4J9iVp1+9GVtlp9ys1b+oih/w+2s3qGXvLCVHOiWCsgWJ39WefZ+DYj/zsFPKItVFasmsKul8U2+7Bkd/usJ1NB4FTkFncGdDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742818643; c=relaxed/simple;
	bh=EoiGMOryV4mIY4EbvcMo7ArzQaAHcSCytklybxuMWPY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F92vfrcc4RIPamGgpVEUxnQTqQps3fiB08HJkfu/aUWnrgK/CLvvJKoksIFb+fu9h0/Xxdu5WKUcY/1M+M/Yowk1rQm3pfcOtdsVL1ygyZRhE2zobqZZ5YGRLiuuBs9QYCgN9HFjvgn8tneD6tqVHfiHcaPqKOuBCqToYxQ0yso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=MpAoxs/a; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-85e14ce87ceso125897439f.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742818640; x=1743423440; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pQjy7+DZqFOo8SThpv8muVN+XmMk5JDMXBX8K79zwoY=;
        b=MpAoxs/azJJ4uDlUjhS0mWI+IJ666ZsACIbSigtQPSwjkGzzOIca5dfrLJRGMjOdHM
         rvS0g8Kk9ieWaEWwuADY/woqUyABGBYA5jkek8/fqGndLAlXI+EqxPrMbLWVpaqyVdKs
         WvdXXHuqvF5Tzt0mXfJQnjVcZBVY5L0dRu5UIm3VK1i0DW4mHi9nKqg2RfDq4aRXmCbB
         7uX6E+raly6t0IvZx/EkYQnQPPLaenOCX2Uy5+LKTb09/S0yG6N1pVHNTTmGSSnseu46
         NUlmeX630of9h31BWZqF+gnNAM16KsyF1PWnC5pMrQ7F5wKfiP8asYNzeGy0ocSAyisE
         kCFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742818640; x=1743423440;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pQjy7+DZqFOo8SThpv8muVN+XmMk5JDMXBX8K79zwoY=;
        b=Hxu5h7smOhIq+CQKiAPIuM3M5Goha/VBTU8kB9PcI8FqlN41H03Lq4ElKI3qs+5dDk
         Uoq/V3thK2pG9wJzPBSEYjXH8xnh9AAuNvMYVTu4Xp/KH1Nx0TDPEAUMreIbsscrimhn
         ORYBgM6CKfn3EMRy3VFrmjRjZTizvNFaCLY/sNu/c5sdoU9qQDFgcgYYyKj37qJsj6LV
         moVCs0kECdjVBMthO5IlqLNEsNarN8EE70tg+KkrVol/zVqmy5hL/EshkFhRihb//wN8
         0Fu4lPt12TMgKLXuQtxAlPWpRCJElQrmIW+5P5JBctY87NkbaDY5MV2pcVFLBo+Z8S78
         6PeA==
X-Forwarded-Encrypted: i=1; AJvYcCUskgVFR6TNLHo8Oq6pSaIdfs8kDAsm6UDi5yUKcwh0HfOMKDpBC0b1fwii00bi8GeAv3R2l/Q5Mn36@vger.kernel.org
X-Gm-Message-State: AOJu0YxJoHHgNBFPByLkpuZ1t58PAzavTkkIJ/11w6j9QN2WSw23WlRN
	AaKyBhZ9myOKHuwl94IRCZg1T3HDDhprrJmudJoQqweI6t+Jh/d4ayhTEedOsSg=
X-Gm-Gg: ASbGncvNO80yJRcmrD3Ji6JD5iLHwj8iTS9aa5rznI6ZSTwGqr8EPz+2vLOfkbTlyxE
	++62CIij4UQiUU7RC+/omgSf7C20ovaCTjWYJHiotfra0jVhVnXTvz07wTFSWg9bTAtCSlSeNPM
	eD5UF0BXpnhV59gnvUGC/amyTjLS5w4UK4Nt3Aj3Itq5iBfEYzup1mXiXWpQZzkYd78pRHLIo9r
	45ZqFv13Oe6aHf/N1qsHYsbwymwE8imlGEUx7Cj5JHWnMYNvOIsF8hOaVJO6qrpi+6bFCYysUy+
	Nva4r0og8HmkHtLJS/8uwnBX2lx3eFsbJGmUDL4JVVDhDD91gG7tIKz1ROzUTFMW8genlE90clQ
	3PX+MfnRuB/7+cZOXdcao49KpdgmK
X-Google-Smtp-Source: AGHT+IFRMWJu8cQwf/wCsj/90WfTQghFt/WjaXKq/fnbgU/ftzK6xeINV2Af8c2Selfxs/zF8TcQyA==
X-Received: by 2002:a05:6602:7410:b0:85d:ad56:af88 with SMTP id ca18e2360f4ac-85e1ee299f1mr1629181439f.1.1742818639889;
        Mon, 24 Mar 2025 05:17:19 -0700 (PDT)
Received: from [10.211.55.5] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-85e2bd8c42esm160016039f.30.2025.03.24.05.17.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 05:17:19 -0700 (PDT)
Message-ID: <b8edc46b-bc99-47c1-8900-0e08c97de9d6@riscstar.com>
Date: Mon, 24 Mar 2025 07:17:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 2/7] clk: spacemit: define struct k1_ccu_data
To: Haylen Chu <heylenay@4d2.org>, p.zabel@pengutronix.de,
 mturquette@baylibre.com, sboyd@kernel.org, dlan@gentoo.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 guodong@riscstar.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, spacemit@lists.linux.dev, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250321151831.623575-1-elder@riscstar.com>
 <20250321151831.623575-3-elder@riscstar.com> <Z-FHt3mDyEBKpa8O@ketchup>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <Z-FHt3mDyEBKpa8O@ketchup>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/24/25 6:53 AM, Haylen Chu wrote:
> On Fri, Mar 21, 2025 at 10:18:25AM -0500, Alex Elder wrote:
>> Define a new structure type to be used for describing the OF match data.
>> Rather than using the array of spacemit_ccu_clk structures for match
>> data, we use this structure instead.
>>
>> Move the definition of the spacemit_ccu_clk structure closer to the top
>> of the source file, and add the new structure definition below it.
>>
>> Shorten the name of spacemit_ccu_register() to be k1_ccu_register().
> 
> I've read your conversation about moving parts of the patch into the
> clock series, I'm of course willing to :)
> 
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   drivers/clk/spacemit/ccu-k1.c | 58 ++++++++++++++++++++++++++---------
>>   1 file changed, 43 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
>> index 44db48ae71313..f7367271396a0 100644
>> --- a/drivers/clk/spacemit/ccu-k1.c
>> +++ b/drivers/clk/spacemit/ccu-k1.c
>> @@ -129,6 +129,15 @@
>>   #define APMU_EMAC0_CLK_RES_CTRL		0x3e4
>>   #define APMU_EMAC1_CLK_RES_CTRL		0x3ec
>>   
>> +struct spacemit_ccu_clk {
>> +	int id;
>> +	struct clk_hw *hw;
>> +};
>> +
>> +struct k1_ccu_data {
>> +	struct spacemit_ccu_clk *clk;		/* array with sentinel */
>> +};
> 
> This is something like what I've dropped in v5 of the clock series so I
> doubt whether it should be added back in clock series again, as at that
> point there's no reason for an extra structure: Alex, is it okay for you
> to keep the change in reset series?

That's perfectly fine with me.  It's not necessary yet, so it's
just fine for you to do things the way you did, and I'll add this
in as part of the reset series.

> ...
> 
>> +static int k1_ccu_register(struct device *dev, struct regmap *regmap,
>> +			   struct regmap *lock_regmap,
>> +			   struct spacemit_ccu_clk *clks)
>>   {
>>   	const struct spacemit_ccu_clk *clk;
>>   	int i, ret, max_id = 0;
>> @@ -1648,15 +1668,24 @@ static int spacemit_ccu_register(struct device *dev,
>>   
>>   	clk_data->num = max_id + 1;
>>   
>> -	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
>> +	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, clk_data);
>> +	if (ret)
>> +		dev_err(dev, "error %d adding clock hardware provider\n", ret);
> 
> This error message definitely should go in the clock series.
> 
>> +	return ret;
>>   }
> 
>>   static int k1_ccu_probe(struct platform_device *pdev)
>>   {
>>   	struct regmap *base_regmap, *lock_regmap = NULL;
>>   	struct device *dev = &pdev->dev;
>> +	const struct k1_ccu_data *data;
>>   	int ret;
>>   
>> +	data = of_device_get_match_data(dev);
>> +	if (!data)
>> +		return -EINVAL;
> 
> Looking through the reset series, I don't see a reason that
> of_device_get_match_data() could return NULL. This is also something
> you've asked me to drop in v4 of the clock series, so I guess it isn't
> necessary.

You are correct.  I'll drop it.  I contemplated this and thought
it's useful to tell the reader it's necessary to not be null, but
you can tell it has to be by inspection.


>>   	base_regmap = device_node_to_regmap(dev->of_node);
>>   	if (IS_ERR(base_regmap))
>>   		return dev_err_probe(dev, PTR_ERR(base_regmap),
>> @@ -1677,8 +1706,7 @@ static int k1_ccu_probe(struct platform_device *pdev)
>>   					     "failed to get lock regmap\n");
>>   	}
>>   
>> -	ret = spacemit_ccu_register(dev, base_regmap, lock_regmap,
>> -				    of_device_get_match_data(dev));
>> +	ret = k1_ccu_register(dev, base_regmap, lock_regmap, data->clk);
>>   	if (ret)
>>   		return dev_err_probe(dev, ret, "failed to register clocks\n");
> 
> For using ARRAY_SIZE() to simplify runtime code, it's mostly okay since
> binding IDs are continuous 0-based integers. But I split the handling of
> TWSI8 into another patch, which creates a hole in the range and breaks
> the assumption. Do you think the TWSI8 commit should be merged back in
> the clock driver one?

I didn't understand the reason why you separated the TWSI8 into a
separate commit.  Now I know.  The hole in the range doesn't really
matter much; you already initialize your ->hws[] array of pointers
with ERR_PTR(-ENOENT), so any holes are handled properly.

					-Alex
> 
> Best regards,
> Haylen Chu



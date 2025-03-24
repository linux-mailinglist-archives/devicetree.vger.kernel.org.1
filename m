Return-Path: <devicetree+bounces-160157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A32A6DA71
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:54:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 040393B2E6C
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD96F25EFAE;
	Mon, 24 Mar 2025 12:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="vjU8xqVm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B24261361
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820772; cv=none; b=dxrp7vweucuq8Is/RZ2ShU95X9uCf9HKIumHYn6l7FeiGy17hsNi89U3Gqu1it3MEWf/OdK2NgMnFznpkqc8h0ikwPYDU6wh1f15M3Tv/CmHtlgz4K0dtQreC7kjT6GgSLevC9bwRgEYWxQE2xtym458mtlUiOjHbntKnTFHK2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820772; c=relaxed/simple;
	bh=tZeyOMnQsNvDDiIiuNWxW+4BJjKY29h3V6qQ1S2MzuU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TbPwF+rj0mrLsU5J5mVwRyepz9MIKxkq+2kepi1c+fcz+s5Igx/X9+27kPBHGfktA2XaK/R9O1xNuz9+nUUCJgoPUfisLVmsTybaIbGbvIzzAgu9EzwSPJ5tgLHnWR4PqnQGs7PLoqByoxPmpxpvZEWS4M+6wWohDNKw2QpHm3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=vjU8xqVm; arc=none smtp.client-ip=209.85.166.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-85b3f92c866so45553739f.3
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742820770; x=1743425570; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6X0oWdoPDnrM5Ggl2vFdtnlylP4PXBXYERzQLRD3cjM=;
        b=vjU8xqVm7P9aEIttQLH1JZaK9V0to65sg7HxnSxEZKjfdo7ivK3oZp2UmKf3ldhJr7
         9iQlceHvEOPrGsLOfuhvj8oUmrQIjEvDlVQYIMOBPjE16qiBZx76un5t0EGumIsZbdib
         m3wygBA0RwENO2UH18JBIIZMNr2/JxszZSKCzKTCQOHwpNeGGiKe8TqGDNxzLktAZPbT
         KtpDds1J7+XCXVycUUlZvYjHh1RAmcK0susywZzTZGXf6PH6aHGiCsGZ3AWqfGeMOxx1
         CglPjRj4lRY59hoUS63RQ8l5Tf59Y7LXO1Mpztu07VJj55wOBL/tT26+8qXhO8lltMY0
         Nx7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820770; x=1743425570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6X0oWdoPDnrM5Ggl2vFdtnlylP4PXBXYERzQLRD3cjM=;
        b=e5lyuTCcuswLgavYG0PTeFTlpSX/0LqzeWyYEhoaE1V50/tWyg6MLSmfUmjJ1FZ0EY
         Uc7DO3M3WMJrEZNd3AI8wYqNJvu8OUpMraAxy/MLeKWZqzSg7gF1j0Trsl+cmg/9lLhT
         dCAp0kNijewQmv8Q24k3gcVPDROGY+m/R2xCiQVhWScmescCmir6YgAgPt4sicfeSDvW
         5Vi8EzgX+ZM3BpDUXI66PBuPaWGm1up8eu8WzyCGbmIAl5vBTiiwsKUytwXWopA0DjIi
         0Wx0DNhiladVdG2QFtqp2o0LnM4DjK+wN6QpH3olSBKrAo8942hxOszgjwXobe44VbND
         8eFA==
X-Forwarded-Encrypted: i=1; AJvYcCWpRKa2Ex3bZdKlKL68LLSOZFqoH/gT6sQ3dxeckB59NiGgsWTqhItspxi7SsHxralci5JjgDFbV6tH@vger.kernel.org
X-Gm-Message-State: AOJu0YzhOZarbn/dl1pcKI1eWGpB+I7lyNNrIktyNEiNXqkNzXsx+1Xj
	kgOc1Wz/WGoylJhyzlzl75T9WYB04T9N8iikJWfegNTBc0f/2aDVU2gXUTz8Jzs=
X-Gm-Gg: ASbGncvOKuvSOW0eKgp6wBXPaeX4eptDaVtQH8Gi/KdQVrLt/BMRJAObOUcuJayZkBC
	n16HK2jT/HrkVmIsAnAHGP41sAopdMarlW4adxpNZW80OtZNB7+VE+kG8+cEPfPnFVEg0ezn5rx
	v9QXJZF74zLQTUUehau6uPbMbjs0FTYrkoPGzOa3pIvNI9FaNeS7WsQChRyY5a63tqv6ic5uQoY
	4T5kN4u8DVScECfRdcXSt4sMNc1ymT3REAq5F8/IlA98dhs7SBuNWKPBwuo1Qe8AeSxBL6QgB+b
	KdnMsg/lEDF6urgTvgRUoRRGoJBxeVi7sW+4JGGw/7aASCKwR8MyT18QZ2Kds2nPQXXuk4eU6yx
	8u2hpRoaP
X-Google-Smtp-Source: AGHT+IGosqVsP6xD9EOhI7VXXnx9Y+44HitNgUDbYxTirUwdX5Z/bTtbV3lrW2oS8n5r7ikaiZEZ7g==
X-Received: by 2002:a05:6602:488b:b0:85b:505a:7e01 with SMTP id ca18e2360f4ac-85e2ca364aamr1471217539f.5.1742820769907;
        Mon, 24 Mar 2025 05:52:49 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-85e2bc273b7sm164604339f.19.2025.03.24.05.52.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 05:52:49 -0700 (PDT)
Message-ID: <b9af5eec-db85-4465-895f-d7781ebe9dd9@riscstar.com>
Date: Mon, 24 Mar 2025 07:52:47 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 3/7] clk: spacemit: add reset controller support
To: Haylen Chu <heylenay@4d2.org>, p.zabel@pengutronix.de,
 mturquette@baylibre.com, sboyd@kernel.org, dlan@gentoo.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 guodong@riscstar.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, spacemit@lists.linux.dev, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250321151831.623575-1-elder@riscstar.com>
 <20250321151831.623575-4-elder@riscstar.com> <Z-FOJFHOsU_dLkmS@ketchup>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <Z-FOJFHOsU_dLkmS@ketchup>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/24/25 7:20 AM, Haylen Chu wrote:
> On Fri, Mar 21, 2025 at 10:18:26AM -0500, Alex Elder wrote:
>> Define ccu_reset_data as a structure that contains the constant
>> register offset and bitmasks used to assert and deassert a reset
>> control on a SpacemiT K1 CCU. Define ccu_reset_controller_data as
>> a structure that contains the address of an array of those structures
>> and a count of the number of elements in the array.
>>
>> Add a pointer to a ccu_reset_controller_data structure to the
>> k1_ccu_data structure.  Reset support is optional for SpacemiT CCUs;
>> the new pointer field will be null for CCUs without any resets.
>>
>> Finally, define a new ccu_reset_controller structure, which (for
>> a CCU with resets) contains a pointer to the constant reset data,
>> the regmap to be used for the controller, and an embedded a reset
>> controller structure.
>>
>> Each reset control is asserted or deasserted by updating bits in
>> a register.  The bits used are defined by an assert mask and a
>> deassert mask.  In some cases, one (non-zero) mask asserts reset
>> and a different (non-zero) mask deasserts it.  Otherwise one mask
>> is nonzero, and the other is zero.  Either way, the bits in
>> both masks are cleared, then either the assert mask or the deassert
>> mask is set in a register to affect the state of a reset control.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   drivers/clk/spacemit/ccu-k1.c | 93 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 93 insertions(+)
>>
>> diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
>> index f7367271396a0..6d879411c6c05 100644
>> --- a/drivers/clk/spacemit/ccu-k1.c
>> +++ b/drivers/clk/spacemit/ccu-k1.c
> 
> ...
> 
>> +static int
>> +k1_rst_update(struct reset_controller_dev *rcdev, unsigned long id, bool assert)
>> +{
>> +	struct ccu_reset_controller *controller = rcdev_to_controller(rcdev);
>> +	struct regmap *regmap = controller->regmap;
>> +	const struct ccu_reset_data *data;
>> +	u32 val;
>> +	int ret;
>> +
>> +	data = &controller->data->data[id];
>> +
>> +	ret = regmap_read(regmap, data->offset, &val);
>> +	if (ret)
>> +		return ret;
>> +
>> +	val &= ~(data->assert_mask | data->deassert_mask);
>> +	val |= assert ? data->assert_mask : data->deassert_mask;
>> +
>> +	return regmap_write(regmap, data->offset, val);
>> +}
> 
> I don't think it's safe to write the regmap based on a value read
> earlier without the regmap's inner lock held: it's totally fine for the
> clock part to issue an update of the register at the same time. Without
> knowledge on it, reset code may rollback the clock bits written by clock
> code earlier to the original value. That's why I keep using ccu_update()
> everywhere and dropped ccu_write().

That's a great point, thank you.  I'll modify it to use
regmap_update_bits(), which is better anyway.

					-Alex

> 
> Thanks,
> Haylen Chu



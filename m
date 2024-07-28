Return-Path: <devicetree+bounces-88570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A8093E41E
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2024 10:41:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E335D1F217C4
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2024 08:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AECC610A0E;
	Sun, 28 Jul 2024 08:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7zYoPtv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814E8BA34;
	Sun, 28 Jul 2024 08:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722156071; cv=none; b=Ws17uljrZID3//YtBDN77lttdHP52VoETR1eljG9PA7SyZIG+LjtzCHmYfcUsJoNQk3HYdDE9GjlcDhk2BR0NfIGebm2LsXDMTbMCXjj8ONOaymhTeONBnj4BPGXOhpSCDfNZHAb6HnL7hi+0VGP9URrC502yn4TJbpoI/DWSVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722156071; c=relaxed/simple;
	bh=/Bi4KvCOpUh2vfddp26zZyy0Hwn/YMVYEAibqT+vD3Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oZVtN8X59YEvMB+5TmUc8xwNK9QgUdNhTiBNjiqUGL94Skg2wqGHa20yC94nIVDe1qSPvITCYifgD2/bJDHOfJhCz7EbGAfbrDClm/vGxDISclDjA06cDW36cHFerXGm87E0ne5d03QeinEOXLKyPX76xwjSnc9zEB2WkH6BX/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7zYoPtv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 134E9C116B1;
	Sun, 28 Jul 2024 08:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722156071;
	bh=/Bi4KvCOpUh2vfddp26zZyy0Hwn/YMVYEAibqT+vD3Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=B7zYoPtvY9KGIMHz7fnc8lzXAp9SiHOWY1WtlwLjmV0ox4mPTc9PduF/W1ynjj5rw
	 ZmRIyRNTqTHMhj7befls2lJ7r0WmgHi/uj9Vkq3rrxth32kTX3TinmJYwQQaTmo9xT
	 aRbrgEp1MXDRD0pUyJHscMm4WScyiIDljTbgK0JY7pqJdigBn7vS4a4+7OD1HjLB95
	 yEYvzh0GP0Vgzrb7+tcUyqyWZoFBr1QuMCbTsLgF2JxIO11OpmxTX9IqgRaPqF4ufW
	 kJW6rLo+vY2EN5dMa/r7Pawg6fh4ONp5DZOo06vcBOCNELg7Bfzu8l2Z/trH9MKtzX
	 Ml0yFS43FKDUw==
Message-ID: <27fb423a-e8f4-44c2-be1a-38d2a42a11b6@kernel.org>
Date: Sun, 28 Jul 2024 10:41:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 2/2] iio: proximity: aw9610x: Add support for aw9610x
 proximity sensor
To: Jonathan Cameron <jic23@kernel.org>
Cc: wangshuaijie@awinic.com, lars@metafoo.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, waqar.hameed@axis.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, liweilei@awinic.com, kangjiajun@awinic.com
References: <20240726061312.1371450-1-wangshuaijie@awinic.com>
 <20240726061312.1371450-3-wangshuaijie@awinic.com>
 <3ef6c902-b004-4aa0-96c9-dabd81a01a6a@kernel.org>
 <20240727160628.115e295e@jic23-huawei>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240727160628.115e295e@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/07/2024 17:06, Jonathan Cameron wrote:
> 
>> ...
>>
>>> +static int aw9610x_read_chipid(struct aw9610x *aw9610x)
>>> +{
>>> +	unsigned char cnt = 0;
>>> +	u32 reg_val;
>>> +	int ret;
>>> +
>>> +	while (cnt < AW_READ_CHIPID_RETRIES) {
> Why retries? 
>>> +		ret = aw9610x_i2c_read(aw9610x, REG_CHIPID, &reg_val);
>>> +		if (ret < 0) {
>>> +			cnt++;
>>> +			usleep_range(2000, 3000);
>>> +		} else {
>>> +			reg_val = FIELD_GET(AW9610X_CHIPID_MASK, reg_val);
>>> +			break;
>>> +		}
>>> +	}
>>> +
>>> +	if (reg_val == AW9610X_CHIP_ID)
>>> +		return 0;  
>>
>> So devices are detectable? Encode this in the bindings (oneOf and a
>> fallback compatible) and drop unneeded entry from ID tables.
> 
> Hi Krzysztof,
> 
> I think this is not a good idea.
> 
> Even though these two are detectable, this breaks if along comes a 3rd device
> in the future which is truly compatible with one of these two parts but that
> we don't yet know about (so can't discover). For that part we will want to
> provide a meaningful fallback compatible.
> 
> It needs to fallback to either the 3 channel or the 5 channel chip and handle
> it as appropriate. (Note that this difference is non obvious as right now the
> code pretends there are always 5 channels and that needs fixing).
> 
> If the chips provided a register that told all the chip specific data like
> how many channels, then sure making one fallback to the other would be fine
> as future devices could use those standard registers.
> 
> With just an Id register, we can't discover enough.  Hence these two
> parts should not be listed as compatible with each other.

Sure

Best regards,
Krzysztof



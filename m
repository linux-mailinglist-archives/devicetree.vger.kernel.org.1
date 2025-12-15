Return-Path: <devicetree+bounces-246727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A634FCBF479
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:44:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A2B6300E78D
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDD8631ED71;
	Mon, 15 Dec 2025 17:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="u8D+ZdW8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B711B30EF80
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 17:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765820539; cv=none; b=sWBSaIcG3R/q0YwN+Yha9QureIFMeAEfQviC8WSkgrLVI4+zdRkBM4GxIu2kHanPSzwk0zMDlxZhZVVswMba4IGOyC7EVc3mwa7lvD0vxfco1ctHQEbtZD7KTOLtg9N+nTtHPPF7LH8Neb38grwTqiUCnhBsbEHXn9Zs9wC58iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765820539; c=relaxed/simple;
	bh=JCbw/Tkfl7qcStJ/t/KoL7tabiMhXYBLCGI4xWIdDl0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ckr2xZYquTIpuWQTKoGk1s95j91Dl30FlfHrlQppecgXHI8PW8c0KUiShvPQrjnn/950PltYhuHv0NNo/8AirhgIsZ9giMUuY4R1bhmg8vEpepguKH63U0393KWTEtdHOkjb+UtKKkx8yzzmr2WSLKqaOefKDkUJil+/B1yNfHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=u8D+ZdW8; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-3f551ad50d1so1322613fac.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765820537; x=1766425337; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mlSnlLmCn+QNW2/CaTtJGlhnE1xXNcqwO0s1EpmEebg=;
        b=u8D+ZdW8zNqFdGjl1gaD4cPQGqrRl5xearAu8LX8VqSxYHNTm6zYOnrwwXQV7R+MGg
         R3QSwU992QCbe+/A51F5mC6gR1FIqfEOmltzGTaIyv8TnX292c5JT80QaZlSKxCoonlg
         Ar9d+ZHYU9GCGbXUn5G8L/Nh7DC8DcFz3JQQSoknE2AvrNEGl3vRHkxkP9UcHulzUXny
         GUtWSPt50FRFlONIXwiO7/e3vzGr6nMYD6SEjak3yCqjh7EtL2Ukt9r86RqlC+V82pYt
         1+kBlNzjJ5ZHWJEcqXLKKtuZhoX8TDmimCzr012tz47xYM5prUuC+P3YC7AOLtqrUd/e
         IoUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765820537; x=1766425337;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mlSnlLmCn+QNW2/CaTtJGlhnE1xXNcqwO0s1EpmEebg=;
        b=Ma6GgNyxIn2AAEOFpyZZBj0lkG4mci4W0E48XVG5aqS/mWxUT3UUfW/PhHOhc15EhN
         vp4AwfyhyDgDYbc3E3kZJ84qWSzm0qjRbPs3hazL4UwQ/2yyNFoZCxq57ed+5Ss2+ki0
         m0SbD9wNIGY2OkEQX8qgXtCxNgp1oMzAmNc8r8p3D9DidHfcTsoIrR0llhI1Exv3yjPH
         DGP9Wmkf0zRCc02Gc0eNvWbridHTUiD2vKNdwrBRBt9iJsoLFiKs7FwVHybbyNmNcrCQ
         xlfmcMqbV0XP6FLfPbcgq/zhqteXBcYVGxfk8QBFGIs4fUkoJzl1dotcbU6vnseu4gLl
         DXVg==
X-Forwarded-Encrypted: i=1; AJvYcCWo4j7tIIkv2UwtjGOUOYxDRsliazVhzM6RVsl3o2m5Yak9MyiZLB3vk9rjrbArb7mn7NP22pd6ZWUJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/8ewl5eDDx3WDZm1Np7s7GKXonief8oiAb6tQc6PQXnZzYdGR
	dWBWoF3V92IoXfZtStM2g+OSwY898Ppat2eLNI3S38bm9AJRUi6C/72Qe5BoLeid2+8=
X-Gm-Gg: AY/fxX7CMIToy+uJVXRWLWJLekVVs7Ycv5AF00uovUBfimTXnNLwGTmvPQfJMsMsZJH
	Y6VpfWAUUQB708waeYum4F6prWUR0G0k4zMWhvQdG37RNdPFkXXz42DRD2opU4HIt+hSwpUISb2
	wyUHEh4H6Z1DG1L0K/dWxjC/oR3LgHXSZuLtrHHo3NqR2WksdTE/LURg+C9uwtcu9MdQMf6RUlB
	WewUuNlaUvjVUgq/XMFZry53gArOXu3ob+wpe5815dl/8BsWO3YA3kWDs+v63G/pmZ+uKGdGlxO
	bwVkbGrvUgSwW+tSs4V0CEDCak/RZH6UZ0cLPg8HcE0pFcOn7qSv8ASGkNyY1b7l3tbCyUHThPk
	EGEyRKZapOOSEherGpkX5agfn7o37SNDDlMPsJa2NE/8Ass59uiubydVwgrrfjFAzREEJulir2V
	tUytOw1KSU4ACGqzgl1sMiR0312LTtwQnwoejtX6ZvbXFBA1FYmw1B8lW2KWrwiLssTJCx7uk=
X-Google-Smtp-Source: AGHT+IGuB01bc3hrG6FQiQnnv0dYgwD1dfK5LrfV7pzOIuWcBx0XmqTUnDO8pJby08UqR/zVI5Laeg==
X-Received: by 2002:a05:6871:b07:b0:3ec:41eb:6e48 with SMTP id 586e51a60fabf-3f5f890fb0fmr5685338fac.40.1765820536604;
        Mon, 15 Dec 2025 09:42:16 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:1635:b560:bfdd:f758? ([2600:8803:e7e4:500:1635:b560:bfdd:f758])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3f614ea526bsm5010675fac.22.2025.12.15.09.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 09:42:16 -0800 (PST)
Message-ID: <5926ca19-c204-4abc-9e59-86a797b63b5c@baylibre.com>
Date: Mon, 15 Dec 2025 11:42:15 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: adc: Add support for TI ADS1120
To: Ajith Anandhan <ajithanandhan0406@gmail.com>, jic23@kernel.org
Cc: nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251109141119.561756-1-ajithanandhan0406@gmail.com>
 <20251109141119.561756-3-ajithanandhan0406@gmail.com>
 <5f15284b-159b-4860-b58b-35c624e2539f@baylibre.com>
 <8e2c73ca-3746-4b2a-9d85-c12b51a69059@gmail.com>
 <8ad18de5-53cd-49ba-8e84-1e8c7e5bd627@baylibre.com>
 <15106906-3bcc-4187-87d9-c838fe99b583@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <15106906-3bcc-4187-87d9-c838fe99b583@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/15/25 10:49 AM, Ajith Anandhan wrote:
> On 12/15/25 10:06 PM, David Lechner wrote:
>> On 12/15/25 10:13 AM, Ajith Anandhan wrote:
>>> On 11/18/25 7:34 PM, David Lechner wrote:
>>>> On 11/9/25 8:11 AM, Ajith Anandhan wrote:
>>>>> Add driver for the Texas Instruments ADS1120, a precision 16-bit
>>>>> analog-to-digital converter with an SPI interface.
>>>>>
>>>> ...
>>>>
>>>>> +#define ADS1120_CFG0_GAIN_MASK        GENMASK(3, 1)
>>>>> +#define ADS1120_CFG0_GAIN_1        0
>>>>> +#define ADS1120_CFG0_GAIN_2        1
>>>>> +#define ADS1120_CFG0_GAIN_4        2
>>>>> +#define ADS1120_CFG0_GAIN_8        3
>>>>> +#define ADS1120_CFG0_GAIN_16        4
>>>>> +#define ADS1120_CFG0_GAIN_32        5
>>>>> +#define ADS1120_CFG0_GAIN_64        6
>>>>> +#define ADS1120_CFG0_GAIN_128        7
>>>> We could avoid these macros by just doing ilog2(gain).
>>>
>>> I understand your concern about unused macros. I've kept them for documentation purposes as they map directly to the datasheet register definitions, which makes it easier to verify correctness against hardware specs also I'd prefer to keep it like this since it give more readability Shall i keep this as it is for this initial version?
>> I would argue that if they aren't being used then omitting them would
>> save us the time of having to verify the correctness in the first place.
>>
> I understand your concern about unused macros. This was suggested by Jonathan earlier.

Jonathan is the maintainer, so if he is fine with it, he has the final say. :-)

> 
> I’m fine with removing the unused macros if that is preferred. Please let me know how you’d like me to proceed.
> 
>>>>> +static int ads1120_set_gain(struct ads1120_state *st, int gain_val)
>>>>> +{
>>>>> +    int i;
>>>>> +
>>>>> +    for (i = 0; i < ARRAY_SIZE(ads1120_gain_values); i++) {
>>>>> +        if (ads1120_gain_values[i] == gain_val)
>>>>> +            break;
>>>>> +    }
>>>>> +
>>>>> +    if (i == ARRAY_SIZE(ads1120_gain_values))
>>>>> +        return -EINVAL;
>>>> Since there is only one gain register, we should store this in a
>>>> per-channel variable, then set the gain in the register in
>>>> ads1120_set_mux() instead (and it would make sense to rename
>>>> that function as well to something like ads1120_configure_channel()).
>>>
>>> I've implemented a global gain that applies to all channels for simplicity. I planed to add
>>>
>>>   per-channel gain storage in the later patches.
>>>
>> OK. Just mention this in the commit message.
>>
>>
>>>>> +/* Regmap write function for ADS1120 */
>>>>> +static int ads1120_regmap_write(void *context, const void *data, size_t count)
>>>>> +{
>>>>> +    struct ads1120_state *st = context;
>>>>> +    const u8 *buf = data;
>>>>> +
>>>>> +    if (count != 2)
>>>>> +        return -EINVAL;
>>>>> +
>>>>> +    /* WREG command: 0100rr00 where rr is register address */
>>>>> +    st->data[0] = ADS1120_CMD_WREG | (buf[0] << 2);
>>>>> +    st->data[1] = buf[1];
>>>>> +
>>>>> +    return spi_write(st->spi, st->data, 2);
>>>>> +}
>>>> I don't see anyting unusal about these read/write functions. We should
>>>> be able to use the existing spi_regmap with the proper configuration
>>>> instead of making a custom regmap_bus.
>>>
>>>     The ADS1120 needs register address shifted by 2 bits
>>>     in command byte (reg << 2). I couldn't find a way to do this with standard
>>>     SPI regmap. If there's a configuration I'm missing, please point me to it and I'll gladly simplify.
>>>
>>>
>> I think you are looking for reg_shift in struct regmap_config.
> 
> 
> 
> 
> Thanks for the pointer.
> 
> I did look at reg_shift, but it doesn’t fit this device. With .reg_shift = 2, regmap would send only (reg << 2) (e.g. 0x0c for reg 3).
> 
> The ADS1120 requires the command byte to be CMD | (reg << 2) (e.g. 0x20 | 0x0c = 0x2c for an RREG of reg 3).
> 
> Similarly,
> 
>  .read_flag_mask would produce reg | mask (e.g. 0x03 | 0x20 = 0x23), which is also not the required format.
> 
> Unless I’m missing a regmap configuration that can generate (reg << 2) | CMD as a single byte,
> 
> a custom regmap bus seems necessary here. Please let me know if there is a way to express this with standard regmap-spi.
> 
> 
> 

Sorry, I didn't read carefully enough. Wouldn't this work though?

	.reg_bits = 2,
	.reg_shift = 2,
	.read_flag_mask = 0x20,
	.write_flag_mask = 0x40,


Then a read should be 0x20 | ((reg & 0x3) << 2) and a write should be 0x40 | ((reg & 0x3) << 2).


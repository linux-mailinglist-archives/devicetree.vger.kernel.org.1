Return-Path: <devicetree+bounces-246693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFE8CBEEE2
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:36:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9B97330161CD
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72DFC2DFA5B;
	Mon, 15 Dec 2025 16:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ScCy18MP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E612BEC57
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816572; cv=none; b=in7ou35cfzm2QA6AGmEktUyHHeThW8wBesf9o2a9z/7/bsSBfN09Cas8vfpj64yWpc0DRaKQLD0aBqvjPKNaUFsB+o4fhGRQSoqhNmS1uNqgqvpPIEjfgAoesOGy1dWJm7wBWIcUmcuSbsWecrDG9noFnimqaoL83lfdfg6WSFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816572; c=relaxed/simple;
	bh=sAowoesxLtXeIRYWyEMZGEA6UywLMgIjNJO+lhOHOZs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h96VVglikkqh4462s0/Jkr4IXKcq6y2eH3y7SW7XqMM+bcmOmfjjXCwB8RJtx/9erpB9BA79+CtTa2PkCdIXCpU8M3B+N8b+6NNxTkcbEs0AA7HavYqJGnm0omHX9g3F8DZlJbn1m22I700ZPusO4KTvC5I5HdhAYelpA9/EsqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ScCy18MP; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7caf5314847so1241620a34.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765816569; x=1766421369; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z7oZrvL1xspTN4J2u08OoYNZ7S8v1d6FkgPVyI9tW5w=;
        b=ScCy18MP6AppOl1y4Q55IVY7pkNQnn/omya+zqQhvHZOkivRSx6pdya9TAWnuE014v
         +6qkradwXvAQZN9ixvPqio6njiffKjJ2rjS9sP+7grLLWTFJNX4UFRnpIQFxzTvPlMxl
         cm/JFHOM9/Pmk9kf4007kTAtsH0WKaT+gY71BhEgQEwWYK3vtM/HRCXWgDhsydpD6S7N
         WU6U1QQ24QD3TPmwlcNwCsRnWLne06q7dQTBjJ23VGGcOH6Iqhve/qrVl3RHtiNXBRlv
         kcrAjsUzsgHiZ4A31WPu5Ca/SCttKtCeDa80YJqkPERpYcYc6pERavOg1P/vwjsDzsxP
         zE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765816569; x=1766421369;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z7oZrvL1xspTN4J2u08OoYNZ7S8v1d6FkgPVyI9tW5w=;
        b=RjpNSgFVcAI8hVKCScwySjQzk8DyNAjHMxXZu0Dz4N6Oqhpg6rPGprB+BXeWkYuHec
         4SbHfDhoSMLHtQu8j0sZVQQkyHtUdiL70j6nF1itIQ16JvWKD3Gfk5t/QXzIo5tKx3rN
         sUT2ZMaIMd439z2SlGMn3Rwh6+LHCXZTgZ6/IqqRj+yrTBfHR9ymBpSlEFYLFyGtm2vG
         b1DqN83WHukegqdYuB6mh7BrpXp5uLJATZQeEQU9pGh6IjfYhe/oksqHRW3QOpsocyaG
         hT1MlNQlLckYoCUQPsh7KaYTp7+yIjqAofNUaniB1eR8QsWmk3tsHT13Wrh+3ABgafPh
         TBlw==
X-Forwarded-Encrypted: i=1; AJvYcCVlHMhBdeajzXnFJBq7Tzanf8EKo6WyIzVsOERBObejHEUnUAloUOPaWPdfq0N/D6iqL8usnltv47a1@vger.kernel.org
X-Gm-Message-State: AOJu0YyB9CRcYsZub1LRuOlQuHU9oMkynpdYWsPrdG03K7fvPKJ1l65Q
	gvLBHWaHKRTOINCJ6sz6BvN7Q0DdHlsl21w7hokg3vDlyN2Moj4M/ubfv58BSPiVF3QAjJtbxvG
	M/CS4
X-Gm-Gg: AY/fxX5afI2CA5QLGGQBNOiXVfVA0sYE0rL/cer+uWfMBueqzoYmvt8db5sxfzPEHvF
	TELhBHS5DcXUihb37O4un+nWemhwS003FldGZbVV/ZRTzNspetwg9efWABoLKxLxVoHK/rAh067
	E1FSbo+cHobAnXuMM60f23kJ/ai8ywoHUpDkTQfDgyijpRBg4fiVOrkosPPqpEDQ5AT8t8Pom3Q
	c1gmbQl0/VqMEe2uc5n2AxQjd/UCCZMtL1yPvxGt5N1wosuXvNZvCdDnbutpMyd+yfE5HlkXO53
	/87SDiWb4O8LJ6CMmf1nGs5lOuqPVTsYauKwG4WK73sPUO7a6EkawBzlkxWkMCKLKR8NseIIxRX
	RorrS9HaDaX5S/GUQvjodCYbC6ehTSrg/8NbORXtfsARFIMn5h2hAnjktvviPmhTDl+/DyJwad1
	e1FF5Gd5V33be+0HawJ5dO+XpDqFQ9tk4sTnhXo3NgRgDY4UPjhO4At/V+W8gy
X-Google-Smtp-Source: AGHT+IGUf60DyjJnn1BWuFoWIWGsMe8lsQdmvZaZUG6uFOtKAGFnWTuMobQaOP8tgZlvZ+sWh2O1Ew==
X-Received: by 2002:a05:6830:914:b0:7c7:6752:2d8 with SMTP id 46e09a7af769-7cae838199fmr7424977a34.32.1765816569392;
        Mon, 15 Dec 2025 08:36:09 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:1635:b560:bfdd:f758? ([2600:8803:e7e4:500:1635:b560:bfdd:f758])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cadb1ff3dasm136070a34.11.2025.12.15.08.36.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 08:36:08 -0800 (PST)
Message-ID: <8ad18de5-53cd-49ba-8e84-1e8c7e5bd627@baylibre.com>
Date: Mon, 15 Dec 2025 10:36:08 -0600
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
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <8e2c73ca-3746-4b2a-9d85-c12b51a69059@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/15/25 10:13 AM, Ajith Anandhan wrote:
> On 11/18/25 7:34 PM, David Lechner wrote:
>> On 11/9/25 8:11 AM, Ajith Anandhan wrote:
>>> Add driver for the Texas Instruments ADS1120, a precision 16-bit
>>> analog-to-digital converter with an SPI interface.
>>>
>> ...
>>
>>> +#define ADS1120_CFG0_GAIN_MASK        GENMASK(3, 1)
>>> +#define ADS1120_CFG0_GAIN_1        0
>>> +#define ADS1120_CFG0_GAIN_2        1
>>> +#define ADS1120_CFG0_GAIN_4        2
>>> +#define ADS1120_CFG0_GAIN_8        3
>>> +#define ADS1120_CFG0_GAIN_16        4
>>> +#define ADS1120_CFG0_GAIN_32        5
>>> +#define ADS1120_CFG0_GAIN_64        6
>>> +#define ADS1120_CFG0_GAIN_128        7
>> We could avoid these macros by just doing ilog2(gain).
> 
> 
> I understand your concern about unused macros. I've kept them for documentation purposes as they map directly to the datasheet register definitions, which makes it easier to verify correctness against hardware specs also I'd prefer to keep it like this since it give more readability Shall i keep this as it is for this initial version?

I would argue that if they aren't being used then omitting them would
save us the time of having to verify the correctness in the first place.


>>> +static int ads1120_set_gain(struct ads1120_state *st, int gain_val)
>>> +{
>>> +    int i;
>>> +
>>> +    for (i = 0; i < ARRAY_SIZE(ads1120_gain_values); i++) {
>>> +        if (ads1120_gain_values[i] == gain_val)
>>> +            break;
>>> +    }
>>> +
>>> +    if (i == ARRAY_SIZE(ads1120_gain_values))
>>> +        return -EINVAL;
>> Since there is only one gain register, we should store this in a
>> per-channel variable, then set the gain in the register in
>> ads1120_set_mux() instead (and it would make sense to rename
>> that function as well to something like ads1120_configure_channel()).
> 
> 
> I've implemented a global gain that applies to all channels for simplicity. I planed to add
> 
>  per-channel gain storage in the later patches.
> 

OK. Just mention this in the commit message.


>>> +/* Regmap write function for ADS1120 */
>>> +static int ads1120_regmap_write(void *context, const void *data, size_t count)
>>> +{
>>> +    struct ads1120_state *st = context;
>>> +    const u8 *buf = data;
>>> +
>>> +    if (count != 2)
>>> +        return -EINVAL;
>>> +
>>> +    /* WREG command: 0100rr00 where rr is register address */
>>> +    st->data[0] = ADS1120_CMD_WREG | (buf[0] << 2);
>>> +    st->data[1] = buf[1];
>>> +
>>> +    return spi_write(st->spi, st->data, 2);
>>> +}
>> I don't see anyting unusal about these read/write functions. We should
>> be able to use the existing spi_regmap with the proper configuration
>> instead of making a custom regmap_bus.
> 
> 
>    The ADS1120 needs register address shifted by 2 bits
>    in command byte (reg << 2). I couldn't find a way to do this with standard
>    SPI regmap. If there's a configuration I'm missing, please point me to it and I'll gladly simplify.
> 
> 

I think you are looking for reg_shift in struct regmap_config.



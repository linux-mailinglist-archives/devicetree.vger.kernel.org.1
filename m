Return-Path: <devicetree+bounces-139250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 59581A14D5E
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 11:16:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 135C83A4A94
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 10:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 905051FC7FA;
	Fri, 17 Jan 2025 10:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sm5peN9B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452DC1FA8F1
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 10:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737108956; cv=none; b=qz/tvcz/LrDMqJFSTdeIUs8QWlNhJDVJYNIHZsSBpnH5M4hCOdb6WMfo/k0UqlELDRs6gEL/O1IW9aySdl4PiIeFLDkJUZ5DIz9p6ggoqvshRqTOuFzHJFmjvhI02ThIjWh8F1pmSfEzqgslbM93jzsNCrJFFDelUYl0fpSnPRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737108956; c=relaxed/simple;
	bh=z17GZLIUwhzQeO9wUYNevMqU27jp9roZDzlvI9yzbGE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lFmIe+PNex0Glb4S8MCw8qy8Ki/qodqRpRzJNAut/ADgBq15Qt3qCEwEEry9BmU/6b5VKvuL91sRgG1oQWH342UVlkE9U/uHW7p+7AIFTgK0SHcxuDidnRMlTfATJFlp25sMfKCudSQUQ0siZ+AZoqvm/CdcOJiOMJ8b1uoIq7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sm5peN9B; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-385d7f19f20so956659f8f.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 02:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737108952; x=1737713752; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NSGeOswWqTUep3DX2Dkchbn4WoRD6ZXOIbfl/0X97bs=;
        b=Sm5peN9BdoWDBrUaRAX9Ug/85nxiRxTqnTdAvfExZ4+kRvU2+eVjXOhASg0kvaI/sE
         3NFSoyvMyRsZHYXtyD+ztLSYr49zZf2MkU7hWcK+Iy/cKF+blVqV/Nbwwij9zZNtTq8w
         +S5skKuwtFhcG+mvgSsBSu8LBsPkrYYfpoPAGAtwmK7EvBKo8n0DAyNC6Z23sUOTUm6T
         oYyNy6luIWsUjf+TDBlPFeJd3khkDMhaUnSjkCeJpYLBww3lluflnWlGVVNcVQC0MTuK
         f+2dVSEszIqtMqTlOz5yGKJOnfN1UB3WaToKmitlU63RE5lsKbvd/A8E0eHCutnVVWl0
         kdgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737108952; x=1737713752;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NSGeOswWqTUep3DX2Dkchbn4WoRD6ZXOIbfl/0X97bs=;
        b=Lt9jF/0vdlm1EPuwTHYw1byi+W+r2CAaHLoZkQbjTw++T9WOL4uwdsrHsMMJZo8kLV
         349aX6ClDrm2WKmeHpdgaQFT1f0p9QmDwfE6aA1PcI7CiOu7M9cAq2WoEByhq22yR0hN
         oAROLU5lFw9ZTZdIKrFAZjvQTP0ry6+xggSsTjuAHDoQYyEvaJnhME2u7mJTVQ0nuO/3
         LIm40deTXIWY6o5A01l9D6c8w1AsHANM8Ff2EH5bWIIqFdtpqEvqUSJGtbZZmWkioSPx
         vuwkB65kd7PX9q3O3juYFX7OqB9ciQ4ql1juLCAD4GJV9Z1iwrkCP7RkF2l2+hsn+3CO
         nXwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDWPKI0d38SUgTeNMJ+IFbKCuCt8vUrPA+Bb4J8df0oV/T48OMUxEZq/BQTUs5WRwgefhn033MsHQY@vger.kernel.org
X-Gm-Message-State: AOJu0YzF2eBOsBsopHj1Z+Y+d2rrBa74T2C3HhY9uZ4+RORyWYwHGWvy
	thzDoEEdwOou2qW0piwEKFGKQD0l6qumjvzUOOF4QK8krK7MA+E5ZP/JRQPLYYc=
X-Gm-Gg: ASbGncurd9KOaZfF/Skt9ferfG6vwQsW7gNKzEeS5GRmChzAO4pEXQfTxpPUgbwu83N
	rP/W3UaxOJC+OEUKPX1ZUPvA1z7qRpSF7yYF7LdSwFasK4udvxXBl6ur99FngSR+rMaGMTUNZL2
	umlYiMm/Qdmx27nCbn/T53fjj9CoOtv7X37xnPegSkNcVwFNZNQXAkxx0w1Ms8DXAw5vkZr7sf+
	Y3T3cy74Y6Jpbgl2L0rMTNmS/G9y+WbIXkiGL2COkzEjcqpXURGDl2EoxXOd3m7yuHB8w==
X-Google-Smtp-Source: AGHT+IG/l/zai1zyszaJHPWLtmLgsmMVK0tKqPhRQpbDko4Lin2PTxTY0mByVoFmCxwmZrma9jp6QQ==
X-Received: by 2002:a5d:4243:0:b0:386:2a3b:8aa with SMTP id ffacd0b85a97d-38bf57b3f56mr1433700f8f.37.1737108952542;
        Fri, 17 Jan 2025 02:15:52 -0800 (PST)
Received: from [192.168.0.35] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438904621cdsm28622085e9.27.2025.01.17.02.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jan 2025 02:15:52 -0800 (PST)
Message-ID: <0a6c6586-3dd9-4af9-85f3-376f2788b21a@linaro.org>
Date: Fri, 17 Jan 2025 10:15:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] platform: arm64: add Huawei Matebook E Go EC
 driver
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 hdegoede@redhat.com, ilpo.jarvinen@linux.intel.com, jdelvare@suse.com,
 konradybcio@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@roeck-us.net, platform-driver-x86@vger.kernel.org, robh@kernel.org
References: <65dc7d7f-cee5-4eff-9ab7-153b12be4f26@linaro.org>
 <20250116181532.134250-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250116181532.134250-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 16/01/2025 18:15, Pengyu Luo wrote:
> On Fri, Jan 17, 2025 at 1:31 AM Bryan O'Donoghue <bryan.odonoghue@linaro.org> wrote:
>> On 16/01/2025 11:15, Pengyu Luo wrote:
>>> +
>>> +     guard(mutex)(&ec->lock);
>>> +     i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
>>
>> You should trap the result code of i2c_transfer() and push it up the
>> call stack.
>>
> 
> This EC uses SMBus Protocol, I guess. Qualcomm I2C driver doesn't support
> this though. The response structure define by SMBus I mentioned them above
> (Please also check ACPI specification 13.2.5)

What difference does that make ? The i2c controller itself can return 
error codes via i2c_transfer().

You should trap those error codes and take action if they happen.

> 
> +/*
> + * For rx, data sequences are arranged as
> + * {status, data_len(unreliable), data_seq}
> + */
> 
> So the first byte is status code.
> 
>>> +     usleep_range(2000, 2500); /* have a break, ACPI did this */
>>> +
>>> +     return *resp ? -EIO : 0;
>>
>> If the value @ *resp is non-zero return -EIO ?
>>
>> Why ?
>>
> 
> Mentioned above.

Right, please try to take the result code of i2c_transfer() and if it 
indicates error, transmit that error up the call stack.


> 
>>> +}
>>> +
>>> +/* -------------------------------------------------------------------------- */
>>> +/* Common API */
>>> +
>>> +/**
>>> + * gaokun_ec_read - Read from EC
>>> + * @ec: The gaokun_ec structure
>>> + * @req: The sequence to request
>>> + * @resp_len: The size to read
>>> + * @resp: The buffer to store response sequence
>>> + *
>>> + * This function is used to read data after writing a magic sequence to EC.
>>> + * All EC operations depend on this function.
>>> + *
>>> + * Huawei uses magic sequences everywhere to complete various functions, all
>>> + * these sequences are passed to ECCD(a ACPI method which is quiet similar
>>> + * to gaokun_ec_request), there is no good abstraction to generalize these
>>> + * sequences, so just wrap it for now. Almost all magic sequences are kept
>>> + * in this file.
>>> + *
>>> + * Return: 0 on success or negative error code.
>>> + */
>>> +int gaokun_ec_read(struct gaokun_ec *ec, const u8 *req,
>>> +                size_t resp_len, u8 *resp)
>>> +{
>>> +     return gaokun_ec_request(ec, req, resp_len, resp);
>>> +}
>>> +EXPORT_SYMBOL_GPL(gaokun_ec_read);
>>> +
>>> +/**
>>> + * gaokun_ec_write - Write to EC
>>> + * @ec: The gaokun_ec structure
>>> + * @req: The sequence to request
>>> + *
>>> + * This function has no big difference from gaokun_ec_read. When caller care
>>> + * only write status and no actual data are returned, then use it.
>>> + *
>>> + * Return: 0 on success or negative error code.
>>> + */
>>> +int gaokun_ec_write(struct gaokun_ec *ec, const u8 *req)
>>> +{
>>> +     u8 ec_resp[] = MKRESP(0);
>>> +
>>> +     return gaokun_ec_request(ec, req, sizeof(ec_resp), ec_resp);
>>> +}
>>> +EXPORT_SYMBOL_GPL(gaokun_ec_write);
>>> +
>>> +int gaokun_ec_read_byte(struct gaokun_ec *ec, const u8 *req, u8 *byte)
>>> +{
>>> +     int ret;
>>> +     u8 ec_resp[] = MKRESP(sizeof(*byte));
>>> +
>>> +     ret = gaokun_ec_read(ec, req, sizeof(ec_resp), ec_resp);
>>> +     extr_resp_byte(byte, ec_resp);
>>> +
>>> +     return ret;
>>> +}
>>> +EXPORT_SYMBOL_GPL(gaokun_ec_read_byte);
>>> +
>>> +/**
>>> + * gaokun_ec_register_notify - Register a notifier callback for EC events.
>>> + * @ec: The gaokun_ec structure
>>> + * @nb: Notifier block pointer to register
>>> + *
>>> + * Return: 0 on success or negative error code.
>>> + */
>>> +int gaokun_ec_register_notify(struct gaokun_ec *ec, struct notifier_block *nb)
>>> +{
>>> +     return blocking_notifier_chain_register(&ec->notifier_list, nb);
>>> +}
>>> +EXPORT_SYMBOL_GPL(gaokun_ec_register_notify);
>>> +
>>> +/**
>>> + * gaokun_ec_unregister_notify - Unregister notifier callback for EC events.
>>> + * @ec: The gaokun_ec structure
>>> + * @nb: Notifier block pointer to unregister
>>> + *
>>> + * Unregister a notifier callback that was previously registered with
>>> + * gaokun_ec_register_notify().
>>> + */
>>> +void gaokun_ec_unregister_notify(struct gaokun_ec *ec, struct notifier_block *nb)
>>> +{
>>> +     blocking_notifier_chain_unregister(&ec->notifier_list, nb);
>>> +}
>>> +EXPORT_SYMBOL_GPL(gaokun_ec_unregister_notify);
>>> +
>>> +/* -------------------------------------------------------------------------- */
>>> +/* API for PSY */
>>> +
>>> +/**
>>> + * gaokun_ec_psy_multi_read - Read contiguous registers
>>> + * @ec: The gaokun_ec structure
>>> + * @reg: The start register
>>> + * @resp_len: The number of registers to be read
>>> + * @resp: The buffer to store response sequence
>>> + *
>>> + * Return: 0 on success or negative error code.
>>> + */
>>> +int gaokun_ec_psy_multi_read(struct gaokun_ec *ec, u8 reg,
>>> +                          size_t resp_len, u8 *resp)
>>> +{
>>> +     u8 ec_req[] = MKREQ(0x02, EC_READ, 1, 0);
>>> +     u8 ec_resp[] = MKRESP(1);
>>> +     int i, ret;
>>> +
>>> +     for (i = 0; i < resp_len; ++i, reg++) {
>>> +             refill_req_byte(ec_req, &reg);
>>> +             ret = gaokun_ec_read(ec, ec_req, sizeof(ec_resp), ec_resp);
>>> +             if (ret)
>>> +                     return ret;
>>> +             extr_resp_byte(&resp[i], ec_resp);
>>> +     }
>>> +
>>> +     return 0;
>>> +}
>>> +EXPORT_SYMBOL_GPL(gaokun_ec_psy_multi_read);
>>> +
>>> +/* Smart charge */
>>> +
>>> +/**
>>> + * gaokun_ec_psy_get_smart_charge - Get smart charge data from EC
>>> + * @ec: The gaokun_ec structure
>>> + * @resp: The buffer to store response sequence (mode, delay, start, end)
>>> + *
>>> + * Return: 0 on success or negative error code.
>>> + */
>>> +int gaokun_ec_psy_get_smart_charge(struct gaokun_ec *ec,
>>> +                                u8 resp[GAOKUN_SMART_CHARGE_DATA_SIZE])
>>> +{
>>> +     /* GBCM */
>>> +     u8 ec_req[] = MKREQ(0x02, 0xE4, 0);
>>> +     u8 ec_resp[] = MKRESP(GAOKUN_SMART_CHARGE_DATA_SIZE);
>>> +     int ret;
>>> +
>>> +     ret = gaokun_ec_read(ec, ec_req, sizeof(ec_resp), ec_resp);
>>> +     if (ret)
>>> +             return ret;
>>> +
>>> +     extr_resp(resp, ec_resp, GAOKUN_SMART_CHARGE_DATA_SIZE);
>>> +
>>> +     return 0;
>>> +}
>>> +EXPORT_SYMBOL_GPL(gaokun_ec_psy_get_smart_charge);
>>> +
>>> +static inline bool are_thresholds_valid(u8 start, u8 end)
>>> +{
>>> +     return end != 0 && start <= end && end <= 100;
>>
>> Why 100 ? Still feels like an arbitrary number.
>>
>> Could you add a comment to explain where 100 comes from ?
>>
> 
> You may don't get it. It is just a battery percentage, greater than 100 is
> invalid.

100 meaning maximum capacity, good stuff.

Please use a define with a descriptive name. That way the meaning is 
obvious.

In fact if the name of the function related to battery capacity then the 
meaning of the numbers would be more obvious.

static inline bool validate_battery_threshold_range(u8 start, u8 end) {
	return end != 0 && start <= end && end <= 100;
}

> 
> start: The battery percentage at which charging starts (0-100).
> stop: The battery percentage at which charging stops (1-100).

Or just add this comment directly above the function.

---
bod


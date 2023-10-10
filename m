Return-Path: <devicetree+bounces-7205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C5C7BFB0C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:17:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4F431C20B43
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E57FC19478;
	Tue, 10 Oct 2023 12:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="A8FsNjTX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060DC19464
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:17:24 +0000 (UTC)
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B67B6B8
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:17:23 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-69101022969so4908163b3a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 05:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1696940243; x=1697545043; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bKsq0H0QHqCTR39XhYQAd4r30i5LT0wElncnk9nlAWQ=;
        b=A8FsNjTX5N5T228pMHyRyTyr3FKmc0o6girvqXeO4tYRk5VFuft/9yWSOStOdyvRz/
         nITYR1dy3Kf1H5SSY1W1xfess+lbcBRyOLX4U7QJPZImb+stu4woc1qPuTQi98xl6tTY
         kqr47f0ofei8Kgiu+BD1/7wXfqm3aJ+ZekJ55B9+Il37qUkgDye4KOc/5/1vpyDb1msR
         2In51Ys4hIVu68WcUQLjC4L1jIdfm0dxzcvQtQFznssghYaDp3BG7Ai/zNj0AG9dmFee
         U6kAfqOkTTEePk1Il/5L187QwmAjOwIa6uxC5tk2/BNtRHTe7hNEh5l2tE1+tLizbbAS
         55Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696940243; x=1697545043;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bKsq0H0QHqCTR39XhYQAd4r30i5LT0wElncnk9nlAWQ=;
        b=P8fD7K+pjv+0xn9156g3cFVKzVeV6gif25iYLUmgQ/QktbvLSW1zCCzFncD9Xv/yCA
         1AJ7/Lw+enuKNlnZoac6PHL42PdAPWO0u5HYeZ3eoNL/0waVgx3R22dlN0oSoX+nyi3V
         DIt/MLNW5UPspXRDvApUEPvYydRw1i8hWPsA+ylxb5cu9MnPXS48DfmdpKAC/R/6g/Dm
         1PwBUJ6Gk1vrrDE9C9YYrErImWi4cDNVT2tSW8mU0llz5pVCh3pA4RXx7nzlDRQQdS8f
         Ut/ZAsXjq5UgdURI81YO8hwr2NnT7ZVx3yoyqVQBD3XfcNJYrgrh4akZwI7SpMr7ADV2
         jWsQ==
X-Gm-Message-State: AOJu0Yw+XKVfQM07ejca7i6fmSClhBzvY2ZV5K0utbw+v56J7B5nAkwF
	LV5eMMh2mF+m++jf11GNdDyeQQ==
X-Google-Smtp-Source: AGHT+IEUlWGc7mdwetT4X/g4G+YezcJB76QdtqNNVGdyf3Tx9Wy+OaeCYmbdV/DF+8bkhhKAOGs4aw==
X-Received: by 2002:a05:6300:8003:b0:172:9b19:66b6 with SMTP id an3-20020a056300800300b001729b1966b6mr360575pzc.32.1696940242810;
        Tue, 10 Oct 2023 05:17:22 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:4346:670f:8942:33b? (2403-580d-82f4-0-4346-670f-8942-33b.ip6.aussiebb.net. [2403:580d:82f4:0:4346:670f:8942:33b])
        by smtp.gmail.com with ESMTPSA id e24-20020a62aa18000000b006979f70fdd5sm8083541pff.219.2023.10.10.05.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 05:17:22 -0700 (PDT)
Message-ID: <09a07473-2558-2b05-c9d5-8d439749bfa7@tweaklogic.com>
Date: Tue, 10 Oct 2023 22:47:14 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/2] iio: light: Add support for APDS9306 Light Sensor
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Gazzillo <paul@pgazz.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
References: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
 <20231008154857.24162-3-subhajit.ghosh@tweaklogic.com>
 <ae210957-4a72-24b3-2f11-8d5824041e85@gmail.com>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <ae210957-4a72-24b3-2f11-8d5824041e85@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/10/23 20:15, Matti Vaittinen wrote:

> 
> To my eyes this driver looks nice. Just spotted two minor things.
> 

Thanks Matti. Nice is one nice thing I heard after some time!

>> +    gain_new_closest = iio_find_closest_gain_low(&data->gts, gain_new, &ok);
>> +    if (gain_new_closest < 0) {
>> +        gain_new_closest = iio_gts_get_min_gain(&data->gts);
>> +        if (gain_new_closest < 0)
>> +            return gain_new_closest < 0;
> 
> Returning the truth value on purpose? :)

Nope, it's a bug. I'll fix it.

>> +static int get_device_id_lux_per_count(struct apds9306_data *data)
>> +{
>> +    int ret, part_id;
>> +
>> +    ret = regmap_read(data->regmap, APDS9306_PART_ID, &part_id);
>> +    if (ret)
>> +        return ret;
>> +
>> +    if (part_id == apds9306_part_id_nlux_per_count[0].part_id)
>> +        data->nlux_per_count =
>> +            apds9306_part_id_nlux_per_count[0].nlux_per_count;
>> +    else if (part_id == apds9306_part_id_nlux_per_count[1].part_id)
>> +        data->nlux_per_count =
>> +            apds9306_part_id_nlux_per_count[1].nlux_per_count;
>> +    else
>> +        return -ENXIO;
> 
> I think we should be able to differentiate between the IC variants by DT compatible. (Commented that on bindings patch). Not sure if we need to support cases where the sensor is instantiated without device-tree. I am not super happy when code requires the part-id to be known if we have separate compatibles for variants. Can we in dt-case just print a warning if the part-ID is not what we expect - and proceed assuming the nlux_per_count based on the DT information? (Sometimes we see new variants with same part-IDs - or many part-IDs with no SW changes needed. Hence maintaining the part-ID lists may be tedious). This is just some pondering though, no strong requirements from my side

Yes, I agree with you. The purpose of DT is to provide proper hardware descriptions.
I will throw a warning as well as implement a compatibility match.

Regards,
Subhajit Ghosh



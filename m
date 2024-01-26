Return-Path: <devicetree+bounces-35577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA8583DE34
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 17:01:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1DF71F24A0B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 16:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAC771D55D;
	Fri, 26 Jan 2024 16:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oHi6sI9G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227731D542
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 16:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706284869; cv=none; b=r+WTC/YBUbS06Gf5SGPU1fkgo/sKj7ujr3UgWInnTaoFIj789BGC0FLtRQfFnSEEfNVTI9OAaPsB3KLjHu64soeC6VZ3g8EeGQUbIwIhONSyP2V805I/FQvtG2I/o51zS52UwNrcqD5n9No8so1riI5w09Spvmp38uv820y0OEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706284869; c=relaxed/simple;
	bh=O6eB/dHkDWZSGRpKvzb1DoxNbZqZM2ER4Jj6Chho4MA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tuyV3s7m6loxTdTjhHNviNeKnncgqalFUhfqtwVnfQV7LKIwl6486qDus3EApqMtdBsI/XngmkInFfJ81O7MmqgAIeEXjrrtGzbGlvK0Z/ywJoqhW+cxTZ0gj1ug4SU8P7/xXeaQZb3ohg8DvirpmU5hJ27A4gndWhsKCtTFiCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oHi6sI9G; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40ee895ebccso3785885e9.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 08:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706284864; x=1706889664; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wzaI7e/2MIPP8GvvTStJuTLixLuV/1UG9lwv+B7KQjc=;
        b=oHi6sI9GEFrqksBJ6bUNhcpILOY92eO0o3wmXax74HMsgy2EsMZue8Z02TPD7NoRm2
         RROyqNWdbZ8gBFaJiLU4S8Jsh1YTRaynHSMbkAPidxcGVAZ7InGUUrBuX178qy/iaHZR
         klqkXD3TT7lq8ya1k30fXsbCnIo3Odqq8V38LGdZ3X3dV9e/8XCpy3HjYiEFW68SkQWC
         qUHNjvM6MQqj7HUq3NyokVJjMSBzm+O5e/zYiq1PxgHa/O0YU6lpx82Z4rwdOv6Cm6y6
         /L17Om4FZ2cKdyVQ8bu5e6lu9MuzQujKoml1yyTv7ciiSOWY8PAlq2HhTOyDSM9n7oD/
         QG5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706284864; x=1706889664;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wzaI7e/2MIPP8GvvTStJuTLixLuV/1UG9lwv+B7KQjc=;
        b=GpT4KJXcmpZ/R5mTwT3ovxkUzZs2E7G2B4MHe8nCly50DqsZsS8AWX1fZX4GcwXRQ9
         Xu85eZ8a+OwiWOAKlQv6rjpAMLUb3F8tOcrpMNgDRD/QoACn6c2IOvEpYLg/brljbQMJ
         OQUyoSX/vcMSDQoycwztjMQLeGTcyvX2L0NSpJOLUz8I/AtVfE7XNYv1ISDEsRgktecJ
         a02N+k+RjyovaqX209UClkve6oxyxfSxCYlm5KkWbF9gyMxJ9zfXgulT0B5FgXDHlArr
         zIdEtsEp5QlwAZjH2RTbFgHpYr7PcejzLK09LInSJu/0Tvxj64/XH/36x6hNrxgSDyMb
         MaJA==
X-Gm-Message-State: AOJu0YwvZwnGDYUj79Ne8Eagl+GobmgKUTjMTX3jiseyMOP2fNgf+qaX
	v4iALak1ZcSuyhGLpkVPe9HzIlSBduKKzZ+9Qw9jVe1UXeiQe0fnh7MQ/R2m2G8=
X-Google-Smtp-Source: AGHT+IEam2l6RI5oxnHiolMzwCDGY+WvEEvHjUwyBijkisQS0I9MmljB3+O4QLPl1jFYJdzBr6b6hg==
X-Received: by 2002:a05:600c:695:b0:40e:52de:156f with SMTP id a21-20020a05600c069500b0040e52de156fmr1076477wmn.210.1706284864330;
        Fri, 26 Jan 2024 08:01:04 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id d8-20020a5d6448000000b00337d941604bsm1521341wrw.98.2024.01.26.08.01.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jan 2024 08:01:03 -0800 (PST)
Message-ID: <93ac4474-e6c1-4fc5-a628-ad69de0d484e@linaro.org>
Date: Fri, 26 Jan 2024 16:01:01 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/28] spi: s3c64xx: use bitfield access macros
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org, arnd@arndb.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 alim.akhtar@samsung.com, linux-spi@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arch@vger.kernel.org, andre.draszik@linaro.org,
 peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
 <20240125145007.748295-10-tudor.ambarus@linaro.org>
 <CAPLW+4mDM2aJdPwPRKt9yLtwx5zEHwBr6OSyYbGgZU7w9OiYkg@mail.gmail.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CAPLW+4mDM2aJdPwPRKt9yLtwx5zEHwBr6OSyYbGgZU7w9OiYkg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Sam,

I just noticed that I haven't responded to a question you had.

On 1/25/24 19:50, Sam Protsenko wrote:
> On Thu, Jan 25, 2024 at 8:50 AM Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>>
>> Use the bitfield access macros in order to clean and to make the driver
>> easier to read.
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  drivers/spi/spi-s3c64xx.c | 196 +++++++++++++++++++-------------------
>>  1 file changed, 99 insertions(+), 97 deletions(-)
>>
>> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
>> index 1e44b24f6401..d046810da51f 100644
>> --- a/drivers/spi/spi-s3c64xx.c
>> +++ b/drivers/spi/spi-s3c64xx.c
>> @@ -4,6 +4,7 @@

cut


>> +#define S3C64XX_SPI_MAX_TRAILCNT_MASK          GENMASK(28, 19)

cut

>> +#define S3C64XX_SPI_CS_NSC_CNT_MASK            GENMASK(9, 4)

I was wrong introducing this mask because I can't tell if it applies to
all the versions of the IP. Thus I'll keep S3C64XX_SPI_CS_NSC_CNT_2
defined as (2 << 4) and add the following comment on top of it:

/*

 * S3C64XX_SPI_CS_NSC_CNT_2 is a value into the NCS_TIME_COUNT field. In
newer
 * datasheets this field is defined as GENMASK(9, 4). We don't know if
this mask
 * applies to all the versions of the IP, thus we can't yet define

 * S3C64XX_SPI_CS_NSC_CNT_2 as a value and the register field as a mask.

 */

#define S3C64XX_SPI_CS_NSC_CNT_2                (2 << 4)


cut

>> -#define S3C64XX_SPI_MAX_TRAILCNT       0x3ff
>> -#define S3C64XX_SPI_TRAILCNT_OFF       19
>> -
>> -#define S3C64XX_SPI_TRAILCNT           S3C64XX_SPI_MAX_TRAILCNT
>> -

cut

>> @@ -1091,8 +1094,7 @@ static void s3c64xx_spi_hwinit(struct s3c64xx_spi_driver_data *sdd)
>>
>>         val = readl(regs + S3C64XX_SPI_MODE_CFG);
>>         val &= ~S3C64XX_SPI_MODE_4BURST;
>> -       val &= ~(S3C64XX_SPI_MAX_TRAILCNT << S3C64XX_SPI_TRAILCNT_OFF);
> 
> Doesn't it change the behavior?

No, I don't think it does.

so above we wipe the mask, it's equivalent to:
val &= ~(GENMASK(28, 19))
> 
>> -       val |= (S3C64XX_SPI_TRAILCNT << S3C64XX_SPI_TRAILCNT_OFF);
and above we set the entire mask:
val |= GENMASK(28, 19)

the wipe is not necessary. This can be done in a separate patch of
course, but I considered that if I removed the shift, the value and
replaced them with the mask, I get the liberty of using the mask
directly. I'll split this op in a separate patch (it starts to feel tiring).

I verified the entire patch again, apart of the problem with the wrong
mask for S3C64XX_SPI_PSR_MASK and the problem that I specified with
S3C64XX_SPI_CS_NSC_CNT_MASK everything shall be fine. All the bits
handling shall be equivalent.


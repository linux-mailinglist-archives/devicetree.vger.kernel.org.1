Return-Path: <devicetree+bounces-12427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C647D96C7
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:37:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1AE9D1C20EEA
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0BC118AE5;
	Fri, 27 Oct 2023 11:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eMAmwQkf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DFDBA50
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 11:37:10 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0642210A
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 04:37:08 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507a3b8b113so2866625e87.0
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 04:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698406627; x=1699011427; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=w3s//VVCSpk4dUjpSZEVYFJAipDT2VsjgfuyVu7eSqw=;
        b=eMAmwQkf1Df6WEC/0tWXobeuRNmOaVe2npGsOBD6pugviuaRvTE4081yrMcHMRyxWz
         YtHWmo13vNkV4O0Vlg8zrNMNdu228c6dOFpiAnV71DrbOm7Mf/vT0Pz1p6p6E9hqKAwk
         +A6EBqQlAUQrU3/aAsAf3q0HrGPClME7iBUa8x5Hip8OtoMW52v5BCLSZZZq6CYbw7OH
         1gaOpICi45YVCw0q9NMuxeU2YOf4w083atEPiktbqGtEP30yJzgoabWUkjj5hFAcIwdq
         ZkqDgvolORlxzxWNtwXusNP4hDQP5Sa+afJz/FLm8QYRqpKStiL12kcYgW7WF2WDCbQU
         MtVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698406627; x=1699011427;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w3s//VVCSpk4dUjpSZEVYFJAipDT2VsjgfuyVu7eSqw=;
        b=NQE+IHwtcvyIE/wuEFe/zOWSEfOOetq94vcBtFzdNF/mE/QAXDwcqNMl2Yo0RlXMEY
         pCnmoi8UicwgwthBo28TF0uUVgL1IR0kUiu4zWSBvDKdI03rUyUQOUVnk3TaP1Yplj+N
         Pf+Z5+XZ66n1mZL62rZRpPjurFISG7QmXcHGe+P/IdsP88ALtFyDjjD6qcRSZ7YPTfd3
         jBIX0zH6DYJYvOpXMyiwH+T4pUOepY9e2b1ClVKCIzmopB+V6YMaIDffqAQ26WvHBvgQ
         DfHF6irQ3cZa/aLvZ8e698cXQsr2XbffERJNGWWptsIB/6ILpPQdhYUwTAqAGzv/0dHG
         Iakg==
X-Gm-Message-State: AOJu0Ywn3NF6AGownyxXqRdgES0L1JohzKp0REgYAofdcK7zBpvHPQlw
	cgfgPojmhI2DX/N0EdDAUF+ASQ==
X-Google-Smtp-Source: AGHT+IFP0Av0LvbVxmSsLasFLgn2TYh+EbirpIk81Z59wA56cuYgXr0BwoudfLgruCqDtBb0h5kKZg==
X-Received: by 2002:a05:6512:401d:b0:503:3787:f75a with SMTP id br29-20020a056512401d00b005033787f75amr2079952lfb.62.1698406626704;
        Fri, 27 Oct 2023 04:37:06 -0700 (PDT)
Received: from [192.168.0.22] ([78.10.206.168])
        by smtp.gmail.com with ESMTPSA id j11-20020a05651231cb00b005056c997ed6sm245636lfe.163.2023.10.27.04.37.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 04:37:06 -0700 (PDT)
Message-ID: <9eebec9b-e6fd-4a22-89ea-b434f446e061@linaro.org>
Date: Fri, 27 Oct 2023 13:37:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] i2c: mv64xxx: add an optional bus-reset-gpios
 property
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 gregory.clement@bootlin.com, andi.shyti@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Abel Vesa <abel.vesa@linaro.org>, Mark Brown <broonie@kernel.org>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027033104.1348921-1-chris.packham@alliedtelesis.co.nz>
 <20231027033104.1348921-3-chris.packham@alliedtelesis.co.nz>
 <65911ec0-e073-435f-846a-c5501dd5d3a9@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <65911ec0-e073-435f-846a-c5501dd5d3a9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/10/2023 13:27, Krzysztof Kozlowski wrote:
> On 27/10/2023 05:31, Chris Packham wrote:
>> Some hardware designs have a GPIO used to control the reset of all the
>> devices on and I2C bus. It's not possible for every child node to
>> declare a reset-gpios property as only the first device probed would be
>> able to successfully request it (the others will get -EBUSY). Represent

Cc: Mark,

Also this part is not true. If the bus is non-discoverable, then it is
possible to have reset-gpios in each probed device. You can share GPIOs,
so no problem with -EBUSY at all.

The problem is doing reset:
1. in proper moment for all devices
2. without affecting other devices when one unbinds/remove()

The (2) above is not solveable easy in kernel and we already had nice
talks about it just few days ago:
1. Apple case:
https://social.treehouse.systems/@marcan/111268780311634160

2. my WSA884x:
https://lore.kernel.org/alsa-devel/84f9f1c4-0627-4986-8160-b4ab99469b81@linaro.org/

Last,
I would like to apologize to you Chris. I understand that bringing such
feedback at v5 is not that good. I had plenty of time to say something
earlier, so this is not really professional from my side. I am sorry,
just my brain did not connect all these topics together.

I apologize.

Best regards,
Krzysztof

>> this kind of hardware design by associating the bus-reset-gpios with the
>> parent I2C bus. The reset line will be released prior to the child I2C
>> devices being probed.
>>
>> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
>> ---
>>
>> Notes:
>>     Changes in v5:
>>     - Rename reset-gpios and reset-duration-us to bus-reset-gpios and
>>       bus-reset-duration-us as requested by Wolfram
>>     Changes in v4:
>>     - Add missing gpio/consumer.h
>>     - use fsleep() for enforcing reset-duration
>>     Changes in v3:
>>     - Rename reset-delay to reset-duration
>>     - Use reset-duration-us property to control the reset pulse rather than
>>       delaying after the reset
>>     Changes in v2:
>>     - Add a property to cover the length of delay after releasing the reset
>>       GPIO
>>     - Use dev_err_probe() when requesing the GPIO fails
>>
>>  drivers/i2c/busses/i2c-mv64xxx.c | 16 ++++++++++++++++
>>  1 file changed, 16 insertions(+)
>>
>> diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
>> index efd28bbecf61..6e2762d22e5a 100644
>> --- a/drivers/i2c/busses/i2c-mv64xxx.c
>> +++ b/drivers/i2c/busses/i2c-mv64xxx.c
>> @@ -13,6 +13,7 @@
>>  #include <linux/slab.h>
>>  #include <linux/module.h>
>>  #include <linux/spinlock.h>
>> +#include <linux/gpio/consumer.h>
>>  #include <linux/i2c.h>
>>  #include <linux/interrupt.h>
>>  #include <linux/mv643xx_i2c.h>
>> @@ -160,6 +161,7 @@ struct mv64xxx_i2c_data {
>>  	bool			clk_n_base_0;
>>  	struct i2c_bus_recovery_info	rinfo;
>>  	bool			atomic;
>> +	struct gpio_desc	*reset_gpio;
>>  };
>>  
>>  static struct mv64xxx_i2c_regs mv64xxx_i2c_regs_mv64xxx = {
>> @@ -1036,6 +1038,7 @@ mv64xxx_i2c_probe(struct platform_device *pd)
>>  	struct mv64xxx_i2c_data		*drv_data;
>>  	struct mv64xxx_i2c_pdata	*pdata = dev_get_platdata(&pd->dev);
>>  	struct resource *res;
>> +	u32	reset_duration;
>>  	int	rc;
>>  
>>  	if ((!pdata && !pd->dev.of_node))
>> @@ -1083,6 +1086,14 @@ mv64xxx_i2c_probe(struct platform_device *pd)
>>  	if (drv_data->irq < 0)
>>  		return drv_data->irq;
>>  
>> +	drv_data->reset_gpio = devm_gpiod_get_optional(&pd->dev, "bus-reset", GPIOD_OUT_HIGH);
>> +	if (IS_ERR(drv_data->reset_gpio))
>> +		return dev_err_probe(&pd->dev, PTR_ERR(drv_data->reset_gpio),
>> +				     "Cannot get reset gpio\n");
>> +	rc = device_property_read_u32(&pd->dev, "bus-reset-duration-us", &reset_duration);
>> +	if (rc)
>> +		reset_duration = 1;
> 
> No, this should be solved by core - for entire I2C at minimum. This is
> not specific to this device.



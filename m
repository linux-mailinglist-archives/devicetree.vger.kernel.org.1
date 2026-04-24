Return-Path: <devicetree+bounces-290080-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MiWL6R362kQNAAAu9opvQ
	(envelope-from <devicetree+bounces-290080-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 16:01:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 135E945FEC4
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 16:01:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0E9E0300406E
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 14:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8D6D3DA7E4;
	Fri, 24 Apr 2026 14:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="ZpHkUmLd"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F503BED0C;
	Fri, 24 Apr 2026 14:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777039260; cv=none; b=ggnDITDaTPszaIuLZOvr/PGy4YM/GSA4CdJzHqV4yKLqgBTqMNHZVlo8Q8riEoTLTl8oYlLCQyJYKCNdVB9IU626A6aUJCHG/V46BQW/G/1tSMP0RHKOOyFc8ceSTZC9PDLUgBV+r5euXIQWH9vB+6/MG39YvcX1m3NLeQyEx9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777039260; c=relaxed/simple;
	bh=9pUhrKJcwFra8E+jfRhvbHF2LOR340gxwUJUdLIfuIs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=GRavqqSLgvR7vEo90xbw1vC5lret7xMH+8UfLot0OhtMlfJI+lAr7PmgcvR5NvKrP/9SNuKX5VMidzMTkm5WH0JmuVQBySpy4rky67jOqDcJIRiJ7oi4SNqkIUkf/M2I5It1UIAmZ23MQBeP+3SmZnqKgD7CyvNFhb7NHktsIOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=ZpHkUmLd; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Message-ID: <d81b706e-e703-46fd-b560-08b04fa49f98@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1777039255;
	bh=9pUhrKJcwFra8E+jfRhvbHF2LOR340gxwUJUdLIfuIs=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To;
	b=ZpHkUmLdcMXDWY338GnmSfmcP+yIFuCYhyVpFLFW0EVRCADz2r2F6I3gxWK7n2F94
	 zf3VQC/HKYFmdwULy3kXCe27kGQu19amfQL+y/nOJa3hT+jY1wC9lykgSdv1C/vd8T
	 VEGWxpuHPTqTqnnZjx0vylRhNyF1VyoaWN4KRrB8=
Date: Fri, 24 Apr 2026 16:00:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: linux-kernel-dev@aliel.fr
Subject: Re: [PATCH v4 5/8] thermal: khadas-mcu-fan: Add fan config from
 platform data Add regulator support
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Beniamino Galvani <b.galvani@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
References: <20260421-add-mcu-fan-khadas-vim4-v4-0-447114a28f2d@aliel.fr>
 <20260421-add-mcu-fan-khadas-vim4-v4-5-447114a28f2d@aliel.fr>
 <f057dbd9-5fa7-414f-98f4-1bbb691e2fc7@linaro.org>
Content-Language: en-US
In-Reply-To: <f057dbd9-5fa7-414f-98f4-1bbb691e2fc7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 135E945FEC4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[aliel.fr,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290080-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,kernel.org,baylibre.com,googlemail.com,gmail.com,intel.com,arm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,aliel.fr:email,aliel.fr:dkim,aliel.fr:mid]

Thanks for your review.

On 4/24/26 12:00 PM, Neil Armstrong wrote:
> On 4/21/26 13:49, Ronald Claveau via B4 Relay wrote:
>> From: Ronald Claveau <linux-kernel-dev@aliel.fr>
>>
>> Replace the hardcoded MAX_LEVEL constant and fan register
>> with values read from platform_data (fan_reg, max_level),
>> as new MCUs need different values.
>>
>> Optionally acquire and enable a "fan" regulator supply
>> at probe time and on resume,
>> so boards that gate fan power through a regulator are handled.
>>
>> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
>> ---
>>   drivers/thermal/khadas_mcu_fan.c | 49 ++++++++++++++++++++++++++++++
>> +++++-----
>>   1 file changed, 43 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/thermal/khadas_mcu_fan.c b/drivers/thermal/
>> khadas_mcu_fan.c
>> index d35e5313bea41..24559bf65de46 100644
>> --- a/drivers/thermal/khadas_mcu_fan.c
>> +++ b/drivers/thermal/khadas_mcu_fan.c
>> @@ -13,13 +13,15 @@
>>   #include <linux/regmap.h>
>>   #include <linux/sysfs.h>
>>   #include <linux/thermal.h>
>> -
>> -#define MAX_LEVEL 3
>> +#include <linux/regulator/consumer.h>
>>     struct khadas_mcu_fan_ctx {
>>       struct khadas_mcu *mcu;
>> +    unsigned int fan_reg;
>>       unsigned int level;
>> +    unsigned int max_level;
>>       struct thermal_cooling_device *cdev;
>> +    struct regulator *power;
>>   };
>>     static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
>> @@ -27,8 +29,7 @@ static int khadas_mcu_fan_set_level(struct
>> khadas_mcu_fan_ctx *ctx,
>>   {
>>       int ret;
>>   -    ret = regmap_write(ctx->mcu->regmap,
>> KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
>> -               level);
>> +    ret = regmap_write(ctx->mcu->regmap, ctx->fan_reg, level);
>>       if (ret)
>>           return ret;
>>   @@ -40,7 +41,9 @@ static int khadas_mcu_fan_set_level(struct
>> khadas_mcu_fan_ctx *ctx,
>>   static int khadas_mcu_fan_get_max_state(struct
>> thermal_cooling_device *cdev,
>>                       unsigned long *state)
>>   {
>> -    *state = MAX_LEVEL;
>> +    struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
>> +
>> +    *state = ctx->max_level;
>>         return 0;
>>   }
>> @@ -61,7 +64,7 @@ khadas_mcu_fan_set_cur_state(struct
>> thermal_cooling_device *cdev,
>>   {
>>       struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
>>   -    if (state > MAX_LEVEL)
>> +    if (state > ctx->max_level)
>>           return -EINVAL;
>>         if (state == ctx->level)
>> @@ -83,11 +86,32 @@ static int khadas_mcu_fan_probe(struct
>> platform_device *pdev)
>>       struct device *dev = &pdev->dev;
>>       struct khadas_mcu_fan_ctx *ctx;
>>       int ret;
>> +    const struct khadas_mcu_fan_pdata *pdata =
>> dev_get_platdata(&pdev->dev);
> 
> Move this on top to respect reverse christmas ordering.
> 

Ok I will do that.

>>         ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
>>       if (!ctx)
>>           return -ENOMEM;
>> +
>>       ctx->mcu = mcu;
>> +    ctx->fan_reg   = pdata->fan_reg;
>> +    ctx->max_level = pdata->max_level;
>> +
>> +    ctx->power = devm_regulator_get_optional(dev->parent, "fan");
>> +    if (IS_ERR(ctx->power)) {
>> +        if (PTR_ERR(ctx->power) == -ENODEV)
>> +            ctx->power = NULL;
>> +        else
>> +            return PTR_ERR(ctx->power);
>> +    }
>> +
>> +    if (ctx->power) {
>> +        ret = regulator_enable(ctx->power);
>> +        if (ret) {
>> +            dev_err(dev, "Failed to enable fan power supply: %d\n",
>> ret);
>> +            return ret; +        }
>> +    }
> 
> Or you can request with devm_regulator_get(dev->parent, "fan"); which will
> return a dummy regulator, and then you can just call regulator_enable &
> disable
> and remove all those checks.
> 

Make sense, I'm on it.

>> +
>>       platform_set_drvdata(pdev, ctx);
>>         cdev = devm_thermal_of_cooling_device_register(dev->parent,
>> @@ -124,12 +148,25 @@ static int khadas_mcu_fan_suspend(struct device
>> *dev)
>>         ctx->level = level_save;
>>   +    if (ctx->power) {
>> +        ret = regulator_disable(ctx->power);
>> +        if (ret)
>> +            return ret;
>> +    }
> 
> if (ctx->power)
>     return regulator_disable(ctx->power);
> 
>> +
>>       return 0;
>>   }
>>     static int khadas_mcu_fan_resume(struct device *dev)
>>   {
>>       struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
>> +    int ret;
>> +
>> +    if (ctx->power) {
>> +        ret = regulator_enable(ctx->power);
>> +        if (ret)
>> +            return ret;
>> +    }
>>         return khadas_mcu_fan_set_level(ctx, ctx->level);
>>   }
>>
> 
> Thanks,
> Neil


-- 
Best regards,
Ronald


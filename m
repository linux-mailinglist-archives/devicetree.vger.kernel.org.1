Return-Path: <devicetree+bounces-254290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C93A1D16F66
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:17:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84C9F3010990
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08C9F35CB8D;
	Tue, 13 Jan 2026 07:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f33VSMMz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926262E54A3
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768288625; cv=none; b=ovSjtweZtaurkStIfER0ekLot58/xn6xv42vROJY62SS0hG0q3ziqPgAvZ0Hm5n3k1l3NBS3uHRI1bbv9us4NxCbTZhHXFTul4KG+GGbZnAhuo/cDPTqQW/IZGYkHd9gYPeQxsjT28kkgyUZLXuorbMxtpB43hEEbUjDZXbnakA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768288625; c=relaxed/simple;
	bh=TPsnQcTiXapnciwnTVuEo3q/nDTbVMjHMKFLOq9q0ZA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l9d/wWN1Jr86GI87P9HArFw723IQMCGEHgfgf1dm/YAY9NctCa4L9OtTYQVhi+KnVGsE3zkdmXWjIO/51iR4WY2EmK1nvFOHO7RRaNCbmI/z9XXSbIwuadE/0UZBzauIBMBq7Hl1vhLXOjiysklJ2XiTeKMo7vb3VVBvmn29eDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f33VSMMz; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-81345800791so3668569b3a.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 23:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768288624; x=1768893424; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UvKer4HmMc5hx5FHqiulh9U9Ul3iO4PsRZgPY52JLDQ=;
        b=f33VSMMzLmdZ+YFcQSxVccSpsqXGfuO+Q3tVJahNBQZY/2soPZf8mBrLSiqV/xhNPh
         rK8Vq4z949FLAmP01ujUt7PaS0CHAUbuP1VuRJoE4iQpSTdYQyYkpGnR21gwWJ4q50J2
         l3fMz5UEF0m8ex7zjMT7Es9h4dTUT/XxBqKg/YF7uPYeeAMuGnSJkkqS1RejekU/x+4Y
         dpRTSHhpKz3KgVF3nmGVVHie1ZUgMCNjysBnn3d3bmcWeYWzbTUC06gic4rLZn/BYRXz
         ti+SgDpVAfiL0vHlaQx7b/tCHw2b6Gm+DJNLPLFTVD3Do8eG/L9cUAaHkY6nyoIjBnZn
         hrqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768288624; x=1768893424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UvKer4HmMc5hx5FHqiulh9U9Ul3iO4PsRZgPY52JLDQ=;
        b=GH1yxuMw+fjcQ3WpXXW/5lJdoO8G2HYxVrmN7GSqMzLrHZF4+aV1jaupPHtBnjAnpH
         j9g7EidZhnG54jswK5ekfNJPJVAY4ZIJCiHpBHUoUzKXwElRvGHwl4qkfEquN4+HhGW7
         lL39QQHF/0zy3nCMclZZh9EMyjNphuaP0JkHCYFSoGhfxWkLIHeSYpWmQG+nEimaU7nr
         SEl8jBeSORaMAGAPZ1RAE2oIG0fVJUCKHoUykExa7V++QegijbsFzHTkXlyTgM6tscPr
         Mk9eq7SbONQTaDcGmVTJa5TQhCdejf5bew8A2z2i22pUDdEnAdelxdJ0ND+dIDfvD6Wy
         F44Q==
X-Forwarded-Encrypted: i=1; AJvYcCVA8fd/Xhe21b3ClB+YmZHt687ZatC0Lb/49Rs4QNihL9k0SIZ/MNoZyUU7lVvlDrPZJ25XgSKOSvG8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqzde5HDZbVOm3e17pOUjeXRKryA0pUVoVWJELLjL+q86cR6I1
	GbVGakXA2+92cCLBg8rb+0NH0FfQCzH6RoMuBZZXvF0rouqsDYepZE2T
X-Gm-Gg: AY/fxX5vhbt8fiirjb+Tl5fnX/4ftKibJ7PZz+8oG9qfPyLCa+TuAJ4cK0EI2aSLutg
	uHRA/RUWkk949bKYt6SoYcyjlYGGAzdU+PRBAZQDnJ/lN/cemys6QJLY1ZDP5h/AIzudG0D+BHB
	2hTH9Y/vb0KMDu/29pGdVIAo/dDqwII/6Y0e0fvuvQKbdixY7NUcglQcQgqQZ8QSoeHq+h2v13C
	uzPmk+8/BNO00vGMRwVCvVESAh3XOYzdXI3ImoHUdSVGhKMy4059PsPn5txZxGm4fcsUttBv8Ew
	cjz0Cp21W9KWZ+JANb4iRy8uDq60dYWBikMew0L0BySnxjzWWeAgcrSNGrHULADail36XXPVWWk
	6wi9BC5iK9W87TE06oTOlasGMZj0+YXVf9uuuLTM4xqgXArZ8s5v8mmdOHqQYUgEQtmrsdKgGPo
	GCWc/9eB4pO5w6it9qKNKGAToJBdv9tG3z/Q==
X-Google-Smtp-Source: AGHT+IGycyqSgqnKXtUwOpZwa1uFrCeCy1ot/yCOkWRUaczihN0aqz+rrtY+DvAGGlu2iBfjLIOe4g==
X-Received: by 2002:a05:6300:210d:b0:364:be7:6fe9 with SMTP id adf61e73a8af0-3898f8cbb93mr15641886637.32.1768288623537;
        Mon, 12 Jan 2026 23:17:03 -0800 (PST)
Received: from [172.16.20.12] ([136.226.253.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cc8d2952dsm6490255a12.17.2026.01.12.23.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 23:17:03 -0800 (PST)
Message-ID: <1fedb7d7-3a30-4f0f-961f-09613f2a95d0@gmail.com>
Date: Tue, 13 Jan 2026 12:47:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] backlight: gpio: add support for multiple GPIOs
 for backlight control
To: Daniel Thompson <daniel@riscstar.com>
Cc: lee@kernel.org, danielt@kernel.org, jingoohan1@gmail.com, deller@gmx.de,
 pavel@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260105085120.230862-1-tessolveupstream@gmail.com>
 <20260105085120.230862-3-tessolveupstream@gmail.com>
 <aVuN7zVUWJ1qsVh8@aspen.lan>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <aVuN7zVUWJ1qsVh8@aspen.lan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 05-01-2026 15:39, Daniel Thompson wrote:
> On Mon, Jan 05, 2026 at 02:21:20PM +0530, Sudarshan Shetty wrote:
>> Extend the gpio-backlight driver to handle multiple GPIOs instead of a
>> single one. This allows panels that require driving several enable pins
>> to be controlled by the backlight framework.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>>  drivers/video/backlight/gpio_backlight.c | 61 +++++++++++++++++-------
>>  1 file changed, 45 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/video/backlight/gpio_backlight.c b/drivers/video/backlight/gpio_backlight.c
>> index 728a546904b0..037e1c111e48 100644
>> --- a/drivers/video/backlight/gpio_backlight.c
>> +++ b/drivers/video/backlight/gpio_backlight.c
>> @@ -17,14 +17,18 @@
>>
>>  struct gpio_backlight {
>>  	struct device *dev;
>> -	struct gpio_desc *gpiod;
>> +	struct gpio_desc **gpiods;
>> +	unsigned int num_gpios;
> 
> Why not use struct gpio_descs for this?
> 
> Once you do that, then most of the gbl->num_gpios loops can be replaced with
> calls to the array based accessors.
>

Based on your feedback, I have updated the implementation to use
struct gpio_descs and array-based accessors, as recommended like
below:

git diff drivers/video/backlight/gpio_backlight.c
diff --git a/drivers/video/backlight/gpio_backlight.c b/drivers/video/backlight/gpio_backlight.c
index 037e1c111e48..e99d7a9dc670 100644
--- a/drivers/video/backlight/gpio_backlight.c
+++ b/drivers/video/backlight/gpio_backlight.c
@@ -14,22 +14,37 @@
 #include <linux/platform_device.h>
 #include <linux/property.h>
 #include <linux/slab.h>
+#include <linux/bitmap.h>

 struct gpio_backlight {
        struct device *dev;
-       struct gpio_desc **gpiods;
+       struct gpio_descs *gpiods;
        unsigned int num_gpios;
 };

 static int gpio_backlight_update_status(struct backlight_device *bl)
 {
        struct gpio_backlight *gbl = bl_get_data(bl);
-       unsigned int i;
+       unsigned int n = gbl->num_gpios;
        int br = backlight_get_brightness(bl);
+       unsigned long *value_bitmap;
+       int words = BITS_TO_LONGS(n);
+
+       value_bitmap = kcalloc(words, sizeof(unsigned long), GFP_KERNEL);
+       if (!value_bitmap)
+               return -ENOMEM;
+
+       if (br)
+               bitmap_fill(value_bitmap, n);
+       else
+               bitmap_zero(value_bitmap, n);

-       for (i = 0; i < gbl->num_gpios; i++)
-               gpiod_set_value_cansleep(gbl->gpiods[i], br);
+       gpiod_set_array_value_cansleep(gbl->gpiods->ndescs,
+                                  gbl->gpiods->desc,
+                                  gbl->gpiods->info,
+                                  value_bitmap);

+       kfree(value_bitmap);
        return 0;
 }

@@ -67,22 +82,18 @@ static int gpio_backlight_probe(struct platform_device *pdev)

        def_value = device_property_read_bool(dev, "default-on");

-       gbl->num_gpios = gpiod_count(dev, NULL);
+       gbl->gpiods = devm_gpiod_get_array(dev, NULL, GPIOD_ASIS);
+       if (IS_ERR(gbl->gpiods)) {
+               if (PTR_ERR(gbl->gpiods) == -ENODEV)
+                       return dev_err_probe(dev, -EINVAL,
+                       "The gpios parameter is missing or invalid\n");
+               return PTR_ERR(gbl->gpiods);
+       }
+
+       gbl->num_gpios = gbl->gpiods->ndescs;
        if (gbl->num_gpios == 0)
                return dev_err_probe(dev, -EINVAL,
                        "The gpios parameter is missing or invalid\n");
-       gbl->gpiods = devm_kcalloc(dev, gbl->num_gpios, sizeof(*gbl->gpiods),
-                                  GFP_KERNEL);
-       if (!gbl->gpiods)
-               return -ENOMEM;
-
-       for (i = 0; i < gbl->num_gpios; i++) {
-               gbl->gpiods[i] =
-                       devm_gpiod_get_index(dev, NULL, i, GPIOD_ASIS);
-               if (IS_ERR(gbl->gpiods[i]))
-                       return dev_err_probe(dev, PTR_ERR(gbl->gpiods[i]),
-                                       "Failed to get GPIO at index %u\n", i);
-       }

        memset(&props, 0, sizeof(props));
        props.type = BACKLIGHT_RAW;
@@ -101,14 +112,26 @@ static int gpio_backlight_probe(struct platform_device *pdev)
                                                    : BACKLIGHT_POWER_OFF;
        } else {
                bool all_high = true;
-
-               for (i = 0; i < gbl->num_gpios; i++) {
-                       if (gpiod_get_value_cansleep(gbl->gpiods[i]) != 0) {
-                               all_high = false;
-                               break;
-                       }
+               unsigned long *value_bitmap;
+               int words = BITS_TO_LONGS(gbl->num_gpios);
+
+               value_bitmap = kcalloc(words, sizeof(unsigned long), GFP_KERNEL);
+               if (!value_bitmap)
+                       return -ENOMEM;
+
+               ret = gpiod_get_array_value_cansleep(gbl->gpiods->ndescs,
+                                           gbl->gpiods->desc,
+                                           gbl->gpiods->info,
+                                           value_bitmap);
+               if (ret) {
+                       kfree(value_bitmap);
+                       return dev_err_probe(dev, ret,
+                                           "failed to read initial gpio values\n");
                }

+               all_high = bitmap_full(value_bitmap, gbl->num_gpios);
+
+               kfree(value_bitmap);
                bl->props.power =
                        all_high ? BACKLIGHT_POWER_ON :  BACKLIGHT_POWER_OFF;
        }
@@ -118,7 +141,7 @@ static int gpio_backlight_probe(struct platform_device *pdev)
        init_brightness = backlight_get_brightness(bl);

        for (i = 0; i < gbl->num_gpios; i++) {
-               ret = gpiod_direction_output(gbl->gpiods[i], init_brightness);
+               ret = gpiod_direction_output(gbl->gpiods->desc[i], init_brightness);
                if (ret)
                        return dev_err_probe(dev, ret,
                                        "failed to set gpio %u direction\n",

Could you please share your thoughts on whether this approach 
aligns with your expectations?
 
> 
>>  };
>>
>>  static int gpio_backlight_update_status(struct backlight_device *bl)
>>  {
>>  	struct gpio_backlight *gbl = bl_get_data(bl);
>> +	unsigned int i;
>> +	int br = backlight_get_brightness(bl);
>>
>> -	gpiod_set_value_cansleep(gbl->gpiod, backlight_get_brightness(bl));
>> +	for (i = 0; i < gbl->num_gpios; i++)
>> +		gpiod_set_value_cansleep(gbl->gpiods[i], br);
>>
>>  	return 0;
>>  }
>> @@ -52,6 +56,7 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>>  	struct backlight_device *bl;
>>  	struct gpio_backlight *gbl;
>>  	int ret, init_brightness, def_value;
>> +	unsigned int i;
>>
>>  	gbl = devm_kzalloc(dev, sizeof(*gbl), GFP_KERNEL);
>>  	if (gbl == NULL)
>> @@ -62,10 +67,22 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>>
>>  	def_value = device_property_read_bool(dev, "default-on");
>>
>> -	gbl->gpiod = devm_gpiod_get(dev, NULL, GPIOD_ASIS);
>> -	if (IS_ERR(gbl->gpiod))
>> -		return dev_err_probe(dev, PTR_ERR(gbl->gpiod),
>> -				     "The gpios parameter is missing or invalid\n");
>> +	gbl->num_gpios = gpiod_count(dev, NULL);
>> +	if (gbl->num_gpios == 0)
>> +		return dev_err_probe(dev, -EINVAL,
>> +			"The gpios parameter is missing or invalid\n");
>> +	gbl->gpiods = devm_kcalloc(dev, gbl->num_gpios, sizeof(*gbl->gpiods),
>> +				   GFP_KERNEL);
>> +	if (!gbl->gpiods)
>> +		return -ENOMEM;
> 
> This is definitely easier if you simply use devm_get_array().
> 
> 
>> +
>> +	for (i = 0; i < gbl->num_gpios; i++) {
>> +		gbl->gpiods[i] =
>> +			devm_gpiod_get_index(dev, NULL, i, GPIOD_ASIS);
>> +		if (IS_ERR(gbl->gpiods[i]))
>> +			return dev_err_probe(dev, PTR_ERR(gbl->gpiods[i]),
>> +					"Failed to get GPIO at index %u\n", i);
>> +	}
>>
>>  	memset(&props, 0, sizeof(props));
>>  	props.type = BACKLIGHT_RAW;
>> @@ -78,22 +95,34 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>>  	}
>>
>>  	/* Set the initial power state */
>> -	if (!of_node || !of_node->phandle)
>> +	if (!of_node || !of_node->phandle) {
>>  		/* Not booted with device tree or no phandle link to the node */
>>  		bl->props.power = def_value ? BACKLIGHT_POWER_ON
>> -					    : BACKLIGHT_POWER_OFF;
>> -	else if (gpiod_get_value_cansleep(gbl->gpiod) == 0)
>> -		bl->props.power = BACKLIGHT_POWER_OFF;
>> -	else
>> -		bl->props.power = BACKLIGHT_POWER_ON;
>> +						    : BACKLIGHT_POWER_OFF;
>> +	} else {
>> +		bool all_high = true;
>> +
>> +		for (i = 0; i < gbl->num_gpios; i++) {
>> +			if (gpiod_get_value_cansleep(gbl->gpiods[i]) != 0) {
> 
> Why is there a != here?
> 
> 
>> +				all_high = false;
>> +				break;
>> +			}
>> +		}
>> +
>> +		bl->props.power =
>> +			all_high ? BACKLIGHT_POWER_ON :  BACKLIGHT_POWER_OFF;
>> +	}
>>
>>  	bl->props.brightness = 1;
>>
>>  	init_brightness = backlight_get_brightness(bl);
>> -	ret = gpiod_direction_output(gbl->gpiod, init_brightness);
>> -	if (ret) {
>> -		dev_err(dev, "failed to set initial brightness\n");
>> -		return ret;
>> +
>> +	for (i = 0; i < gbl->num_gpios; i++) {
>> +		ret = gpiod_direction_output(gbl->gpiods[i], init_brightness);
>> +		if (ret)
>> +			return dev_err_probe(dev, ret,
>> +					"failed to set gpio %u direction\n",
>> +					i);
>>  	}
>>
>>  	platform_set_drvdata(pdev, bl);
> 
> 
> Daniel.



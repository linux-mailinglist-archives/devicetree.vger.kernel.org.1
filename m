Return-Path: <devicetree+bounces-41747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 745EF854F5A
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 18:04:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 123181F21344
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 17:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED3C160B9C;
	Wed, 14 Feb 2024 17:04:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E647760868
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 17:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707930255; cv=none; b=ZMjxkxR7hCX35xp0YHZeaY7RZvYZbK7JQdfxW8kysoWE7xX0Sap5+ReutqrSsWt3kcQ5QrSj+FW7uD6mJuHvPEWBtVnIHXCRkiHXl0WI8s9qHXjbsOZUuAW69C6nfvVOrFEu5zZ6uSBHd5FAanEN2n4AO4nYhQ+q/5HPOY1vBpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707930255; c=relaxed/simple;
	bh=d+4di5zjnt67CQW+DmH0gAWSNPbmb8WmycElMAQJIW0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=sCGOaZDUbwvwpnCJOMI0eeySZY2Gs/q/nt2QNe/NE17oH1I4TeaJQCtwObMyY6iomTuS6o8aS6rlO0ScCxvFwaRJO+fTCWbwMDmQwUYGtLQiCHcfpA4L1XVkIE2b7HWT7i7XcmKCl+UtaPBT5ZdIb+C0V5gad6paZi78uLebyPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6de3141f041so12085b3a.0
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 09:04:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707930252; x=1708535052;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rNhav+7L2/K8KIa8PybW7vaELkvxb4l6BfkxMKSsrw=;
        b=AFUzmi684fM5gvZa+Y1eiE9ad+aIzwEZp4iLVHjw46OgF3nBFgl+8cvimqn/UVAPyN
         GP2DcVcLZewcd1+Lb46jmeJchEqEy2a46v+7B/0uVM12ByLfoXS5IORhdIeV6oENDpZE
         42t7D82x3PqB0sgALAaAFFWyqaUDdG88VnQuZyMz4+5CjCqnJiTKXTqsSBI//9tRLMVW
         TikPI455ZZyiFtSUaeTxtRyySGjZSMqBt/JwBBMiQ3kUQFwAKhrH6nnqYc/eSOUShaf/
         k+3W0d1cO+/nzu4E96w+J5jJNiwRVhH5KcH748Y+nyV5RJzUTghkE58brB8wHM/xVOLd
         HMSg==
X-Forwarded-Encrypted: i=1; AJvYcCU+urrLSvcxTS0EpXMZOOsS8jpW8rfNEieyjAlmVQiqPW8ELRXFaNUrmXFAd+faob5UWAVADyAA21I34WySsz/FMFTyjWANDoiIiA==
X-Gm-Message-State: AOJu0YzuRvD5TH4jlT8jyn/6CRKhONLIMOWrK4Zokueqi6p1PFE9lw81
	luLlWp3ceSqxH91uTBiDHCMvx0r6vLsHkI+YaPAk1vUtHqt88YUm+psPk6W36wk=
X-Google-Smtp-Source: AGHT+IFsv4N1m6Boc7Pwj7tvZOfnK773MPq2SjotlEj2cK62z5QH3wAcvbwi5jo/bYE2q6zQdf8oJA==
X-Received: by 2002:a05:6a00:2d88:b0:6de:209c:3228 with SMTP id fb8-20020a056a002d8800b006de209c3228mr3775946pfb.6.1707930252034;
        Wed, 14 Feb 2024 09:04:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWJVqfd3ZBC3+g61zbA6HBTnD5Z9te/X4KeI6sQ3exqNSyqiArKAuV6RrMShSBtA7aE+oEE1FeJ8XFiq7yuOqrwNh80fODw/mufUf254/czZyN6qcrvx7uhUT1Lary/1zGH8Lm79yKixhIlavYRfe+oDsyc+lkvDu3vtlWJpM6xVdvX6QCw2ATiy0FG/0CcjhetkWPk5tRSlnlL3NqpWcJqbOE1sY4tgb5TUr5btH2/pGmbTwy/ogx3S9VsVZLJkrsMGur4v0HqIc55SETLCGuzL0Xd57gfO6hcdmVs6K+vw1kXkE/82qDaOSDx3yweNe8iL9zt/MUAhk2UMhMnEGBv9senfEpuq3PKl7imMLZLJ02u9KOMY3GcGsJxzVeyrqJfPML99O7gP0VfAp/dKj4ESnPNbT6F54FSF8Wdtt0EN4UzgI54T8QMEVol5fnDVxRw+PQL2C7ejrAaFXbQ+th792TGBxTsSX0Xszvj56mg0EfeB/uW9JrN+f4Ibc5q8mqGUCwFvzjP/YGcEghaQRPbp7pKmO++FrLs/AlM4PXSwMZJiyfgAxLW07kXbSMoWgkd6sZ5aqvq9g==
Received: from localhost (71-212-63-227.tukw.qwest.net. [71.212.63.227])
        by smtp.gmail.com with ESMTPSA id r19-20020aa78b93000000b006e02cdad499sm9842044pfd.99.2024.02.14.09.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 09:04:10 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 jpanis@baylibre.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, lgirdwood@gmail.com, broonie@kernel.org,
 linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, nm@ti.com, vigneshr@ti.com,
 kristo@kernel.org, Bhargav Raviprakash <bhargav.r@ltts.com>
Subject: Re: [RESEND PATCH v1 04/13] mfd: tps6594-i2c: Add TI TPS65224 PMIC I2C
In-Reply-To: <20240208105343.1212902-5-bhargav.r@ltts.com>
References: <20240208105343.1212902-1-bhargav.r@ltts.com>
 <20240208105343.1212902-5-bhargav.r@ltts.com>
Date: Wed, 14 Feb 2024 09:04:10 -0800
Message-ID: <7hplwz565x.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hello,

Bhargav Raviprakash <bhargav.r@ltts.com> writes:

> Add support for TPS65224 PMIC in TPS6594's I2C driver which has
> significant functional overlap.
>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>

Thanks for the patch adding TPS65224 support

[...]

> @@ -216,15 +217,18 @@ static int tps6594_i2c_probe(struct i2c_client *client)
>  	tps->reg = client->addr;
>  	tps->irq = client->irq;
>  
> -	tps->regmap = devm_regmap_init(dev, NULL, client, &tps6594_i2c_regmap_config);
> -	if (IS_ERR(tps->regmap))
> -		return dev_err_probe(dev, PTR_ERR(tps->regmap), "Failed to init regmap\n");
> -
>  	match = of_match_device(tps6594_i2c_of_match_table, dev);
>  	if (!match)
>  		return dev_err_probe(dev, -EINVAL, "Failed to find matching chip ID\n");
>  	tps->chip_id = (unsigned long)match->data;
>  
> +	if (tps->chip_id == TPS65224)
> +		tps6594_i2c_regmap_config.volatile_table = &tps65224_volatile_table;

minor nit: for chip-specific differnces like this, rather than do this
kind of "if" check here to update the regmap_config, instead use the
compatible match data have a separate i2c_regmap_config match table for
tps65224.

Kevin


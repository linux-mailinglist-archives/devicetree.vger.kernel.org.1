Return-Path: <devicetree+bounces-95073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 680D0957FB1
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 09:32:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 258F1283EFF
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 07:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E131156879;
	Tue, 20 Aug 2024 07:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="mxqQwMDK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6F5146586
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 07:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724139157; cv=none; b=Xh0ToySRmAKB6NZROYjpvn8Jk+u0aIWIm8B6473o8gLJ4lXlWVgUwvtWJxEslOpucrHFN+/lDc8+k4Oaq/6JjNFw7V4lsK3UcWcCokAk4+f/krpR58gHC23ikD1XRazJu0yZqGmVgkkmBvEi3hlvVDT0mMcPP2INClq0garGmWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724139157; c=relaxed/simple;
	bh=T37XdcPAhagA4eDYDownsf2XsJs98bfRZyVq01bf9Dc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E4E0kkxBManYBzvl9JOxe1HXPsutYWVCkw7vaFex7OpxXoRLDo+h3j2xEpsLESAdYffN+VEx6W0EQoLS8jfWTGudqabTStF7IrkdtFW2Va06SMfsirL2BpMtQABEZ2Q+L0JFP5m7bZvB1caodYxohcdtTFvZv77Aodp7vu0q4Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=mxqQwMDK; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a80eab3945eso521058466b.1
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 00:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724139153; x=1724743953; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KgM+QzWQcZ2DUZR7KveS9LeXc/9kicV430vfS4VSRd8=;
        b=mxqQwMDKDGJtlLjiZ0RXn9FN4PTZxtv2pBIBAv63tyosqE3FmvqCNe2+tdzS7YjRxu
         UJWwYs3HX6K9cj3TzyMndluDAxfEqi6cMg1sYzsXdUz2tv8P9EyDWkyH/p1c3ZXVhwST
         1TSImBRFTu7/d4K1vwVIfqMaaTMASDbzK5zxq6bZ4OvBUFlPo1eObBTwPerp/LsUbrbW
         TI6XjM7iBXgz8b7Iz4hXAVcpKAwFXcb/kkgpz1Q4xu9rNn+Lo3O5W2o7KG36U6hFxVpf
         wR1ZFxpAlvOsKernWb1pBiaUGFqfCqH6JXS6awIMF41zr6nfuuulaKOL4iEh9V54tNen
         vs3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724139153; x=1724743953;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KgM+QzWQcZ2DUZR7KveS9LeXc/9kicV430vfS4VSRd8=;
        b=M0RYhpJwy7NbtM1yMN3DjjsLjMX3cRpsAYfn7yHrkaflK4uVEFOmsiqIl5VO2nvG8i
         IxinIqVO13RizWqhwVFM1SMxpRzWrc8qOpSwJ0KF+0CqE6s2cr7Jx9hT9dhxcKH3ngQG
         f0fp/J62qEJZbicZori7riQTys99w9XFE05fi6RzIo3nGq2HfJJDZvxxbqBKOj4oPmZr
         30u8pku5PJlbs74be3w+qEZfHksHe0eIIZGJ0dul/M9PtbizcZSnD4zlN7Lo+6GvJDo2
         qhQjGrPeI94lVku+bsm9jCUWqxnTvWLFNZQMUZ8LPnfR5gDoM/wFR9IvgVRpf9EOH790
         Wb7g==
X-Forwarded-Encrypted: i=1; AJvYcCXRKWvOdjLfDFStjMJVH9V8zWp1iRX1IJvDUJz5F0TMovzZgBizh5bq3VcMKFU6YyuClxzJhd5FbspC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy12QHD8krtNQPQ5o/KsIhPydO8VQGMnHRw/1YM4Uh5HnnSRxUJ
	RH3UyhCUbQxL3YUTli4jTH6PtHT+utzvRaQ0fcPLU16vKM5LQ3Ezdy3wO1U2ah8=
X-Google-Smtp-Source: AGHT+IHkyNt7DNdr1FwUFXM1w0JBcq+qGUSMD1P8jHKB+jsefPksVAXH7weJcswaTpOC3d6flO3v/w==
X-Received: by 2002:a17:907:c7c5:b0:a7d:26ff:aeb0 with SMTP id a640c23a62f3a-a8392952665mr895469166b.30.1724139152450;
        Tue, 20 Aug 2024 00:32:32 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83839471c0sm726532466b.182.2024.08.20.00.32.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 00:32:32 -0700 (PDT)
Message-ID: <96265c60-5b16-4a02-a991-ac0e06f7baf3@tuxon.dev>
Date: Tue, 20 Aug 2024 10:32:29 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/11] i2c: riic: Add support for fast mode plus
Content-Language: en-US
To: Andi Shyti <andi.shyti@kernel.org>
Cc: chris.brandt@renesas.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 p.zabel@pengutronix.de, wsa+renesas@sang-engineering.com,
 linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240819102348.1592171-1-claudiu.beznea.uj@bp.renesas.com>
 <20240819102348.1592171-9-claudiu.beznea.uj@bp.renesas.com>
 <hu4yt2a7ipxrqd7ciqqyg4izei2dr7yerpgf7j53quepxj4ed6@gzlv7l3etpqb>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <hu4yt2a7ipxrqd7ciqqyg4izei2dr7yerpgf7j53quepxj4ed6@gzlv7l3etpqb>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Andi,

On 19.08.2024 23:12, Andi Shyti wrote:
> Hi Claudiu,
> 
> ...
> 
>>  struct riic_dev {
>> @@ -311,11 +315,14 @@ static int riic_init_hw(struct riic_dev *riic)
>>  	int total_ticks, cks, brl, brh;
>>  	struct i2c_timings *t = &riic->i2c_t;
>>  	struct device *dev = riic->adapter.dev.parent;
>> +	const struct riic_of_data *info = riic->info;
> 
> Because you are only using info->fast_mode_plus, perhaps you can
> directly take:
> 
> 	fast_mode_plus = riic->info->fast_mode_plus;
> 
> and you make it even more compact.
> 
>>  
>> -	if (t->bus_freq_hz > I2C_MAX_FAST_MODE_FREQ) {
>> +	if ((!info->fast_mode_plus && t->bus_freq_hz > I2C_MAX_FAST_MODE_FREQ) ||
>> +	    (info->fast_mode_plus && t->bus_freq_hz > I2C_MAX_FAST_MODE_PLUS_FREQ)) {
>>  		dev_err(&riic->adapter.dev,
>> -			"unsupported bus speed (%dHz). %d max\n",
>> -			t->bus_freq_hz, I2C_MAX_FAST_MODE_FREQ);
>> +			"unsupported bus speed (%dHz). %d max\n", t->bus_freq_hz,
> 
> super nitpick: can you please put t->bus_freq_hz on a new line,
> it looks better to either have everything put in columns or not.
> 
>> +			info->fast_mode_plus ? I2C_MAX_FAST_MODE_PLUS_FREQ :
>> +			I2C_MAX_FAST_MODE_FREQ);
> 
> another super-nitpick: can you please align
> I2C_MAX_FAST_MODE_PLUS_FREQ with I2C_MAX_FAST_MODE_FREQ? It makes
> more clear that there is a "? ... :" statement.

I'll adjust everything as suggested.

Thank you,
Claudiu Beznea

> 
> Thanks,
> Andi
> 
>>  		return -EINVAL;
>>  	}


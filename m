Return-Path: <devicetree+bounces-74881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C05C2904DCA
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:15:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BF761F219A5
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 08:15:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C2A216C852;
	Wed, 12 Jun 2024 08:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NI1FLGzG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A05168C33
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 08:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718180125; cv=none; b=ZjpgqZkDwTei8ogr4I6EZKlDihIahcp82f0TGQ+aLA6zbqk5UHuzu/IK8H7frvZhkPaHDajIl2yYNd0c3EvRto4MKrpyiQ6rP1Dm0eRh61KVU7MhDhwzhqcg1AIK+EfFlbfPP3fniqtIuXFAuleiY1rTWkSBbYDkHRLQdzLP0gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718180125; c=relaxed/simple;
	bh=8ZjoDG6AdLp9DrAUpZbOs5O/3KdItU+ylOPmYLZXOLc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=WhX58jisYFLfIDo95kUSpG8AM9YfPMIO2kHbVzbViJWguUQJaOzoYuETVyZMDGVwWhSQKz7VXhaxq9Z1QYFEbXRYqY3KBRoAVrycevtOr+4zN+Gv/qmQq4OFtUdsqotVvsqJh2EC/RNFvJQDTl9E5pgzzAyUnipmZ+1PCqZD7pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NI1FLGzG; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52bc274f438so2690391e87.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 01:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718180120; x=1718784920; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=2i7JgKL6b8AoADzVvoe4uoGCOL76aOnzRK1ZmUzoPt0=;
        b=NI1FLGzGksABEF/A5IBK52wMjY8CJyqLkjnvtJqyTn1DjdlJFJ6KFV165lA0TQlZCv
         dmKJRZijKHoGLZomhpGjajW971W9l6spnzlf9ilPYil6T0MtMCfWs8inCBRw8M8Cb4D3
         RCMUdBvRbGuhhHlZ8xrMVQAxNL4shbaI2fRIiSsvREjGy5XZZmQNHR5RFnbpZZJeuRhA
         la3G5K9mgX/QAU2tITpaSWHDgunqQYwFhnF6JCekGSy6sRmQFU0CLIMdwW4ka/kGrWZy
         7+UdM40q3rSCf3FVv9L0QXRi+kEfBhPf4uPhzWDDwJFsO23iwshm9wF4ORkshpcsEg7H
         Bg3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718180120; x=1718784920;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2i7JgKL6b8AoADzVvoe4uoGCOL76aOnzRK1ZmUzoPt0=;
        b=rt+Bmg3CV3WYVln1q6NODZkIhfJjU+Aurywya47u5nkF1gklGU8qKp3vnv5vz1AqOp
         ZhJo64mwOjYcGHHsxGqy383wOl72E/dEuJKQ6Lz/Bqz6Og8YiF1+ehZsroZgvUxplXs9
         Ir979u9wEmUk8/EBLQ3Ba8wnqULR5Du6Cz1G7vlXVkKCgNc1G900DbLkYktHNa+JZs/g
         9Pd47QdbSvebvs0rp6bZ+RHcwCOfJBiiPYC0L+E/aKAkefLLjp2gdpzja3oKPmlNxqyx
         Vf1cw1pp+mw4tFg1XzYuMLMCLctHjXUfkwtpB8uDiy4FjU63YEHTNTkJb/ua+dz1/yaN
         IvmA==
X-Forwarded-Encrypted: i=1; AJvYcCUDVYXTkDNVDILKaKehe0kA98zSykqk7wolJwQlnUl9REZYM8JeLMJjuJpKhonci9SJ/c0xWnNiR5fZAOgH0F5Jiphc2HfKWlm78Q==
X-Gm-Message-State: AOJu0YwM0YNHkXgQsuB+qQenpMWNtyU8pLV642YfH1/849xLeC77R7+u
	Q8pFajBC79MPpuyz0N+c3qzsHci2JlUWk3y4byl7+EkdsWmoRKGoQuDA9I1gX3+izrjr58qTWdV
	k
X-Google-Smtp-Source: AGHT+IGNH0ntu3rGfl1MqkI2eXzc0qzg5Mxlmb5NxjjgXhC4jOBw5TLIubZnIB6RoLfSBwtPdwuHiA==
X-Received: by 2002:a2e:7c19:0:b0:2eb:d924:43fb with SMTP id 38308e7fff4ca-2ebfc92c231mr6922271fa.41.1718180120393;
        Wed, 12 Jun 2024 01:15:20 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:9163:6ed9:3c9a:d6c9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286eefa07sm15947595e9.8.2024.06.12.01.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 01:15:19 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: George Stark <gnstark@salutedevices.com>
Cc: <kelvin.zhang@amlogic.com>,  Rob Herring <robh@kernel.org>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,  Kevin Hilman
 <khilman@baylibre.com>,  Neil Armstrong <neil.armstrong@linaro.org>,  Uwe
 =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,  Conor
 Dooley
 <conor+dt@kernel.org>,  <linux-pwm@vger.kernel.org>,
  <linux-arm-kernel@lists.infradead.org>,
  <linux-amlogic@lists.infradead.org>,  <linux-kernel@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  Junyi Zhao <junyi.zhao@amlogic.com>
Subject: Re: [DMARC error][DKIM error] [PATCH v7 1/2] pwm: meson: Add
 support for Amlogic S4 PWM
In-Reply-To: <ce3c2772-8e91-4fd3-b52e-2a35d5759664@salutedevices.com> (George
	Stark's message of "Wed, 5 Jun 2024 15:12:54 +0300")
References: <20240605-s4-pwm-v7-0-e822b271d7b0@amlogic.com>
	<20240605-s4-pwm-v7-1-e822b271d7b0@amlogic.com>
	<ce3c2772-8e91-4fd3-b52e-2a35d5759664@salutedevices.com>
Date: Wed, 12 Jun 2024 10:15:19 +0200
Message-ID: <1jikyek25k.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed 05 Jun 2024 at 15:12, George Stark <gnstark@salutedevices.com> wrote:

> Hello Kelvin, Junyi
>
> On 6/5/24 05:44, Kelvin Zhang via B4 Relay wrote:
>> From: Junyi Zhao <junyi.zhao@amlogic.com>
>> Add support for Amlogic S4 PWM.
>> Signed-off-by: Junyi Zhao <junyi.zhao@amlogic.com>
>> Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
>> ---
>>   drivers/pwm/pwm-meson.c | 36 ++++++++++++++++++++++++++++++++++++
>>   1 file changed, 36 insertions(+)
>> diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
>> index b2f97dfb01bb..4f01847525b2 100644
>> --- a/drivers/pwm/pwm-meson.c
>> +++ b/drivers/pwm/pwm-meson.c
>> @@ -460,6 +460,34 @@ static int meson_pwm_init_channels_meson8b_v2(struct pwm_chip *chip)
>>   	return meson_pwm_init_clocks_meson8b(chip, mux_parent_data);
>>   }
>>   +static void meson_pwm_s4_put_clk(void *data)
>> +{
>> +	struct clk *clk = data;
>> +
>> +	clk_put(clk);
>> +}
>> +
>> +static int meson_pwm_init_channels_s4(struct pwm_chip *chip)
>> +{
>> +	struct device *dev = pwmchip_parent(chip);
>> +	struct device_node *np = dev->of_node;
>> +	struct meson_pwm *meson = to_meson_pwm(chip);
>> +	int i, ret;
>> +
>> +	for (i = 0; i < MESON_NUM_PWMS; i++) {
>> +		meson->channels[i].clk = of_clk_get(np, i);
>> +		if (IS_ERR(meson->channels[i].clk)) {
>> +			ret = PTR_ERR(meson->channels[i].clk);
>> +			dev_err_probe(dev, ret, "Failed to get clk\n");
>> +			return ret;
>> +		}
>> +		devm_add_action_or_reset(dev, meson_pwm_s4_put_clk,
>> +					 meson->channels[i].clk);
>
> devm_add_action_or_reset() result should be checked
>
>> +	}
>> +
>> +	return 0;
>> +}
>
> You can rewrite it a bit to always have a single allocation for devm node:
>
> static void meson_pwm_s4_put_clk(void *data)
> {
> 	struct meson_pwm *meson = data;
> 	int i;
>
> 	for (i = 0; i < MESON_NUM_PWMS; i++)
> 		clk_put(meson->channels[i].clk);
> }

This has already been discussed on v6.

This make the code un-necessarily complex and potentially put clock that
have not even been claimed.

>
> static int meson_pwm_init_channels_s4(struct pwm_chip *chip)
> {
> 	struct device *dev = pwmchip_parent(chip);
> 	struct device_node *np = dev->of_node;
> 	struct meson_pwm *meson = to_meson_pwm(chip);
> 	int i, ret;
>
> 	ret = devm_add_action(dev, meson_pwm_s4_put_clk, meson);
> 	if (ret)
> 		return ret;
>
> 	for (i = 0; i < MESON_NUM_PWMS; i++) {
> 		meson->channels[i].clk = of_clk_get(np, i);
> 		if (IS_ERR(meson->channels[i].clk)) {
> 			ret = PTR_ERR(meson->channels[i].clk);
> 			dev_err_probe(dev, ret, "Failed to get clk\n");
> 			return ret;
> 		}
> 	}
>
> 	return 0;
> }

-- 
Jerome


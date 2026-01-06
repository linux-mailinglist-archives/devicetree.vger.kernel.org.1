Return-Path: <devicetree+bounces-251912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D68CCCF834C
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 13:03:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4D6EE300EB9D
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 12:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 462EE32B989;
	Tue,  6 Jan 2026 12:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PejtpBFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D2D327204
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 12:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767701006; cv=none; b=o/+EIQKjOM+/Vjhqre7oDZs9kamy+B8nyYD+sZhKpyuuCE214+mWkVNS1QgPVUJx7fFN9QSP6TNvHOopNQFIUSmEZYlKRJYq48cVvpJqkXKQigXmiUhx5WTsiKHrbyoROxn9NnDQLqUlJpja9JW+zs59NO1CFOIQCjsZbSeoFT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767701006; c=relaxed/simple;
	bh=Uv82Eud2+qQYekf4jOxXEpCdWv9RuoIFOpRsSZ7Vu0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GzJbQpSViyK4LSYpt7fDQgKT8gqFCAHf9gCt8gXb/zZavfOpa9Q65DZeDSN9Mg3ywbxKWcsMUUMd5Htamj/G13iANLV/zft4CHbIsHPAiUoJLTtPmbWzK5sTm4d+GgmfsdeOGVOGhbfe2qPFhqexiyGIYQoxzH42+QmgOqk2D/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PejtpBFd; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59577c4c7c1so2899791e87.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 04:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767701002; x=1768305802; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R24kDi7ycrD9dY59pwPxZ5h8zPUnSHdzoVoXCvf0GVU=;
        b=PejtpBFdiyV86Oves1GoWsI2WIRx67M3gJiMJIh4YWlDKjwPDOhmLyWfE9FodWY05c
         Fna3T+5wOBPZDjfZLRv1b6mvSLurqBu5nigCxivFY8ArbrNd0MLkPuUA7GIErI/7syLA
         iXfMoWePdJHHExFyPBoJ92aMYL01C03RnyeqUcgCgvogo6rT9cHJXur9sEc8v4s21L/B
         6owfpOf36fZM7r1LHSfrj6UU53jxzIkDAkbT6pyNq41hDbLVVAy3P1w03lJoNumQgJLq
         +B/Cd4VcxLj7eyXxutuR2HDHDKJEBnS2pUU/+uEBlFGkm5MO+tS3lS8E1f0sldupGhV6
         gUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767701002; x=1768305802;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R24kDi7ycrD9dY59pwPxZ5h8zPUnSHdzoVoXCvf0GVU=;
        b=vA4PV5crn4WSpvtwHeF7kMX6kpr5dtIXRToAMnGr8axwp7zlGlj17Tw9THk4WykF2t
         FuIwBwz2p0VQgM4TdnQ2GFJLoX6HvaqpVd7Q/70ZzKgznLyhWONiQfGjtzhv9NKgvptc
         tZRaWn4wAM8geBn5jgyu/1jVbuHKJkEEpU6/R1kJRn/jc/PL3KT3Y7XltMasuQv26Msv
         QN4nhoCpkw/2ghMaKxb6w9YRrbbBibmEL5QIo5qvW8sHY5fHrconatA64KCoh8q1S3+F
         zBCinW3fqCDkyIEOjQKHO3dlP+Al20dHCjYjaxw9TaKsILEb+Rh6V+84rYj4MofMS5GI
         l3Tw==
X-Forwarded-Encrypted: i=1; AJvYcCUH2+FJfTWGfjjFNm6Brzt4GjxKnW7DU3l9Boz0YNnV62HZn8Oklft1Yea9n0iGgP/9KSWeDesUJVf/@vger.kernel.org
X-Gm-Message-State: AOJu0YxYj+2+QQRvpEDHD3xY4MMOqQ7V2utRY9ryseqPvzwXCABOBq5j
	kXV38fjhZ63Aw+61zZilpGVvRsuh1FR42Ucdo5qe5rin85P0Ic9yBi4E
X-Gm-Gg: AY/fxX7kiWDF/8HOZ4ndQBme9z6avcJXnVdZ2IsIb1YuDZM/X4GYfwVGTVI+O82woQd
	s5ZufxLglcsgBh/5aiMzv0qo5nO/lEus4B4LRFg8Gw59IJm5HISfSaulTuFbMrYAG8lZMhqYFB1
	WvunBlzQxe9Q1+H85tlSWIwR6U58PhkjyO8/t7Lu2S+f5O3AuW7szwdQ38d50A/P+zeVoX5kzhr
	3rx5Mpe7BFyNZylURMK4F8K5neNAZP97fitIl3byycafdRjdR4LvC7DuPm7o7fU5g0FTQGz0GLs
	6NP9NFRA28pm8EDjVtPki3SieAu7yAVfXbrMsntEFpROMn3MfruoQrnWR/nDrhsd/7aHBg3tTyC
	D8IuceolhA70xWKSZjSC5cbDcYJBVYZbjsIeSW9V9iUTvJaVCax/pFtVywD9lWO6dBDOMBFWIeJ
	3Cl5dkEB73jfPmxLOX8ZHjI0U=
X-Google-Smtp-Source: AGHT+IFQ34mkfMwuZtHPU+EK43Z3U18GgFyWPUtQcLuGBqEmE4MawbvUoM0v/a/8F9LW9CHZvBDqvw==
X-Received: by 2002:ac2:4c06:0:b0:595:7d7c:59a9 with SMTP id 2adb3069b0e04-59b65878424mr688495e87.22.1767701001878;
        Tue, 06 Jan 2026 04:03:21 -0800 (PST)
Received: from [192.168.0.131] ([194.183.54.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6addaab0sm185546e87.28.2026.01.06.04.03.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 04:03:21 -0800 (PST)
Message-ID: <3fe2eb05-f45d-4910-a9e5-8472c5c7f43f@gmail.com>
Date: Tue, 6 Jan 2026 13:03:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] leds: ltc3220: add driver
To: Edelweise Escala <edelweise.escala@analog.com>, Lee Jones
 <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260106-ltc3220-driver-v1-0-73601d6f1649@analog.com>
 <20260106-ltc3220-driver-v1-2-73601d6f1649@analog.com>
Content-Language: en-US
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
In-Reply-To: <20260106-ltc3220-driver-v1-2-73601d6f1649@analog.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/6/26 06:27, Edelweise Escala wrote:
> Add driver for ltc3220. LTC3220 18 Channel LED Driver
> 
> Signed-off-by: Edelweise Escala <edelweise.escala@analog.com>
> ---
>   MAINTAINERS                 |   1 +
>   drivers/leds/Kconfig        |  10 +
>   drivers/leds/Makefile       |   1 +
>   drivers/leds/leds-ltc3220.c | 465 ++++++++++++++++++++++++++++++++++++++++++++
>   4 files changed, 477 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d640c35d1f93..fda0d2963c4f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14961,6 +14961,7 @@ L:	linux-leds@vger.kernel.org
>   S:	Maintained
>   W:	https://ez.analog.com/linux-software-drivers
>   F:	Documentation/devicetree/bindings/leds/leds-ltc3220.yaml
> +F:	drivers/leds/leds-ltc3220.c
>   
[...]
> +				     "Failed to set command\n");
> +
> +	device_for_each_child_node_scoped(&client->dev, child) {
> +		struct led_init_data init_data = {};
> +		struct ltc3220_uled_cfg *led;
> +		u32 source;
> +
> +		ret = fwnode_property_read_u32(child, "reg", &source);
> +		if (ret)
> +			return dev_err_probe(&client->dev, ret,
> +					     "Couldn't read LED address\n");
> +
> +		if (!source || source > LTC3220_NUM_LEDS)
> +			return dev_err_probe(&client->dev, -EINVAL,
> +					     "LED address out of range\n");
> +
> +		init_data.fwnode = child;
> +		init_data.devicename = "ltc3220";
> +		init_data.devname_mandatory = true;

Why? Please get acquainted with the section "LED Device Naming" in [0],
and the documentation of this property in [1].

> +
> +		/* LED node reg/index/address goes from 1 to 18 */
> +		i = source - 1;
> +		led = &ltc3220_state->uled_cfg[i];
> +		led->led_index = i;
> +		led->reg_value = 0;
> +		led->ltc3220_state = ltc3220_state;
> +		led->led_cdev.brightness_set_blocking = ltc3220_set_led_data;
> +		led->led_cdev.brightness_get = ltc3220_get_led_data;
> +		led->led_cdev.max_brightness = 255;
> +		led->led_cdev.blink_set = ltc3220_blink_set;
> +		led->led_cdev.pattern_set = ltc3220_pattern_set;
> +		led->led_cdev.pattern_clear = ltc3220_pattern_clear;
> +
> +		ret = devm_led_classdev_register_ext(&client->dev,
> +						      &led->led_cdev,
> +						      &init_data);
> +		if (ret)
> +			return dev_err_probe(&client->dev, ret,
> +					     "Failed to register LED class device\n");

[0] Documentation/leds/leds-class.rst
[1] include/linux/leds.h

-- 
Best regards,
Jacek Anaszewski



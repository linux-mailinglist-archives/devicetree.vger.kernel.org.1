Return-Path: <devicetree+bounces-65803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A17248C01B4
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 18:13:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCC431C22469
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 16:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD6B129E70;
	Wed,  8 May 2024 16:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jw4txY8l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66691292C3
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 16:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715184777; cv=none; b=NM98P7bgmePquYOofQHv19dk/7kUm92TR7jqTF65SjBG0/8DrE9/Fzyud9h3sKInmAbQg+uMZX1BWkjyT3SHkTRdRCWpt0+rVkaACvQlOn/a30z7R2XEqVV7rXzW4I55+uMDvBTamXXrWGMNLY/6CszEdqtXPbZ6zEGI5Veo5lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715184777; c=relaxed/simple;
	bh=3RC/slltpYapY2F0z6uYYs46/YRPjHS6+iJKdyjPMSI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H3wu3z2ZnXKUx5F7BmfcE4x2PBfXkwtxE6oQaRGQZrV6YmmLh69s4yBiFNToAlf4efNKo1pg5Ow260voGDj/vYf59dawuIqh0ZdN//XSjPULNGiBn5jE2Nq9kmHANCkYLyOFV3uImW5MRYBItan9Z5gKDOi7nsC6ICYUU3rn3yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jw4txY8l; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-41ebcf01013so6375975e9.0
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 09:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715184773; x=1715789573; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4GjzdAdHEKtNKnAx1lGW3dqaD5snc+8WTy5ik2iGruw=;
        b=jw4txY8lnQNVRM41kVyo00Z0nAwO/j6Dhyjv1JktTUcmmA/j6YyC5hWVI98gzIzSra
         offBNSVRC1N8MwLFCBaARTuBjPmu2qZgqBHbNQp2wKMOqOzJm++cj/NPH2UIPpukachN
         2h9mm7i8fupyJk/il8SXSGuP0Tz4gJcdgvU5z2PlBxlpEr6Z1L0hbxsxSkP+OWQmSiTD
         U4fVrf67hMHsSG9iH+no3WWxWFgbE7/udcw2LfphO8UUVLgLFtiUea73kNQ5naT0IzhB
         eJUD/RYfmVCFV2zvXUrEuNrr09Txcu/W+Ja5Tva5/vVOMMncTi8v/3HzW+v6nplnrBJq
         nIbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715184773; x=1715789573;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4GjzdAdHEKtNKnAx1lGW3dqaD5snc+8WTy5ik2iGruw=;
        b=CtA3ujii8X0Qhwu0pCL3wI8CoOrz4T3k8RTsBl7XhehwUX2XxOFh1DkFsoVvUdMnr7
         wpb65Evc55VHV6rrJEq4EoHlifu8eoNHbiMMxbU031k8tFS4N3i7KJWExy0Syv+K6zSH
         9gHjs1Zrt1nuojb0fG8a5NIa/bHvw5xG8f/ive/57SWTKBMQwJ8/cEQHfABOgsj1eAMg
         Xv66rtF6Bs2MAw9KP2hPw6J0jLfRo01opLpJ6VZBmFyGyOfvBOaPFeUu4EmEohjYN2gt
         BATeaAb7/kPO9xJvFgnEnCm/cgPKNQsBHiBWeBU9/HGg0YtQxckdJAq41uRuC6Dvzl8Y
         sGWw==
X-Forwarded-Encrypted: i=1; AJvYcCUSRAM1fqjVK2aOt8CNmD0IsF54Z5PK9c/FFvySlzF5SMm904bwusbAgg9EfhJB8DsI0EFKVJcfsgy2+YMzQqQsMHSd5CVZk7EC/A==
X-Gm-Message-State: AOJu0YxOa5B1y4cD44AXQDdB1O/kNUge9osJIm5DvpRhcWQlROr0f0Bx
	0+Bbzo4ElqQcGzrgo15gJ8kEWIU1lPcTcmnrVGS7jOKrod+uanPONiO8cOb6p+Q=
X-Google-Smtp-Source: AGHT+IH5Yksnpu8AA/SPMXll9db6J8MO+PCbYpEJpY3+2AVAvGf2IFN2hUFiazwk32/adRLFStXFTQ==
X-Received: by 2002:a05:600c:3585:b0:418:2ab6:7123 with SMTP id 5b1f17b1804b1-41fbcc5f63bmr1147015e9.10.1715184773147;
        Wed, 08 May 2024 09:12:53 -0700 (PDT)
Received: from [192.168.0.3] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id g18-20020a5d5412000000b00346bda84bf9sm15725249wrv.78.2024.05.08.09.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 May 2024 09:12:52 -0700 (PDT)
Message-ID: <4468becb-dc03-4832-aa03-5f597023fcb2@linaro.org>
Date: Wed, 8 May 2024 17:12:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/13] mfd: pm8008: deassert reset on probe
To: Johan Hovold <johan+linaro@kernel.org>, Lee Jones <lee@kernel.org>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Das Srinagesh <quic_gurus@quicinc.com>,
 Satya Priya <quic_c_skakit@quicinc.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20240506150830.23709-1-johan+linaro@kernel.org>
 <20240506150830.23709-4-johan+linaro@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240506150830.23709-4-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2024 16:08, Johan Hovold wrote:
> Request and deassert any (optional) reset gpio during probe in case it
> has been left asserted by the boot firmware.
> 
> Note the reset line is not asserted to avoid reverting to the default
> I2C address in case the firmware has configured an alternate address.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/mfd/qcom-pm8008.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/mfd/qcom-pm8008.c b/drivers/mfd/qcom-pm8008.c
> index d53c987b0d49..d0f190c2ea2b 100644
> --- a/drivers/mfd/qcom-pm8008.c
> +++ b/drivers/mfd/qcom-pm8008.c
> @@ -4,6 +4,7 @@
>    */
>   
>   #include <linux/bitops.h>
> +#include <linux/gpio/consumer.h>
>   #include <linux/i2c.h>
>   #include <linux/interrupt.h>
>   #include <linux/irq.h>
> @@ -158,6 +159,7 @@ static struct regmap_config qcom_mfd_regmap_cfg = {
>   static int pm8008_probe(struct i2c_client *client)
>   {
>   	struct regmap_irq_chip_data *irq_data;
> +	struct gpio_desc *reset;
>   	int rc;
>   	struct device *dev;
>   	struct regmap *regmap;
> @@ -169,6 +171,10 @@ static int pm8008_probe(struct i2c_client *client)
>   
>   	i2c_set_clientdata(client, regmap);
>   
> +	reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
> +	if (IS_ERR(reset))
> +		return PTR_ERR(reset);
> +
>   	if (of_property_read_bool(dev->of_node, "interrupt-controller")) {
>   		rc = devm_regmap_add_irq_chip(dev, regmap, client->irq,
>   				IRQF_SHARED, 0, &pm8008_irq_chip, &irq_data);

So not resetting is fine and I understand you want to retain the address 
given by the firmware, I think that's the right thing to do.

You can add this now

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

In addition to adding a small delay suggested by Andy - a few 
microseconds pick a number, I think you should verify the chip is out of 
reset as we would do with many other i2c devices.

A common pattern with i2c devices is take the device out of reset then 
read back an identity register as a smoke test.

Take drivers/media/i2c/ov8856.c::ov8856_identify_module() as an example.

In this case, suggest reading REVID_PERPH_TYPE @ 0x104 and 
REVID_PERPH_SUBTYPE @ 0x105

REVID_PERPH_TYPE @ 0x104 == 0x51 (PMIC)
REVID_PERPH_SUBYTE @ 0x105 == 0x2C (PM8008)

You can then add my

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod


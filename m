Return-Path: <devicetree+bounces-235207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21939C358A1
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 12:58:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64F2E460684
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 11:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FA8C3126A9;
	Wed,  5 Nov 2025 11:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LBfbbI8W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611E4311979
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 11:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762343645; cv=none; b=G4RTobocpM0HpOoLycW9JFPWPtsAYjaXv7iuJBwCKpPaDIkMh+X6AStqQpEbBcr75cN1YUlaWQoemSx6s+OvnkvXaqX3j8TGVp9AI3qzEX7wqEancL7lE6hO9WokMwnQsHB95t8qzdoUKc0pjbScg6XCW+ztsrJpNkLa0In4hb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762343645; c=relaxed/simple;
	bh=81juSgU6NYXUTQxmW+BzEklbwM5e3ROYMVaLMB+HAuQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s5XZsOEzwMZR6j+H1ac2rNeT9pFDeFZaMmqrIfh/SvTuIdRW/KI2y0bfjjXD4tDXHdgE6NfBRKoqBoBItiez8/RBO2j8Ue4eJiWtNo0SmlG3b8Lcq58nOJDb9BJSnGxxf0VWVSBYul9ABo9zD1enbmbeZbHD7DHqyBhEVFxCMrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LBfbbI8W; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b7260435287so170740966b.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 03:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762343642; x=1762948442; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g/UpX3avw7uELarfa8lgo/LyYGaNg3TQ/CqTgq0AbwQ=;
        b=LBfbbI8WSnJZ4iB3jZi5c3XVeKhMPAgbF7Ypkmtx/k9DjEuzBZThYbBPIG4+bz5j6T
         ltEQ7IAf8qxUoMdzipYPMg04WrO/gzig7qICYoghqBwTV0wF7C7WXvX95gKFRRJ3F1iH
         MgwrQUqESN/BO8/sEh4+d/vtbd78NKuq4Cys5Pmu9jVjZtfDG0seLj+Aui2FYzg4mgTW
         xT88zEwdlM/9CswRJpbQkdRzt62SapH7J4TpmInNXNZnYbp0b9nckOk1OKr75j/6+fHf
         I2th3kQd6l3wmaa5LGAL/EUPoVY+hbPgMR5TiP2lwQQW541osHETcy68HhZfvkUXXB8C
         poxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762343642; x=1762948442;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g/UpX3avw7uELarfa8lgo/LyYGaNg3TQ/CqTgq0AbwQ=;
        b=rlkQFjj84dwFdffdFkwjm2tmsoeFsSVoHZ1UlmsQzm8u3Y2EJJZV5sA6dWkNQTnulQ
         lNqSdayjU8m46AnKoqZ0i007NGr9HkAOVxQcbRenVEAzoWTQ8KE2bnI9rD0x+9NhcaYT
         g/HwiCn7uUlvZPE8YOt/t9If4Fd2ecSlsfBvpSe4DNmqIcJaYlsNkjRv36BpOuUrWcMD
         sP5kU2OugDK/UBfqb8q/YOVd/m0jU5gFGpSJlpy9MqE2XXGUtK9qv5Qeo0iIEWvjfurF
         qoUPWpLM+aLDTmY9l5VbdTlQ1dW1g4Gzdb74zSaxTC8KByAl1mz0niI6Xpu2qWpoCoHT
         kTng==
X-Forwarded-Encrypted: i=1; AJvYcCUsFsa87U1Vk5V/wdoU/aXk/7nPxeThTXkQjHtaNuZoijXw43MwZ11VSSRjTscnYw2lngQH9uocciUA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz9/kBO7BkanSsLo3QTqD3z4IDj9zA8ueBlvTuYcUtWm+Cpe8a
	xfQk+eNSVn2irVhi/bEtGr6pfiY+uu50veQlGMs81LFwr3G8fUcz+olJ
X-Gm-Gg: ASbGncu7uWPRY1wYaUQG2WobdzPMzNt4iotqb6E6IKLkPrcyEM9fViNMnyb3cUdoRtR
	Yfwdj476KEnqMZqO7o2J68v0q/qxVUEW/kbZ0b2WcS4Nl2F+c1KiW1w5ww9RqnvtR9HRv+N7cSW
	z9c2PqSe3iA7VciANXdFHdP8YEgjl/cZ9OK1jJOqIuBlZXDTMWXIYuCu8Me9KORdoEFI7mrFmsh
	/+yKuUH9TCOGWfo3OnWXKVeByYpDMjh+PO9LMN4vRrMhT4AvMe2WLCOzcNuh5ijDfWA2QMdqju2
	+X36GB0srQpKx8emxb5yfaevYqcBVqHgUTWifKcIRekZCzRcZ8yj0SvwC8/BJnfMx8ncpAHrBLW
	0LdCD2aqcSYLrmXr549+zXnmN/3k6Cl1GQNUITFdscT0bgZAEoG0xHJSs6Ipl91+hr8dfUICdKv
	8rJaNxSrysjfcNgsh7bAjImcfky1xTwngovtLtPvg6
X-Google-Smtp-Source: AGHT+IHIMY6tKFfsb10DyUHdbGrdEQEYV+h8wx9kNX+qCiwx0rtZJ0aA3dtts39G0Zb3h4jYk8948Q==
X-Received: by 2002:a17:907:3da1:b0:b6d:6b56:bd7d with SMTP id a640c23a62f3a-b72652af2a0mr243413866b.16.1762343641492;
        Wed, 05 Nov 2025 03:54:01 -0800 (PST)
Received: from [10.25.216.1] ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d916e26sm481199066b.26.2025.11.05.03.53.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 03:54:01 -0800 (PST)
Message-ID: <e7481838-af1a-46ad-9f94-8de4e20a9611@gmail.com>
Date: Wed, 5 Nov 2025 03:53:59 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] reset: imx8mp-audiomix: Switch to using regmap API
To: Frank Li <Frank.li@nxp.com>
Cc: Abel Vesa <abelvesa@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, Shengjiu Wang
 <shengjiu.wang@nxp.com>, linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
 <20251104120301.913-6-laurentiumihalcea111@gmail.com>
 <aQothuvsclJoP74u@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <aQothuvsclJoP74u@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 11/4/2025 8:44 AM, Frank Li wrote:
> On Tue, Nov 04, 2025 at 04:02:58AM -0800, Laurentiu Mihalcea wrote:
>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>
>> Switch to using the regmap API to allow performing register operations
>> under the same lock. This is needed for cases such as i.MX8ULP's SIM LPAV
>> where clock gating, reset control and MUX-ing is performed via the same
>> register (i.e. SYSCTRL0) and different subsystem APIs.
>>
>> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>> ---
>>  drivers/reset/reset-imx8mp-audiomix.c | 93 +++++++++++++++++----------
>>  1 file changed, 58 insertions(+), 35 deletions(-)
>>
>> diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
>> index e9643365a62c..18a7f68aa59f 100644
>> --- a/drivers/reset/reset-imx8mp-audiomix.c
>> +++ b/drivers/reset/reset-imx8mp-audiomix.c
>> @@ -11,6 +11,7 @@
>>  #include <linux/module.h>
>>  #include <linux/of.h>
>>  #include <linux/of_address.h>
>> +#include <linux/regmap.h>
>>  #include <linux/reset-controller.h>
>>
>>  #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
>> @@ -42,8 +43,7 @@ static const struct imx8mp_reset_map reset_map[] = {
>>
>>  struct imx8mp_audiomix_reset {
>>  	struct reset_controller_dev rcdev;
>> -	spinlock_t lock; /* protect register read-modify-write cycle */
>> -	void __iomem *base;
>> +	struct regmap *regmap;
>>  };
>>
>>  static struct imx8mp_audiomix_reset *to_imx8mp_audiomix_reset(struct reset_controller_dev *rcdev)
>> @@ -55,26 +55,15 @@ static int imx8mp_audiomix_update(struct reset_controller_dev *rcdev,
>>  				  unsigned long id, bool assert)
>>  {
>>  	struct imx8mp_audiomix_reset *priv = to_imx8mp_audiomix_reset(rcdev);
>> -	void __iomem *reg_addr = priv->base;
>> -	unsigned int mask, offset, active_low;
>> -	unsigned long reg, flags;
>> +	unsigned int mask, offset, active_low, shift, val;
>>
>>  	mask = reset_map[id].mask;
>>  	offset = reset_map[id].offset;
>>  	active_low = reset_map[id].active_low;
>> +	shift = ffs(mask) - 1;
>> +	val = (active_low ^ assert) << shift;
>>
>> -	spin_lock_irqsave(&priv->lock, flags);
>> -
>> -	reg = readl(reg_addr + offset);
>> -	if (active_low ^ assert)
>> -		reg |= mask;
>> -	else
>> -		reg &= ~mask;
>> -	writel(reg, reg_addr + offset);
>> -
>> -	spin_unlock_irqrestore(&priv->lock, flags);
>> -
>> -	return 0;
>> +	return regmap_update_bits(priv->regmap, offset, mask, val);
>>  }
>>
>>  static int imx8mp_audiomix_reset_assert(struct reset_controller_dev *rcdev,
>> @@ -94,6 +83,52 @@ static const struct reset_control_ops imx8mp_audiomix_reset_ops = {
>>  	.deassert = imx8mp_audiomix_reset_deassert,
>>  };
>>
>> +static const struct regmap_config regmap_config = {
>> +	.reg_bits = 32,
>> +	.val_bits = 32,
>> +	.reg_stride = 4,
>> +};
>> +
>> +/* assumption: registered only if not using parent regmap */
>> +static void imx8mp_audiomix_reset_iounmap(void *data)
>> +{
>> +	void __iomem *base = (void __iomem *)data;
>> +
>> +	iounmap(base);
>> +}
>> +
>> +static int imx8mp_audiomix_reset_get_regmap(struct imx8mp_audiomix_reset *priv)
>> +{
>> +	void __iomem *base;
>> +	struct device *dev;
>> +	int ret;
>> +
>> +	dev = priv->rcdev.dev;
>> +
>> +	/* try to use the parent's regmap */
>> +	priv->regmap = dev_get_regmap(dev->parent, NULL);
>> +	if (priv->regmap)
>> +		return 0;
>> +
>> +	/* ... if that's not possible then initialize the regmap right now */
>> +	base = of_iomap(dev->parent->of_node, 0);
>> +	if (!base)
>> +		return dev_err_probe(dev, -ENOMEM, "failed to iomap address space\n");
>> +
>> +	ret = devm_add_action_or_reset(dev,
>> +				       imx8mp_audiomix_reset_iounmap,
>> +				       (void __force *)base);
>> +	if (ret)
>> +		return dev_err_probe(dev, ret, "failed to register action\n");
>> +
>> +	priv->regmap = devm_regmap_init_mmio(dev, base, &regmap_config);
>> +	if (IS_ERR(priv->regmap))
>> +		return dev_err_probe(dev, PTR_ERR(priv->regmap),
>> +				     "failed to initialize regmap\n");
> Does anyone still base?  Supposed aux device probed by parent devices,
> if all parent already switch to regmap, you can remove this part.
>
> Frank


both clk-imx8ulp-sim-lpav and clk-imx8mp-audiomix don't handle the clock gate

functionality by themselves. Instead, they use the generic clock gate driver, which

doesn't use regmap. ATM, I don't plan on extending that to use regmap (how would

that work? would we want that? would it be useful for other people as well?)



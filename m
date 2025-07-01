Return-Path: <devicetree+bounces-191523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D552AEF908
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 14:44:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4FC316534B
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D74942741A3;
	Tue,  1 Jul 2025 12:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oQ8XjfBp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0997B270ED2
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 12:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751373806; cv=none; b=Y8dqWONGzCNZTDTnsCCa++T4vlV202k8TS2Upz4SbOjhIYEp5BTv45QfQO06Dz3g0M9AKOmrP17qL/TUiT+r0sPhovNvGbS90rcXR+SQctMZNZYKm3o18zRvSNTvw0eIOEqc6ZZgUp44PiEeXq0lWqSkQxeKa09C2Gc5OpEPcm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751373806; c=relaxed/simple;
	bh=7NWxO7PaQI8/4JG0A3Vx4+jVhpSF8WKBKHv2nqV56Ck=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=oDrjViLDn8ao/ozwXRrgztzn//uVLGXxw0s1tB83CB5cEqG4g3/Hmiu8qcgRSG8vjGlTiXa0qOBGMxCS6PK+T/vs9N4L1pGSEKkyf/gFARVM4rzt+QK+fuxZ/OIVUzp+ToCztpY9vGBaWG0QBAlXQNTN03IYCfTfRKB6sWjFJqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oQ8XjfBp; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-60768f080d8so6882748a12.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 05:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751373803; x=1751978603; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vO82p+Ymyw4qd8ylLEXsAIS4Z9o8M8tSvKaMqhmYjc8=;
        b=oQ8XjfBpvw1Pv2n4JNw1ODJ5YmJXXVaE4qUY/fOmm4FLQguPgLstiDTsKIj3RFabKZ
         fKYL6spcRYFIYp9a+U9SjyM+CdoclLepxWGwAqcyVQlrhLpNSMdTDfZ0rsjxOO47+gow
         nBpD2/6Qae1Vn4EVMY3say8QvyahDhv/MVNK/nkyeh+nxiemFj3mbtLSFTpsH0Wx+GT6
         +WWjGcc6aUemqC0QzUDFtSNCHXiM0oKj6zxYGdmH7idXlzy4NiDIpJGXCWwim3D6ySkS
         Cd5iiDXIOA5oCBkVHZ4rlznsgqRh1vv+V0UJx7sw8DLx4+Ow/aPo5mQkRKEG/PhSMcaW
         uixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751373803; x=1751978603;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vO82p+Ymyw4qd8ylLEXsAIS4Z9o8M8tSvKaMqhmYjc8=;
        b=lHY0rB4L8bHW3i7UMoGhLWy5jRd7txp+S9UIbHwkS2BMbQeXewMh0qbJFIb1/wBlMv
         sHV9mJY7dDbQoSeqthlZqQdzu0b/pPStWG3r5YzbBPXyAOCpQncz/fRW9uSCg0QZbJKR
         1nnAtB0u03JF2M4NdAzVd2h8L6sQq/GFV7R7EA3oZiiz7nfMIvpun/QresHMxVo3aw1a
         YqPF7LhysfFY3C0isK6BspSKhuS7RBMxPrfvt9Y/UDU+GxN647YBsfiLWiaiV9mDD90+
         xghT9tfcc6h5r28euPSeXWzxXNnF8wrgfRm5MPFPG//bFxKQXoe8cGMQnYcswD0F184a
         BsCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVABWE25HJKhlU8fWqo7hCrrJekMj4xF7GW0AqDzMcPMwalL+u+rE/YzTLOPbfVhxN1EP+awPEre3u@vger.kernel.org
X-Gm-Message-State: AOJu0YxOA08jVgBffvHUDyyDpZKZEsB9v1Y/Apm/wGbW8AljBb9BIR0F
	i3TxqUkeWr9b1Q0a0KNYXWbaSB/ahnsaCj3RR/r3xZM1MK5luZELdDYJz+9ZARr79wc=
X-Gm-Gg: ASbGncuRYVvdkrIMp7F2srGR9z1vIrag1j6dKOLXJoXASFLzRR7/N68dTFShYnlwrSf
	pzzJHsXQBqZnaaroZeW/MbFoLwORan/r96G2iy50zYTeAHgvdwyXUhQ8QEQe8HKDhmYG1EeI2jC
	srBP6buxNlg8+xFBGMo9Nb3ijd1+f0+NuhBRX1t5EEtL0w5eokor1dXvCJCEteMUTnXqYpaebin
	+SM4h9j7aGQj5Piwpoiw4Mf+7O2kCpDqSKI073kYqLluMrFlCD33GOU/m3bZzFxlnXhvBWAMG+L
	NLOCqVglZWEmobkeYZvduFkjM8EqFWQvb2X630tkeko9X4EEjRWCX7KSfhTbPw8VslO6Wdhq37n
	pu1K/xqbQMe/kxrrNDX+js6H7AnQ=
X-Google-Smtp-Source: AGHT+IE6xeF663Ehtkx+Tn7K0YByRaw3WGT5qhe7eblpPQ0dM4VjdYTgHjq2bWdoW1KfC5x11Xkqkg==
X-Received: by 2002:a17:907:c78b:b0:ade:cdec:7085 with SMTP id a640c23a62f3a-ae34fee181emr1637881166b.26.1751373803200;
        Tue, 01 Jul 2025 05:43:23 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353659fdesm872608566b.69.2025.07.01.05.43.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 05:43:22 -0700 (PDT)
Message-ID: <177a3018-1170-4c92-8657-32edc165bb47@linaro.org>
Date: Tue, 1 Jul 2025 13:43:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] media: i2c: imx355: Support device tree probing and
 resource management
To: Richard Acayan <mailingradian@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250630225944.320755-7-mailingradian@gmail.com>
 <Vrnknr6oE7SMsU5fexDRxfCdLZypJp6UaPEae_ubAOcQuXsTWz6kOpoQB3jZWXUlEu09hp5XjfLAXD2AhuOK9A==@protonmail.internalid>
 <20250630225944.320755-9-mailingradian@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250630225944.320755-9-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/06/2025 23:59, Richard Acayan wrote:
> A device tree compatible makes it possible for this driver to be used on
> Open Firmware devices. Initialization of resources such as the reset
> GPIO and voltage regulators can be specified in the device tree and
> handled by the driver. Add support for this so the Pixel 3a can use the
> driver.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>   drivers/media/i2c/imx355.c | 63 ++++++++++++++++++++++++++++++++++++++
>   1 file changed, 63 insertions(+)
> 
> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index b2dce67c0b6b..42bd08e8ac50 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c
> @@ -3,9 +3,14 @@
> 
>   #include <linux/unaligned.h>
>   #include <linux/acpi.h>
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
>   #include <linux/i2c.h>
>   #include <linux/module.h>
> +#include <linux/of.h>
>   #include <linux/pm_runtime.h>
> +#include <linux/regulator/consumer.h>
>   #include <media/v4l2-ctrls.h>
>   #include <media/v4l2-device.h>
>   #include <media/v4l2-event.h>
> @@ -121,6 +126,16 @@ struct imx355 {
>   	 * Protect access to sensor v4l2 controls.
>   	 */
>   	struct mutex mutex;
> +
> +	struct clk *mclk;
> +	struct gpio_desc *reset_gpio;
> +	struct regulator_bulk_data supplies[3];
> +};
> +
> +static const char * const imx355_supply_names[] = {
> +	"vana",
> +	"vdig",
> +	"vio",
>   };
> 
>   static const struct imx355_reg imx355_global_regs[] = {
> @@ -1683,6 +1698,7 @@ static struct imx355_hwcfg *imx355_get_hwcfg(struct device *dev)
>   static int imx355_probe(struct i2c_client *client)
>   {
>   	struct imx355 *imx355;
> +	size_t i;
>   	int ret;
> 
>   	imx355 = devm_kzalloc(&client->dev, sizeof(*imx355), GFP_KERNEL);
> @@ -1694,6 +1710,42 @@ static int imx355_probe(struct i2c_client *client)
>   	/* Initialize subdev */
>   	v4l2_i2c_subdev_init(&imx355->sd, client, &imx355_subdev_ops);
> 
> +	for (i = 0; i < ARRAY_SIZE(imx355_supply_names); i++)
> +		imx355->supplies[i].supply = imx355_supply_names[i];
> +
> +	ret = devm_regulator_bulk_get(&client->dev,
> +				      ARRAY_SIZE(imx355->supplies),
> +				      imx355->supplies);
> +	if (ret) {
> +		dev_err_probe(&client->dev, ret, "could not get regulators");
> +		return ret;
> +	}
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(imx355->supplies),
> +				    imx355->supplies);
> +	if (ret) {
> +		dev_err(&client->dev, "failed to enable regulators: %d\n", ret);
> +		return ret;
> +	}

You should stick to dev_err_probe().

There's no reason to enable the rails this early either, should be in a 
dedicated power_on() function called in the right place with its own 
cleanup logic for error - to save us from replicating cleanup with jump 
labels.

> +
> +	imx355->reset_gpio = devm_gpiod_get_optional(&client->dev, "reset",
> +						     GPIOD_OUT_HIGH);
> +	if (IS_ERR(imx355->reset_gpio)) {
> +		ret = PTR_ERR(imx355->reset_gpio);
> +		dev_err_probe(&client->dev, ret, "failed to get gpios");
> +		goto error_vreg_disable;
> +	}
> +
> +	imx355->mclk = devm_clk_get(&client->dev, "mclk");
> +	if (IS_ERR(imx355->mclk)) {
> +		ret = PTR_ERR(imx355->mclk);
> +		dev_err_probe(&client->dev, ret, "failed to get mclk");
> +		goto error_vreg_disable;
> +	}
> +
> +	clk_prepare_enable(imx355->mclk);
> +	usleep_range(12000, 13000);
This should go into a dedicated power_on() routine which is reusable, so 
that we have one place to get the power-on sequence right.

Something like drivers/media/i2c/ov02e10.c::ov02e10_power_on()

> +
>   	/* Check module identity */
>   	ret = imx355_identify_module(imx355);

If you move identify_module to come after get_hwcfg then all of the 
above code can be buried inside of get_hwcfg which IMO would be a nice 
pattern to follow.

driver/media/i2c/ov02[c|e].c

---bod


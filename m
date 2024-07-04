Return-Path: <devicetree+bounces-83116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B06E92740E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 12:29:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDAFB1C20DB5
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 10:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7A111AB90F;
	Thu,  4 Jul 2024 10:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FlKRZG7I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094551BC4E
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 10:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720088938; cv=none; b=kjB1nuJsMuotbHolbuRhKBsxwKq9L/PbtlMDai6x8B4EM0D+maGJ+X0YcBBwZ+4QCOc39vEl0EWGAi4Eaw7PbWuwJG+zzUBQ40JwSnsSAJqPEUi51nU4Mqmqvv93VGoUVQ/YG3RHzqWaGtUKCujwdTi6vUaQR2pVnbFPJ1NAoWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720088938; c=relaxed/simple;
	bh=XfKgY625lm5NRHaE5irABpnC2S1jw6qv/FJ2nT1sS9o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uWs1wrfbYPybL6YDSP/9BAVOH1Z1xlRlBMffQyb0H6qyYNq4ARypMTTDUeArfcmZbZthM7e9ojXyzoUWZBu5/Pp9X/RACG6BZMV5/Nk7fYEXyxH3l7VWNsXjw2Txycp3+x6WE1mfwsIPP8P8W6KROyniYsut0d/Opwbo9Nthlp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FlKRZG7I; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-58ba3e37feeso664543a12.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 03:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720088935; x=1720693735; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W1n41ixNHOs7ND4dHyzhkd0g//JyZDb7AOEWRwz5JLA=;
        b=FlKRZG7IpNCn8zR/oTHNMsLFiFFngBv1p+EbX82YRurfp1l4PDKDmMGtjYRlViiPrH
         k61OQgV7hkw5vmjRZzeiIgm90/D6OiBFxymKkqKeQirnXc/B3zQR403G9ORV/ar97QHO
         uWruZguF2zoTzfxr+VtySLnXyXC6gC/yVwUZUzZKRqlqkPc9MpfJ2OaXOFi63+4dY/dx
         p+A6brsXbPry5oCVN193BDq/64cFyThW+yWUUm+PNLGkkJveEpdPhbkRBeraf7Xy8VQ7
         F3UglYUxf+Ox+u58Op2kavUYMB4yE/gF4og+sDS+gcfkJ8/2FUwJQKTHlKpaf+b8Kg0X
         PYQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720088935; x=1720693735;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W1n41ixNHOs7ND4dHyzhkd0g//JyZDb7AOEWRwz5JLA=;
        b=UNVwqO0MThIJr3Sf6ZbLlP5sjH6qu92Q3lfrHL/K+0HvtDAjuoYK+t9g8ERovHL24S
         AFsskgjv/z7JL6WBC8W16S3QjkLyEndFoseRn9Lpf3C/N7mDdZziMSXIHjB9dZVnu474
         YyoPJpWsWLG4z80GCoERZ1ojFP2t+4Jtyx/WcrEdQh0lUmQxeoJWGcnQExRgHq7tCehS
         tqC/x/IgZOZ103FQLEatfEFuOrLkz2AYQE93MlA3Z66VT8G3DmSfdL8AUXZ1jFUOTGEE
         3GGSOb/i7xMa284YsOVnjUcH+YrmMkMaCKdZ7XEPYRlrlFe9uG0KS7ew56p0gYkj09zT
         K5bQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2SiMMA2vsqX8ZKbK0ezPblELkjDlySXE24ow1gg9kIC1jG8c+qSBpKkLfKFuGy3EhznJBB9S3eiMtrf1iiRtOAfFFt5Iyhud1vQ==
X-Gm-Message-State: AOJu0Yw9w6e52R8//Z7qq/ncmQmOM8GfwWA0OHY+NniHRJN/ijNosz+5
	N+ATb7CVCLhh2Go/jFq4Qv5COf+WSuifGr8z0VBkhTSNiJhThbk=
X-Google-Smtp-Source: AGHT+IEq7rCkJ3goBqSiFAE3BU988m6dNO0UHFcNMG7KA3oE7u0dY94ILDMx5QFtaem3q5aXg9m0hg==
X-Received: by 2002:a05:6402:2754:b0:582:ca34:31b1 with SMTP id 4fb4d7f45d1cf-58e5984c1ddmr996419a12.16.1720088934848;
        Thu, 04 Jul 2024 03:28:54 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:5f4b:4104:ca7b:6efb? ([2a02:810b:f40:4600:5f4b:4104:ca7b:6efb])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-58612c838casm8325256a12.4.2024.07.04.03.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jul 2024 03:28:54 -0700 (PDT)
Message-ID: <61b8b328-b72a-4bb5-9fb6-c226c2b773c4@gmail.com>
Date: Thu, 4 Jul 2024 12:28:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 09/24] drm/rockchip: dw_hdmi: add regulator support
To: Diederik de Haas <didi.debian@cknow.org>,
 dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-10-s.hauer@pengutronix.de>
 <16078476.GIfNKF0EQE@bagend>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <16078476.GIfNKF0EQE@bagend>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Am 04.07.24 um 11:09 schrieb Diederik de Haas:
> On Friday, 22 April 2022 09:28:26 CEST Sascha Hauer wrote:
>> The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
>> for the HDMI port. add support for these to the driver for boards which
>> have them supplied by switchable regulators.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>> ---
>>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 41 +++++++++++++++++++--
>>   1 file changed, 38 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>> b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c index
>> b64cc62c7b5af..fe4f9556239ac 100644
>> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>> @@ -9,6 +9,7 @@
>>   #include <linux/platform_device.h>
>>   #include <linux/phy/phy.h>
>>   #include <linux/regmap.h>
>> +#include <linux/regulator/consumer.h>
>>
>>   #include <drm/bridge/dw_hdmi.h>
>>   #include <drm/drm_edid.h>
>> @@ -76,6 +77,8 @@ struct rockchip_hdmi {
>>   	struct clk *ref_clk;
>>   	struct clk *grf_clk;
>>   	struct dw_hdmi *hdmi;
>> +	struct regulator *avdd_0v9;
>> +	struct regulator *avdd_1v8;
>>   	struct phy *phy;
>>   };
>>
>> @@ -226,6 +229,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi
>> *hdmi) return PTR_ERR(hdmi->grf_clk);
>>   	}
>>
>> +	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
>> +	if (IS_ERR(hdmi->avdd_0v9))
>> +		return PTR_ERR(hdmi->avdd_0v9);
>> +
>> +	hdmi->avdd_1v8 = devm_regulator_get(hdmi->dev, "avdd-1v8");
>> +	if (IS_ERR(hdmi->avdd_1v8))
>> +		return PTR_ERR(hdmi->avdd_1v8);
>> +
>>   	return 0;
>>   }
>>
>> @@ -566,11 +577,23 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
>> struct device *master, return ret;
>>   	}
>>
>> +	ret = regulator_enable(hdmi->avdd_0v9);
>> +	if (ret) {
>> +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd0v9:
> %d\n", ret);
>> +		goto err_avdd_0v9;
>> +	}
>> +
>> +	ret = regulator_enable(hdmi->avdd_1v8);
>> +	if (ret) {
>> +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd1v8:
> %d\n", ret);
>> +		goto err_avdd_1v8;
>> +	}
>> +
>>   	ret = clk_prepare_enable(hdmi->ref_clk);
>>   	if (ret) {
>>   		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI
> reference clock: %d\n",
>>   			      ret);
>> -		return ret;
>> +		goto err_clk;
>>   	}
>>
>>   	if (hdmi->chip_data == &rk3568_chip_data) {
>> @@ -594,10 +617,19 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
>> struct device *master, */
>>   	if (IS_ERR(hdmi->hdmi)) {
>>   		ret = PTR_ERR(hdmi->hdmi);
>> -		drm_encoder_cleanup(encoder);
>> -		clk_disable_unprepare(hdmi->ref_clk);
>> +		goto err_bind;
>>   	}
>>
>> +	return 0;
>> +
>> +err_bind:
>> +	clk_disable_unprepare(hdmi->ref_clk);
>> +	drm_encoder_cleanup(encoder);
>> +err_clk:
>> +	regulator_disable(hdmi->avdd_1v8);
>> +err_avdd_1v8:
>> +	regulator_disable(hdmi->avdd_0v9);
>> +err_avdd_0v9:
>>   	return ret;
>>   }
>>
>> @@ -608,6 +640,9 @@ static void dw_hdmi_rockchip_unbind(struct device *dev,
>> struct device *master,
>>
>>   	dw_hdmi_unbind(hdmi->hdmi);
>>   	clk_disable_unprepare(hdmi->ref_clk);
>> +
>> +	regulator_disable(hdmi->avdd_1v8);
>> +	regulator_disable(hdmi->avdd_0v9);
>>   }
>>
>>   static const struct component_ops dw_hdmi_rockchip_ops = {
> 
> Is it possible to probe for those avdd_0v9 and avdd_1v8 regulators only on
> devices that should have them?
> 
Those regulators exist for _all_ RK SoCs that use dw-hdmi controller, as it
has to be supplied in same why (as it is always the same controller). In
particular case of rock64[0] its:

DVIDEO_AVDD_1V8P6 -> VCC_18
DVIDEO_AVDD_1V0M6 -> VDD_10

So: Just fix the device tree and your warnings are gone :)

[0] https://files.pine64.org/doc/rock64/ROCK64_Schematic_v2.0_20171019.pdf

> On a Rock64 (rk3328), but probably for all VOP1 devices, they're not present
> and that results in the following warnings:
> dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
> dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator
> 
> And those get repeated a number of times. In my last 6.10-rc5 boot it was 5
> each and in my last 6.10-rc6 boot it was 9 each. It seems the number varies
> per boot and is not connected to the specific kernel version.
> 
> In [1] I got 36 "dummy regulator" warnings, but some were from others.
> 
> [1] https://lore.kernel.org/linux-rockchip/2528743.FZeJfPzi8P@bagend/
> 
> Cheers,
>    Diederik
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip



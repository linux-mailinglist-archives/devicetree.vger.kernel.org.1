Return-Path: <devicetree+bounces-150841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A80DA43AE0
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:10:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 958D2189DFB6
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 621CA267733;
	Tue, 25 Feb 2025 10:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yc5xdvny"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3D6264A96
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 10:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740477844; cv=none; b=FiEFjEz5TlbJrulW1avlVzUbwqTlnuAIBOISroSeIZ1kDJHY9Nk6+ePJvl/w2xDjIjM/1T+K49tr1OlJnUr/xY4DFTwsAmhQD1vSIoi4cGPortmflhLSdIgET3mD6vPNYodN0vyTsG3Z/ggATkoB+Lh0TAclgnl1G3G+Tjqlt7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740477844; c=relaxed/simple;
	bh=MeAuG9g0kh7yx/0OZj4iGOOodxJ7zXEytAEU21VeZYE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=e1tDTCGyjjKvN9vyAwqArYd6EnpwjIA93WP8evAsCR2rjkj1zkbRXCo/hhTP2Ozl8Xb9IIVDUVRRQtl4LGDfIWcKmlgbUuXjTNGaqks2Paa8H9r/y7YSlHkPrf0CHKvgUwGZ3BqxO1WFtwxV8uN/9Na8GrxWlCzL2ZjbImu0mQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yc5xdvny; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-438a3216fc2so51023825e9.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 02:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740477840; x=1741082640; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=axza/MmVyz9C3Qr4EfZALEXBydNniRgAQb/zT/Fw//c=;
        b=Yc5xdvnynYOFehMlYEbyPduYUPy+4T/9YVdQzoXh6kA1T4tztDNqJqCQDhdjVHf2nR
         UwXd329ileQ4pluIbuQ/TfyXi4BRFiYbeJdQsaFD5FSFCkcDuH3UqR5wb33VASJy6O8S
         0pNFmgVhjoJsY70w9RlUdd/mEP4BZyPsYJMCctBREF8jxG5XLpCsg94R8M6af9HdwHV2
         zSW3XV8g6Yo7Uk/FNdpMilz1YoyfWLIuoet4OPwlisSY5aLOhOb03N54C1mkZw1cjley
         fCGedM0doQww6E1gg+Yp2puwlSM17bMYwirk+u1/tCH2EBRLWDvrzCxiW8R483U+x6UC
         Dncg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740477840; x=1741082640;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=axza/MmVyz9C3Qr4EfZALEXBydNniRgAQb/zT/Fw//c=;
        b=TlVQ1aHC+T878gYrFvLFzL5Nh58oL+1jcacYRwy+oVYy3iFAjlZ825nODe4/GltXhB
         U7aVbVeLZhcgOb9dt9tsCfPJEE4bOsMPDLkuvj0uILVc10x6+8775tZkuiDdlj3/tUZz
         dHyGGmjvyKSFpgptoZ8py2xX3emZY+5550X0DjPZOaqXxLV5hgh5LhgnKnFEKC5IhpF9
         Z2F8P6JestqlDtTQ/CKRh7Piox77+Ue1gy/1Ihi+0n6rr8dDEsDs29tOtIyw8gi5zRDa
         HeP6mJZbnx0c0U6FXPA2ReYDhCk8tQFW6YePrEE91xfqK3uXgDCMSnitEmj5bMxL2OcQ
         hd4A==
X-Forwarded-Encrypted: i=1; AJvYcCUVoj2/PdS41Ux+TGcPZhMpaX0fKivSdFmJwZyAPbRvr0sDWiJufZh84VNXKHaArMsKfmcpM2+ZhK02@vger.kernel.org
X-Gm-Message-State: AOJu0YzL5V4SndwsuAxV1+VNT9s/lFOtj1clDpaJAzHGZiPKpZfRjVcm
	mvTjThgrL9Q/5bt89RLjao5TwGNAwIVs8Y4GZQai98wtnj5x+IEn4Wlz0n2+QgOe9y+SBIUl9+i
	i
X-Gm-Gg: ASbGncvgLeLlsfOS2GnO6Fl6tIMUNCqecpWufjZu1Jr6FSdgDd27CUScj0feAzMDtRU
	gMcn6Skkk398gRctLmLvlhyg7hVV6wyWg8WjBRqI/DfMEDinrq4/pIgkLtapfw6Bamub5dukzFU
	Vz4P8aQuu+tnu6Wv9DSQVb+Avp4dnJMFKj5c6nwhdfur0xd5CgXhBBiCYmMGv/Nu71xXsG9bA62
	YvupQNgbLTKihvYAjQUJpD1uthIYvnh6n30pgIPX330RyZB6W9E8JSng+fUM0Ud4afpF4Cx5nph
	XUaxcnQDIXe3WR66umetFIQI1CAZsvfgkEXa
X-Google-Smtp-Source: AGHT+IGbYDSR1aneEBaaWRfneGWy3uPGaqNxDg0oPyEDexsQdOgx1q2Z1nza9eKKEQmTMqZE0suHSg==
X-Received: by 2002:a05:600c:1e15:b0:439:9cbc:7753 with SMTP id 5b1f17b1804b1-439b03246d2mr140863025e9.10.1740477840041;
        Tue, 25 Feb 2025 02:04:00 -0800 (PST)
Received: from [192.168.1.100] ([37.167.173.6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd86cc6asm1769294f8f.35.2025.02.25.02.03.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 02:03:59 -0800 (PST)
Message-ID: <48f339f5-09f8-4498-83f2-4e2d773c3e23@linaro.org>
Date: Tue, 25 Feb 2025 11:03:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/4] media: platform: qcom/iris: add reset_controller &
 power_off_controller to vpu_ops
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250225-topic-sm8x50-iris-v10-v1-0-128ef05d9665@linaro.org>
 <20250225-topic-sm8x50-iris-v10-v1-2-128ef05d9665@linaro.org>
 <ityd34gfiyt6fvyuopnh3bi3edc5t2ubop4i72d54xyhhz3ixf@n6rnt5mwgw4b>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <ityd34gfiyt6fvyuopnh3bi3edc5t2ubop4i72d54xyhhz3ixf@n6rnt5mwgw4b>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/02/2025 11:02, Dmitry Baryshkov wrote:
> On Tue, Feb 25, 2025 at 10:05:10AM +0100, Neil Armstrong wrote:
>> In order to support the SM8650 iris33 hardware, we need to provide specific
>> reset and constoller power off sequences via the vpu_ops callbacks.
>>
>> Add those callbacks, and use the current helpers for currently supported
>> platforms.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/media/platform/qcom/iris/iris_vpu2.c       |  2 ++
>>   drivers/media/platform/qcom/iris/iris_vpu3.c       |  2 ++
>>   drivers/media/platform/qcom/iris/iris_vpu_common.c | 14 ++++++++++----
>>   drivers/media/platform/qcom/iris/iris_vpu_common.h |  4 ++++
>>   4 files changed, 18 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/media/platform/qcom/iris/iris_vpu2.c b/drivers/media/platform/qcom/iris/iris_vpu2.c
>> index 8f502aed43ce2fa6a272a2ce14ff1ca54d3e63a2..093e2068ec35e902f6c7bb3a487a679f9eada39a 100644
>> --- a/drivers/media/platform/qcom/iris/iris_vpu2.c
>> +++ b/drivers/media/platform/qcom/iris/iris_vpu2.c
>> @@ -33,6 +33,8 @@ static u64 iris_vpu2_calc_freq(struct iris_inst *inst, size_t data_size)
>>   }
>>   
>>   const struct vpu_ops iris_vpu2_ops = {
>> +	.reset_controller = iris_vpu_reset_controller,
>>   	.power_off_hw = iris_vpu_power_off_hw,
>> +	.power_off_controller = iris_vpu_power_off_controller,
>>   	.calc_freq = iris_vpu2_calc_freq,
>>   };
>> diff --git a/drivers/media/platform/qcom/iris/iris_vpu3.c b/drivers/media/platform/qcom/iris/iris_vpu3.c
>> index b484638e6105a69319232f667ee7ae95e3853698..95f362633c95b101ecfda6480c4c0b73416bd00c 100644
>> --- a/drivers/media/platform/qcom/iris/iris_vpu3.c
>> +++ b/drivers/media/platform/qcom/iris/iris_vpu3.c
>> @@ -117,6 +117,8 @@ static u64 iris_vpu3_calculate_frequency(struct iris_inst *inst, size_t data_siz
>>   }
>>   
>>   const struct vpu_ops iris_vpu3_ops = {
>> +	.reset_controller = iris_vpu_reset_controller,
>>   	.power_off_hw = iris_vpu3_power_off_hardware,
>> +	.power_off_controller = iris_vpu_power_off_controller,
>>   	.calc_freq = iris_vpu3_calculate_frequency,
>>   };
>> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.c b/drivers/media/platform/qcom/iris/iris_vpu_common.c
>> index fe9896d66848cdcd8c67bd45bbf3b6ce4a01ab10..ec8b10d836d0993bcd722a2bafbb577b85f41fc9 100644
>> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
>> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
>> @@ -211,7 +211,7 @@ int iris_vpu_prepare_pc(struct iris_core *core)
>>   	return -EAGAIN;
>>   }
>>   
>> -static int iris_vpu_power_off_controller(struct iris_core *core)
>> +int iris_vpu_power_off_controller(struct iris_core *core)
>>   {
>>   	u32 val = 0;
>>   	int ret;
>> @@ -264,23 +264,29 @@ void iris_vpu_power_off(struct iris_core *core)
>>   {
>>   	dev_pm_opp_set_rate(core->dev, 0);
>>   	core->iris_platform_data->vpu_ops->power_off_hw(core);
>> -	iris_vpu_power_off_controller(core);
>> +	core->iris_platform_data->vpu_ops->power_off_controller(core);
>>   	iris_unset_icc_bw(core);
>>   
>>   	if (!iris_vpu_watchdog(core, core->intr_status))
>>   		disable_irq_nosync(core->irq);
>>   }
>>   
>> -static int iris_vpu_power_on_controller(struct iris_core *core)
>> +int iris_vpu_reset_controller(struct iris_core *core)
> 
> If these functions are platform-specific, please rename them
> accordingly, like iris_vpu2_3_foo() or just iris_vpu2_foo().

They are not, this is the whole point.

Neil

> 
>>   {
>>   	u32 rst_tbl_size = core->iris_platform_data->clk_rst_tbl_size;
>> +
>> +	return reset_control_bulk_reset(rst_tbl_size, core->resets);
>> +}
>> +
>> +static int iris_vpu_power_on_controller(struct iris_core *core)
>> +{
>>   	int ret;
>>   
>>   	ret = iris_enable_power_domains(core, core->pmdomain_tbl->pd_devs[IRIS_CTRL_POWER_DOMAIN]);
>>   	if (ret)
>>   		return ret;
>>   
>> -	ret = reset_control_bulk_reset(rst_tbl_size, core->resets);
>> +	ret = core->iris_platform_data->vpu_ops->reset_controller(core);
>>   	if (ret)
>>   		goto err_disable_power;
>>   
>> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.h b/drivers/media/platform/qcom/iris/iris_vpu_common.h
>> index 63fa1fa5a4989e48aebdb6c7619c140000c0b44c..c948d8b5aee87ccf1fd53c5518a27294232d8fb8 100644
>> --- a/drivers/media/platform/qcom/iris/iris_vpu_common.h
>> +++ b/drivers/media/platform/qcom/iris/iris_vpu_common.h
>> @@ -12,7 +12,9 @@ extern const struct vpu_ops iris_vpu2_ops;
>>   extern const struct vpu_ops iris_vpu3_ops;
>>   
>>   struct vpu_ops {
>> +	int (*reset_controller)(struct iris_core *core);
>>   	void (*power_off_hw)(struct iris_core *core);
>> +	int (*power_off_controller)(struct iris_core *core);
>>   	u64 (*calc_freq)(struct iris_inst *inst, size_t data_size);
>>   };
>>   
>> @@ -21,7 +23,9 @@ void iris_vpu_raise_interrupt(struct iris_core *core);
>>   void iris_vpu_clear_interrupt(struct iris_core *core);
>>   int iris_vpu_watchdog(struct iris_core *core, u32 intr_status);
>>   int iris_vpu_prepare_pc(struct iris_core *core);
>> +int iris_vpu_reset_controller(struct iris_core *core);
>>   int iris_vpu_power_on(struct iris_core *core);
>> +int iris_vpu_power_off_controller(struct iris_core *core);
>>   void iris_vpu_power_off_hw(struct iris_core *core);
>>   void iris_vpu_power_off(struct iris_core *core);
>>   
>>
>> -- 
>> 2.34.1
>>
> 



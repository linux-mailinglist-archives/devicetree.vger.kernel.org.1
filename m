Return-Path: <devicetree+bounces-222908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 203A4BAF5A4
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:06:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C62362A0477
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F5024BBEE;
	Wed,  1 Oct 2025 07:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hPleTClS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463B47261E
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759302377; cv=none; b=KRd+x5LWCNXm7AL16F0Hv0PQM/qJpeTU0OnQcBxz6tWdykUb0/KHSg/0jT6qTNEgqDATh9f+mMXj/HG94SzBU2dV/gaQ9nzYcVAEPT+JAkyKcMpnBuL4BxsTIjJnXyxSLjKrwAgXbzv8J8mPzjWkZuhFkFEJeinZM6SwqFfeouY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759302377; c=relaxed/simple;
	bh=X4wJ4IikKM42rl0fBRkgwxXI1MPMbMYj2bbJClfN7Wc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=gLh0YmUxxr6bnGsJ8VIk5KhzhQNN5vOnnaeGUe3ic4jGkQpxX2Qx3/oUWLZj3cLIf1a2hipyeKQSbLlQl293WUgY7Vk/g7o29lFfJ7WqzUFtTgBs95HX26ldEFZyB7I8U8rOssaZHl/TTax4BAJu0thxrMyWooVPp0gbztFtDuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hPleTClS; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e30ef74b0so46695215e9.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759302372; x=1759907172; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AvARg4BtLyjXBG/oyTU38XVRM3fscS0RfPUj5chkaa0=;
        b=hPleTClS/WhLEigemD3Mg/Djpie9cuK+Zbac2FTeaZSoJEfEy2sQg/XdPhoRZ72hnO
         Qp+N08FL8L3dMDioBEVyz3wWIB+cNWwhK8nXkU/eNc4oM6h2nLWClosMM3+q8fz8Te7H
         tsqAh8UxTpFImXJFAT35a1PdMUTIifrW2SIB7N23HiEhj56N0YuT9mJMD5vyH2RX+OeU
         iFJdXFMHwdjjW1uJ0utUZOdEBifLW7oW7owfgJCh/+hsPt1A/Vavd5GdQuJMnWn9x+ty
         NplBwgv3legu38ngrkEFw0AqflN+4blShDGy3sbjnpQSAXkTT7ZEx0RWrBAV/id03UvM
         gmVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759302372; x=1759907172;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AvARg4BtLyjXBG/oyTU38XVRM3fscS0RfPUj5chkaa0=;
        b=J6ALk24xYdkvHxVJzftyF5MnIm0h8pLAwh2z3pvXyPkWkmL3uGkZkWMF/8RjvHgrXz
         QYRjLj3so1AxlAGuox3PmfyqoyCoPujaM9wGEBYQvGQWTqvsazRaTAYJ1EwQ/lFDXvsc
         BXenHlRg5iRM5EchAhykVFeFrvB6ZVnxW+86D7t8KnQ/QNh+EjYueyfrOOU39fZoOdVk
         gYhvqwYOUlZabyyun7VBHIItfl9lwuFWHmvIOuwY/BabhtUuLNd14yx0eZG29Qo9zk/Z
         ZwPxhepbzqiy3Iwro3R7cH8Zwstyqva5/vw6hgHn5+afdstfYtgV6deODKoLL+1pgN9E
         +ytA==
X-Forwarded-Encrypted: i=1; AJvYcCVqRoxitsY/eLaxbCBQ1lq6+LRze0XYLXurfNke0JID/pRcA9jIaQ1CpQOQ9eV3mLuxqFvSeOeRpdaU@vger.kernel.org
X-Gm-Message-State: AOJu0YySSJkIR36g+TMx7tgtFAIDIDuxhIlZPONpE9LVUL5ja9OttHg7
	wSLkU6typvixWCUxUAzHydhDZ8TOgvxu6pQ7z1nnlmwN3rOVdXRCvhJO5mPfWYLt1VU=
X-Gm-Gg: ASbGnctFCiP/GPEEu4B0pBPrgiXiaDqup4wOMbJDC791bMOPqq+4nwIn2DWieBztOGQ
	O1pCQNS1JW67iqlhEagEgfYuWig6BOLXF2TE7U4kPzHjg0j4VvAqCHR7XhciWvQy2qc3d8mLI6L
	c9cCn0yqTanW+lLxTO5OF/TEa8StJDRa3MYAnIw6TFl6uI2q7zF4eWY3bpoSDMQK+kf9o8EUgs7
	uYpQSCCQQNuFah4YfjAsP6kjCVQ1tfOStio0hqwuloKfhZQfDpqp4U2uTjKtaap7oyXtQyVLya2
	9ITA2TOoIDEgiF1HBOtqf6+ErH4eW4ZrQfLmdv1csbcftw7YdD5ekm/Xb247fryOSdZx3Ql70Vb
	18ds9Dw74sCssQ2RUSJCGwV25WRaMLpgHDAmK6bsBnimLPcGP1ZP7LHXvXMNJlJHhefkVhoDlYc
	dWP4waAXbP49R9VGGx84ndXdM=
X-Google-Smtp-Source: AGHT+IHBO9Z+Uh3slszHAPZuX3C+R/wZHwWLiDZirHkPHFUmv4L7FdIGetheWaVB+ku2T1GmiYZmxA==
X-Received: by 2002:a05:600c:83ca:b0:46e:42cb:d93f with SMTP id 5b1f17b1804b1-46e61279f57mr18248825e9.15.1759302372335;
        Wed, 01 Oct 2025 00:06:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f45f:c590:9006:d394? ([2a01:e0a:3d9:2080:f45f:c590:9006:d394])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c3cad50sm28924565e9.3.2025.10.01.00.06.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 00:06:11 -0700 (PDT)
Message-ID: <9d020a8e-22d8-4f1f-803c-d00bb912f699@linaro.org>
Date: Wed, 1 Oct 2025 09:06:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
 <uozgwot7yuwmaiwmqoo6ickblpqe52tnj44tnxcorygqxwou52@hksvktgq5zp7>
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
In-Reply-To: <uozgwot7yuwmaiwmqoo6ickblpqe52tnj44tnxcorygqxwou52@hksvktgq5zp7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/30/25 20:56, Dmitry Baryshkov wrote:
> On Tue, Sep 30, 2025 at 09:39:48AM +0200, Neil Armstrong wrote:
>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>
>> The routing of the lanes can be:
>> - 2 DP + 2 USB3
>> - 4 DP
>> - 2 USB3
>>
>> Get the lanes mapping from DT and stop registering the USB-C
>> muxes in favor of a static mode and orientation detemined
>> by the lanes mapping.
>>
>> This allows supporting boards with direct connection of USB3 and
>> DisplayPort lanes to the QMP Combo PHY lanes, not using the
>> USB-C Altmode feature.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 145 ++++++++++++++++++++++++++++--
>>   1 file changed, 137 insertions(+), 8 deletions(-)
>>
>> @@ -4167,9 +4269,41 @@ static int qmp_combo_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto err_node_put;
>>   
>> -	ret = qmp_combo_typec_register(qmp);
>> -	if (ret)
>> -		goto err_node_put;
>> +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
>> +
>> +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
>> +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
>> +		ret = qmp_combo_typec_register(qmp);
>> +		if (ret)
>> +			goto err_node_put;
>> +	} else {
>> +		enum typec_orientation dp_orientation = TYPEC_ORIENTATION_NONE;
>> +		enum typec_orientation usb3_orientation = TYPEC_ORIENTATION_NONE;
>> +
>> +		ret = qmp_combo_get_dt_dp_orientation(dev, &dp_orientation);
>> +		if (ret)
>> +			goto err_node_put;
>> +
>> +		ret = qmp_combo_get_dt_usb3_orientation(dev, &usb3_orientation);
>> +		if (ret)
>> +			goto err_node_put;
>> +
>> +		if (dp_orientation == TYPEC_ORIENTATION_NONE &&
>> +		    usb3_orientation != TYPEC_ORIENTATION_NONE) {
>> +			qmp->qmpphy_mode = QMPPHY_MODE_USB3_ONLY;
>> +			qmp->orientation = usb3_orientation;
>> +		} else if (usb3_orientation == TYPEC_ORIENTATION_NONE &&
>> +			 dp_orientation != TYPEC_ORIENTATION_NONE) {
>> +			qmp->qmpphy_mode = QMPPHY_MODE_DP_ONLY;
>> +			qmp->orientation = dp_orientation;
>> +		} else if (dp_orientation != TYPEC_ORIENTATION_NONE &&
>> +			 dp_orientation == usb3_orientation) {
>> +			qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
>> +			qmp->orientation = dp_orientation;
>> +		} else {
>> +			dev_warn(dev, "unable to determine orientation & mode from data-lanes");
>> +		}
>> +	}
>>   
>>   	ret = drm_aux_bridge_register(dev);
>>   	if (ret)
>> @@ -4189,11 +4323,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto err_node_put;
>>   
>> -	/*
>> -	 * The hw default is USB3_ONLY, but USB3+DP mode lets us more easily
>> -	 * check both sub-blocks' init tables for blunders at probe time.
>> -	 */
>> -	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> 
> SHouldn't this still be a default in the 'normal' USB-C case?

It is, I just moved it before the added logic, but the comment doesn't really
apply anymore

Neil

> 
>>   
>>   	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>>   	if (IS_ERR(qmp->usb_phy)) {
>>
>> -- 
>> 2.34.1
>>
> 



Return-Path: <devicetree+bounces-69393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F278CFC1F
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:48:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 463261C21C97
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EEC56A33A;
	Mon, 27 May 2024 08:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M7lheJJZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFF560882
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716799696; cv=none; b=hOTLSZHfnUlXkBhTZKAF0FxodNWLVpkvLCpr/kdnYJDsNeDk82wlma/BiAZtHCFo12dh9qDmIe0k4taQ9zJUnRnP5cvlf21ntTrAroIeRcIC++pLHrPGo4vJV7AmHFfoH+4zf51ivtAMvWJSn+vUZdk/hGh1HagjjrK2dlH/s6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716799696; c=relaxed/simple;
	bh=sPNOh/RvH7+NhB0lztzZ10hM6y4Nef8BFMKIfZEdbLY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=jvIsowVNiGBfQT6uRbN35YnasbN/NdrZr0rmvMNxaXSZxifYk2lRaqRF/sCcftkL5Pi0w4iPVOHH03D7PVh1fkAzrba0GIaUafUU8vAo0/E6viC1Ow7vpoiChZ4W5YsUCQjTNcKnWJut30j2N4KjkOJVTthD4xxsQRmZCzpTm3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M7lheJJZ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-421124a04d6so7955125e9.3
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799694; x=1717404494; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/BoiH3PrE5Z52gU+/bga8Krds/WFhLzgOzlw5DShXKc=;
        b=M7lheJJZkgd6OyBUBE8HocDjv7l2Iq4Om6LAUSMjOGKG58zGfv0edLM44gcYghkyX2
         qhleDfdi46a5lRhQ2RurLXmspQQftsUUoLAR7ebrLMNslCB8qTUzNBuwBAGXlxucIv00
         dCfk5A0dmNAgJ8THYwjVrnPZv+HxjIVPkjlApP6ANWsin6l45ia3LjfUxLRbTyTNLeUO
         OOzbtzjZtgbmu4fXOdR13EpnGPANQ9CzfqAAMeYMUIDkXJLpgJZhKSUXo0PucV3lrxfD
         W4JEM9nkimbwtpV3/9CphbJ/i/eCqe7b+yPHiM7sroVOtHsV2k4ihdeUz2KsVWEFI4VR
         LtJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799694; x=1717404494;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/BoiH3PrE5Z52gU+/bga8Krds/WFhLzgOzlw5DShXKc=;
        b=D3fml4PW4Y4Hv5VKBQdRLEPn9ogQGPurx+lXxN9bsZHZNI7Bqrw5CLpxLrV/4vfEjg
         qEQeF1k0JGk8K5L3sGFRAbj+zkMFVFCF0bAvorXyCo/qhqrJw9NY0RjA8VgVVIiLg5dT
         tgeVCkdw9JwSAXILgS90DD6jWuLqlSTg/E93ikWZsgjYCdmF8DacZSW7uc7FxAIreVfU
         lY7Mhab3um2UIn53qzw7LkIX6W/D2W4LOpSwdvfIe6ZH8lDfNb3wW4Hui0V6EPL9BzKx
         545N+J5d7L/EcfIGspd153kF9XV/fSSvvZsBQbdJshZiLFhK9Zyzt17DAbdeJkCQ/tME
         UqdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUV2EoYQqk2oiCLw9gKHWgejwSf75eWMXamanwlTNO/26gvG/lJ4eDh4vmtRaWo/eUCLCkBWbM7INskHNa4oB7BWtNoNtHNGR5k6g==
X-Gm-Message-State: AOJu0YzUBRDxqHFT3N2IAuBVXglASNY8umMEdzHuDVhql3fHgZ7QPHyR
	L5u9mh3VZ27I9olZ+9YD1MzTx576zh162mmffBQlIt3NpQaiNg+b9cZopSeFc5I=
X-Google-Smtp-Source: AGHT+IEED56KX/k0SKrUPUle14ZPrTlxBx2vb8tUqjMqmW8hTWg0L4LEMzpI/Q0kkUkfTHENA1aPyA==
X-Received: by 2002:a05:600c:5848:b0:41f:fb7b:bc53 with SMTP id 5b1f17b1804b1-421089ea66cmr72367625e9.22.1716799693619;
        Mon, 27 May 2024 01:48:13 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:371c:b423:6c2b:61bb? ([2a01:e0a:982:cbb0:371c:b423:6c2b:61bb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f1ad4bsm134400675e9.19.2024.05.27.01.48.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 01:48:13 -0700 (PDT)
Message-ID: <c767bc42-f4f7-44f5-b712-5933a921b386@linaro.org>
Date: Mon, 27 May 2024 10:48:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 3/7] phy: qcom: qmp-combo: introduce QPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-3-a03e68d7b8fc@linaro.org>
 <v36mrliwd7rarqofbitv5mtb6kd3n3hmuwp6bgg67krnvzejd6@luityjlkb7nn>
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
In-Reply-To: <v36mrliwd7rarqofbitv5mtb6kd3n3hmuwp6bgg67krnvzejd6@luityjlkb7nn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/05/2024 10:46, Dmitry Baryshkov wrote:
> On Mon, May 27, 2024 at 10:42:35AM +0200, Neil Armstrong wrote:
>> Introduce an enum for the QMP Combo PHY modes, use it in the
>> QMP commmon phy init function and default to COMBO mode.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 41 +++++++++++++++++++++++++++----
>>   1 file changed, 36 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index 183cd9cd1884..788e4c05eaf2 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> @@ -61,6 +61,12 @@
>>   
>>   #define PHY_INIT_COMPLETE_TIMEOUT		10000
>>   
>> +enum qphy_mode {
>> +	QPHY_MODE_COMBO = 0,
>> +	QPHY_MODE_DP_ONLY,
>> +	QPHY_MODE_USB_ONLY,
>> +};
>> +
>>   /* set of registers with offsets different per-PHY */
>>   enum qphy_reg_layout {
>>   	/* PCS registers */
>> @@ -1503,6 +1509,7 @@ struct qmp_combo {
>>   
>>   	struct mutex phy_mutex;
>>   	int init_count;
>> +	enum qphy_mode init_mode;
>>   
>>   	struct phy *usb_phy;
>>   	enum phy_mode mode;
>> @@ -2589,12 +2596,33 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>>   	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
>>   		val |= SW_PORTSELECT_VAL;
>>   	writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
>> -	writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>>   
>> -	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
>> -	qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> -			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>> -			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>> +	switch (qmp->init_mode) {
>> +	case QPHY_MODE_COMBO:
>> +		writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> +
>> +		/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
>> +		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> +				SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>> +				SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>> +		break;
>> +
>> +	case QPHY_MODE_DP_ONLY:
>> +		writel(DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> +
>> +		/* bring QMP DP PHY PCS block out of reset */
>> +		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> +				SW_DPPHY_RESET_MUX | SW_DPPHY_RESET);
>> +		break;
>> +
>> +	case QPHY_MODE_USB_ONLY:
>> +		writel(USB3_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> +
>> +		/* bring QMP USB PHY PCS block out of reset */
>> +		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> +				SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>> +		break;
>> +	}
>>   
>>   	qphy_clrbits(com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
>>   	qphy_clrbits(com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
>> @@ -3603,6 +3631,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto err_node_put;
>>   
>> +	/* Set PHY_MODE as combo by default */
>> +	qmp->init_mode = QPHY_MODE_COMBO;
>> +
> 
> I see that COMBO mode is backwards compatible with existing code. But
> shouldn't the USB-only be a default mode?

No because it would break existing platforms without "mode-switch" in DT.

Neil

> 
>>   	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>>   	if (IS_ERR(qmp->usb_phy)) {
>>   		ret = PTR_ERR(qmp->usb_phy);
>>
>> -- 
>> 2.34.1
>>
> 



Return-Path: <devicetree+bounces-182736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD5CACDDF0
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 14:31:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D0E416FF0E
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 12:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A5DA28ECD9;
	Wed,  4 Jun 2025 12:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FEnD/5b+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3969E4C92
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 12:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749040267; cv=none; b=iXSsLDXxdDG3v6GLA5NA8ptk9Od3LBpKlx1Y4UsYPV17tw+gzvrPsVa0VxUcCHSSz+9xLjZlJm6NJlGgwX1IkCnhx312mhS8H39L0wXmmKYiOsCeqnpJSe2FAOb6h4yLYbSgxGWUqFLjksk+H09M9srk2rJbB8nv4kYB+ewpku0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749040267; c=relaxed/simple;
	bh=WOP/Iq1wBy5gxtloo/z9u4rESYoQrzSQYdvcXAWOV0o=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=RKW8sBofq69R+CNoFxIMoTUN6Y6twSlJuXqHEyavjXhqyknOiFTjVjWNFXh6K6/XgAfDpQ6lhKIQUDm/HorCfNWM70SGjb8l2fD8pZFfQe8BEHt7+AQQ3ec352FuDq4hgS1dGRkIlwLxg9qLkfIiw1RyDZ73sJdEf41JOqPSp5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FEnD/5b+; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a3771c0f8cso4215901f8f.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 05:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749040262; x=1749645062; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7yj0zlMR49toHUQXpYH0dEn/fkSQomXHurjcyLF6CYY=;
        b=FEnD/5b+O2VBqZtZFG7ucwNqSR6w67M0sdAIZd06ZKa1FFw+lluxqE6vMWAqvPc69i
         //AGR1wssUZYoDVZtS5IdmW4bLxJm+2aZTut6bIczEPRKaDZoieC9Hz6UZgtop6oqlTg
         tmf7rakmIR2rzvtSNnJ2JBUod4Rt3cZQA/vanUGLxPrskfTjog6FOcRfHVpliWKF+oEC
         yaVCZMrAJiKlTEUACh0g6FkTfWMajYj7Abh1J5Yz/BGLgzkxUJ8p+vKI5yv6ZJqwlhrJ
         0Rv/lL8bpEpVIHZqT1o4JpqCXhWNEnacdPCIfoNtuRiHj0PHOBiyJ/J1Xmp0b5UmB5wY
         ZkHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749040262; x=1749645062;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7yj0zlMR49toHUQXpYH0dEn/fkSQomXHurjcyLF6CYY=;
        b=B3xhN948Sb1ujkhK3BUi7oSBLqV9uBYBBOHDivcwHiUJcJ+51GkqveVzdxDIy7TlyD
         fdtrLMwrtj8C/nWOWkUvJaC7ux0KMzVz8mMz+0xlIKecg0zyXnEkAWjffwOj9xEGHaO9
         JgKc3r3brsSgkzrNEStH2MU61daHFf3ci2eanHkYRK8VzZn8n/ZgN5qBiVKCuk9h00dm
         /o/n6+ki8CZC8F8vzyBvaY3RYST5lpetQ8kV2p1RYRxB+xcWRAWyHql1eZVs4s9qx87l
         uWiS2ndOJLx9OD83e83umOUVTyRX2X78jOywoOv4gJI5Eh5iAXDR5cA1ZJwOJj2DAogv
         +tZw==
X-Forwarded-Encrypted: i=1; AJvYcCVUxZRHw9DsxaOuv8vOq+0KpPcswKJwhR5DPxRGacTJcKsWudt8NAh8O4GVTwR1fyEnpGiKtEMp03hA@vger.kernel.org
X-Gm-Message-State: AOJu0YzHEpc+GtIvJ84LjrEUXu2PiYrNVHDOJ/bbVUCIwR5tYjnRwqIq
	ZYqDw2OXAEKkmgYhsF+HMIukhZHNQDw+6AXVVDHCiDWQYnBaCDRQekCK8414bR7SU8M=
X-Gm-Gg: ASbGnct9bMEAwW9hiY7M+LqfY2T9hzPjsbgC1+7q1Xddyxnu2pddIgq0wNYOo8PZHty
	G8QOPty9Nlk/IzNq+Z1mIb2BET21hpq9rQop3Ba6t0K9ucBkEz8eaUxza6JQOmGP5uQxd5qubgB
	nEup8ydkdxFEbvC9lATDULN6jmFzho7v1T9czvJKAQQLJNtIMfKyyj3mq366dxVfMlP0l/whIww
	2I/PrN+fGRrwO0LDThxBOu6eCpa0j1MwwyGCeDXugXj735RDncSuV2V5e2asRYk1MCtLGUg77uY
	XCfPv1iQkTb17qkiUDnH70+CCQJLxey1FhOZ/c+CFbAdikfhqjer+bUHwVWMcUBy6tAEkRBDxt1
	xIbaeEzPBV+k9NebWc4gcfGDLBw==
X-Google-Smtp-Source: AGHT+IHdxMRv0eANYE7IAurtOvGkbnskamym6COdAUNLPO97TgAsV/C0AQYjvjwt6nEMINDfaFGG1w==
X-Received: by 2002:a5d:64e2:0:b0:3a4:e5bc:9892 with SMTP id ffacd0b85a97d-3a51d9305e1mr2186384f8f.21.1749040262472;
        Wed, 04 Jun 2025 05:31:02 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fef9:cf1c:18f:2ab8? ([2a01:e0a:3d9:2080:fef9:cf1c:18f:2ab8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe5b7a5sm21840554f8f.15.2025.06.04.05.31.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 05:31:02 -0700 (PDT)
Message-ID: <8d487a50-c253-4559-87f0-d10b21e31eb5@linaro.org>
Date: Wed, 4 Jun 2025 14:31:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/7] phy: qcom: qmp-combo: introduce QPHY_MODE
To: Udipto Goswami <quic_ugoswami@quicinc.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-3-a03e68d7b8fc@linaro.org>
 <80b21999-f69a-4546-8b8a-2acb59df3fa1@quicinc.com>
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
In-Reply-To: <80b21999-f69a-4546-8b8a-2acb59df3fa1@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/06/2025 13:25, Udipto Goswami wrote:
> 
> 
> On 5/27/2024 2:12 PM, Neil Armstrong wrote:
>> Introduce an enum for the QMP Combo PHY modes, use it in the
>> QMP commmon phy init function and default to COMBO mode.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 41 +++++++++++++++++++++++++++----
>>   1 file changed, 36 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index 183cd9cd1884..788e4c05eaf2 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> @@ -61,6 +61,12 @@
>>   #define PHY_INIT_COMPLETE_TIMEOUT        10000
>> +enum qphy_mode {
>> +    QPHY_MODE_COMBO = 0,
> 
> Hi Neil,
> 
> I have a doubt here, shouldn't this be aligned with what typec_altmode has ?
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/usb/typec_altmode.h?h=v6.15#n113
> 
> This patch marks COMBO mode as 0
> when the mux_set when called from pmic_glink_altmode.c
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/soc/qcom/pmic_glink_altmode.c?h=v6.15#n160
> 
> the state will start from 2 if i'm not wrong ?
> 
> For the similar implmentation I referring to fsa4480.c which seems to be using the enums from typec_altmode.c therefore asking.

Those enums are local to the driver, not related to altmode bits at all,
they represent the 3 possible states of the combo phy.

Neil

> 
> 
> Thanks,
> -Udipto
> 
>> +    QPHY_MODE_DP_ONLY,
>> +    QPHY_MODE_USB_ONLY,
>> +};
>> +
>>   /* set of registers with offsets different per-PHY */
>>   enum qphy_reg_layout {
>>       /* PCS registers */
>> @@ -1503,6 +1509,7 @@ struct qmp_combo {
>>       struct mutex phy_mutex;
>>       int init_count;
>> +    enum qphy_mode init_mode;
>>       struct phy *usb_phy;
>>       enum phy_mode mode;
>> @@ -2589,12 +2596,33 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>>       if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
>>           val |= SW_PORTSELECT_VAL;
>>       writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
>> -    writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> -    /* bring both QMP USB and QMP DP PHYs PCS block out of reset */
>> -    qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> -            SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>> -            SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>> +    switch (qmp->init_mode) {
>> +    case QPHY_MODE_COMBO:
>> +        writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> +
>> +        /* bring both QMP USB and QMP DP PHYs PCS block out of reset */
>> +        qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> +                SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>> +                SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>> +        break;
>> +
>> +    case QPHY_MODE_DP_ONLY:
>> +        writel(DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> +
>> +        /* bring QMP DP PHY PCS block out of reset */
>> +        qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> +                SW_DPPHY_RESET_MUX | SW_DPPHY_RESET);
>> +        break;
>> +
>> +    case QPHY_MODE_USB_ONLY:
>> +        writel(USB3_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> +
>> +        /* bring QMP USB PHY PCS block out of reset */
>> +        qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> +                SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>> +        break;
>> +    }
>>       qphy_clrbits(com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
>>       qphy_clrbits(com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
>> @@ -3603,6 +3631,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
>>       if (ret)
>>           goto err_node_put;
>> +    /* Set PHY_MODE as combo by default */
>> +    qmp->init_mode = QPHY_MODE_COMBO;
>> +
>>       qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>>       if (IS_ERR(qmp->usb_phy)) {
>>           ret = PTR_ERR(qmp->usb_phy);
>>
> 



Return-Path: <devicetree+bounces-257226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C67CFD3C287
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 09:49:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4DA2A620EF7
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 08:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFF5D3C0083;
	Tue, 20 Jan 2026 08:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KkLjRuKV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CA63BBA09
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 08:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768897632; cv=none; b=Kh+rpss6FHspMHf2gnpiTWCeZmu9Y409ud8Kf9xqx+PAe5ju/rSmzyoV30cUxbFE6k8oXUus++FBfdf0/fgOZsD50o5K7nyRbfS4F0KAsKty1vxEEJRmAbI4dP1MwIWO/BKJ/QOTTRhbQOVg3tm43wS4PbaiE4FTbNLWUM08uTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768897632; c=relaxed/simple;
	bh=b3F9T8wKon4w49RwF+HKEQBLY8ObyScOEG6oxY6rFMc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=SSCzA4+zPPEPs/f0aPZt+y6C/DtHnvo+Fa0tzbjc6fR2nJvgF2m99O+JsihzGtzDJVth2OIn/dT6TeE9NMWwHVAQxUlWqSuzMdJU8+CKGWzlThAbHfFZ8z1rMX/f0JBCR13cFQxoIxrHYnWOE3r/GK5IkCnmdJTqRkXqKYlxMBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KkLjRuKV; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47edd9024b1so31192145e9.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 00:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768897629; x=1769502429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jhpKp4EOdc/uAxidXP5+DjIvtbDmc1Iqu+qiPd4ztK8=;
        b=KkLjRuKVLDj/ZOvuKaN8MRaLxkMgNZ/fmye5o4chiugyQ79/cY8bQJf1kjBuLtcEXW
         mYBhu01pqnVvde+Bc45tqW3d1OGOAJPfdqHmxVw89c3+Um2o3hilyzB4OVq8h7x7oaRt
         2+ppQsczrtDlh6ab5jGghPx4BpTQfrY7KRwN3N6aHf2gzEALYyiyOr4ZG6NL7eOCHy27
         +SQi/Re/O3nLP7xXAbax/lSRbC8OkEmRMK5uXgVyopb3misXjGj4kH10olswCrdeJLKl
         F3L8QNVIZEzXbfJN2AiVmRuORsilwUsyeokD77IAoqSsx68rtgfgRQ0h+3/53tlyrjiz
         Rb5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768897629; x=1769502429;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jhpKp4EOdc/uAxidXP5+DjIvtbDmc1Iqu+qiPd4ztK8=;
        b=KT2uTYLkDtWHMdwL59o43RXYVQvEIktMTZPa00Ot/WsJ+RdV0n5icEyJLOx7D0WBfe
         axngHTitv+ptMMVtQx4wCFgWyrm7tc2eCqYbREgbIs+TR27yaJl1xtzNQdX8U0M+UmCc
         E/5LOU6MWeeoHA631RAPnP3whumf7Na+MC/agcphxzpDMO/7GB+7rQRaAaqzNLnbwDe/
         ig6b4e0578f1JnN9h7MxgvEJjuIJFhNSKm2/uhTujDIHhG9lH6Z+hIZ3/E0cFTvN2Z3S
         xcVU0BRmEyuP2DLOeIyI0ja+RqPhf2fTM280NEaEpFTkG632U9dAZCz+4tq3NhmehEsz
         aArQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFH0ut/vD7tMU9IoCzJwF7wv0NgcIKie/pM9kR62nUdeqW5MzoEq8hUj6D1bToNtVg6Yb2Sukc9Fid@vger.kernel.org
X-Gm-Message-State: AOJu0Yzlcir3Apq31r85l2HEitzVvHeK/uq5NtvbLDCY0apVtrTx6j6y
	yFTqCS90JrREb1s8dchDzVAC/rBMuaYsHosU9tkSLyXnXo42Mv5oIQJbSiHEfcTw27c=
X-Gm-Gg: AY/fxX6+M8rAIlik7bz9vIE1+niuq7qnSNOUzkquhKzGn4UasVMuE4OC0lNh451dh8d
	KD5q73OYiE5y7Ewt8Q4eu9rctDogD1C20Q0ftj3yn90dO9YLl5QurDYfZNqrQUEm+I6qove0f0+
	/fQsZhsfjROTJ97F0keBfzVJWwTbLQawfvogW85/VNaKXMQSfXbpp+OBjeWvNqsZdbeZd6aIk0A
	OcpsTWDl/BNsbgHiX07MiZsAygFslLlBe11yZr7EIlLPecibfgBsQM8QcYkh+4Z0eISxt4O3PLT
	1Mukf4MdOJhJoumpdgrzy5t0MfBo+4D2/cauC3ge2oP9lhEJFURmigeDTJZ4AffavbhJNQUvy5k
	3VBT1iYJpISzd0D2+k8pMr7oQEVwGNLKTWdZRBa2+oYdGy4l4LvzkMlyACzwhH9C60Kog4EJfWV
	+6it7Ini7o8tvsIDveB/UJAKb9WpRtbWJKuPf5vLaCbh2ifM4H2k9a5n5PeUFSmno=
X-Received: by 2002:a05:600c:4748:b0:480:1c85:88bf with SMTP id 5b1f17b1804b1-4801eb10a4amr178650505e9.27.1768897628697;
        Tue, 20 Jan 2026 00:27:08 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:f0d5:3a84:e303:190e? ([2a01:e0a:3d9:2080:f0d5:3a84:e303:190e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e80c477sm274167845e9.0.2026.01.20.00.27.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 00:27:08 -0800 (PST)
Message-ID: <3bf9ab54-6d9d-4d17-bd43-9f6ad10c48bb@linaro.org>
Date: Tue, 20 Jan 2026 09:27:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: =?UTF-8?B?UmU6IOWbnuWkjTogW1BBVENIIHYxXSBhcm02NDogZHRzOiBhbWxvZ2lj?=
 =?UTF-8?Q?=3A_meson-s4-s905y4-khadas-vim1s=3A_enable_SDIO_interface?=
To: Nick Xie <nick@khadas.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: "khilman@baylibre.com" <khilman@baylibre.com>,
 "jbrunet@baylibre.com" <jbrunet@baylibre.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "robh@kernel.org"
 <robh@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "xieqinick@gmail.com" <xieqinick@gmail.com>
References: <20260116023900.2036657-1-nick@khadas.com>
 <CAFBinCAeNcKW_dK+1LD7U_+JkcozxmMw9J4oGUt1=OcvJ95dFQ@mail.gmail.com>
 <PS1PPF62EEA9B1D468A8845F947D26A387BAE89A@PS1PPF62EEA9B1D.apcprd03.prod.outlook.com>
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
In-Reply-To: <PS1PPF62EEA9B1D468A8845F947D26A387BAE89A@PS1PPF62EEA9B1D.apcprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/20/26 02:34, Nick Xie wrote:
> [...]
>>> +&sdio {
>>> +       status = "okay";
>>> +       pinctrl-0 = <&sdio_pins>;
>>> +       pinctrl-1 = <&sdio_clk_gate_pins>;
>>> +       pinctrl-names = "default", "clk-gate";
>>> +       #address-cells = <1>;
>>> +       #size-cells = <0>;
>>> +       bus-width = <4>;
>>> +       cap-sd-highspeed;
>>> +       sd-uhs-sdr50;
>>> +       sd-uhs-sdr104;
>>> +       max-frequency = <50000000>;
>>> +       non-removable;
>>> +       disable-wp;
>>> +
>>> +       amlogic,dram-access-quirk;
>> Have you tried without this property? To my knowledge only early G12A
>> and G12B SoCs required this.
>> The mode enabled by this property limits the SDIO throughput. So it
>> should only be used if the silicon requires this.
> 
> Without this property it will get an warning:
> 
> meson-gx-mmc fe088000.mmc: unaligned sg len 96 blksize 512, disabling descriptor DMA for transfer
> 
>>> +       no-sd;
>>> +       no-mmc;
>>> +       mmc-pwrseq = <&sdio_pwrseq>
>>> +       vmmc-supply = <&vddao_3v3>;
>>> +       vqmmc-supply = <&vddio_ao1v8>;
>> I'm missing:
>>    clocks = <&sdio_32k>;
>>    clock-names = "lpo";
> 
> Maybe it is not needed? This clock property looks for the bluetooth not for the Wi-Fi ?
> 
>>> +       brcmf: wifi@1 {
>>> +               reg = <1>;
>>> +               compatible = "brcm,bcm4329-fmac";
>> Is AP6256 using a bcm43456 chip? If so then this should be (according
>> to Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml):
>>     compatible = "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";
> 
> OK, I will fix it in next version.
> 
> With this SDIO patch, the SDIO card detected well, but when try to connect the wifi, it still failed.
> So maybe extra patches are needed to make Wi-Fi working.
> 
> [    5.909858] meson-gx-mmc fe088000.mmc: allocated mmc-pwrseq
> [    6.113160] mmc2: new UHS-I speed SDR104 SDIO card at address 0001
> [   19.206019] brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac43456-sdio for chip BCM4345/9
> [   19.208638] brcmfmac mmc2:0001:1: Direct firmware load for brcm/brcmfmac43456-sdio.khadas,vim1s.bin failed with error -2
> [   19.218170] brcmfmac mmc2:0001:1: Direct firmware load for brcm/brcmfmac43456-sdio.clm_blob failed with error -2
> [   19.332091] brcmfmac: brcmf_c_process_clm_blob: no clm_blob available (err=-2), device may have limited channels available
> [   19.332113] brcmfmac: brcmf_c_process_txcap_blob: no txcap_blob available (err=-2)
> [   19.332327] brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM4345/9 wl0: Jun 25 2021 17:13:38 version 7.45.96.94 (7bb6b14@SYNA) (r745790) FWID 01-2bdfb64c es7.c5.n4.a3
> [   19.332731] brcmfmac: brcmf_sdio_read_control: read 232 control bytes failed: -84
> [   19.332988] brcmfmac: brcmf_sdio_rxfail: abort command, terminate frame, send NAK
> [   21.939090] brcmfmac: brcmf_sdio_bus_rxctl: resumed on timeout
> [   35.587422] meson-gx-mmc fe088000.mmc: unaligned sg len 96 blksize 512, disabling descriptor DMA for transfer

This is an issue with the driver, it's unrelated with the amlogic,dram-access-quirk, which fixes this because we use a bounce buffer.

> [   44.412677] ieee80211 phy0: brcmf_cfg80211_connect: BRCMF_C_SET_SSID failed (-52)
> [   45.696901] ieee80211 phy0: brcmf_cfg80211_connect: BRCMF_C_SET_SSID failed (-52)
> [   47.491768] ieee80211 phy0: brcmf_cfg80211_connect: BRCMF_C_SET_SSID failed (-52)
> [   53.292090] ieee80211 phy0: brcmf_cfg80211_connect: BRCMF_C_SET_SSID failed (-52)
> [   59.866328] ieee80211 phy0: brcmf_cfg80211_connect: BRCMF_C_SET_SSID failed (-52)
> 
> 
> Best regards,
> Nick
> 



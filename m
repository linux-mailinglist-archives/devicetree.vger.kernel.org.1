Return-Path: <devicetree+bounces-34184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2951B838F51
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 14:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C29E62932F4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 13:06:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDFB45F56F;
	Tue, 23 Jan 2024 13:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oJ8C2m3j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EDC5F563
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 13:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706014959; cv=none; b=SV8bQSBhcYFZfI9S/z7yAUS6g+w8sY3eBfeQ7cSJGw6xeG3GSlEOxIBexic5/y6Qev/MY5rw/n8TDR7F+2WLsrcFZ333fp86uahqHYVxg+fJ8zXdxCoPgGvD+FWd4Nzk+QAXxH3/vTC7piYv2du8GuXEL0nRPab9MiI87MbZfR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706014959; c=relaxed/simple;
	bh=q76VkDtl+vgSR+fmSjKAcUgspQldB0HNtNapyRkibTE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=nMDd2iLJPPWCNmjwrD8pmKSRsl1T6OWCGb0B1ymc+0sPTRBHZy1P4UuH9klQ+Lp5xsQkIHSdI+eFjTzRfxPeM2LfB/JNBojwk2MxREN2bv5QGvx3ErvmUc99PzNmBtJC7N/+AznvR3ghRD8gSVvZZ2RE7/rJ2hOi+rG1mOc0woY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oJ8C2m3j; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40e9ef9853bso23923775e9.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 05:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706014955; x=1706619755; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LN6A0GRXJNcyTInG7cfHubjRXOrohdQ41jxJ5QfrARc=;
        b=oJ8C2m3jo+M8CPnz0uqyz6zW2rgypFRotQXD6mi1oPOs7uUv6imMvRN7G8q6Na41xg
         0g2izaaCynU1IMKEOjlSMKnlqWAzEss3lO96UbmLESUQS87Nv9fFK0HD7T7+lE564YLv
         errnnHnCWofzpaT4UsyTCOM7Qmxn1FIK0ZeBxHvDWfcOkaKqu4gC3H7Z145437Tr8ceg
         j/MNq+9GMpY98ZE7a+5QKXKneOtcN9uj0XSwtVxMt47G8C7PfwvOJ4R8Ll75xUA7YujP
         IIPEJ1LsI96FGU0jU9tnmYMoLAjzUVGANpKtK/4gPtIXoGPyNJ1G40WHdz+46ikgF4qV
         LmFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706014955; x=1706619755;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LN6A0GRXJNcyTInG7cfHubjRXOrohdQ41jxJ5QfrARc=;
        b=WpwlCKzA/16r5OffSyg0Y6keMBsUiuLtvg1vplF6/A/Y7YFO4Z7ez/6Qe2LcRg4s27
         8D31mYkeiveEeRCeD4V8HPiyovrTDtqWYDNfkj8EBBWzlrZY5fAZd40h5UxJNEtkNjY7
         HiiUBbOMiXm62MQi5PRdAKwBnFTYMKC4s8gr2ANDFB2imsgGIpg9QWAvpxtc6QEIxAqW
         n4kk+xlSt5oZcb4+4XM53XjXpShQbIQIfSCm/tBL5W4eENgrKqiKlZAvofoBVIa4eo4I
         avCZsbUB/3O60QgvJa6qcXmioceKdFFFxZgThOdg48udVA9/j1RFBazsadUixQ7vobQJ
         pypQ==
X-Gm-Message-State: AOJu0YzkxODGJSPs3etIV704QbqBNmJDpQD2YyBPR4vrjVCOl5HIH6tW
	7rdnNYzrZjGTOspMtSxgFeFMY3gcv+S1NEE+TeBIh2pUKnTN18bx+xEhBLgT8qA=
X-Google-Smtp-Source: AGHT+IFiyEyokLEcfR1JFu3/DQmHBRFljA7lg/aM5IwuP8f0UAUeLfiSi/l8CyOgF57ncdUakFCjEQ==
X-Received: by 2002:a05:600c:1386:b0:40e:b963:3cfd with SMTP id u6-20020a05600c138600b0040eb9633cfdmr123094wmf.30.1706014954528;
        Tue, 23 Jan 2024 05:02:34 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:1892:c253:b69f:39e8? ([2a01:e0a:982:cbb0:1892:c253:b69f:39e8])
        by smtp.gmail.com with ESMTPSA id m21-20020a05600c4f5500b0040e4733aecbsm42351019wmq.15.2024.01.23.05.02.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 05:02:34 -0800 (PST)
Message-ID: <ae81dbe6-46e8-4d30-885e-f2ba49a7f89f@linaro.org>
Date: Tue, 23 Jan 2024 14:02:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sm8550: add support for the
 SM8550-HDK board
Content-Language: en-US, fr
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240123-topic-sm8550-upstream-hdk8550-v2-0-99fba09fbfda@linaro.org>
 <20240123-topic-sm8550-upstream-hdk8550-v2-2-99fba09fbfda@linaro.org>
 <CAA8EJppi4dkB4N-YStVazfwH2quaFM6iQTv7UoOseEYQ7EEx3g@mail.gmail.com>
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
Organization: Linaro Developer Services
In-Reply-To: <CAA8EJppi4dkB4N-YStVazfwH2quaFM6iQTv7UoOseEYQ7EEx3g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/01/2024 10:10, Dmitry Baryshkov wrote:
> On Tue, 23 Jan 2024 at 10:56, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> The SM8550-HDK is an embedded development platforms for the
>> Snapdragon 8 Gen 2 SoC aka SM8550, with the following features:
>> - Qualcomm SM8550 SoC
>> - 16GiB On-board LPDDR5
>> - On-board WiFi 7 + Bluetooth 5.3/BLE
>> - On-board UFS4.0
>> - M.2 Key B+M Gen3x2 PCIe Slot
>> - HDMI Output
>> - USB-C Connector with DP Almode & Audio Accessory mode
>> - Micro-SDCard Slot
>> - Audio Jack with Playback and Microphone
>> - 2 On-board Analog microphones
>> - 2 On-board Speakers
>> - 96Boards Compatible Low-Speed and High-Speed connectors [1]
>>    - For Camera, Sensors and external Display cards
>>    - Compatible with the Linaro Debug board [2]
>> - SIM Slot for Modem
>> - Debug connectors
>> - 6x On-Board LEDs
>>
>> Product Page: [3]
>>
>> [1] https://www.96boards.org/specifications/
>> [2] https://git.codelinaro.org/linaro/qcomlt/debugboard
>> [3] https://www.lantronix.com/products/snapdragon-8-gen-2-mobile-hardware-development-kit/
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile       |    1 +
>>   arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 1290 +++++++++++++++++++++++++++++++
>>   2 files changed, 1291 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index 39889d5f8e12..42e50f2b2ec3 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -233,6 +233,7 @@ dtb-$(CONFIG_ARCH_QCOM)     += sm8450-hdk.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)        += sm8450-qrd.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)        += sm8450-sony-xperia-nagara-pdx223.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)        += sm8450-sony-xperia-nagara-pdx224.dtb
>> +dtb-$(CONFIG_ARCH_QCOM)        += sm8550-hdk.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)        += sm8550-mtp.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)        += sm8550-qrd.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)        += sm8650-mtp.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
>> new file mode 100644
>> index 000000000000..66bdd6c269ea
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
>> @@ -0,0 +1,1290 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) 2024 Linaro Limited
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/leds/common.h>
>> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>> +#include "sm8550.dtsi"
>> +#include "pm8010.dtsi"
>> +#include "pm8550.dtsi"
>> +#include "pm8550b.dtsi"
>> +#define PMK8550VE_SID 5
> 
> Maybe the define should be moved before all include files and
> separated with the blank line?

Why ? I prefer keeping it close the the include file consuming the define

> 
>> +#include "pm8550ve.dtsi"
>> +#include "pm8550vs.dtsi"
>> +#include "pmk8550.dtsi"
>> +#include "pmr735d_a.dtsi"
>> +
>> +/ {
>> +       model = "Qualcomm Technologies, Inc. SM8550 HDK";
>> +       compatible = "qcom,sm8550-hdk", "qcom,sm8550";
>> +       chassis-type = "embedded";
>> +
>> +       aliases {
>> +               serial0 = &uart7;
>> +               serial1 = &uart14;
>> +       };
>> +
>> +       wcd938x: audio-codec {
>> +               compatible = "qcom,wcd9385-codec";
>> +
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&wcd_default>;
>> +
>> +               qcom,micbias1-microvolt = <1800000>;
>> +               qcom,micbias2-microvolt = <1800000>;
>> +               qcom,micbias3-microvolt = <1800000>;
>> +               qcom,micbias4-microvolt = <1800000>;
>> +               qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000 500000 500000 500000 500000>;
>> +               qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
>> +               qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
>> +               qcom,rx-device = <&wcd_rx>;
>> +               qcom,tx-device = <&wcd_tx>;
>> +
>> +               reset-gpios = <&tlmm 108 GPIO_ACTIVE_LOW>;
>> +
>> +               vdd-buck-supply = <&vreg_l15b_1p8>;
>> +               vdd-rxtx-supply = <&vreg_l15b_1p8>;
>> +               vdd-io-supply = <&vreg_l15b_1p8>;
>> +               vdd-mic-bias-supply = <&vreg_bob1>;
>> +
>> +               #sound-dai-cells = <1>;
>> +       };
>> +
>> +       chosen {
>> +               stdout-path = "serial0:115200n8";
>> +       };
>> +
>> +       hdmi-out {
>> +               compatible = "hdmi-connector";
>> +               type = "a";
>> +
>> +               port {
>> +                       hdmi_connector_out: endpoint {
>> +                               remote-endpoint = <&lt9611_out>;
>> +                       };
>> +               };
>> +       };
>> +
>> +       vreg_bob_3v3: vreg-bob-3v3-regulator {
> 
> Please rename all regulator nodes to start from the word regulator-.
> This allows grouping them in a logical way.

Ack

> 
>> +               compatible = "regulator-fixed";
>> +
>> +               regulator-name = "VREG_BOB_3P3";
>> +               regulator-min-microvolt = <3300000>;
>> +               regulator-max-microvolt = <3300000>;
>> +
>> +               vin-supply = <&vph_pwr>;
>> +       };
>> +
>> +       lt9611_1v2: lt9611-vdd12-regulator {
>> +               compatible = "regulator-fixed";
>> +
>> +               regulator-name = "LT9611_1V2";
>> +               regulator-min-microvolt = <1200000>;
>> +               regulator-max-microvolt = <1200000>;
>> +
>> +               vin-supply = <&vph_pwr>;
>> +               gpio = <&tlmm 152 GPIO_ACTIVE_HIGH>;
>> +
>> +               enable-active-high;
>> +       };
>> +
>> +       lt9611_3v3: lt9611-3v3-regulator {
>> +               compatible = "regulator-fixed";
>> +
>> +               regulator-name = "LT9611_3V3";
>> +               regulator-min-microvolt = <3300000>;
>> +               regulator-max-microvolt = <3300000>;
>> +
>> +               vin-supply = <&vreg_bob_3v3>;
>> +               gpio = <&tlmm 6 GPIO_ACTIVE_HIGH>;
>> +
>> +               enable-active-high;
>> +       };
>> +
>> +       gpio-keys {
>> +               compatible = "gpio-keys";
>> +
>> +               pinctrl-0 = <&volume_up_n>;
>> +               pinctrl-names = "default";
>> +
>> +               key-volume-up {
>> +                       label = "Volume Up";
>> +                       linux,code = <KEY_VOLUMEUP>;
>> +                       gpios = <&pm8550_gpios 6 GPIO_ACTIVE_LOW>;
>> +                       debounce-interval = <15>;
>> +                       linux,can-disable;
>> +                       wakeup-source;
>> +               };
>> +       };
>> +
>> +       leds {
>> +               compatible = "gpio-leds";
>> +
>> +               led-0 {
>> +                       function = LED_FUNCTION_BLUETOOTH;
>> +                       color = <LED_COLOR_ID_BLUE>;
>> +                       gpios = <&tlmm 159 GPIO_ACTIVE_HIGH>;
>> +                       linux,default-trigger = "bluetooth-power";
>> +                       default-state = "off";
>> +               };
>> +
>> +               led-1 {
>> +                       function = LED_FUNCTION_INDICATOR;
>> +                       color = <LED_COLOR_ID_GREEN>;
>> +                       gpios = <&tlmm 160 GPIO_ACTIVE_HIGH>;
>> +                       default-state = "off";
>> +                       panic-indicator;
>> +               };
>> +
>> +               led-2 {
>> +                       function = LED_FUNCTION_WLAN;
>> +                       color = <LED_COLOR_ID_ORANGE>;
>> +                       gpios = <&tlmm 162 GPIO_ACTIVE_HIGH>;
>> +                       linux,default-trigger = "phy0tx";
>> +                       default-state = "off";
>> +               };
>> +       };
>> +
>> +       pmic-glink {
>> +               compatible = "qcom,sm8550-pmic-glink", "qcom,pmic-glink";
>> +               #address-cells = <1>;
>> +               #size-cells = <0>;
>> +               orientation-gpios = <&tlmm 11 GPIO_ACTIVE_HIGH>;
>> +
>> +               connector@0 {
>> +                       compatible = "usb-c-connector";
>> +                       reg = <0>;
>> +                       power-role = "dual";
>> +                       data-role = "dual";
>> +
>> +                       ports {
>> +                               #address-cells = <1>;
>> +                               #size-cells = <0>;
>> +
>> +                               port@0 {
>> +                                       reg = <0>;
>> +
>> +                                       pmic_glink_hs_in: endpoint {
>> +                                               remote-endpoint = <&usb_1_dwc3_hs>;
>> +                                       };
>> +                               };
>> +
>> +                               port@1 {
>> +                                       reg = <1>;
>> +
>> +                                       pmic_glink_ss_in: endpoint {
>> +                                               remote-endpoint = <&usb_dp_qmpphy_out>;
>> +                                       };
>> +                               };
>> +
>> +                               port@2 {
>> +                                       reg = <2>;
>> +
>> +                                       pmic_glink_sbu: endpoint {
>> +                                               remote-endpoint = <&fsa4480_sbu_mux>;
>> +                                       };
>> +                               };
>> +                       };
>> +               };
>> +       };
>> +
>> +       sound {
>> +               compatible = "qcom,sm8550-sndcard", "qcom,sm8450-sndcard";
>> +               model = "SM8550-HDK";
>> +               audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
>> +                               "SpkrRight IN", "WSA_SPK2 OUT",
>> +                               "IN1_HPHL", "HPHL_OUT",
>> +                               "IN2_HPHR", "HPHR_OUT",
>> +                               "AMIC1", "MIC BIAS1",
>> +                               "AMIC2", "MIC BIAS2",
>> +                               "AMIC5", "MIC BIAS4",
>> +                               "TX SWR_ADC0", "ADC1_OUTPUT",
>> +                               "TX SWR_ADC1", "ADC2_OUTPUT",
>> +                               "TX SWR_ADC3", "ADC4_OUTPUT";
>> +
>> +
> 
> Single empty line, please.
> 
>> +               wcd-playback-dai-link {
>> +                       link-name = "WCD Playback";
>> +
>> +                       cpu {
>> +                               sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
>> +                       };
>> +
>> +                       codec {
>> +                               sound-dai = <&wcd938x 0>, <&swr1 0>, <&lpass_rxmacro 0>;
>> +                       };
>> +
>> +                       platform {
>> +                               sound-dai = <&q6apm>;
>> +                       };
>> +               };
>> +
>> +               wcd-capture-dai-link {
>> +                       link-name = "WCD Capture";
>> +
>> +                       cpu {
>> +                               sound-dai = <&q6apmbedai TX_CODEC_DMA_TX_3>;
>> +                       };
>> +
>> +                       codec {
>> +                               sound-dai = <&wcd938x 1>, <&swr2 0>, <&lpass_txmacro 0>;
>> +                       };
>> +
>> +                       platform {
>> +                               sound-dai = <&q6apm>;
>> +                       };
>> +               };
>> +
>> +               wsa-dai-link {
>> +                       link-name = "WSA Playback";
>> +
>> +                       cpu {
>> +                               sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
>> +                       };
>> +
>> +                       codec {
>> +                               sound-dai = <&north_spkr>, <&south_spkr>, <&swr0 0>, <&lpass_wsamacro 0>;
>> +                       };
>> +
>> +                       platform {
>> +                               sound-dai = <&q6apm>;
>> +                       };
>> +               };
>> +
>> +               va-dai-link {
>> +                       link-name = "VA Capture";
>> +
>> +                       cpu {
>> +                               sound-dai = <&q6apmbedai TX_CODEC_DMA_TX_3>;
>> +                       };
>> +
>> +                       codec {
>> +                               sound-dai = <&lpass_vamacro 0>;
>> +                       };
>> +
>> +                       platform {
>> +                               sound-dai = <&q6apm>;
>> +                       };
>> +               };
>> +       };
>> +
>> +       vph_pwr: vph-pwr-regulator {
>> +               compatible = "regulator-fixed";
>> +
>> +               regulator-name = "vph_pwr";
>> +               regulator-min-microvolt = <3700000>;
>> +               regulator-max-microvolt = <3700000>;
>> +               regulator-always-on;
>> +               regulator-boot-on;
>> +       };
>> +};
>> +
>> +&apps_rsc {
>> +       regulators-0 {
>> +               compatible = "qcom,pm8550-rpmh-regulators";
>> +
>> +               vdd-bob1-supply = <&vph_pwr>;
>> +               vdd-bob2-supply = <&vph_pwr>;
>> +               vdd-l1-l4-l10-supply = <&vreg_s6g_1p86>;
>> +               vdd-l2-l13-l14-supply = <&vreg_bob1>;
>> +               vdd-l3-supply = <&vreg_s4g_1p25>;
>> +               vdd-l5-l16-supply = <&vreg_bob1>;
>> +               vdd-l6-l7-supply = <&vreg_bob1>;
>> +               vdd-l8-l9-supply = <&vreg_bob1>;
>> +               vdd-l11-supply = <&vreg_s4g_1p25>;
>> +               vdd-l12-supply = <&vreg_s6g_1p86>;
>> +               vdd-l15-supply = <&vreg_s6g_1p86>;
>> +               vdd-l17-supply = <&vreg_bob2>;
>> +
>> +               qcom,pmic-id = "b";
>> +
>> +               vreg_bob1: bob1 {
>> +                       regulator-name = "vreg_bob1";
>> +                       regulator-min-microvolt = <3296000>;
>> +                       regulator-max-microvolt = <3960000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_bob2: bob2 {
>> +                       regulator-name = "vreg_bob2";
>> +                       regulator-min-microvolt = <2720000>;
>> +                       regulator-max-microvolt = <3960000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l1b_1p8: ldo1 {
>> +                       regulator-name = "vreg_l1b_1p8";
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <1800000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l2b_3p0: ldo2 {
>> +                       regulator-name = "vreg_l2b_3p0";
>> +                       regulator-min-microvolt = <3008000>;
>> +                       regulator-max-microvolt = <3008000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l5b_3p1: ldo5 {
>> +                       regulator-name = "vreg_l5b_3p1";
>> +                       regulator-min-microvolt = <3104000>;
>> +                       regulator-max-microvolt = <3104000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l6b_1p8: ldo6 {
>> +                       regulator-name = "vreg_l6b_1p8";
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <3008000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l7b_1p8: ldo7 {
>> +                       regulator-name = "vreg_l7b_1p8";
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <3008000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l8b_1p8: ldo8 {
>> +                       regulator-name = "vreg_l8b_1p8";
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <3008000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l9b_2p9: ldo9 {
>> +                       regulator-name = "vreg_l9b_2p9";
>> +                       regulator-min-microvolt = <2960000>;
>> +                       regulator-max-microvolt = <3008000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l11b_1p2: ldo11 {
>> +                       regulator-name = "vreg_l11b_1p2";
>> +                       regulator-min-microvolt = <1200000>;
>> +                       regulator-max-microvolt = <1504000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l12b_1p8: ldo12 {
>> +                       regulator-name = "vreg_l12b_1p8";
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <1800000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l13b_3p0: ldo13 {
>> +                       regulator-name = "vreg_l13b_3p0";
>> +                       regulator-min-microvolt = <3000000>;
>> +                       regulator-max-microvolt = <3000000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l14b_3p2: ldo14 {
>> +                       regulator-name = "vreg_l14b_3p2";
>> +                       regulator-min-microvolt = <3200000>;
>> +                       regulator-max-microvolt = <3200000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l15b_1p8: ldo15 {
>> +                       regulator-name = "vreg_l15b_1p8";
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <1800000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l16b_2p8: ldo16 {
>> +                       regulator-name = "vreg_l16b_2p8";
>> +                       regulator-min-microvolt = <2800000>;
>> +                       regulator-max-microvolt = <2800000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l17b_2p5: ldo17 {
>> +                       regulator-name = "vreg_l17b_2p5";
>> +                       regulator-min-microvolt = <2504000>;
>> +                       regulator-max-microvolt = <2504000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +       };
>> +
>> +       regulators-1 {
>> +               compatible = "qcom,pm8550vs-rpmh-regulators";
>> +
>> +               vdd-l1-supply = <&vreg_s4g_1p25>;
>> +               vdd-l2-supply = <&vreg_s4e_0p95>;
>> +               vdd-l3-supply = <&vreg_s4e_0p95>;
>> +
>> +               qcom,pmic-id = "c";
>> +
>> +               vreg_l3c_0p9: ldo3 {
>> +                       regulator-name = "vreg_l3c_0p9";
>> +                       regulator-min-microvolt = <880000>;
>> +                       regulator-max-microvolt = <912000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +       };
>> +
>> +       regulators-2 {
>> +               compatible = "qcom,pm8550vs-rpmh-regulators";
>> +
>> +               vdd-l1-supply = <&vreg_s4e_0p95>;
>> +               vdd-l2-supply = <&vreg_s4e_0p95>;
>> +               vdd-l3-supply = <&vreg_s4e_0p95>;
>> +
>> +               qcom,pmic-id = "d";
>> +
>> +               vreg_l1d_0p88: ldo1 {
>> +                       regulator-name = "vreg_l1d_0p88";
>> +                       regulator-min-microvolt = <880000>;
>> +                       regulator-max-microvolt = <920000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               /* ldo2 supplies SM8550 VDD_LPI_MX */
>> +       };
>> +
>> +       regulators-3 {
>> +               compatible = "qcom,pm8550vs-rpmh-regulators";
>> +
>> +               vdd-l1-supply = <&vreg_s4e_0p95>;
>> +               vdd-l2-supply = <&vreg_s4e_0p95>;
>> +               vdd-l3-supply = <&vreg_s4g_1p25>;
>> +               vdd-s4-supply = <&vph_pwr>;
>> +               vdd-s5-supply = <&vph_pwr>;
>> +
>> +               qcom,pmic-id = "e";
>> +
>> +               vreg_s4e_0p95: smps4 {
>> +                       regulator-name = "vreg_s4e_0p95";
>> +                       regulator-min-microvolt = <904000>;
>> +                       regulator-max-microvolt = <984000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_s5e_1p08: smps5 {
>> +                       regulator-name = "vreg_s5e_1p08";
>> +                       regulator-min-microvolt = <1080000>;
>> +                       regulator-max-microvolt = <1120000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l1e_0p88: ldo1 {
>> +                       regulator-name = "vreg_l1e_0p88";
>> +                       regulator-min-microvolt = <880000>;
>> +                       regulator-max-microvolt = <880000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l2e_0p9: ldo2 {
>> +                       regulator-name = "vreg_l2e_0p9";
>> +                       regulator-min-microvolt = <904000>;
>> +                       regulator-max-microvolt = <970000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l3e_1p2: ldo3 {
>> +                       regulator-name = "vreg_l3e_1p2";
>> +                       regulator-min-microvolt = <1200000>;
>> +                       regulator-max-microvolt = <1200000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +       };
>> +
>> +       regulators-4 {
>> +               compatible = "qcom,pm8550ve-rpmh-regulators";
>> +
>> +               vdd-l1-supply = <&vreg_s4e_0p95>;
>> +               vdd-l2-supply = <&vreg_s4e_0p95>;
>> +               vdd-l3-supply = <&vreg_s4e_0p95>;
>> +               vdd-s4-supply = <&vph_pwr>;
>> +
>> +               qcom,pmic-id = "f";
>> +
>> +               vreg_s4f_0p5: smps4 {
>> +                       regulator-name = "vreg_s4f_0p5";
>> +                       regulator-min-microvolt = <500000>;
>> +                       regulator-max-microvolt = <700000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l1f_0p9: ldo1 {
>> +                       regulator-name = "vreg_l1f_0p9";
>> +                       regulator-min-microvolt = <912000>;
>> +                       regulator-max-microvolt = <912000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l2f_0p88: ldo2 {
>> +                       regulator-name = "vreg_l2f_0p88";
>> +                       regulator-min-microvolt = <880000>;
>> +                       regulator-max-microvolt = <912000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l3f_0p88: ldo3 {
>> +                       regulator-name = "vreg_l3f_0p88";
>> +                       regulator-min-microvolt = <880000>;
>> +                       regulator-max-microvolt = <912000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +       };
>> +
>> +       regulators-5 {
>> +               compatible = "qcom,pm8550vs-rpmh-regulators";
>> +
>> +               vdd-l1-supply = <&vreg_s4g_1p25>;
>> +               vdd-l2-supply = <&vreg_s4g_1p25>;
>> +               vdd-l3-supply = <&vreg_s4g_1p25>;
>> +               vdd-s1-supply = <&vph_pwr>;
>> +               vdd-s2-supply = <&vph_pwr>;
>> +               vdd-s3-supply = <&vph_pwr>;
>> +               vdd-s4-supply = <&vph_pwr>;
>> +               vdd-s5-supply = <&vph_pwr>;
>> +               vdd-s6-supply = <&vph_pwr>;
>> +
>> +               qcom,pmic-id = "g";
>> +
>> +               vreg_s1g_1p25: smps1 {
>> +                       regulator-name = "vreg_s1g_1p25";
>> +                       regulator-min-microvolt = <1200000>;
>> +                       regulator-max-microvolt = <1300000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_s2g_0p85: smps2 {
>> +                       regulator-name = "vreg_s2g_0p85";
>> +                       regulator-min-microvolt = <800000>;
>> +                       regulator-max-microvolt = <1000000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_s3g_0p8: smps3 {
>> +                       regulator-name = "vreg_s3g_0p8";
>> +                       regulator-min-microvolt = <300000>;
>> +                       regulator-max-microvolt = <1004000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_s4g_1p25: smps4 {
>> +                       regulator-name = "vreg_s4g_1p25";
>> +                       regulator-min-microvolt = <1200000>;
>> +                       regulator-max-microvolt = <1352000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_s5g_0p85: smps5 {
>> +                       regulator-name = "vreg_s5g_0p85";
>> +                       regulator-min-microvolt = <500000>;
>> +                       regulator-max-microvolt = <1004000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_s6g_1p86: smps6 {
>> +                       regulator-name = "vreg_s6g_1p86";
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <2000000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l1g_1p2: ldo1 {
>> +                       regulator-name = "vreg_l1g_1p2";
>> +                       regulator-min-microvolt = <1200000>;
>> +                       regulator-max-microvolt = <1200000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l3g_1p2: ldo3 {
>> +                       regulator-name = "vreg_l3g_1p2";
>> +                       regulator-min-microvolt = <1200000>;
>> +                       regulator-max-microvolt = <1200000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +       };
>> +
>> +       regulators-6 {
>> +               compatible = "qcom,pm8010-rpmh-regulators";
>> +
>> +               vdd-l1-l2-supply = <&vreg_s4g_1p25>;
>> +               vdd-l3-l4-supply = <&vreg_bob2>;
>> +               vdd-l5-supply = <&vreg_s6g_1p86>;
>> +               vdd-l6-supply = <&vreg_s6g_1p86>;
>> +               vdd-l7-supply = <&vreg_bob1>;
>> +
>> +               qcom,pmic-id = "m";
>> +
>> +               vreg_l1m_1p056: ldo1 {
>> +                       regulator-name = "vreg_l1m_1p056";
>> +                       regulator-min-microvolt = <1056000>;
>> +                       regulator-max-microvolt = <1056000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l2m_1p056: ldo2 {
>> +                       regulator-name = "vreg_l2m_1p056";
>> +                       regulator-min-microvolt = <1056000>;
>> +                       regulator-max-microvolt = <1056000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l3m_2p8: ldo3 {
>> +                       regulator-name = "vreg_l3m_2p8";
>> +                       regulator-min-microvolt = <2800000>;
>> +                       regulator-max-microvolt = <2800000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l4m_2p8: ldo4 {
>> +                       regulator-name = "vreg_l4m_2p8";
>> +                       regulator-min-microvolt = <2800000>;
>> +                       regulator-max-microvolt = <2800000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l5m_1p8: ldo5 {
>> +                       regulator-name = "vreg_l5m_1p8";
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <1800000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l6m_1p8: ldo6 {
>> +                       regulator-name = "vreg_l6m_1p8";
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <1800000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l7m_2p9: ldo7 {
>> +                       regulator-name = "vreg_l7m_2p9";
>> +                       regulator-min-microvolt = <2800000>;
>> +                       regulator-max-microvolt = <2904000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +       };
>> +
>> +       regulators-7 {
>> +               compatible = "qcom,pm8010-rpmh-regulators";
>> +
>> +               vdd-l1-l2-supply = <&vreg_s4g_1p25>;
>> +               vdd-l3-l4-supply = <&vreg_bob2>;
>> +               vdd-l5-supply = <&vreg_s6g_1p86>;
>> +               vdd-l6-supply = <&vreg_bob1>;
>> +               vdd-l7-supply = <&vreg_bob1>;
>> +
>> +               qcom,pmic-id = "n";
>> +
>> +               vreg_l1n_1p1: ldo1 {
>> +                       regulator-name = "vreg_l1n_1p1";
>> +                       regulator-min-microvolt = <1104000>;
>> +                       regulator-max-microvolt = <1200000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l2n_1p1: ldo2 {
>> +                       regulator-name = "vreg_l2n_1p1";
>> +                       regulator-min-microvolt = <1104000>;
>> +                       regulator-max-microvolt = <1200000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +                       regulator-allow-set-load;
>> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>> +                                                  RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l3n_2p8: ldo3 {
>> +                       regulator-name = "vreg_l3n_2p8";
>> +                       regulator-min-microvolt = <2800000>;
>> +                       regulator-max-microvolt = <3000000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l4n_2p8: ldo4 {
>> +                       regulator-name = "vreg_l4n_2p8";
>> +                       regulator-min-microvolt = <2800000>;
>> +                       regulator-max-microvolt = <3300000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l5n_1p8: ldo5 {
>> +                       regulator-name = "vreg_l5n_1p8";
>> +                       regulator-min-microvolt = <1800000>;
>> +                       regulator-max-microvolt = <1800000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l6n_3p3: ldo6 {
>> +                       regulator-name = "vreg_l6n_3p3";
>> +                       regulator-min-microvolt = <2800000>;
>> +                       regulator-max-microvolt = <3304000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +
>> +               vreg_l7n_2p96: ldo7 {
>> +                       regulator-name = "vreg_l7n_2p96";
>> +                       regulator-min-microvolt = <2800000>;
>> +                       regulator-max-microvolt = <2960000>;
>> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>> +               };
>> +       };
>> +};
>> +
>> +&i2c_master_hub_0 {
>> +       status = "okay";
>> +};
>> +
>> +&i2c0 {
>> +       clock-frequency = <400000>;
>> +       status = "okay";
>> +
>> +       lt9611_codec: hdmi-bridge@2b {
>> +               compatible = "lontium,lt9611uxc";
>> +               reg = <0x2b>;
>> +
>> +               interrupts-extended = <&tlmm 8 IRQ_TYPE_EDGE_FALLING>;
>> +
>> +               reset-gpios = <&tlmm 7 GPIO_ACTIVE_HIGH>;
>> +
>> +               vdd-supply = <&lt9611_1v2>;
>> +               vcc-supply = <&lt9611_3v3>;
>> +
>> +               pinctrl-0 = <&lt9611_irq_pin>, <&lt9611_rst_pin>;
>> +               pinctrl-names = "default";
>> +
>> +               ports {
>> +                       #address-cells = <1>;
>> +                       #size-cells = <0>;
>> +
>> +                       port@0 {
>> +                               reg = <0>;
>> +
>> +                               lt9611_a: endpoint {
>> +                                       remote-endpoint = <&mdss_dsi0_out>;
>> +                               };
>> +                       };
>> +
>> +                       port@2 {
>> +                               reg = <2>;
>> +
>> +                               lt9611_out: endpoint {
>> +                                       remote-endpoint = <&hdmi_connector_out>;
>> +                               };
>> +                       };
>> +               };
>> +       };
>> +};
>> +
>> +&i2c_hub_2 {
>> +       status = "okay";
>> +
>> +       typec-mux@42 {
>> +               compatible = "fcs,fsa4480";
>> +               reg = <0x42>;
>> +
>> +               vcc-supply = <&vreg_bob1>;
>> +
>> +               mode-switch;
>> +               orientation-switch;
>> +
>> +               port {
>> +                       fsa4480_sbu_mux: endpoint {
>> +                               remote-endpoint = <&pmic_glink_sbu>;
>> +                       };
>> +               };
>> +       };
>> +};
> 
> i2c_master_hub
> i2c0
> i2c_hub_2
> 
> The order doesn't seem to be correct.

Ack

> 
>> +
>> +&ipa {
>> +       qcom,gsi-loader = "self";
>> +       memory-region = <&ipa_fw_mem>;
>> +       firmware-name = "qcom/sm8550/ipa_fws.mbn";
>> +       status = "okay";
>> +};
>> +
>> +&gpu {
>> +       status = "okay";
>> +
>> +       zap-shader {
>> +               firmware-name = "qcom/sm8550/a740_zap.mbn";
>> +       };
>> +};
> 
> This comes before i2c
> 
>> +
>> +&lpass_tlmm {
>> +       spkr_1_sd_n_active: spkr-1-sd-n-active-state {
>> +               pins = "gpio17";
>> +               function = "gpio";
>> +               drive-strength = <16>;
>> +               bias-disable;
>> +               output-low;
>> +       };
>> +
>> +       spkr_2_sd_n_active: spkr-2-sd-n-active-state {
>> +               pins = "gpio18";
>> +               function = "gpio";
>> +               drive-strength = <16>;
>> +               bias-disable;
>> +               output-low;
>> +       };
>> +};
>> +
>> +&mdss {
>> +       status = "okay";
>> +};
>> +
>> +&mdss_dsi0 {
>> +       vdda-supply = <&vreg_l3e_1p2>;
>> +       status = "okay";
>> +};
>> +
>> +&mdss_dsi0_out {
>> +       remote-endpoint = <&lt9611_a>;
>> +       data-lanes = <0 1 2 3>;
>> +};
>> +
>> +&mdss_dsi0_phy {
>> +       vdds-supply = <&vreg_l1e_0p88>;
>> +       status = "okay";
>> +};
>> +
>> +&mdss_dp0 {
>> +       status = "okay";
>> +};
>> +
>> +&mdss_dp0_out {
>> +       remote-endpoint = <&usb_dp_qmpphy_dp_in>;
>> +       data-lanes = <0 1>;
>> +};
>> +
>> +&pcie0 {
>> +       wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
>> +       perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
>> +
>> +       pinctrl-0 = <&pcie0_default_state>;
>> +       pinctrl-names = "default";
>> +
>> +       status = "okay";
>> +};
>> +
>> +&pcie0_phy {
>> +       vdda-phy-supply = <&vreg_l1e_0p88>;
>> +       vdda-pll-supply = <&vreg_l3e_1p2>;
>> +
>> +       status = "okay";
>> +};
>> +
>> +&pcie1 {
>> +       wake-gpios = <&tlmm 99 GPIO_ACTIVE_HIGH>;
>> +       perst-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>;
>> +
>> +       pinctrl-0 = <&pcie1_default_state>;
>> +       pinctrl-names = "default";
>> +
>> +       status = "okay";
>> +};
>> +
>> +&pcie1_phy {
>> +       vdda-phy-supply = <&vreg_l3c_0p9>;
>> +       vdda-pll-supply = <&vreg_l3e_1p2>;
>> +       vdda-qref-supply = <&vreg_l1e_0p88>;
>> +
>> +       status = "okay";
>> +};
>> +
>> +&pm8550_gpios {
>> +       sdc2_card_det_n: sdc2-card-det-state {
>> +               pins = "gpio12";
>> +               function = "normal";
>> +               input-enable;
>> +               output-disable;
>> +               bias-pull-up;
>> +               power-source = <1>; /* 1.8 V */
>> +       };
>> +
>> +       volume_up_n: volume-up-n-state {
>> +               pins = "gpio6";
>> +               function = "normal";
>> +               power-source = <1>;
>> +               bias-pull-up;
>> +               input-enable;
>> +       };
>> +};
>> +
>> +/* The RGB signals are routed to 3 separate LEDs on the HDK8550 */
>> +&pm8550_pwm {
>> +       #address-cells = <1>;
>> +       #size-cells = <0>;
>> +
>> +       status = "okay";
>> +
>> +       led@1 {
>> +               reg = <1>;
>> +               function = LED_FUNCTION_STATUS;
>> +               color = <LED_COLOR_ID_RED>;
>> +               default-state = "off";
>> +       };
>> +
>> +       led@2 {
>> +               reg = <2>;
>> +               function = LED_FUNCTION_STATUS;
>> +               color = <LED_COLOR_ID_GREEN>;
>> +               default-state = "off";
>> +       };
>> +
>> +       led@3 {
>> +               reg = <3>;
>> +               function = LED_FUNCTION_STATUS;
>> +               color = <LED_COLOR_ID_BLUE>;
>> +               default-state = "off";
>> +       };
>> +};
>> +
>> +&pm8550b_eusb2_repeater {
>> +       vdd18-supply = <&vreg_l15b_1p8>;
>> +       vdd3-supply = <&vreg_l5b_3p1>;
>> +};
>> +
>> +&pon_pwrkey {
>> +       status = "okay";
>> +};
>> +
>> +&pon_resin {
>> +       linux,code = <KEY_VOLUMEDOWN>;
>> +
>> +       status = "okay";
>> +};
>> +
>> +&pcie_1_phy_aux_clk {
>> +       clock-frequency = <1000>;
>> +};
> 
> Next to other PCIe nodes?

Indeed

> 
>> +
>> +&qupv3_id_0 {
>> +       status = "okay";
>> +};
>> +
>> +&qupv3_id_1 {
>> +       status = "okay";
>> +};
> 
> BTW, don't we need to enable gpi_dma nodes for qup / i2c to work?

Good question, for i2c_mater_hib no, but for i2c0 it should be enabled

> 
>> +
>> +&remoteproc_adsp {
>> +       firmware-name = "qcom/sm8550/adsp.mbn",
>> +                       "qcom/sm8550/adsp_dtb.mbn";
>> +       status = "okay";
>> +};
>> +
>> +&remoteproc_cdsp {
>> +       firmware-name = "qcom/sm8550/cdsp.mbn",
>> +                       "qcom/sm8550/cdsp_dtb.mbn";
>> +       status = "okay";
>> +};
>> +
>> +&remoteproc_mpss {
>> +       firmware-name = "qcom/sm8550/modem.mbn",
>> +                       "qcom/sm8550/modem_dtb.mbn";
>> +       status = "okay";
>> +};
>> +
>> +&sdhc_2 {
>> +       cd-gpios = <&pm8550_gpios 12 GPIO_ACTIVE_HIGH>;
>> +
>> +       pinctrl-0 = <&sdc2_default>, <&sdc2_card_det_n>;
>> +       pinctrl-1 = <&sdc2_sleep>, <&sdc2_card_det_n>;
>> +       pinctrl-names = "default", "sleep";
>> +
>> +       vmmc-supply = <&vreg_l9b_2p9>;
>> +       vqmmc-supply = <&vreg_l8b_1p8>;
>> +
>> +       bus-width = <4>;
>> +       no-sdio;
>> +       no-mmc;
>> +
>> +       status = "okay";
>> +};
>> +
>> +&sleep_clk {
>> +       clock-frequency = <32000>;
>> +};
>> +
>> +&swr0 {
>> +       status = "okay";
>> +
>> +       /* WSA8845, Speaker North */
>> +       north_spkr: speaker@0,0 {
>> +               compatible = "sdw20217020400";
>> +               reg = <0 0>;
>> +
>> +               pinctrl-0 = <&spkr_1_sd_n_active>;
>> +               pinctrl-names = "default";
>> +
>> +               powerdown-gpios = <&lpass_tlmm 17 GPIO_ACTIVE_LOW>;
>> +
>> +               vdd-1p8-supply = <&vreg_l15b_1p8>;
>> +               vdd-io-supply = <&vreg_l15b_1p8>;
>> +
>> +               #sound-dai-cells = <0>;
>> +               sound-name-prefix = "SpkrLeft";
>> +       };
>> +
>> +       /* WSA8845, Speaker South */
>> +       south_spkr: speaker@0,1 {
>> +               compatible = "sdw20217020400";
>> +               reg = <0 1>;
>> +
>> +               pinctrl-0 = <&spkr_2_sd_n_active>;
>> +               pinctrl-names = "default";
>> +
>> +               powerdown-gpios = <&lpass_tlmm 18 GPIO_ACTIVE_LOW>;
>> +
>> +               vdd-1p8-supply = <&vreg_l15b_1p8>;
>> +               vdd-io-supply = <&vreg_l15b_1p8>;
>> +
>> +               #sound-dai-cells = <0>;
>> +               sound-name-prefix = "SpkrRight";
>> +       };
>> +};
>> +
>> +&swr1 {
>> +       status = "okay";
>> +
>> +       /* WCD9385 RX */
>> +       wcd_rx: codec@0,4 {
>> +               compatible = "sdw20217010d00";
>> +               reg = <0 4>;
>> +
>> +               qcom,rx-port-mapping = <1 2 3 4 5>;
>> +       };
>> +};
>> +
>> +&swr2 {
>> +       status = "okay";
>> +
>> +       /* WCD9385 TX */
>> +       wcd_tx: codec@0,3 {
>> +               compatible = "sdw20217010d00";
>> +               reg = <0 3>;
>> +
>> +               qcom,tx-port-mapping = <1 1 2 3>;
>> +       };
>> +};
>> +
>> +&tlmm {
>> +       /* Reserved I/Os for NFC */
>> +       gpio-reserved-ranges = <32 8>;
>> +
>> +       bt_default: bt-default-state {
>> +               bt-en-pins {
>> +                       pins = "gpio81";
>> +                       function = "gpio";
>> +                       drive-strength = <16>;
>> +                       bias-disable;
>> +               };
>> +
>> +               sw-ctrl-pins {
>> +                       pins = "gpio82";
>> +                       function = "gpio";
>> +                       bias-pull-down;
>> +               };
>> +       };
>> +
>> +       lt9611_irq_pin: lt9611-irq-state {
>> +               pins = "gpio8";
>> +               function = "gpio";
>> +               bias-disable;
>> +       };
>> +
>> +       lt9611_rst_pin: lt9611-rst-state {
>> +               pins = "gpio7";
>> +               function = "gpio";
>> +               output-high;
>> +       };
>> +
>> +       wcd_default: wcd-reset-n-active-state {
>> +               pins = "gpio108";
>> +               function = "gpio";
>> +               drive-strength = <16>;
>> +               bias-disable;
>> +               output-low;
>> +       };
>> +};
>> +
>> +&uart7 {
>> +       status = "okay";
>> +};
>> +
>> +&uart14 {
>> +       status = "okay";
>> +
>> +       bluetooth {
>> +               compatible = "qcom,wcn7850-bt";
>> +
>> +               vddio-supply = <&vreg_l15b_1p8>;
>> +               vddaon-supply = <&vreg_s4e_0p95>;
>> +               vdddig-supply = <&vreg_s4e_0p95>;
>> +               vddrfa0p8-supply = <&vreg_s4e_0p95>;
>> +               vddrfa1p2-supply = <&vreg_s4g_1p25>;
>> +               vddrfa1p9-supply = <&vreg_s6g_1p86>;
>> +
>> +               max-speed = <3200000>;
>> +
>> +               enable-gpios = <&tlmm 81 GPIO_ACTIVE_HIGH>;
>> +               swctrl-gpios = <&tlmm 82 GPIO_ACTIVE_HIGH>;
>> +
>> +               pinctrl-0 = <&bt_default>;
>> +               pinctrl-names = "default";
>> +       };
>> +};
>> +
>> +&ufs_mem_hc {
>> +       reset-gpios = <&tlmm 210 GPIO_ACTIVE_LOW>;
>> +
>> +       vcc-supply = <&vreg_l17b_2p5>;
>> +       vcc-max-microamp = <1300000>;
>> +       vccq-supply = <&vreg_l1g_1p2>;
>> +       vccq-max-microamp = <1200000>;
>> +       vdd-hba-supply = <&vreg_l3g_1p2>;
>> +
>> +       status = "okay";
>> +};
>> +
>> +&ufs_mem_phy {
>> +       vdda-phy-supply = <&vreg_l1d_0p88>;
>> +       vdda-pll-supply = <&vreg_l3e_1p2>;
>> +
>> +       status = "okay";
>> +};
>> +
>> +&usb_1 {
>> +       status = "okay";
>> +};
>> +
>> +&usb_1_dwc3 {
>> +       dr_mode = "otg";
> 
> otg is a default

I prefer keeping it, it makes it epxlicit

> 
>> +       usb-role-switch;
>> +};
>> +
>> +&usb_1_dwc3_hs {
>> +       remote-endpoint = <&pmic_glink_hs_in>;
>> +};
>> +
>> +&usb_1_dwc3_ss {
>> +       remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
>> +};
>> +
>> +&usb_1_hsphy {
>> +       vdd-supply = <&vreg_l1e_0p88>;
>> +       vdda12-supply = <&vreg_l3e_1p2>;
>> +
>> +       phys = <&pm8550b_eusb2_repeater>;
>> +
>> +       status = "okay";
>> +};
>> +
>> +&usb_dp_qmpphy {
>> +       vdda-phy-supply = <&vreg_l3e_1p2>;
>> +       vdda-pll-supply = <&vreg_l3f_0p88>;
>> +
>> +       orientation-switch;
> 
> Shouldn't this property be moved to the base dtsi?

I don't think so, I think it's a board feature, a board could have lanes switching on-board.

> 
>> +
>> +       status = "okay";
>> +};
>> +
>> +&usb_dp_qmpphy_dp_in {
>> +       remote-endpoint = <&mdss_dp0_out>;
>> +};
>> +
>> +&usb_dp_qmpphy_out {
>> +       remote-endpoint = <&pmic_glink_ss_in>;
>> +};
>> +
>> +&usb_dp_qmpphy_usb_ss_in {
>> +       remote-endpoint = <&usb_1_dwc3_ss>;
>> +};
>> +
>> +&xo_board {
>> +       clock-frequency = <76800000>;
>> +};
>>
>> --
>> 2.34.1
>>
>>
> 
> 

Thanks,
Neil


Return-Path: <devicetree+bounces-6055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E336D7B9C66
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 12:04:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 2EC0EB20986
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 10:04:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E45AD11CB2;
	Thu,  5 Oct 2023 10:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H26j89Wc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5CC10EF
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 10:04:12 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44CAA1F775
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 03:04:09 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4060b623e64so4842685e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 03:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696500247; x=1697105047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ht/26KcwXqbG8H0CaHUShIqCIIP7F7mFha6xJKTzams=;
        b=H26j89WcaEES/F5QqpKc1LVod83LApXqD5x/loVcO7pgJifkKV1LX3ol4tZS7Jhz3b
         fMCCsO7e+cVNGrGiowFPvNLSnLYgPZCB0Can74u/fqAgbQqINKrHjpWSNhaWBS1vqsZd
         nXJgZGEBcPLio6pJF2RJjBLVHlRo1+kMHOT5PTK8GKXEoB3pSQ1Ecaw1GpiCypZgV/WY
         Jjff6jOz0l2i+X9LjrR+sxUzm+SBVmvEqeldYn26qKaBmrDAjG7uz/tYtTi16VGLm6+A
         2FgPDS3q0tznbw05cJDCVm6vQJhFo0emiPMlfx3jorQqpN71ypAZWPjAOl7wlz9kc2xi
         ryPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696500247; x=1697105047;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ht/26KcwXqbG8H0CaHUShIqCIIP7F7mFha6xJKTzams=;
        b=sAJX2qG7F99Tbg1B71zuT+PqUHbIMmzDxooksqjhSQkH6O/CiWqW+k6dxusSI741EE
         NAO51RiNIykrkxKzq8QfkVGAiFjPhjJ84TS6974vd/qAM/iQsF/LCKO9ez70Kxr+v4cX
         aM3kDcPcA4chHEim4U77iEQ+kYzBinBSJp0bncl8uG4gZ/DuuORb69JwovXPizfMUiSq
         yBe823kLWMxDCRFO4LTRpmxo8jGUJAZdax+DcHqPNyMVBdneBLqcIGzFimhu6VJkdQZV
         CAgd38lgxMajeaj8pXIN1tKko3M5lLgYX5YiZSfQf5l7bgtmeB9xQLj6E0RRpxmnsA5h
         Ai6Q==
X-Gm-Message-State: AOJu0YyRnmW2BgcUPEqIdvaxo6bMU+En+OAvS/95UUsonq9BgGpCYX+h
	sH5cnugqPUOn9GGyLbYQVdKbV53Ey4TXHV0dsRo/Og==
X-Google-Smtp-Source: AGHT+IEQGYUZehdKXC0Mt2uWCamRcw59VAjQXSkW7yq4p+TakEOffIOlJyrgjaFU/WknCVAKGnfJAg==
X-Received: by 2002:a05:600c:895:b0:405:3be0:c78d with SMTP id l21-20020a05600c089500b004053be0c78dmr877519wmp.3.1696500247638;
        Thu, 05 Oct 2023 03:04:07 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:53f9:e5cc:ac8f:e0db? ([2a01:e0a:982:cbb0:53f9:e5cc:ac8f:e0db])
        by smtp.gmail.com with ESMTPSA id s10-20020a05600c044a00b004063c9f68f2sm1145465wmb.26.2023.10.05.03.04.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Oct 2023 03:04:07 -0700 (PDT)
Message-ID: <036a9fef-02fd-4bfd-afb5-50724f15176c@linaro.org>
Date: Thu, 5 Oct 2023 12:04:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: add libretech cottonwood support
Content-Language: en-US, fr
To: Jerome Brunet <jbrunet@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Da Xue <da.xue@libretech.co>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org
References: <20231002141020.2403652-1-jbrunet@baylibre.com>
 <20231002141020.2403652-3-jbrunet@baylibre.com>
 <b81a296d-0640-4b2e-aab6-c9de37d10206@linaro.org>
 <1j5y3ozvmk.fsf@starbuckisacylon.baylibre.com>
 <3e69ae4b-5d9e-42ee-a21e-151de8fbb996@linaro.org>
 <1j8r8hxutt.fsf@starbuckisacylon.baylibre.com>
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
In-Reply-To: <1j8r8hxutt.fsf@starbuckisacylon.baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 05/10/2023 11:42, Jerome Brunet wrote:
> 
> On Tue 03 Oct 2023 at 09:35, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> 
>> On 02/10/2023 20:57, Jerome Brunet wrote:
>>> On Mon 02 Oct 2023 at 18:45, Neil Armstrong <neil.armstrong@linaro.org>
>>> wrote:
>>>
>>
>> <snip>
>>
>>>>> +&usb3_pcie_phy {
>>>>> +	#address-cells = <1>;
>>>>> +	#size-cells = <0>;
>>>>> +	phy-supply = <&vcc_5v>;
>>>>> +
>>>>> +	hub: hub@1 {
>>>>> +		compatible = "usb5e3,626";
>>>>> +		reg = <1>;
>>>>> +		reset-gpios = <&gpio GPIOC_7 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
>>>>> +	};
>>>>
>>>> Not sure the PHY is the right place to put the USB HUB,
>>>> and it's probable the HUB is connected to both the USB2 and USB3 lines
>>> It is connected to the USB3.0 only
>>>
>>>> so you should have both USB IDs in DT like it'd done for the Odroid-C4:
>>>>
>>>> / {
>>>> ...
>>>>            /* USB hub supports both USB 2.0 and USB 3.0 root hub */
>>>>            usb-hub {
>>>>                    dr_mode = "host";
>>>>                    #address-cells = <1>;
>>>>                    #size-cells = <0>;
>>>>
>>>>                    /* 2.0 hub on port 1 */
>>>>                    hub_2_0: hub@1 {
>>>>                            compatible = "usb2109,2817";
>>>>                            reg = <1>;
>>>>                            peer-hub = <&hub_3_0>;
>>>>                            reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
>>>>                            vdd-supply = <&vcc_5v>;
>>>>                    };
>>>>
>>>>                    /* 3.1 hub on port 4 */
>>>>                    hub_3_0: hub@2 {
>>>>                            compatible = "usb2109,817";
>>>>                            reg = <2>;
>>>>                            peer-hub = <&hub_2_0>;
>>>>                            reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
>>>>                            vdd-supply = <&vcc_5v>;
>>>>                    };
>>>>            };
>>>> ...
>>>> };
>>>>
>>>> if it only has a single USB ID, then it should go under the dwc3 node.
>>> The usb controller is connected to the PHY and what's coming out of the
>>> PHY
>>> goes to the hub. It seems logical to hub the hub under it.
>>> Why bypass the PHY ?
>>
>> The USB bindings the USB devices nodes should be under the controller's node,
>> not the PHY, see:
>>
>> Documentation/devicetree/bindings/usb/usb-hcd.yaml
>> ...
>> patternProperties:
>>    "^.*@[0-9a-f]{1,2}$":
>>      description: The hard wired USB devices
>>      type: object
>>      $ref: /schemas/usb/usb-device.yaml
>> ...
>> and the example.
>>
>> Subnodes aren't allowed in the PHY node.
> 
> Ok, that is what schema says.
> HW wise there is possible problem though.
> 
> The phy node has the power supply to the bus.
> In that case it is a controllable one.
> 
> If fixed USB devices go under the controller instead of the PHY, isn't
> it possible that the kernel may attempt to probe them before the bus is
> powered ? For this particular board, it would make the reset we are
> trying to apply useless.

The usb core has a special handling for those usb hubs doing the power
up at the right time during the USB setup, including the PHY powering up.
So the power sequence should be fine.

This has been done on Odroid-C2 and Odroid-N2 already.

Neil

> 
>>
>> Neil
>>
>>>
>>>>
>>>>> +};
>>>>> +
>>>>> +&usb {
>>>>> +	status = "okay";
>>>>> +};
>>
>> <snip>
> 



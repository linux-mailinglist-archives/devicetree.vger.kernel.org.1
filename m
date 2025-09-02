Return-Path: <devicetree+bounces-211627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AC7B3FBCC
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:06:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E68DF7B2104
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 10:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A0B02ED85F;
	Tue,  2 Sep 2025 10:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F6z+gSS0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07836275860
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 10:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756807550; cv=none; b=aIRQMlRICBs/tQty2LdNdQZwdCpxJdw6olR7G3n/T3+yKrm7AEvju00YHd/j4tH/KjTn1IyvlduPQ+TGnmek6pFcjEMQoi2TpLar6l3Kl5dXi5UEBQWOiFbFjHLID3HNAc5tdOVKybjo3Mqr1E3gI7WtBg6TlOr1DJnFYyCe1K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756807550; c=relaxed/simple;
	bh=iHb0UjJW5ifXjc2NaBXP4kwBi57htBVpK3fHTu/oHb0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=JHZsFHZC9YnslbZFVwp6NVSO1UquospRPCQaML0YEpklTCpguyaid0N9mA5SHawfn28Z8asYgH5wDjSRQBpJxToDV3qWAggPHm7uNy4FRCsZ/fc6mhCpW069KPi6drHy9igli77JW2X1EuJUWlETA7FdO2UbO97JB9gLK9NNOAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F6z+gSS0; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3d1bf79d75aso941916f8f.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 03:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756807547; x=1757412347; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DKv+WRLsFVCC8aSRaIrYXOk2Cx3u5tcB382H/Vrrt10=;
        b=F6z+gSS0c1K4vjj3Opd/cPjKgieddS+pmNFiJxD/H9lKtqbSkedj7GIUXtlt09Bebb
         rZkNp4oEAwK2LMPqj6ni8entC3MvSmK90KrYR9zBKghZKUlD0eJUlzQIvdfFocBBqD9b
         xdsBfej//bJxZ5n6lqA0AxmfmO0ADFR4YyxU2CsUCDxbmaXXz+vYE6ACHxySoO+eWRau
         Y1KMCfjK4U+BzvAoGxGyMVbDwPlLKyvVTh/K0c+2YFUBrMNIyBPXK4qTR5W8cY3HSAWV
         7EORYYpOQoeaU3AUDSOhUzfvzs5OD3Qb+bC3Tj+pto1/7uOVU9ckm/SPEDd28P4QjVb5
         p9xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756807547; x=1757412347;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DKv+WRLsFVCC8aSRaIrYXOk2Cx3u5tcB382H/Vrrt10=;
        b=UAhJqph4IWRuahuIJ/IkJnTFKaG2VXnUIX+J6n2//U/LUmbA1lqfHfadb/434iIlh5
         OnoVzsW31//7lh6/csmVYc8bNh0H7TRr4fHxz/Rdw9RY/OZ1hxo3xWMg4KRtF1edz1F4
         /Qg7TXDXsLckakwI9v0r/h+JdhFoiMLySYHkn7F5pQumdjy7ju/Ua/fLjyvT+9830n6N
         YU03qx6MyRiifvy79K0mDZurr4E4mreMsIFBCcOlhwOq5u8YHGeY6Uk0ok1YCwyQBZUX
         J3eQ560VX9Pvkc8q5v5aSuYjsicYQYbW1zGuzzqkAjvrnpHg86Y8cLitkqjLlSANQKhl
         LPVg==
X-Forwarded-Encrypted: i=1; AJvYcCX6jljNRrrWx8cqX0QfjHONO3NP3afAqDSYMIIDjpdsKT/AvEXr8jrlshYF3v2lHDHgjvqvXPLkxJC2@vger.kernel.org
X-Gm-Message-State: AOJu0YyuC9DXEZvGJJ7fTLpoGkKJtOHFmsPB8Z/UdJDkGzXQubmd5v4B
	gxM51DW579HKEqZhjCFq+Z/rcQjtD+b/Qocf8dalLiMV6ZbM9AvOfOlzyM0OrVCCcTM=
X-Gm-Gg: ASbGncubP6hhwR/toGS1Q7EdlKVQuWJRxQi77Gxzfc3ejspkJWZDk2BtMEd3eZ7OevC
	Qi9DaQhyVlbY72C+1EltixcHC94mBD0mj7h7t/Y0LcrkG0mLBmKRTFwW0zPSEca60m6EKNw/qXt
	SUElg7eOTJpGXvNvE7JdArAmGR0wpW0emp+KBLHK9HOs8eFmYAEplsFscXtIj2uw/77CyiU23FU
	iZCTGoK/NY2sIoy89nEEhhGEYibeSIOjxx9Ncb7j1BVX3lNs7BwtIgX4uRgCWLpUTbCXTQYmOAW
	2E6/INwutHN3ru4PhyIGHrunBQMPOVRVkwkWE+/h3AbdGbgf36VE7XOahh18214w9o2qhOaAUF+
	xNE8T1ssfNQOMmPfrmtOSPoFH36LvEAODvJU8bbo1l7RnOjRNgEzEBC9J6MUdgEVxqFqMdOUX0C
	w=
X-Google-Smtp-Source: AGHT+IEC2Uof9qvrunk0/czGAhbC3spiWV8COr7+4EjE/m9oQZvefEsHqv5eMS77ZNG8dVHRA97olQ==
X-Received: by 2002:a05:6000:310b:b0:3c2:95c8:b71a with SMTP id ffacd0b85a97d-3d1af84bc3dmr9412376f8f.5.1756807547181;
        Tue, 02 Sep 2025 03:05:47 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939? ([2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e68c83asm204250835e9.20.2025.09.02.03.05.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 03:05:46 -0700 (PDT)
Message-ID: <14f334fc-35de-4f21-8eb1-f6b41ac24704@linaro.org>
Date: Tue, 2 Sep 2025 12:05:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
 <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
 <bf772209-2420-4794-a52a-1d5932146307@linaro.org>
 <tl4fskw6yq6rniwwqkrvnulfpgym3jswlt5bmulgquogv7xkct@6bl4boesilsw>
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
In-Reply-To: <tl4fskw6yq6rniwwqkrvnulfpgym3jswlt5bmulgquogv7xkct@6bl4boesilsw>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2025 11:46, Dmitry Baryshkov wrote:
> On Tue, Sep 02, 2025 at 11:35:25AM +0200, Neil Armstrong wrote:
>> On 02/09/2025 11:30, Dmitry Baryshkov wrote:
>>> On Tue, Sep 02, 2025 at 11:00:30AM +0200, Neil Armstrong wrote:
>>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>>>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>>>
>>>> The routing of the lanes can be:
>>>> - 2 DP + 2 USB3
>>>> - 4 DP
>>>> - 2 USB3
>>>>
>>>> The layout of the lanes was designed to be mapped and swapped
>>>> related to the USB-C Power Delivery negociation, so it supports
>>>> a finite set of mappings inherited by the USB-C Altmode layouts.
>>>>
>>>> Nevertheless those QMP Comby PHY can be statically used to
>>>> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
>>>> etc... without an USB-C connector and no PD events.
>>>>
>>>> Add a property that documents the static lanes mapping to
>>>> each underlying PHY to allow supporting boards directly
>>>> connecting USB3 and DisplayPort lanes to the QMP Combo
>>>> lanes.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>    .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
>>>>    1 file changed, 29 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> @@ -76,6 +76,35 @@ properties:
>>>>      mode-switch: true
>>>>      orientation-switch: true
>>>> +  qcom,static-lanes-mapping:
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +    minItems: 4
>>>> +    items:
>>>> +      enum:
>>>> +        - 0 # Unconnected (PHY_NONE)
>>>> +        - 4 # USB3 (PHY_TYPE_USB3)
>>>> +        - 6 # DisplayPort (PHY_TYPE_DP)
>>>> +    description:
>>>> +      Describes the static mapping of the Combo PHY lanes, when not used
>>>> +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
>>>> +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
>>>> +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
>>>> +      be connected to the DP PHY.
>>>
>>> It feels like this significantly duplicates existing data-lanes
>>> definitions. Can we use that property to express the same semantics?
>>
>> Well yes it has the same semantics, but not really the same meaning. data-lanes is designed
>> to describes the lanes layout/ordering, not the type/mapping.
>>
>> Here, we do not describe the ordering, i.e which source lane is connected to which endpoint splot,
>> but which lane is supposed to connect to which internal PHY.
>>
>> Anyway, I'm open to suggestions.
> 
> phy@abcdef {
> 	ports {
> 		port@1 {
> 			endpoint {
> 				remote-endpoint = <&&usb_1_dwc3_ss>;
> 				data-lanes = <2 3>;
> 			};
> 		};
> 
> 		port@2 {
> 			endpoint {
> 				remote-endpoint = <&mdss_dp0_out>;
> 				data-lanes = <1>;
> 			};
> 		};
> 	};
> };
> 
> phy@cafecafe {
> 	ports {
> 		port@1 {
> 			endpoint {
> 				remote-endpoint = <&&usb_1_dwc3_ss>;
> 				status = "disabled";
> 			};
> 		};
> 
> 		port@2 {
> 			endpoint {
> 				remote-endpoint = <&mdss_dp0_out>;
> 				data-lanes = <2 3 0 1>;
> 			};
> 		};
> 	};
> };

This is wrong, those are the internal connections to the controllers,
those are fixed. I'm speaking about the external lanes, but there's only
a single port.

So, following your suggestion, we should use the Output port 0, but as it's
only a single port it would need to have 2 endpoints, one for USB3 and one for
DP.

For example:

\{
	dp-connector {
		compatible = "dp-connector";
		type = "a";

		port {
			dp_con: endpoint {
				remote-endpoint = <&usb_1_ss2_qmpphy_dp_out>;
			};
		};
	};

	usb-a-connector {
		compatible = "usb-a-connector";

		ports {
			#address-cells = <1>;
			#size-cells = <0>;

			port@0 {
				reg = <0>;
                      		usb_con_hs: endpoint {
                         		remote-endpoint = <&usb_1_ss2_dwc3_hs>;
                      		};
                  	};

                  	port@1 {
                      		reg = <1>;
                     		usb_con_ss: endpoint {
                          		remote-endpoint = <&usb_1_ss2_qmpphy_usb3_out>;
                      		};
                  	};
		};
	};

};

&usb_1_ss2_dwc3_hs {
	remote-endpoint = <&usb_1_ss2_dwc3_hs>;
};

&usb_1_ss2_qmpphy {
	/delete-property/ mode-switch;
	/delete-property/ orientation-switch;

	ports {
		
		port@0{
			#address-cells = <1>;
			#size-cells = <0>;

			/delete-node/ endpoint;

			usb_1_ss2_qmpphy_usb3_out: endpoint@0 {
				reg = <0>;
				
				remote-endpoint = <&usb_con_ss>;

				data-lanes = <1 2 0 0>;
			};

			usb_1_ss2_qmpphy_dp_out: endpoint@1 {
				reg = <1>;
				
				remote-endpoint = <&dp_con>;

				data-lanes = <0 0 1 2>;
			};
		};
	};
};

So the driver logic would need to look at the port0/endpoint0 and port0/endpoint1
data-lanes to figure out the mode.

Is this what you were thinking ?

Neil

> 
> 
>>
>> Neil
>>
>>>
>>>
>>>> +      The numbers corresponds to the PHY Type the lanes are connected to.
>>>> +      The possible combinations are
>>>> +        <0 0 0 0> when none are connected
>>>> +        <4 4 0 6> USB3 and DP single lane
>>>> +        <4 4 6 6> USB3 and DP
>>>> +        <6 6 4 4> DP and USB3
>>>> +        <6 0 4 4> DP and USB3 single lane
>>>> +        <4 4 0 0> USB3 Only
>>>> +        <0 0 4 4> USB3 Only
>>>> +        <6 0 0 0> DP single lane
>>>> +        <0 0 0 6> DP single lane
>>>> +        <6 6 0 0> DP 2 lanes
>>>> +        <0 0 6 6> DP 2 lanes
>>>> +        <6 6 6 6> DP 4 lanes
>>>> +
>>>>      ports:
>>>>        $ref: /schemas/graph.yaml#/properties/ports
>>>>        properties:
>>>>
>>>> -- 
>>>> 2.34.1
>>>>
>>>
>>
> 



Return-Path: <devicetree+bounces-191165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F218EAEE269
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 17:29:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06AAB188538A
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 15:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31B1728DB68;
	Mon, 30 Jun 2025 15:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bQLcD5jk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED712857F7
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 15:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751297364; cv=none; b=k+DxonCbou6SAmJEmEwF32FfDpYXEgCaZRP0Xqi+xMSOtBboI1ux2F5hXr5jt8/fm0g3k1sOUzH3pLGP6XfMgc1+85Qabehp/DnPksOCVxuKhljCVL/nN+vHA6C+3t53GkshuflE34M+/EEtnPp+ExDkCiOpNTZerB2tCVMGidk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751297364; c=relaxed/simple;
	bh=FI4/f7digVt5NrM9MGntnaOnvVtX0vdt0Zw4KYUO2eU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=KkQElKiB7EkFSukbH7K/5hnaougSvCG1YSfewM1z7E4PqzlEUaQ8VTMN1jAZrcXwChDjzQBv5/vIG/Rn8kXMbOAEuFALbHrLJfyWLDhu0jbmd6zeLom/7rGJc/1JpRcEfsumbuQMmzKEyi5Hwk5Dvt4KBlAm38VdKV/pxNX+3iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bQLcD5jk; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-453066fad06so30625275e9.2
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 08:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751297361; x=1751902161; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lyhLcg43dCZkOg3r9AJzjxtQxVvDwA6brW0xDWkXp7g=;
        b=bQLcD5jk2oXEL315oMtS346bWOtztlnHqcyCEOZv8OVyUZi9YUgSgSR62hU/TCXY3G
         umIXSK9mFWxaE5aCNyqy9MJfxJoOVdCjts3DjZaKmB+OmBmkxsS+5GWUz4bKgAJLFymc
         hJZDms+3i92gXUkoAwVHLr5m34yWbLzSBUXprZCUnfNyCWccPhyWk8cpNKJfuxFTE0Ns
         OyrcTwltGPnBfbtsk3K6rn42HQoRjS8Ew2FRTjdgLXvj5Ra/eXE+MQWjCO3CuzVROcvH
         4szlmDWDwdD9HAp8g/m/TPvDbXSlMC4o6kzACIW/k32ZSqaG9azh4ymlFzqxrgPOKUc9
         mzvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751297361; x=1751902161;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lyhLcg43dCZkOg3r9AJzjxtQxVvDwA6brW0xDWkXp7g=;
        b=rog75LC+x/+huaeHE4ziY3eTEqSPi2oqbFXFtaw5cb7BTTsdyT3qXX+NK8wFCl9Qqf
         8rIxsVzREUyElurh9Vkc8psSsr+fMQCvp/d5TixpQUoW10vJDOYAzLWEYnhYaIcCTJhU
         1IUmUWcnhgFDQe4EX6StEVwJzH08ZJ0VLk9cAs2eZRS3wz82lFKmKoYM7TqYEy/CtZuh
         IQOabadproy24uZUZsFHLgoPwQ0XI70tYNjkSYaTqxOjiUJagl278VIMDzAmDVxrpx4n
         mN6RRlO6kT+sTyGVUIY87acD0sH6qyzZBLb4VdyYs+xyqJv3MRGIwEfeH2fE8iMks/e6
         aDtQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8ew6hgs8oTkhVzk57kalbKP1ST7aYWCK4hW54jQh32kdHPq3azUiS4XhVaLxf9ry9L1ynGDHR6hkU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4S4NubdjUIJ19KmzCQHzV0pfeJrKcltfiFhG5IhubTlbM26ik
	wWfPX7bzHzY2cja4OcvU5F9aeyfIL1S+krHAHH8wip88VboThXGU260Kb1PiQH79mvI=
X-Gm-Gg: ASbGncvOZWKOIiHkrd9i6FUu3NHzkaNy6DPYM1iia3QZ0OBbqtfQJStBWbGi/Lj535d
	/LRyxp25V3mrf0CFO7gNhlTrtIsFA1Z0BYXxcsSbPnMKw0bANrNRGF5NY6B1e9P8Y4ZM9yql78I
	CKYSbQ8Bc37krYZQfCL7/Yx0nS5NfjxCp+Z8sEBq4l+s4hkvFdRIPoMvIhEflghLY8u/V3xKX/8
	Qsj4HRWKlZvfEKAf1C2Od4FIXeGNn1SkLnHIDIMu2wLir2LZY5QDgmUqol/jSYIqI6t+MACL2oy
	FRUxPmLS7ZoomD/ionsa3p54KARoxBqcjVnsRNCso3IN4o9Xw/4Qrcwuhfqh36RTAmk04vspuY1
	g11TZ5fArdrlMtGS07fUdJhg5mQcAgJ2wc/W6wXcwYnp0YtsPWQ==
X-Google-Smtp-Source: AGHT+IEnqbd8jzud+AKyN7wsGShNV1AQfJKdXYzndE6kZZl0r0O6j/o8j4SrtXPzHfSflaQKjGC8rA==
X-Received: by 2002:a05:600c:3494:b0:453:5c30:a1fd with SMTP id 5b1f17b1804b1-453a33d6fb9mr28079915e9.8.1751297360613;
        Mon, 30 Jun 2025 08:29:20 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:abe8:a49c:efe7:4dfb? ([2a01:e0a:3d9:2080:abe8:a49c:efe7:4dfb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a3a72dasm138329335e9.16.2025.06.30.08.29.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 08:29:20 -0700 (PDT)
Message-ID: <80055981-3624-4165-af0c-3b60c345e8f8@linaro.org>
Date: Mon, 30 Jun 2025 17:29:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: document Samsung
 S6E8AA5X01 panel driver
To: Kaustabh Chakraborty <kauschluss@disroot.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20250625-panel-samsung-s6e8aa5x01-v3-0-9a1494fe6c50@disroot.org>
 <20250625-panel-samsung-s6e8aa5x01-v3-1-9a1494fe6c50@disroot.org>
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
In-Reply-To: <20250625-panel-samsung-s6e8aa5x01-v3-1-9a1494fe6c50@disroot.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/06/2025 14:41, Kaustabh Chakraborty wrote:
> Samsung S6E8AA5X01 is an AMOLED MIPI DSI panel controller. Document the
> compatible and devicetree properties of this panel driver. Timings are
> provided through the devicetree node as panels are available in
> different sizes.

Wait, why ? Why not multiple compatibles ?

Neil

> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
> ---
>   .../bindings/display/panel/samsung,s6e8aa5x01.yaml | 78 ++++++++++++++++++++++
>   1 file changed, 78 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..23dae6e961ae01c99de93bf4b4a067f2953f8edf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/samsung,s6e8aa5x01.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/samsung,s6e8aa5x01.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung S6E8AA5X01 display panel controller
> +
> +maintainers:
> +  - Kaustabh Chakraborty <kauschluss@disroot.org>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: samsung,s6e8aa5x01
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: core voltage supply
> +
> +  vci-supply:
> +    description: voltage supply for analog circuits
> +
> +  reset-gpios: true
> +  width-mm: true
> +  height-mm: true
> +  panel-timing: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - width-mm
> +  - height-mm
> +  - panel-timing
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    dsi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        panel@0 {
> +            compatible = "samsung,s6e8aa5x01";
> +            reg = <0>;
> +
> +            vdd-supply = <&panel_vdd_reg>;
> +            vci-supply = <&panel_vci_reg>;
> +
> +            reset-gpios = <&gpd3 4 GPIO_ACTIVE_HIGH>;
> +
> +            width-mm = <62>;
> +            height-mm = <128>;
> +
> +            panel-timing {
> +                clock-frequency = <73094400>;
> +
> +                hactive = <720>;
> +                hsync-len = <2>;
> +                hfront-porch = <62>;
> +                hback-porch = <26>;
> +
> +                vactive = <1480>;
> +                vsync-len = <2>;
> +                vfront-porch = <12>;
> +                vback-porch = <10>;
> +            };
> +        };
> +    };
> +
> +...
> 



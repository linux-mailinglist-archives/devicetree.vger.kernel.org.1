Return-Path: <devicetree+bounces-219320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF54EB8A00A
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:36:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D5B127A22B3
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 14:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B622FC03B;
	Fri, 19 Sep 2025 14:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kd606FTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B9A34BA36
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758292588; cv=none; b=ZD4xzSxla4elxh7g8QEC1396KGUpze+JLbdaTUEvJO5mriafY26ygSBUZbaYkRaxngGBdJBacFY7ySNOW21utDCj8YtuN/kucIGO4JIepC61HaCFvs9pGuSTjrFWVbdvyOFAGhFQC532H+up0rXiCnTQSWFECvk4GzLwqBGa+HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758292588; c=relaxed/simple;
	bh=TjjXjSoFhC290sr1MFSurGUASvtLJpRdQFNuUGp2HpI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=iCTI6liPP2Usbw29h0yCU8DbuCmVi6gSFHC72ODU7HyYhwJsI69TK1BURRlVYRLbUsuAZLD/YP7SDF9FQ0Of0V4SWu+j5Z+cQM8o24uvS5YnDF9lh35B3/n73IenCBbWipqASC+23zIxqWNBrEAqblpBXbuQx9+EEAfPpRb/Mec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kd606FTl; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45decc9e83eso22087425e9.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758292585; x=1758897385; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ki7qAfO4qaImjGJ2JfSFUybYdIzI88oPzTIZNv7oRHU=;
        b=kd606FTlP9cIGfDUaltvdK9BjlzcrfK10fXpLsxRsedxi3oNdwBvefHPwPplrZ5zJh
         Rl9jYfIOSdeWgO76OKrMmkkICd9W8hmPp6WssNHd8UNXXiqSYwegZcvmdwI9Ukfe4skX
         cPXNPlb9ChkWhIvruxG9XLu9MdvgsTW8MTHhUtzpXz4XAzbpFxmtUOQ5/L0DW8bpufPj
         WcXnyFc5iZnT/38DX0nBT/+Quf74JmTlCRZn0L5gVF+gO/vdlcfUbPjK+5Oiiedx0QNK
         XPnL9NSpuu1dXHNoEIDFWTh6003lukn1mZ/+MuLt/7W8Mg2rSB5sGXjmw3RL2TKgeph8
         q1rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758292585; x=1758897385;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ki7qAfO4qaImjGJ2JfSFUybYdIzI88oPzTIZNv7oRHU=;
        b=j1BzbyiVkswTOXP8vF/tobIgomHyK/tJqT8YxMRPUyfX/WH48O55cFnnR82KL8or8k
         jetSszx1K1qhkCMf9c8GzCa105sDgyeay1rldX3FzMwh23Fe13Ij/YflQc0Rsq3zb3Q5
         I37gSJqBv3TCrtj9KLEJ0qkTmfmUhSRNCI5+b9C2y+b46z9vdtPaSnAutWbNHQE5xTJW
         c8UPe64hSUAa11Kxl+40aJ+wsrDzzIU9Ilx3VRRm1G5kgBKl7Sl8xcXoRKff/RExyQ21
         FEsgcxCYBRH6XnDJlS5x3HtrVQ8pZj13x6sgzFsj89u+9/pAmAEICo+tc0KvgczqjQx0
         +RDA==
X-Forwarded-Encrypted: i=1; AJvYcCWn9R/7Rx9Pc7L/9j1honodN7xVvyNvxDeIjdaJRlZA3h42aZ4uvZTIqyGu+BkxqIACnsoIL3OcTkVR@vger.kernel.org
X-Gm-Message-State: AOJu0YyXz95sodLdQ8eb470W8anVmlNALf46/fXaOOZTVuTYKwUo/ACT
	aMWeKMOvTNPRakjaxGdSpl1i6fwotZZmvKpW/6UEAxbGOKjwfdYjzzB/9p04u2AI07M=
X-Gm-Gg: ASbGncvJIgOlNNG3Dc47q0Ky/tQyhq7leyEnAPfPfpm2sHdK4WZ8juu3IUHLESbp30d
	E3kzFdg+uSXWiajoyR98F1NF9Q4/MYGReJl0aKgY4mL/elLAvrg7YRya/nwuRcroO1SqrLAhp8m
	qgXKyr+BFW4o3D3HBGyC2aY8oq6tqe4I9FumBllsMPmJKCIeDKjyJHb5mI7NjoI8fm1QMP8dqxu
	EjfafXUi1XK1///sodTCNrfdICU5nBRW24SCdLqQXJNbcL5gIsw4i1HDwzsuOLtMGvTZ9Kwf8vu
	4JURNB5GY1zKkJ44tsgOfHydcvF4ijloNIMQBOfwIVKcTl3BmlGF4gLcqscljarKjdNaWCIKavM
	LYarD5cqRIHOuAXyHwbdPkpLzrpi5oocPdhXUka0GBG/HV8Slw5YiB9YIci0IqKb6Nyf3vce6
X-Google-Smtp-Source: AGHT+IH5vrQPKYerDhA6I6iQ9DqZ/m8nF6zTFVhUr5PFv+QEeSA57WDealwtSdVJmyo8SQmPDRYqgA==
X-Received: by 2002:a05:600c:19cf:b0:459:dde3:1a56 with SMTP id 5b1f17b1804b1-467eaa881e0mr30634565e9.28.1758292584629;
        Fri, 19 Sep 2025 07:36:24 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:77b3:66a:b2a0:c20f? ([2a01:e0a:3d9:2080:77b3:66a:b2a0:c20f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3f0e28c83d6sm2164989f8f.56.2025.09.19.07.36.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 07:36:24 -0700 (PDT)
Message-ID: <bdd942ef-1ede-4f9f-ab90-ea7ac8995b92@linaro.org>
Date: Fri, 19 Sep 2025 16:36:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: document Sharp
 LQ079L1SX01 panel
To: Svyatoslav Ryhel <clamor95@gmail.com>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250912064253.26346-1-clamor95@gmail.com>
 <20250912064253.26346-2-clamor95@gmail.com>
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
In-Reply-To: <20250912064253.26346-2-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 12/09/2025 08:42, Svyatoslav Ryhel wrote:
> Document Sharp LQ079L1SX01 panel found in Xiaomi Mi Pad.

The patch doesn't apply on drm-misc-next, please rebase.

Neil

> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>   .../display/panel/sharp,lq079l1sx01.yaml      | 99 +++++++++++++++++++
>   1 file changed, 99 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml b/Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml
> new file mode 100644
> index 000000000000..08a35ebbbb3c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml
> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/sharp,lq079l1sx01.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sharp Microelectronics 7.9" WQXGA TFT LCD panel
> +
> +maintainers:
> +  - Svyatoslav Ryhel <clamor95@gmail.com>
> +
> +description: >
> +  This panel requires a dual-channel DSI host to operate and it supports
> +  only left-right split mode, where each channel drives the left or right
> +  half of the screen and only video mode.
> +
> +  Each of the DSI channels controls a separate DSI peripheral.
> +  The peripheral driven by the first link (DSI-LINK1), left one, is
> +  considered the primary peripheral and controls the device.
> +
> +allOf:
> +  - $ref: panel-common-dual.yaml#
> +
> +properties:
> +  compatible:
> +    const: sharp,lq079l1sx01
> +
> +  reg:
> +    maxItems: 1
> +
> +  avdd-supply:
> +    description: regulator that supplies the analog voltage
> +
> +  vddio-supply:
> +    description: regulator that supplies the I/O voltage
> +
> +  vsp-supply:
> +    description: positive boost supply regulator
> +
> +  vsn-supply:
> +    description: negative boost supply regulator
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +  backlight: true
> +  ports: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - avdd-supply
> +  - vddio-supply
> +  - ports
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
> +            compatible = "sharp,lq079l1sx01";
> +            reg = <0>;
> +
> +            reset-gpios = <&gpio 59 GPIO_ACTIVE_LOW>;
> +
> +            avdd-supply = <&avdd_lcd>;
> +            vddio-supply = <&vdd_lcd_io>;
> +            vsp-supply = <&vsp_5v5_lcd>;
> +            vsn-supply = <&vsn_5v5_lcd>;
> +
> +            backlight = <&backlight>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    panel_in0: endpoint {
> +                        remote-endpoint = <&dsi0_out>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    panel_in1: endpoint {
> +                        remote-endpoint = <&dsi1_out>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> +...


